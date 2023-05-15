using System;
using System.Collections.Generic;

namespace DemoApp4.Models;

public partial class Employee
{
    public int EmployeeId { get; set; }

    public string? LastName { get; set; }

    public string? Name { get; set; }

    public string? Patronymic { get; set; }

    public string? PassportSeries { get; set; }

    public string? PassportNumber { get; set; }

    public int? DivisionCodeId { get; set; }

    public double? PaymentCoefficient { get; set; }

    public DateOnly? Birthday { get; set; }

    public int? EmployeeCategoryId { get; set; }

    public bool? IsWorking { get; set; }

    public virtual DivisionCode? DivisionCode { get; set; }

    public virtual EmployeeCategory? EmployeeCategory { get; set; }
}
