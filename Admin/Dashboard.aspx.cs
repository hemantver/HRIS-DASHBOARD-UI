using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;


namespace HRISDashboard.Admin
{
    public partial class Dashboard : System.Web.UI.Page
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
        public static string GetEmployeeCount()
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                return JsonConvert.SerializeObject(objDashboard_DBLayer.GetEmployeeStatistics());
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        [WebMethod]
        public static string GetULBEmployeeCount(string empType)
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                DataTable dt = new DataTable();
                dt = objDashboard_DBLayer.GetULBEmployeeStatistics(empType);

                DataTable dtOffices = new DataTable();
                dtOffices = new DataView(dt).ToTable(true, "OfficeType");

                ArrayList arrList = new ArrayList(dtOffices.Rows.Count);
               
                foreach (DataRow dr in dtOffices.Rows)
                {
                    string[] arrString = new string[]
                        {
                             dr[0].ToString(), dt.Compute("SUM(EmployeeCount)","OfficeType = '"+dr[0].ToString()+"'").ToString()
                        };
                    arrList.Add(arrString);
                }

                DataTable dtDistricts = new DataTable();
                dtDistricts = new DataView(dt).ToTable(true, "EnglishName");

                ArrayList arrDistricts = new ArrayList(dtDistricts.Rows.Count);

                int ind = 1;
                string[] arrDistCol = new string[dtOffices.Rows.Count + 1];
                arrDistCol[0] = "Offices";
                //Add Column
                foreach (DataRow dr in dtOffices.Rows)
                {
                    arrDistCol[ind] = dr[0].ToString();
                    ind++;
                }
                arrDistricts.Add(arrDistCol);

                foreach (DataRow Disdr in dtDistricts.Rows)
                {
                    string[] arrString = new string[dtOffices.Rows.Count + 1];
                    arrString[0] = Disdr[0].ToString();

                    ind = 1;
                    foreach (DataRow dr in dtOffices.Rows)
                    {
                        arrString[ind] = dt.Compute("SUM(EmployeeCount)", "OfficeType = '" + dr[0].ToString() + "' And EnglishName = '"+ Disdr[0].ToString() + "'").ToString();
                        ind++;
                    }
                    arrDistricts.Add(arrString);
                }

                string str =  JsonConvert.SerializeObject(arrList) +"E_E"+ JsonConvert.SerializeObject(arrDistricts);
                return str;
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        [WebMethod]
        public static string GetEmployeeRetirement(string empType)
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                DataTable dt = new DataTable();
                dt = objDashboard_DBLayer.GetEmployeeRetirement(empType);

                DataTable dtOffices = new DataTable();
                dtOffices = new DataView(dt).ToTable(true, "OfficeType");

                DataTable dtYear = new DataTable();
                dtYear = new DataView(dt).ToTable(true, "RetYear");

                ArrayList arrYear = new ArrayList(dtYear.Rows.Count);

                int ind = 1;
                string[] arrYearCol = new string[dtOffices.Rows.Count + 1];
                arrYearCol[0] = "Year";

                //Add Column
                foreach (DataRow dr in dtOffices.Rows)
                {
                    arrYearCol[ind] = dr[0].ToString();
                    ind++;
                }
                arrYear.Add(arrYearCol);

                //Add Rows
                foreach (DataRow Disdr in dtYear.Rows)
                {
                    string[] arrString = new string[dtOffices.Rows.Count + 1];
                    arrString[0] = Disdr[0].ToString();

                    ind = 1;
                    foreach (DataRow dr in dtOffices.Rows)
                    {
                        arrString[ind] = dt.Compute("SUM(RetEmployee)", "OfficeType = '" + dr[0].ToString() + "' And RetYear = " + Disdr[0].ToString() + "").ToString();
                        ind++;
                    }
                    arrYear.Add(arrString);
                }

                string str = JsonConvert.SerializeObject(arrYear) + "E_E" + JsonConvert.SerializeObject(dt);
                return str;
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        [WebMethod]
        public static string GetEmployeeDesignationWise(string empType)
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                DataTable dt = new DataTable();
                dt = objDashboard_DBLayer.GetEmployeeDesignationWise(empType);
               
                string str = JsonConvert.SerializeObject(dt);
                return str;
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        [WebMethod]
        public static string GetEmployeeLocationWise(string empType)
        {
            try
            {
                Dashboard_DBLayer objDashboard_DBLayer = new Dashboard_DBLayer();
                DataTable dt = new DataTable();
                dt = objDashboard_DBLayer.GetEmployeeLocationWise(empType);

                string str = JsonConvert.SerializeObject(dt);
                return str;
            }
            catch (Exception ex)
            {
                return "";
            }
        }
    }
}