using System;
using System.Collections.Generic;

namespace DemoApp4.Models;

public partial class ProductAdditionalPhoto
{
    public int ProductAdditionalPhoto1 { get; set; }

    public int? ProductId { get; set; }

    public string? Photo { get; set; }

    public virtual Product? Product { get; set; }
}
