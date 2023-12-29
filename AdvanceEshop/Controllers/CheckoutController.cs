using AdvanceEshop.Data;
using AdvanceEshop.Infrastructure;
using AdvanceEshop.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Security.Claims;
using Newtonsoft.Json;
using AdvanceEshop.Services;
using Microsoft.AspNetCore.Authorization;
using AdvanceEshop.Models.ViewModel;
using System.Collections.Generic;

namespace AdvanceEshop.Controllers
{
    public class CheckoutController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly ILogger<CheckoutController> _logger;
        private readonly IVnPayService _vnPayService;
        public CheckoutController(ApplicationDbContext context, ILogger<CheckoutController> logger, IVnPayService vnPayService)
        {
            _context = context;
            _logger = logger;
            _vnPayService = vnPayService;
        }
        public async Task<IActionResult> Checkout(OrderModel orderItem, string payment = "COD")
        {
            if (ModelState.IsValid)
            {
                if (payment == "Thanh Toán VnPay")
                {
                    List<CartItemModel> cartItems = HttpContext.Session.GetJson<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();
                    decimal? grandTotal = cartItems.Sum(x => x.Price * (1 - x.Discount) * x.Quantity);
                    if (grandTotal.HasValue)
                    {
                        // Chuyển đổi grandTotal sang chuỗi, xóa dấu chấm và chuyển lại thành decimal
                        var amountWithoutDot = Convert.ToDecimal(grandTotal.Value.ToString().Replace(".", ""));

                        var vnPayModel = new VnPaymentRequestModel
                        {
                            Amount = amountWithoutDot,
                            CreatedDate = DateTime.Now,
                            Description = $"{orderItem.UserName} {orderItem.Status}",
                            FullName = orderItem.UserName,
                            OrderId = new Random().Next(1000, 10000)
                        };
                        return Redirect(_vnPayService.CreatePaymentUrl(HttpContext, vnPayModel));
                    }
                }
                if (payment == "Checkout")
                {
                    var userEmail = User.FindFirstValue(ClaimTypes.Email);
                    if (userEmail == null)
                    {
                        return RedirectToAction("Login", "Account");
                    }
                    else
                    {
                        var ordercode = Guid.NewGuid().ToString();
                        //var orderItem = new OrderModel();
                        orderItem.OrderCode = ordercode;
                        orderItem.UserName = userEmail;
                        orderItem.Status = 1;
                        orderItem.CreatedDate = DateTime.Now;
                        _context.Add(orderItem);
                        _context.SaveChanges();

                        List<CartItemModel> cartItems = HttpContext.Session.GetJson<List<CartItemModel>>("Cart") ?? new List<CartItemModel>();
                        foreach (var cart in cartItems)
                        {
                            var orderdetails = new OrderDetails();
                            orderdetails.UserName = userEmail;
                            orderdetails.OrderCode = ordercode;
                            orderdetails.ProductId = (int)cart.ProductId;
                            orderdetails.Price = cart.Price;
                            orderdetails.Quantity = cart.Quantity;
                            _context.Add(orderdetails);
                            _context.SaveChanges();
                        }
                        HttpContext.Session.Remove("Cart");
                        TempData["success"] = " Checkout thành công, vui lòng chờ duyệt đơn hàng";
                        return RedirectToAction("Index", "Cart");
                    }
                }
            }
            return RedirectToAction("Index", "Cart");
        }
        [Authorize]
        public IActionResult PaymentFail()
        {
            return View();
        }


        [Authorize]
        public IActionResult PaymentCallBack()
        {
            var response = _vnPayService.PaymentExecute(Request.Query);

            if (response == null || response.VnPayResponseCode != "00")
            {
                TempData["Message"] = $"Lỗi thanh toán VN Pay: {response.VnPayResponseCode}";
                return RedirectToAction("PaymentFail");
            }


            // Lưu đơn hàng vô database

            TempData["Message"] = $"Thanh toán VNPay thành công";
            return RedirectToAction("PaymentSuccess");
        }
    }
}
