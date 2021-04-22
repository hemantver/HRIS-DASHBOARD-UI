using HRISDashboard.CrReport;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRISDashboard.Report
{
    public partial class EmployeeDetail : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("~/Secure/frmLogin.aspx");
            }
        }
        public DataSet dsTransfer = new DataSet();
        public DataSet dsQualification = new DataSet();
        public DataSet dsACR = new DataSet();
        DataSet dsEmp = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                lblCurrDate.Text = "Dated: "+DateTime.Now.Date.ToShortDateString();

                Dashboard_DBLayer db = new Dashboard_DBLayer();
                dsEmp = db.GetEmployeeDetail(Request.QueryString.Get("EK").ToString());
                if (dsEmp.Tables[0].Rows.Count > 0)
                {
                    employeecode.InnerText = dsEmp.Tables[0].Rows[0]["EmployeeCode"].ToString();
                    employeename2.InnerText = dsEmp.Tables[0].Rows[0]["EmployeeName"].ToString();
                    employeename.InnerText = "Employee Detail - " + dsEmp.Tables[0].Rows[0]["EmployeeName"].ToString();
                    currposting.InnerText = dsEmp.Tables[0].Rows[0]["OfficeName"].ToString();

                    designationname.InnerText = dsEmp.Tables[0].Rows[0]["DesignationName"].ToString();
                    empdob.InnerText = dsEmp.Tables[0].Rows[0]["EmpDOB"].ToString();
                    empdor.InnerText = dsEmp.Tables[0].Rows[0]["EmpDOR"].ToString();

                    vetanmaan.InnerText = dsEmp.Tables[0].Rows[0]["Vetanmaan"].ToString();
                    gradevetan.InnerText = dsEmp.Tables[0].Rows[0]["GradeVetan"].ToString();

                    JoiningDate.InnerText = dsEmp.Tables[0].Rows[0]["EmpDOJ"].ToString();
                    SourceRecruitment.InnerText = dsEmp.Tables[0].Rows[0]["SourceOfAppointment"].ToString();

                    ClassName.InnerText = dsEmp.Tables[0].Rows[0]["ClassName"].ToString();
                    AppointmentOrderNo.InnerText = dsEmp.Tables[0].Rows[0]["Appointment_Order"].ToString();

                    gender.InnerText = dsEmp.Tables[0].Rows[0]["Gender"].ToString();
                }

                dsTransfer = db.GetTransferDetail(employeecode.InnerText);
                dsQualification = db.GetQualificationDetail(employeecode.InnerText);
                dsACR = db.GetACRDetail(employeecode.InnerText);

            }
        }
    }
}