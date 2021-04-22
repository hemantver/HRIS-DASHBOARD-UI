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
    public partial class frmComingBirthDay : System.Web.UI.Page
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
        public static string GetEmployeeBirthday()
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                return JsonConvert.SerializeObject(objDashboard_DBLayer.GetEmployeeBirthday());
            }
            catch (Exception ex)
            {
                return "";
            }
        }

    }
}