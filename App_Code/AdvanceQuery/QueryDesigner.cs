using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

public class ColumnModel
{

}

public class QueryDesigner
{
    private string _ColumnDBNameD;
    private string _ColumnDBNameW;
    private string _ColumnDBNameH;

    public string ColumnNameDis
    {
        get
        {
            return _ColumnDBNameD;
        }
        set
        {
            switch (value.ToLower().Trim())
            {
                case "officetype":
                    _ColumnDBNameD = "OM.OfficeType As OfficeType";
                    break;

                case "officename":
                    _ColumnDBNameD = "OM.OfficeName As OfficeName ";
                    break;

                case "district":
                    _ColumnDBNameD = "DM.EnglishName As District";
                    break;

                case "employeetype":
                    _ColumnDBNameD = "EM.EmployeeType";
                    break;

                case "employeecode":
                    _ColumnDBNameD = "EM.EmployeeCode";
                    break;

                case "employeename":
                    _ColumnDBNameD = "EM.EmployeeName";
                    break;

                case "guardianrelation":
                    _ColumnDBNameD = "EM.GuardianRelation";
                    break;

                case "guardianName":
                    _ColumnDBNameD = "EM.GuardianName";
                    break;

                case "gender":
                    _ColumnDBNameD = "Case Isnull(EM.EmpGender,''O'') When ''O'' Then ''--'' When ''M'' Then ''Male'' When ''F'' Then ''Female'' Else ''Transgender'' End As Gender";
                    break;

                case "contactno":
                    _ColumnDBNameD = "EM.ContactNo";
                    break;

                case "designation":
                    _ColumnDBNameD = "DS.EnglishName As Designation";
                    break;

                case "subdesignation":
                    _ColumnDBNameD = "Isnull(SD.EnglishName,''--'') As SubDesignation";
                    break;

                case "joiningYear":
                    _ColumnDBNameD = "Year(EmpDOJ) As JoiningYear";
                    break;

                case "retirementYear":
                    _ColumnDBNameD = "Year(EmpDOR) As RetirementYear";
                    break;

                case "verified":
                    _ColumnDBNameD = "Case When Isnull(EM.IsVerified,0) = 0 Then ''No'' Else ''Yes'' End As IsVerified";
                    break;

                case "dateofbirth":
                    _ColumnDBNameD = "Convert(varchar(10),EM.EmpDOB,103) As DateOfBirth";
                    break;

                case "dateofjoining":
                    _ColumnDBNameD = "Convert(varchar(10),EM.EmpDOJ,103) As DateOfJoining";
                    break;

                case "dateofretirement":
                    _ColumnDBNameD = "Convert(varchar(10),EM.EmpDOR,103) As DateOfRetirement";
                    break;

                case "empaddress":
                    _ColumnDBNameD = "EM.EmpAddress";
                    break;


                case "orderdate":
                    _ColumnDBNameD = "Convert(varchar(10),orderdate,103) As OrderDate";
                    break;

                case "fromdate":
                    _ColumnDBNameD = "Convert(varchar(20),FromDate,103) FromDate";
                    break;

                case "fromoffice":
                    _ColumnDBNameD = "frmoffice As FromOffice";
                    break;

                case "fromdesignation":
                    _ColumnDBNameD = "frmdesig As FromDesignation";
                    break;

                case "todate":
                    _ColumnDBNameD = "Case When ToDate <> GETDATE() Then Convert(varchar(10),ToDate,103) Else '-' End As ToDate";
                    break;

                case "tosesignation":
                    _ColumnDBNameD = "todesig As ToDesignation";
                    break;

                case "serviceperiod":
                    _ColumnDBNameD = "DATEDIFF(YEAR,FromDate, ToDate) As ServicePeriod";
                    break;

                case "sanctionpost":
                    _ColumnDBNameD = "Sum(VD.SanctionPost) As SanctionPost";
                    break;

                case "occupiedpost":
                    _ColumnDBNameD = "Sum(VD.OccupiedPost) As OccupiedPost";
                    break;

                case "vacantpost":
                    _ColumnDBNameD = "Sum(VD.VacantPost) As VacantPost";
                    break;

                default:
                    _ColumnDBNameD = value;
                    break;
            }
        }
    }

