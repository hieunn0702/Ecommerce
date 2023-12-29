using AdvanceEshop.Data;
using AdvanceEshop.Infrastructure;
using AdvanceEshop.Libraries;
using AdvanceEshop.Models;
using AdvanceEshop.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using static AdvanceEshop.Models.PaymentClient;

namespace AdvanceEshop.Controllers
{
    public class VnPayController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IVnPayService _vnPayService;

        public VnPayController(ApplicationDbContext context, IVnPayService vnPayService)
        {
            _context = context;
            _vnPayService = vnPayService;
        }
    }
}
