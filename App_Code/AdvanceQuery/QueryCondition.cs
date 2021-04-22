using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class QueryCondition
{
    public string Connnector { get; set; }
    public string ColumnName { get; set; }
    public string FilterOperator { get; set; }
    public string FilterOption { get; set; }
}