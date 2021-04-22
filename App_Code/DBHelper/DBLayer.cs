using DBLibrary;
using HRISDashboard;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class DBLayer
{
    public static string Constr = ConfigurationManager.ConnectionStrings["ConnectionStr"].ConnectionString;
    public static string ExcelPath = ConfigurationManager.AppSettings["ExcelPath"].ToString();

    #region EmployeeService
    public int PostData(EmployeeService objSevice)
    {
        int intRowAffected = 0;
        try
        {

            string xmlPersonal = GlobalFunctions.ConvertToXMLFormat<emp_personal>(ref objSevice.Personal);
            string xmlAddress = GlobalFunctions.ConvertToXMLFormat<emp_address>(ref objSevice.Address);
            string xmlTransfer = GlobalFunctions.ConvertToXMLFormat<transferdetail>(ref objSevice.Transfer);

            SqlParameter[] objParam = new SqlParameter[] {
                new SqlParameter("@EmpPersonal",xmlPersonal),
                new SqlParameter("@EmpAddress",xmlAddress),
                new SqlParameter("@EmpTransfer",xmlTransfer),
                };
            object obj = SqlHelper.ExecuteScalar(Constr, CommandType.StoredProcedure, "PostTempData", objParam);
            if (obj != null && obj != DBNull.Value)
                intRowAffected = Convert.ToInt32(obj);
            else
                intRowAffected = 0;
            
            return intRowAffected;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public void BulkInsert(DataTable dt, string tableName)
    {
        using (SqlConnection connection = new SqlConnection(Constr))
        {
            // make sure to enable triggers
            // more on triggers in next post
            SqlBulkCopy bulkCopy =
                new SqlBulkCopy
                (
                connection,
                SqlBulkCopyOptions.TableLock |
                SqlBulkCopyOptions.FireTriggers |
                SqlBulkCopyOptions.UseInternalTransaction,
                null
                );

            // set the destination table name
            bulkCopy.DestinationTableName = tableName;
            connection.Open();

            // write the data in the "dataTable"
            bulkCopy.WriteToServer(dt);
            connection.Close();
        }
        // reset
        //this.dataTable.Clear();
    }
    #endregion
}