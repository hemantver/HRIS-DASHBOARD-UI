using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRISDashboard.Admin
{
    public partial class frmAdvanceSearch : System.Web.UI.Page
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
        public static ICollection<ListItem> GetColumnData(string columnname)
        {
            try
            {
                string tablename = "";
                if (columnname == "OfficeType" || columnname == "OfficeName")
                {
                    tablename = "dbo.OfficeMaster";
                }
                else if (columnname == "District")
                {
                    columnname = "EnglishName";
                    tablename = "dbo.DistrictMaster";
                }
                else if (columnname == "Designation")
                {
                    columnname = "EnglishName";
                    tablename = "dbo.DesignationMaster";
                }
                else if (columnname == "SubDesignation")
                {
                    columnname = "EnglishName";
                    tablename = "dbo.SubDesignationMaster";
                }
                else if (columnname == "Gender")
                {
                    columnname = "EmpGender";
                    tablename = "dbo.EmployeeMaster";
                }
                else
                {
                    tablename = "dbo.EmployeeMaster";
                }
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                return objDashboard_DBLayer.GetColumnValues(columnname, tablename);
            }
            catch (Exception ex)
            {
                return null;
            }
        }


        [WebMethod]
        public static string GetSearchRecord(string columnname, ICollection<QueryCondition> lstCondition)
        {
           
            try
            {
                QueryDesigner objQuery = new QueryDesigner();
                return JsonConvert.SerializeObject(objQuery.GetDynamicRecord(lstCondition, columnname));
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        [WebMethod]
        public static string GetSearchServiceRecord(string columnname, ICollection<QueryCondition> lstCondition, ICollection<QueryCondition> serviceCond)
        {

            try
            {
                QueryDesigner objQuery = new QueryDesigner();
                return JsonConvert.SerializeObject(objQuery.GetDynamicServiceRecord(lstCondition, columnname, serviceCond));
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        [WebMethod]
        public static string GetSearchVacantRecord(string columnname, ICollection<QueryCondition> lstCondition, ICollection<QueryCondition> vacantCond)
        {

            try
            {
                QueryDesigner objQuery = new QueryDesigner();
                return JsonConvert.SerializeObject(objQuery.GetDynamicVacantRecord(lstCondition, columnname, vacantCond));
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}