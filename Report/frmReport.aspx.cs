using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRISDashboard.Report
{
    public partial class frmReport : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/Secure/frmLogin.aspx");
            }
        }
        ReportDocument ObjRpt = new ReportDocument();

        protected void Page_Load(object sender, EventArgs e)
        {
            string RptPath = "~/CrReport/";
            string rptname = "EmployeeReport.rpt";
            try
            {
                DataTable dt = new DataTable();
                Dashboard_DBLayer objDb = new Dashboard_DBLayer();
                
                Int64 EmpKey = Convert.ToInt32(Request.QueryString["EK"]);

                if (EmpKey > 0)
                {
                    dt = objDb.GetServiceDetailByCode(EmpKey);

                    
                    if (dt.Rows.Count > 0)
                    {
                        string connString = ConfigurationManager.ConnectionStrings["ConnectionStr"].ConnectionString;
                        SqlConnectionStringBuilder connStringBuilder = new SqlConnectionStringBuilder(connString);

                        ObjRpt.Load(Server.MapPath(RptPath + rptname));
                       
                        ObjRpt.SetDatabaseLogon(connStringBuilder.UserID, connStringBuilder.Password, connStringBuilder.DataSource, connStringBuilder.InitialCatalog);
                        ObjRpt.SetDataSource(dt);

                        CRViewer.ReportSource = ObjRpt;
                        CRViewer.RefreshReport();

                        ObjRpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "EmployeeServiceDetail");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "info alert", "alert('No Record Found.'); window.history.go(-1);", true);
                    }
                }
            }
            catch (Exception ex)
            {
                ObjRpt.Close();
                ObjRpt.Dispose();

                throw ex;
            }
            finally
            {
                ObjRpt.Close();
                ObjRpt.Dispose();
            }

        }
    }
}