    public string ColumnNameWh
    {
        get
        {
            return _ColumnDBNameW;
        }
        set
        {
            switch (value.Trim())
            {
                case "Office Type":
                    _ColumnDBNameW = "OM.OfficeType";
                    break;

                case "Office Name":
                    _ColumnDBNameW = "OM.OfficeName";
                    break;

                case "District":
                    _ColumnDBNameW = "DM.EnglishName";
                    break;

                case "ULB/Office Name":
                    _ColumnDBNameW = "OM.OfficeName";
                    break;

                case "Employee Type":
                    _ColumnDBNameW = "EM.EmployeeType";
                    break;

                case "Employee Code":
                    _ColumnDBNameW = "EM.EmployeeCode";
                    break;

                case "Employee Name":
                    _ColumnDBNameW = "EM.EmployeeName";
                    break;

                case "Guardian Relation":
                    _ColumnDBNameW = "EM.GuardianRelation";
                    break;

                case "Guardian Name":
                    _ColumnDBNameW = "EM.GuardianName";
                    break;

                case "Gender":
                    _ColumnDBNameW = "Case Isnull(EM.EmpGender,'O') When 'O' Then '--' Else Isnull(EM.EmpGender,'O') End";
                    break;

                case "ContactNo":
                    _ColumnDBNameW = "EM.ContactNo";
                    break;

                case "Designation":
                    _ColumnDBNameW = "DS.EnglishName";
                    break;

                case "Sub-Designation":
                    _ColumnDBNameW = "Isnull(SD.EnglishName,''--'') ";
                    break;

                case "Joining Year":
                    _ColumnDBNameW = "Year(EmpDOJ)";
                    break;

                case "Retirement Year":
                    _ColumnDBNameW = "Year(EmpDOR)";
                    break;

                case "Verified":
                    _ColumnDBNameW = "Case When Isnull(EM.IsVerified,0) = 0 Then ''No'' Else ''Yes'' End";
                    break;

                case "DateOfBirth":
                    _ColumnDBNameW = "Convert(varchar(10),EM.EmpDOB,103)";
                    break;

                case "DateOfJoin":
                    _ColumnDBNameW = "Convert(varchar(10),EM.EmpDOJ,103) ";
                    break;

                case "DateOfRetire":
                    _ColumnDBNameW = "Convert(varchar(10),EM.EmpDOR,103)";
                    break;

                case "EmpAddress":
                    _ColumnDBNameW = "EM.EmpAddress";
                    break;

                case "CurrentToDate":
                    _ColumnDBNameW = "ToDate";
                    break;

                case "ServicePeriod":
                    _ColumnDBNameW = "DATEDIFF(YEAR,FromDate, ToDate)";
                    break;

                default:
                    _ColumnDBNameW = value;
                    break;
            }
        }
    }

    public string ColumnNameHv
    {
        get
        {
            return _ColumnDBNameH;
        }
        set
        {
            switch (value.Trim())
            {
                case "SanctionPost":
                    _ColumnDBNameH = "Sum(VD.SanctionPost)";
                    break;

                case "OccupiedPost":
                    _ColumnDBNameH = "Sum(VD.OccupiedPost)";
                    break;

                case "VacantPost":
                    _ColumnDBNameH = "Sum(VD.VacantPost)";
                    break;

            }
        }
    }

