using System;
using System.Collections.Generic;

namespace DemoApp4.Models;

public partial class ServiceAdditionalPhoto
{
    public int ServiceAdditionalPhotoId { get; set; }

    public int? ServiceId { get; set; }

    public string? Photo { get; set; }

    public virtual Service? Service { get; set; }
}
