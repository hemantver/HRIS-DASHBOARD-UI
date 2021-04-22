using DBLibrary;
using HRISDashboard;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

public class Dashboard_DBLayer
{
    #region Business Logic - "Dashboard Statistics"
    public DataTable GetEmployeeDetail(string EmployeeType = "", string OfficeType = "", int RetireYear = 0, string OfficeWise = "", string District = "", string Designation = "", bool VerifiedList = false, bool IsVerified = false)
    {
        DataTable dtRecord = new DataTable();
        try
        {
            if (!VerifiedList)
            {
                SqlParameter[] arrDBParam = new SqlParameter[] {
                    new SqlParameter("@EmployeeType",EmployeeType),
                    new SqlParameter("@OfficeType",OfficeType),
                    new SqlParameter("@RetireYear",RetireYear),
                    new SqlParameter("@OfficeWise",OfficeWise),
                    new SqlParameter("@District",District),
                     new SqlParameter("@Designation",Designation),
                    new SqlParameter("@QueryType","DistrictWiseEmployeeDetail")
                };

                SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
                dtRecord.Load(dr);
            }
            else
            {
                SqlParameter[] arrDBParam = new SqlParameter[] {
                    new SqlParameter("@EmployeeType",EmployeeType),
                    new SqlParameter("@OfficeType",OfficeType),
                    new SqlParameter("@RetireYear",RetireYear),
                    new SqlParameter("@OfficeWise",OfficeWise),
                    new SqlParameter("@District",District),
                    new SqlParameter("@IsVerified",IsVerified),
                     new SqlParameter("@Designation",Designation),
                    new SqlParameter("@QueryType","DistrictWiseEmployeeDetail")
                };

                SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
                dtRecord.Load(dr);
            }


        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetEmployeePrimaryDetail(string EmployeeType = "", string OfficeType = "", int RetireYear = 0, string OfficeWise = "", string District = "", string Designation = "", string EmployeeName = "", int EmployeeKey = 0, int JoiningYear = 0, bool VerifiedList = false, bool IsVerified = false)
    {
        DataTable dtRecord = new DataTable();
        try
        {
            if (!VerifiedList)
            {
                SqlParameter[] arrDBParam = new SqlParameter[] {
                    new SqlParameter("@EmployeeType",EmployeeType),
                    new SqlParameter("@OfficeType",OfficeType),
                    new SqlParameter("@RetireYear",RetireYear),
                    new SqlParameter("@OfficeWise",OfficeWise),
                    new SqlParameter("@District",District),
                    new SqlParameter("@Designation",Designation),

                    new SqlParameter("@EmployeeName",EmployeeName),
                    new SqlParameter("@EmployeeKey",EmployeeKey),
                    new SqlParameter("@JoiningYear",JoiningYear),

                    new SqlParameter("@QueryType","AdvanceSearchEmployeeDetail")
                };

                SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
                dtRecord.Load(dr);
            }
            else
            {
                SqlParameter[] arrDBParam = new SqlParameter[] {
                    new SqlParameter("@EmployeeType",EmployeeType),
                    new SqlParameter("@OfficeType",OfficeType),
                    new SqlParameter("@RetireYear",RetireYear),
                    new SqlParameter("@OfficeWise",OfficeWise),
                    new SqlParameter("@District",District),
                    new SqlParameter("@IsVerified",IsVerified),
                     new SqlParameter("@Designation",Designation),
                    new SqlParameter("@QueryType","DistrictWiseEmployeeDetail")
                };

                SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
                dtRecord.Load(dr);
            }


        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetServiceDetail(string EmployeeType = "", string OfficeType = "", int RetireYear = 0, string OfficeWise = "", string District = "", bool VerifiedList = false, bool IsVerified = false)
    {
        DataTable dtRecord = new DataTable();
        try
        {
            if (!VerifiedList)
            {
                SqlParameter[] arrDBParam = new SqlParameter[] {
                    new SqlParameter("@EmployeeType",EmployeeType),
                    new SqlParameter("@OfficeType",OfficeType),
                    new SqlParameter("@RetireYear",RetireYear),
                    new SqlParameter("@OfficeWise",OfficeWise),
                    new SqlParameter("@District",District),
                    new SqlParameter("@QueryType","ServiceDetail")
                };

                SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
                dtRecord.Load(dr);
            }
            else
            {
                SqlParameter[] arrDBParam = new SqlParameter[] {
                    new SqlParameter("@EmployeeType",EmployeeType),
                    new SqlParameter("@OfficeType",OfficeType),
                    new SqlParameter("@RetireYear",RetireYear),
                    new SqlParameter("@OfficeWise",OfficeWise),
                    new SqlParameter("@District",District),
                    new SqlParameter("@IsVerified",IsVerified),
                    new SqlParameter("@QueryType","ServiceDetail")
                };

                SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
                dtRecord.Load(dr);
            }


        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetServiceDetail(string EmployeeType = "", string OfficeType = "", int RetireYear = 0, string OfficeWise = "", string District = "", string EmployeeName = "", int EmployeeKey = 0, int JoiningYear = 0, bool VerifiedList = false, bool IsVerified = false)
    {
        DataTable dtRecord = new DataTable();
        try
        {
            if (!VerifiedList)
            {
                SqlParameter[] arrDBParam = new SqlParameter[] {
                    new SqlParameter("@EmployeeType",EmployeeType),
                    new SqlParameter("@OfficeType",OfficeType),
                    new SqlParameter("@RetireYear",RetireYear),
                    new SqlParameter("@OfficeWise",OfficeWise),
                    new SqlParameter("@District",District),


                    new SqlParameter("@EmployeeName",EmployeeName),
                    new SqlParameter("@EmployeeKey",EmployeeKey),
                    new SqlParameter("@JoiningYear",JoiningYear),

                    new SqlParameter("@QueryType","AdvanceSearchEmployeeDetail")
                };

                SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
                dtRecord.Load(dr);
            }
            else
            {
                SqlParameter[] arrDBParam = new SqlParameter[] {
                    new SqlParameter("@EmployeeType",EmployeeType),
                    new SqlParameter("@OfficeType",OfficeType),
                    new SqlParameter("@RetireYear",RetireYear),
                    new SqlParameter("@OfficeWise",OfficeWise),
                    new SqlParameter("@District",District),
                    new SqlParameter("@IsVerified",IsVerified),

                    new SqlParameter("@QueryType","DistrictWiseEmployeeDetail")
                };

                SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
                dtRecord.Load(dr);
            }


        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetServiceDetailByCode(Int64 EmployeeKey)
    {
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                    new SqlParameter("@EmployeeKey",EmployeeKey),
                    new SqlParameter("@QueryType","EmployeeDetailByCode")
                };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);


        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetEmployeeStatistics()
    {
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@QueryType","TotalEmployeeStatistics")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetEmployeeBirthday()
    {
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@QueryType","BirthDayWishes")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetULBEmployeeStatistics(string strType)
    {
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@EmployeeType",strType),
                new SqlParameter("@QueryType","ULBWiseEmployeeStatistics")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetEmployeeRetirement(string empType)
    {
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@EmployeeType",empType),
                new SqlParameter("@QueryType","GetEmployeeRetirement")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetEmployeeDesignationWise(string empType)
    {
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@EmployeeType",empType),
                new SqlParameter("@QueryType","DesignationWiseEmployeeStatistics")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetEmployeeLocationWise(string empType)
    {
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@EmployeeType",empType),
                new SqlParameter("@QueryType","LocationWiseEmployeeStatistics")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return dtRecord;
    }
    #endregion

    #region Business Logic - "Master Record"
    public ICollection<ListItem> GetEmployeeType()
    {
        List<ListItem> lst = new List<ListItem>();
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@QueryType","GetEmployeeType")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);

            foreach (DataRow row in dtRecord.Rows)
            {
                if (dtRecord.Columns.Count > 1)
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[1].ToString(),
                        }
                        );

                }
                else
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[0].ToString(),
                        }
                        );
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return lst;
    }

    public ICollection<ListItem> GetDistrict()
    {
        List<ListItem> lst = new List<ListItem>();
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@QueryType","GetDistrict")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);

            foreach (DataRow row in dtRecord.Rows)
            {
                if (dtRecord.Columns.Count > 1)
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[1].ToString(),
                        }
                        );

                }
                else
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[0].ToString(),
                        }
                        );
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return lst;
    }

    public ICollection<ListItem> GetULBType()
    {
        List<ListItem> lst = new List<ListItem>();
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@QueryType","GetULBType")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);

            foreach (DataRow row in dtRecord.Rows)
            {
                if (dtRecord.Columns.Count > 1)
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[1].ToString(),
                        }
                        );

                }
                else
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[0].ToString(),
                        }
                        );
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return lst;
    }

