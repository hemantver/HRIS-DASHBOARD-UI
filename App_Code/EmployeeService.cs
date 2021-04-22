using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HRISDashboard
{
    public class EmployeeService
    {
        public ICollection<emp_personal> Personal;
        public ICollection<emp_address> Address;
        public ICollection<transferdetail> Transfer;

    }


    public enum Enum_Emp_PersonalCol
    {
        post_district = 0,
        Caste,
        Category,
        Current_Posting_Department,
        Current_Posting_Office,
        Current_Posting_Office_Address,
        Designation,
        SubDesignation,
        DOB,
        DOJ_CurrentOffice,
        Employee_Code,
        Employee_Name,
        EmployeeName_LocalLanguage,
        Gurdian_Type,
        Gurdian_Name,
        Employee_Type,
        eSalaryCode,
        EstablishmentDepartment,
        EstablishmentOffice,
        Gender,
        HomeDistrict,
        Marital_Status,
        ParentDepartment,
        RetirementDate,
        Cadre,
        CadreLevel,
        SourceOfAppointment,
        UID

    }
    public class emp_personal
    {
        public string post_district { get; set; }

        public string Caste { get; set; }

        public string Category { get; set; }

        public string Current_Posting_Department { get; set; }

        public string Current_Posting_Office { get; set; }

        public string Current_Posting_Office_Address { get; set; }

        public string Designation { get; set; }

        public string SubDesignation { get; set; }

        public string DOB { get; set; }

        public string DOJ_CurrentOffice { get; set; }

        public string Employee_Code { get; set; }

        public string Employee_Name { get; set; }

        public string EmployeeName_LocalLanguage { get; set; }

        public string Gurdian_Type { get; set; }

        public string Gurdian_Name { get; set; }

        public string eSalaryCode { get; set; }

        public string Employee_Type { get; set; }

        public string EstablishmentDepartment { get; set; }

        public string EstablishmentOffice { get; set; }

        public string Gender { get; set; }

        public string HomeDistrict { get; set; }

        public string Marital_Status { get; set; }

        public string ParentDepartment { get; set; }

        public string RetirementDate { get; set; }

        public string ServiceGrade { get; set; }

        public string ServiceName { get; set; }

        public string SourceOfAppointment { get; set; }

        public string UID { get; set; }

    }

    public enum Enum_Emp_AddressCol
    {
        Employee_Code =0,
        Email,
        Permanent_Address,
        Permanent_PhoneNo,
        Permanent_PinCode,
        Present_MobileNo,
        Present_PhoneNo,
        Present_PinCode,
        PresentAddress,
        Present_District

    }
    public class emp_address
    {
        public string Employee_Code { get; set; }

        public string Email { get; set; }

        public string Permanent_Address { get; set; }

        public string Permanent_PhoneNo { get; set; }

        public string Permanent_PinCode { get; set; }

        public string Present_MobileNo { get; set; }

        public string Present_PhoneNo { get; set; }

        public string Present_PinCode { get; set; }

        public string PresentAddress { get; set; }

        public string Present_District { get; set; }

    }

    public enum Enum_Emp_TransferCol
    {
        Employee_Code=0,
        Transaction_Name,
        Order_No,
        orderdate,
        From_State,
        From_Department,
        From_Department_InOtherState,
        frmoffice,
        From_Office_InOtherState,
        frmdesig,
        From_Designation_InOtherState,
        tostate,
        todept,
        To_Department_InOtherState,
        tooffice,
        To_Office_InOtherState,
        todesig,
        To_Designation_InOtherState,
        From_Date,
        To_Date
    }
    public class transferdetail
    {
        public string EmployeeCode { get; set; }

        public string Transaction_Name { get; set; }

        public string Order_No { get; set; }

        public string orderdate { get; set; }

        public string From_State { get; set; }

        public string From_Department { get; set; }

        public string From_Department_InOtherState { get; set; }

        public string frmoffice { get; set; }

        public string From_Office_InOtherState { get; set; }

        public string frmdesig { get; set; }

        public string From_Designation_InOtherState { get; set; }

        public string tostate { get; set; }

        public string todept { get; set; }

        public string To_Department_InOtherState { get; set; }

        public string tooffice { get; set; }

        public string To_Office_InOtherState { get; set; }

        public string todesig { get; set; }

        public string To_Designation_InOtherState { get; set; }

        public string FromDate { get; set; }

        public string ToDate { get; set; }

    }
}