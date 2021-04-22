using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRISDashboard.Secure
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static int UserAuth(string username, string password)
        {
            int res = 0;
            try
            {
                if (username.Trim().ToLower()=="admin" && password.Trim() == "admin@123")
                {
                    HttpContext.Current.Session["User"] = "Admin";
                    res = 1;
                }
                return res;
            }
            catch (Exception ex)
            {
                return res;
            }
        }
    }
}