    private string GenearateWhere(ICollection<QueryCondition> lstCondition)
    {
        string strWhere = "1=1";
        try
        {
            foreach (QueryCondition cond in lstCondition)
            {
                strWhere += " " + cond.Connnector;

                ColumnNameWh = cond.ColumnName;

                strWhere += " " + ColumnNameWh;

                if ((cond.FilterOperator == "EqualTo"))
                {
                    strWhere += " = ";
                }
                else if ((cond.FilterOperator == "&gt;="))
                {
                    strWhere += " >= ";
                }
                else if ((cond.FilterOperator == "&lt;="))
                {
                    strWhere += " <= ";
                }
                else if ((cond.FilterOperator == "&gt;"))
                {
                    strWhere += " > ";
                }
                else if ((cond.FilterOperator == "&lt;"))
                {
                    strWhere += " < ";
                }
                else if ((cond.FilterOperator == "!="))
                {
                    strWhere += " <> ";
                }
                else
                {
                    strWhere += " " + cond.FilterOperator;
                }

                if ((cond.FilterOperator != "Is null"))
                {
                    strWhere += " " + cond.FilterOption;
                }

            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return strWhere.Replace("'", "''");
    }

    private string GenearateHaving(ICollection<QueryCondition> lstCondition)
    {
        string strWhere = "Sum(1)=Sum(1)";
        try
        {
            foreach (QueryCondition cond in lstCondition)
            {
                strWhere += " " + cond.Connnector;

                ColumnNameHv = cond.ColumnName;

                strWhere += " " + ColumnNameHv;

                if ((cond.FilterOperator == "EqualTo"))
                {
                    strWhere += " = ";
                }
                else if ((cond.FilterOperator == "&gt;="))
                {
                    strWhere += " >= ";
                }
                else if ((cond.FilterOperator == "&lt;="))
                {
                    strWhere += " <= ";
                }
                else if ((cond.FilterOperator == "&gt;"))
                {
                    strWhere += " > ";
                }
                else if ((cond.FilterOperator == "&lt;"))
                {
                    strWhere += " < ";
                }
                else if ((cond.FilterOperator == "!="))
                {
                    strWhere += " <> ";
                }
                else
                {
                    strWhere += " " + cond.FilterOperator;
                }

                if ((cond.FilterOperator != "Is null"))
                {
                    strWhere += " " + cond.FilterOption;
                }

            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return strWhere.Replace("'", "''");
    }

    private string GenerateColumns(string columns)
    {
        if (columns == "All")
        {
            return columns;
        }
        string strColumns = "";
        try
        {
            foreach (string cond in columns.Split(','))
            {
                ColumnNameDis = cond;
                strColumns += (strColumns == "" ? "" : ", ") + ColumnNameDis;
            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return strColumns;
    }

    private string GenerateGroups(string columns)
    {
        if (columns == "All")
        {
            return columns;
        }
        string strColumns = "";
        try
        {
            foreach (string cond in columns.Split(','))
            {
                var strgroup = "";
                switch (cond.Trim())
                {
                    case "District":
                        strgroup = "DM.EnglishName";
                        break;
                    case "OfficeType":
                        strgroup = "OM.OfficeType";
                        break;
                    case "OfficeName":
                        strgroup = "OM.OfficeName";
                        break;
                    case "Designation":
                        strgroup = "DS.EnglishName";
                        break;
                    case "SubDesignation":
                        strgroup = "Isnull(SD.EnglishName,''--'')";
                        break;
                }
                if (strgroup != "")
                {
                    strColumns += (strColumns == "" ? "" : ", ") + strgroup;
                }

            }
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return strColumns;
    }

    public DataTable GetDynamicRecord(ICollection<QueryCondition> lstCondition, string columns = "All")
    {
        DataTable dt = new DataTable();
        try
        {
            dt = (new Dashboard_DBLayer()).GetDynamicRecord(GenearateWhere(lstCondition), GenerateColumns(columns));
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return dt;
    }

    public DataTable GetDynamicServiceRecord(ICollection<QueryCondition> lstCondition, string columns = "All", ICollection<QueryCondition> serviceCond = null)
    {
        DataTable dt = new DataTable();
        try
        {
            dt = (new Dashboard_DBLayer()).GetDynamicServiceRecord(GenearateWhere(lstCondition), GenerateColumns(columns), GenearateWhere(serviceCond));
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return dt;
    }

    public DataTable GetDynamicVacantRecord(ICollection<QueryCondition> lstCondition, string columns = "All", ICollection<QueryCondition> vacantCond = null)
    {
        DataTable dt = new DataTable();
        try
        {
            dt = (new Dashboard_DBLayer()).GetDynamicVacantRecord(GenearateWhere(lstCondition), GenerateColumns(columns), GenerateGroups(columns),GenearateHaving(vacantCond));
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return dt;
    }

}