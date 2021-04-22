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
    public partial class frmSearch : System.Web.UI.Page
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
        public static ICollection<ListItem> GetEmployeeType()
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                return objDashboard_DBLayer.GetEmployeeType();
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        [WebMethod]
        public static ICollection<ListItem> GetDistrict()
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                return objDashboard_DBLayer.GetDistrict();
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        [WebMethod]
        public static ICollection<ListItem> GetULBType()
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                return objDashboard_DBLayer.GetULBType();
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        [WebMethod]
        public static ICollection<ListItem> GetULBName()
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                return objDashboard_DBLayer.GetULBName();
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        [WebMethod]
        public static ICollection<ListItem> GetDesingnation()
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                return objDashboard_DBLayer.GetDesingnation();
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        [WebMethod]
        public static ICollection<ListItem> GetEmployeeCode()
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                return objDashboard_DBLayer.GetEmployeeCode();
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}