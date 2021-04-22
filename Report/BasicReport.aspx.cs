using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRISDashboard.Report
{
    public partial class BasicReport : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/Secure/frmLogin.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        [WebMethod]
        public static string GetEmployeeDetail(string RGroup, string EmployeeType, string OfficeType, string RetireYear, string OfficeWise, string District, string IsVerified, string Designation)
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                DataTable dt = new DataTable();
                if (IsVerified!="")
                {
                    dt = objDashboard_DBLayer.GetEmployeeDetail(EmployeeType, OfficeType, (RetireYear != "" ? Convert.ToInt32(RetireYear) : 0), OfficeWise, District, Designation, (IsVerified != "" ? true : false), (Convert.ToBoolean(IsVerified)));
                }
                else
                {
                    dt = objDashboard_DBLayer.GetEmployeeDetail(EmployeeType, OfficeType, (RetireYear != "" ? Convert.ToInt32(RetireYear) : 0), OfficeWise, District, Designation);
                }

                if (RGroup != "")
                {
                    string strRGroup = JsonConvert.SerializeObject((new DataView(dt).ToTable(true, RGroup)));
                    return JsonConvert.SerializeObject(dt) + "E_E" + strRGroup;
                }
                else
                {
                    return JsonConvert.SerializeObject(dt) + "E_E" + "";
                }
             
            }
            catch (Exception ex)
            {
                return "";
            }
        }
    }
}