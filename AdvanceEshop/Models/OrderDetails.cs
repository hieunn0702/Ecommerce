using System.ComponentModel.DataAnnotations.Schema;

namespace AdvanceEshop.Models
{
    public class OrderDetails
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string OrderCode { get; set; }
        public long ProductId { get; set; }
        public decimal? Price { get; set; }
        public int Quantity { get; set; }

        public string ProductName { get; set; } // Add this property for the product name

        //[ForeignKey("ProductId")]
        public Product Product { get; set; }

    }
}