    public ICollection<ListItem> GetULBName()
    {
        List<ListItem> lst = new List<ListItem>();
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@QueryType","GetULBName")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);

            foreach (DataRow row in dtRecord.Rows)
            {
                if (dtRecord.Columns.Count > 1)
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[1].ToString(),
                        }
                        );

                }
                else
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[0].ToString(),
                        }
                        );
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return lst;
    }

    public ICollection<ListItem> GetDesingnation()
    {
        List<ListItem> lst = new List<ListItem>();
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@QueryType","GetDesingnation")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);

            foreach (DataRow row in dtRecord.Rows)
            {
                if (dtRecord.Columns.Count > 1)
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[1].ToString(),
                        }
                        );

                }
                else
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[0].ToString(),
                        }
                        );
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return lst;
    }

    public ICollection<ListItem> GetEmployeeCode()
    {
        List<ListItem> lst = new List<ListItem>();
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@QueryType","GetEmployeeCode")
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.Dashboard_DBLayer", arrDBParam);
            dtRecord.Load(dr);

            foreach (DataRow row in dtRecord.Rows)
            {
                if (dtRecord.Columns.Count > 1)
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[1].ToString(),
                        }
                        );

                }
                else
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[0].ToString(),
                        }
                        );
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return lst;
    }


    #endregion

    #region AdvanceQuery
    public ICollection<ListItem> GetColumnValues(string columnName, string tableName)
    {
        List<ListItem> lst = new List<ListItem>();
        DataTable dtRecord = new DataTable();
        try
        {
            SqlParameter[] arrDBParam = new SqlParameter[] {
                new SqlParameter("@columnname",columnName),
                new SqlParameter("@tableName",tableName)
            };

            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.StoredProcedure, "dbo.SP_DistinctRecord", arrDBParam);
            dtRecord.Load(dr);

            foreach (DataRow row in dtRecord.Rows)
            {
                if (dtRecord.Columns.Count > 1)
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[1].ToString(),
                        }
                        );

                }
                else
                {
                    lst.Add(
                        new ListItem()
                        {
                            Text = row[0].ToString(),
                            Value = row[0].ToString(),
                        }
                        );
                }
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return lst;
    }

    public DataTable GetDynamicRecord(string whereCond, string columnName = "All")
    {
        DataTable dtRecord = new DataTable();
        try
        {
            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.Text, "exec dbo.AQ_BasicDetail @columnname = '" + columnName + "', @wherecond = '" + whereCond + "'");
            dtRecord.Load(dr);
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetDynamicServiceRecord(string whereCond, string columnName = "All", string @ServiceCond = "")
    {
        DataTable dtRecord = new DataTable();
        try
        {
            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.Text, "exec dbo.AQ_ServicePeriod @columnname = '" + columnName + "', @wherecond = '" + whereCond + "', @ServiceCond = ' And " + @ServiceCond + "'");
            dtRecord.Load(dr);
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return dtRecord;
    }

    public DataTable GetDynamicVacantRecord(string whereCond, string columnName = "All", string groupby = "", string having = "")
    {
        DataTable dtRecord = new DataTable();
        try
        {
            SqlDataReader dr = SqlHelper.ExecuteReader(DBLayer.Constr, CommandType.Text, "exec dbo.AQ_PostVacant @columnname = '" + columnName + "', @wherecond = '" + whereCond + "', @GroupBy = '" + groupby + "', @Having = '"+ having + "'");
            dtRecord.Load(dr);
        }
        catch (Exception ex)
        {

            throw ex;
        }
        return dtRecord;
    }
    #endregion

    #region Business Logic - "Employee Details"
    //Transfer Details
    public DataSet GetTransferDetail(string employeecode)
    {
        DataSet ds = new DataSet();
        string str = "SELECT [EmployeeCode],[Transaction_Name] TransferType,Convert(varchar(10),orderdate,103) orderdate,[frmoffice],[tooffice],[frmdesig],[todesig],[FromDate],[ToDate],Order_No  " +
            "FROM [dbo].[transferdetail] where employeeCode = '" + employeecode + "' order by orderdate desc";
        ds = SqlHelper.ExecuteDataset(DBLayer.Constr, CommandType.Text, str);
        return ds;
    }

    //Qualification Details
    public DataSet GetQualificationDetail(string employeecode)
    {
        DataSet ds = new DataSet();
        string str = "SELECT Education_Name, Institute_Name, Marks, Passing_Year " +
            "FROM [dbo].[Emp_EducationDetails] where employeeCode = '" + employeecode + "' order by Passing_Year desc";
        ds = SqlHelper.ExecuteDataset(DBLayer.Constr, CommandType.Text, str);
        return ds;
    }

    //ACR Details
    public DataSet GetACRDetail(string employeecode)
    {
        DataSet ds = new DataSet();
        string str = "select FinYear, Convert(varchar(10),FromDate,103) as FromDate, Convert(varchar(10),ToDate,103) as ToDate, Grading from [dbo].[Emp_ACRDetail] where employeeCode='" + employeecode + "'";
        ds = SqlHelper.ExecuteDataset(DBLayer.Constr, CommandType.Text, str);
        return ds;
    }

    //Employee Details
    public DataSet GetEmployeeDetail(string employeecode)
    {
        DataSet ds = new DataSet();
        string str = "select A.EmployeeCode, A.EmployeeName, B.EnglishName as  DesignationName, C.OfficeName, " +
                    " Convert(varchar(10),A.EmpDOB,103) as EmpDOB, Convert(varchar(10),A.EmpDOR,103) as EmpDOR, Convert(varchar(10),A.EmpDOJ,103) as EmpDOJ ," +

                    " Isnull((select SourceOfAppointment from [dbo].[Emp_Professional] Where EmployeeCode =A.EmployeeCode),'--') as SourceOfAppointment ," +
                    " Isnull((select ClassName from [dbo].[Emp_Professional] Where EmployeeCode =A.EmployeeCode),'--') as ClassName ," +
                    " Isnull((select Appointment_Order from [dbo].[Emp_Professional] Where EmployeeCode =A.EmployeeCode),'--') as Appointment_Order ," +

                    " 0 as Vetanmaan, 0 as GradeVetan, Case When Isnull(A.EmpGender,'NA') = 'M' Then 'Male' When Isnull(A.EmpGender,'NA') = 'F' Then 'Female' When Isnull(A.EmpGender,'NA') = 'T' Then 'Transgender' Else Isnull(A.EmpGender,'NA') End Gender" +
                    " from[dbo].[EmployeeMaster] A " +
                    " INNER JOIN[dbo].[DesignationMaster] B ON A.CurDesignationKey = DesignationKey " +
                    " INNER JOIN[dbo].[OfficeMaster] C ON A.CurOfficeKey=C.OfficeKey " +
                    " where A.EmployeeCode='" + employeecode + "'";
        ds = SqlHelper.ExecuteDataset(DBLayer.Constr, CommandType.Text, str);
        return ds;
    }


    #endregion

}