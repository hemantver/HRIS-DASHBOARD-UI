using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HRISDashboard.Admin
{
    public partial class frmImportExcel : System.Web.UI.Page
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
        public static string UploadExcel(ICollection<CommonUploadFile> objList)
        {
            try
            {
                DataTable dtPersonal = new DataTable();
                DataTable dtAddress = new DataTable();
                DataTable dtTransfer = new DataTable();
                foreach (CommonUploadFile objCom in objList)
                {
                    dtPersonal = GetExcelRecord(objCom.FilePath, objCom.UniqueFileName, "Emppersonal");
                    dtAddress = GetExcelRecord(objCom.FilePath, objCom.UniqueFileName, "Address");
                    dtTransfer = GetExcelRecord(objCom.FilePath, objCom.UniqueFileName, "Service History");

                    new DBLayer().BulkInsert(dtPersonal, "dbo.emp_personal");
                    new DBLayer().BulkInsert(dtAddress, "dbo.emp_address");
                    new DBLayer().BulkInsert(dtTransfer, "dbo.transferdetail");
                }

                #region "WithObject"

                ////Load Personal Record
                //List<emp_personal> persnal = new List<emp_personal>();
                //foreach (DataRow row in dtPersonal.Rows)
                //{
                //    persnal.Add(new emp_personal()
                //    {
                //        Caste = row[(int)Enum_Emp_PersonalCol.Caste].ToString(),
                //        Category = row[(int)Enum_Emp_PersonalCol.Category].ToString(),
                //        Current_Posting_Department = row[(int)Enum_Emp_PersonalCol.Current_Posting_Department].ToString(),
                //        Current_Posting_Office = row[(int)Enum_Emp_PersonalCol.Current_Posting_Office].ToString(),
                //        Current_Posting_Office_Address = row[(int)Enum_Emp_PersonalCol.Current_Posting_Office_Address].ToString(),
                //        Designation = row[(int)Enum_Emp_PersonalCol.Designation].ToString(),
                //        DOB = row[(int)Enum_Emp_PersonalCol.DOB].ToString(),
                //        DOJ_CurrentOffice = row[(int)Enum_Emp_PersonalCol.DOJ_CurrentOffice].ToString(),
                //        EmployeeName_LocalLanguage = row[(int)Enum_Emp_PersonalCol.EmployeeName_LocalLanguage].ToString(),
                //        Employee_Code = row[(int)Enum_Emp_PersonalCol.Employee_Code].ToString(),
                //        Employee_Name = row[(int)Enum_Emp_PersonalCol.Employee_Name].ToString(),
                //        Employee_Type = row[(int)Enum_Emp_PersonalCol.Employee_Type].ToString(),
                //        eSalaryCode = row[(int)Enum_Emp_PersonalCol.eSalaryCode].ToString(),
                //        EstablishmentDepartment = row[(int)Enum_Emp_PersonalCol.EstablishmentDepartment].ToString(),
                //        EstablishmentOffice = row[(int)Enum_Emp_PersonalCol.EstablishmentOffice].ToString(),
                //        Gender = row[(int)Enum_Emp_PersonalCol.Gender].ToString(),
                //        Gurdian_Name = row[(int)Enum_Emp_PersonalCol.Gurdian_Name].ToString(),
                //        Gurdian_Type = row[(int)Enum_Emp_PersonalCol.Gurdian_Type].ToString(),
                //        HomeDistrict = row[(int)Enum_Emp_PersonalCol.HomeDistrict].ToString(),
                //        Marital_Status = row[(int)Enum_Emp_PersonalCol.Marital_Status].ToString(),
                //        ParentDepartment = row[(int)Enum_Emp_PersonalCol.ParentDepartment].ToString(),
                //        post_district = row[(int)Enum_Emp_PersonalCol.post_district].ToString(),
                //        RetirementDate = row[(int)Enum_Emp_PersonalCol.RetirementDate].ToString(),
                //        ServiceGrade = row[(int)Enum_Emp_PersonalCol.Cadre].ToString(),
                //        ServiceName = row[(int)Enum_Emp_PersonalCol.CadreLevel].ToString(),
                //        SourceOfAppointment = row[(int)Enum_Emp_PersonalCol.SourceOfAppointment].ToString(),
                //        SubDesignation = row[(int)Enum_Emp_PersonalCol.SubDesignation].ToString(),
                //        UID = row[(int)Enum_Emp_PersonalCol.UID].ToString(),
                //    });

                //}

                ////Load Address Record
                //List<emp_address> Address = new List<emp_address>();
                //foreach (DataRow row in dtPersonal.Rows)
                //{
                //    Address.Add(new emp_address()
                //    {
                //        Email = row[(int)Enum_Emp_AddressCol.Email].ToString(),
                //        Employee_Code = row[(int)Enum_Emp_AddressCol.Employee_Code].ToString(),
                //        Permanent_Address = row[(int)Enum_Emp_AddressCol.Permanent_Address].ToString(),
                //        Permanent_PhoneNo = row[(int)Enum_Emp_AddressCol.Permanent_PhoneNo].ToString(),
                //        Permanent_PinCode = row[(int)Enum_Emp_AddressCol.Permanent_PinCode].ToString(),
                //        PresentAddress = row[(int)Enum_Emp_AddressCol.PresentAddress].ToString(),

                //        Present_District = row[(int)Enum_Emp_AddressCol.Present_District].ToString(),
                //        Present_MobileNo = row[(int)Enum_Emp_AddressCol.Present_MobileNo].ToString(),
                //        Present_PhoneNo = row[(int)Enum_Emp_AddressCol.Present_PhoneNo].ToString(),
                //        Present_PinCode = row[(int)Enum_Emp_AddressCol.Present_PinCode].ToString(),

                //    });
                //}

                ////Load Address Record
                //List<transferdetail> transfer = new List<transferdetail>();
                //foreach (DataRow row in dtPersonal.Rows)
                //{
                //    transfer.Add(new transferdetail()
                //    {
                //        EmployeeCode =  row[(int)Enum_Emp_TransferCol.Employee_Code].ToString(),
                //        frmdesig = row[(int)Enum_Emp_TransferCol.frmdesig].ToString(),
                //        frmoffice = row[(int)Enum_Emp_TransferCol.frmoffice].ToString(),
                //        FromDate = row[(int)Enum_Emp_TransferCol.From_Date].ToString(),
                //        From_Department = row[(int)Enum_Emp_TransferCol.From_Department].ToString(),
                //        From_Department_InOtherState = row[(int)Enum_Emp_TransferCol.From_Department_InOtherState].ToString(),
                //        From_Designation_InOtherState = row[(int)Enum_Emp_TransferCol.From_Designation_InOtherState].ToString(),
                //        From_Office_InOtherState = row[(int)Enum_Emp_TransferCol.From_Office_InOtherState].ToString(),
                //        From_State = row[(int)Enum_Emp_TransferCol.From_State].ToString(),
                //        orderdate = row[(int)Enum_Emp_TransferCol.orderdate].ToString(),
                //        Order_No = row[(int)Enum_Emp_TransferCol.Order_No].ToString(),
                //        ToDate = row[(int)Enum_Emp_TransferCol.To_Date].ToString(),
                //        todept =  row[(int)Enum_Emp_TransferCol.todept].ToString(),
                //        todesig = row[(int)Enum_Emp_TransferCol.todesig].ToString(),
                //        tooffice = row[(int)Enum_Emp_TransferCol.tooffice].ToString(),
                //        tostate = row[(int)Enum_Emp_TransferCol.tostate].ToString(),
                //        To_Department_InOtherState = row[(int)Enum_Emp_TransferCol.To_Department_InOtherState].ToString(),
                //        To_Designation_InOtherState = row[(int)Enum_Emp_TransferCol.To_Designation_InOtherState].ToString(),
                //        To_Office_InOtherState = row[(int)Enum_Emp_TransferCol.To_Office_InOtherState].ToString(),
                //        Transaction_Name = row[(int)Enum_Emp_TransferCol.Transaction_Name].ToString(),

                //    });
                //}
                #endregion

               

                return "{\"StatusCode\":\"200\", \"Msg\":\"Record Saved Successfully.\"}";
                //if (new DBLayer().PostData(new EmployeeService() { Address = Address, Personal = persnal, Transfer = transfer}) > 0)
                //{
                    
                //}
                //else
                //    return "{\"StatusCode\":\"200\", \"Msg\":\"Record Not Saved.\"}";
                //System.IO.File.Delete(System.Web.HttpContext.Current.Server.MapPath("~/UploadBulkQuestion/" + System.IO.Path.GetFileName(uploadfile.FileName)));

            }
            catch (Exception ex)
            {
                return "{\"StatusCode\":\"200\", \"Msg\":\"Record Saved Successfully.\"}";
            }
        }

        private static DataTable GetExcelRecord(string filePath, string fileName, string SheetName)
        {
            try
            {
                DataTable dtExcelData = new DataTable();
                string conString = string.Empty;
                string extension = Path.GetExtension(fileName);
                switch (extension)
                {
                    case ".xls": //Excel 97-03
                        conString = ConfigurationManager.ConnectionStrings["ExcelConString03"].ConnectionString;
                        break;
                    case ".xlsx": //Excel 07 or higher
                        conString = ConfigurationManager.ConnectionStrings["ExcelConString07"].ConnectionString;
                        break;

                }

                conString = string.Format(conString, System.Web.HttpContext.Current.Server.MapPath("../"+ filePath + "/" + System.IO.Path.GetFileName(fileName)));
                using (OleDbConnection excel_con = new OleDbConnection(conString))
                {
                    excel_con.Open();
                    string sheet1 = excel_con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null).Rows[0]["TABLE_NAME"].ToString();

                    using (OleDbDataAdapter oda = new OleDbDataAdapter("SELECT * FROM [" + SheetName + "$]", excel_con))
                    {
                        oda.Fill(dtExcelData);
                    }
                    excel_con.Close();
                }

                return dtExcelData;
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
    }
}