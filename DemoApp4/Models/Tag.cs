﻿using System;
using System.Collections.Generic;

namespace DemoApp4.Models;

public partial class Tag
{
    public int TagId { get; set; }

    public string? Name { get; set; }

    public string? Color { get; set; }

    public virtual ICollection<Client> Clients { get; set; } = new List<Client>();
}
