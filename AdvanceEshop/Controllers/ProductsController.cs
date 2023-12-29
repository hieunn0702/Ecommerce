﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using AdvanceEshop.Data;
using AdvanceEshop.Models;
using AdvanceEshop.Models.ViewModel;
using static AdvanceEshop.Controllers.ProductsController;
using Microsoft.AspNetCore.Authorization;

namespace AdvanceEshop.Controllers
{
    public class ProductsController : Controller
    {
        private readonly ApplicationDbContext _context;
        public int PageSize = 9;

        public ProductsController(ApplicationDbContext context)
        {
            _context = context;
        }

        public class PriceRange
        {
            public int Min { get; set; }
            public int Max { get; set; }
        }

        public IActionResult GetFilteredProducts([FromBody] FilterData filter)
        {
            var filterProducts = _context.Products.ToList();
            if (filter.PriceRanges != null && filter.PriceRanges.Count > 0 && !filter.PriceRanges.Contains("all"))
            {
                List<PriceRange> priceRanges = new List<PriceRange>();
                foreach (var range in filter.PriceRanges)
                {
                    var value = range.Split('-').ToArray();
                    PriceRange priceRange = new PriceRange();
                    priceRange.Min = Int16.Parse(value[0]);
                    priceRange.Max = Int16.Parse(value[1]);
                    priceRanges.Add(priceRange);
                }
                filterProducts = filterProducts.Where(p => priceRanges.Any(r => p.ProductPrice >= r.Min && p.ProductPrice <= r.Max)).ToList();
            }

            if (filter.Colors != null && filter.Colors.Count > 0 && !filter.Colors.Contains("all"))
            {
                filterProducts = filterProducts.Where(p => filter.Colors.Contains(p.Color.ColorName)).ToList();
            }

            if (filter.Sizes != null && filter.Sizes.Count > 0 && !filter.Sizes.Contains("all"))
            {
                filterProducts = filterProducts.Where(p => filter.Sizes.Contains(p.Size.SizeName)).ToList();
            }

            return PartialView("_ReturnProducts", filterProducts);
        }

        // GET: Products
        public async Task<IActionResult> Index(int productPage = 1)
        {

            return View(
                new ProductsListViewModel
                {
                    Products = _context.Products
                    .Skip((productPage - 1) * PageSize)
                    .Take(PageSize),
                    PagingInfo = new PagingInfo
                    {
                        ItemsPerPage = PageSize,
                        CurrentPage = productPage,
                        TotalItems = _context.Products.Count()

                    }
                }
                );
        }

        [HttpPost]
        public async Task<IActionResult> Search(string keywords, int productPage = 1)
        {

            return View("Index",
                new ProductsListViewModel
                {
                    Products = _context.Products
                    .Where(p => p.ProductName.Contains(keywords))
                    .Skip((productPage - 1) * PageSize)
                    .Take(PageSize),
                    PagingInfo = new PagingInfo
                    {
                        ItemsPerPage = PageSize,
                        CurrentPage = productPage,
                        TotalItems = _context.Products.Count()

                    }
                }
                );
        }


        public async Task<IActionResult> ProductsByCat(int categoryId, int productPage = 1)
        {
            /*
             * var applicationDbContext = _context.Products.Where(p => p.CategoryId == categoryId).Include(p => p.Category).Include(p => p.Color).Include(p => p.Size);
            return View("Index", await applicationDbContext.ToListAsync());
            */
            var products = await _context.Products
                .Where(p => p.CategoryId == categoryId)
                .Include(p => p.Category)
                .Include(p => p.Color)
                .Include(p => p.Size)
                .ToListAsync();

            var viewModel = new ProductsListViewModel
            {
                Products = products
                    .Skip((productPage - 1) * PageSize)
                    .Take(PageSize),
                PagingInfo = new PagingInfo
                {
                    ItemsPerPage = PageSize,
                    CurrentPage = productPage,
                    TotalItems = _context.Products.Count()

                }
                // Các thông tin khác cần thiết trong mô hình ProductsListViewModel
            };

            return View("Index", viewModel);

        }

        [HttpGet("/san-pham/{tensp}")]
        public async Task<ActionResult> Detail(string? tensp)
        {
            // Lấy dữ liệu từ cơ sở dữ liệu mà không áp dụng phương thức gây vấn đề trong câu truy vấn SQL
            var products = await _context.Products
                .Include(p => p.Category)
                .Include(p => p.Color)
                .Include(p => p.Size)
                .ToListAsync();

            // Lọc sản phẩm bằng cách sử dụng phương thức tùy chỉnh trong bộ nhớ
            var product = products.FirstOrDefault(p => YourTitleHelperMethod.YourTitleHelper(p.ProductName) == tensp);

            if (product == null)
            {
                return NotFound();
            }

            return View("Details", product);
        }


        // GET: Products/Details/5
        public async Task<ActionResult> Details( int? id)
        {
            if (id == null || _context.Products == null)
            {
                return NotFound();
            }

            var product = await _context.Products
                .Include(p => p.Category)
                .Include(p => p.Color)
                .Include(p => p.Size)
                .FirstOrDefaultAsync(m => m.ProductId == id);
            if (product == null)
            {
                return NotFound();
            }
            ViewBag.FacebookTitle = product.ProductName;
            ViewBag.FacebookDescription = product.ProductDescription;
            ViewBag.FacebookImage = product.ProductPhoto;
            ViewBag.FacebookUrl = Url.Action("Detail", "Products", new { id = product.ProductId }, protocol: HttpContext.Request.Scheme);

            return View(product);
        }

        // GET: Products/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Products == null)
            {
                return NotFound();
            }

            var product = await _context.Products.FindAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            ViewData["CategoryId"] = new SelectList(_context.Categories, "CategoryId", "CategoryName", product.CategoryId);
            ViewData["ColorId"] = new SelectList(_context.Colors, "ColorId", "ColorName", product.ColorId);
            ViewData["SizeId"] = new SelectList(_context.Sizes, "SizeId", "SizeName", product.SizeId);
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.

        
    }
}
