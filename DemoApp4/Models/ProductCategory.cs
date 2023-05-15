using System;
using System.Collections.Generic;

namespace DemoApp4.Models;

public partial class ProductCategory
{
    public int ProductCategoryId { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
