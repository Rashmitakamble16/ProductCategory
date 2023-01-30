using System.ComponentModel.DataAnnotations;

namespace ProCat.Models
{

    public class Product
    {
        [Key]
        public int ProductId { get; set; }
        [Required]
        [Display(Name = "Product Name")]
        public string ProductName { get; set; }
        public int CategoryId { get; set; }
        public string CategoryName { get; set; }

    }
}   