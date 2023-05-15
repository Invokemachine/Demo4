using System;
using System.Collections.Generic;

namespace DemoApp4.Models;

public partial class Manufacturer
{
    public int ManufacturerId { get; set; }

    public string? Name { get; set; }

    public DateOnly? StartupDate { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
