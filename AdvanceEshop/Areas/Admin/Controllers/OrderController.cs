using AdvanceEshop.Data;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace AdvanceEshop.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize]
    public class OrderController : Controller
    {

        private readonly ApplicationDbContext _context;
        public OrderController(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.Orders.OrderByDescending(p => p.Id).ToListAsync());
        }

        public async Task<IActionResult> ViewOrder(string ordercode)
        {
            var DetailsOrder = await _context.OrderDetails.Include(o => o.Product).Where(o => o.OrderCode == ordercode).ToListAsync();
            return View(DetailsOrder);
        }

        public IActionResult DeleteOrder(int Id)
        {
            var IdOrder = _context.Orders.FirstOrDefault(x => x.Id == Id);
            if (IdOrder != null)
            {
                _context.Orders.Remove(IdOrder);
                _context.SaveChanges();

                // Trả về thông báo xác nhận hoặc chuyển hướng đến trang danh sách đơn hàng
                TempData["Message"] = "Đơn hàng đã được xóa thành công.";
                return RedirectToAction("Index", "Order");
            }
            else
            {
                return BadRequest("Không tìm thấy đơn hàng");
            }
        }
    }
}
