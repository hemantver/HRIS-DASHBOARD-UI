<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="frmSearch.aspx.cs" Inherits="HRISDashboard.Admin.frmSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-body" style="margin-top: 28px;">
        <div class="page-wrapper">

            <div class="page-header card">
                <div class="row align-items-end">
                    <div class="col-lg-8">
                        <div class="page-header-title">
                            <i class="icofont icofont-radio-active bg-c-yellow"></i>
                            <div class="d-inline">
                                <h4>Parameter Base Employee Detail</h4>
                                <span>Provide Employee Information</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="page-header-breadcrumb">
                            <ul class="breadcrumb-title">
                                <li class="breadcrumb-item">
                                    <a href="Dashboard.aspx">
                                        <i class="icofont icofont-home"></i>
                                    </a>
                                </li>
                                <li class="breadcrumb-item"><a href="#!">MIS Report</a>
                                </li>
                                <li class="breadcrumb-item"><a href="#!">Primary Detail</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-body">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-header border-bottom-1" style="background-color: #acafb730; padding: 15px 20px;">
                                <h5>Search Criteria</h5>
                            </div>
                            <div class="card-body">
                                <div class="position-relative row form-group">
                                    <label for="ddlEmployeeType" class="col-sm-1 col-form-label">Employee Type</label>
                                    <div class="col-sm-5">
                                        <select class="js-example-basic-single form-control" id="ddlEmployeeType">
                                        </select>
                                    </div>
                                    <label for="ddlDistrict" class="col-sm-1 col-form-label">District</label>
                                    <div class="col-sm-5">
                                        <select class="js-example-basic-single form-control" id="ddlDistrict">
                                        </select>
                                    </div>
                                </div>
                                <div class="position-relative row form-group">
                                    <label for="ddlULBType" class="col-sm-1 col-form-label">ULB Type</label>
                                    <div class="col-sm-5">
                                        <select class="js-example-basic-single form-control" id="ddlULBType">
                                        </select>
                                    </div>
                                    <label for="ddlULBName" class="col-sm-1 col-form-label">ULB Name</label>
                                    <div class="col-sm-5">
                                        <select class="js-example-basic-single form-control" id="ddlULBName">
                                        </select>
                                    </div>
                                </div>
                                <div class="position-relative row form-group">
                                    <label for="ddlDesignation" class="col-sm-1 col-form-label">Designation</label>
                                    <div class="col-sm-5">
                                        <select class="js-example-basic-single form-control" id="ddlDesignation">
                                        </select>
                                    </div>
                                </div>
                                <div class="position-relative row form-group">
                                    <label for="txtEmployeeName" class="col-sm-1 col-form-label">EmployeeName</label>
                                    <div class="col-sm-11">
                                        <input type="text" class="form-control" placeholder="EmployeeName" id="txtEmployeeName">
                                    </div>
                                </div>
                                <div class="position-relative row form-group">
                                    <label for="ddlEmployeeCode" class="col-sm-1 col-form-label">Employee Code</label>
                                    <div class="col-sm-11">
                                        <select class="js-example-basic-single form-control" id="ddlEmployeeCode">
                                        </select>
                                    </div>
                                </div>
                                <div class="position-relative row form-group">
                                    <label for="txtJoiningYear" class="col-sm-1 col-form-label">Joining Year</label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" data-mask="9999" placeholder="Joining Year" id="txtJoiningYear">
                                    </div>
                                    <label for="txtRetirementYear" class="col-sm-1 col-form-label">Retirement Year</label>
                                    <div class="col-sm-5">
                                        <input type="text" class="form-control" data-mask="9999" placeholder="Retirement Year" id="txtRetirementYear">
                                    </div>
                                </div>
                                <div class="position-relative row form-group">
                                    <label for="ddlGroupBy" class="col-sm-1 col-form-label">Group By</label>
                                    <div class="col-sm-11">
                                        <select class="js-example-basic-single form-control" id="ddlGroupBy">
                                            <option value="">--Select--</option>
                                            <option value="EmployeeType">Employee Type</option>
                                            <option value="OfficeType">ULB Type</option>
                                            <option value="District">District</option>
                                            <option value="OfficeWise">ULB Wise</option>
                                            <option value="Designation">Designation</option>
                                            <option value="RetirementYear">Retirement Year</option>
                                            <option value="JoiningYear">Joining Year</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="d-block text-left card-footer" style="background-color: #acafb730; padding: 15px 20px;">
                                <button class="btn btn-primary" onclick="openReport();"><i class="icofont icofont-surgeon"></i>Search</button>
                                <button class="btn btn-dark"><i class="icofont icofont-taco"></i>Reset</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "POST",
                url: "frmSearch.aspx/GetEmployeeType",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var ddlType = $("#ddlEmployeeType");
                    ddlType.empty();
                    ddlType.append($("<option selected></option>").val('').html('--Select--'));
                    $.each(r.d, function () {
                        ddlType.append($("<option></option>").val(this['Value']).html(this['Text']));
                    });

                },
                error: function () {

                }

            });

            $.ajax({
                type: "POST",
                url: "frmSearch.aspx/GetDistrict",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var ddlType = $("#ddlDistrict");
                    ddlType.empty();
                    ddlType.append($("<option selected></option>").val('').html('--Select--'));
                    $.each(r.d, function () {
                        ddlType.append($("<option></option>").val(this['Value']).html(this['Text']));
                    });

                },
                error: function () {

                }
            });

            $.ajax({
                type: "POST",
                url: "frmSearch.aspx/GetULBType",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var ddlType = $("#ddlULBType");
                    ddlType.empty();
                    ddlType.append($("<option selected></option>").val('').html('--Select--'));
                    $.each(r.d, function () {
                        ddlType.append($("<option></option>").val(this['Value']).html(this['Text']));
                    });

                },
                error: function () {

                }
            });

            $.ajax({
                type: "POST",
                url: "frmSearch.aspx/GetULBName",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var ddlType = $("#ddlULBName");
                    ddlType.empty();
                    ddlType.append($("<option selected></option>").val('').html('--Select--'));
                    $.each(r.d, function () {
                        ddlType.append($("<option></option>").val(this['Value']).html(this['Text']));
                    });
                },
                error: function () {
                }
            });

            $.ajax({
                type: "POST",
                url: "frmSearch.aspx/GetDesingnation",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var ddlType = $("#ddlDesignation");
                    ddlType.empty();
                    ddlType.append($("<option selected></option>").val('').html('--Select--'));
                    $.each(r.d, function () {
                        ddlType.append($("<option></option>").val(this['Value']).html(this['Text']));
                    });

                },
                error: function () {

                }
            });

            $.ajax({
                type: "POST",
                url: "frmSearch.aspx/GetEmployeeCode",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var ddlType = $("#ddlEmployeeCode");
                    ddlType.empty();
                    ddlType.append($("<option selected></option>").val('').html('--Select--'));
                    $.each(r.d, function () {
                        ddlType.append($("<option></option>").val(this['Value']).html(this['Text']));
                    });
                    $('#overlay').hide();
                },
                error: function () {
                    $('#overlay').hide();
                }
            });
        });

        function openReport() {
            event.preventDefault();

            var GroupType = ($('#ddlGroupBy :selected').val() != "" && $('#ddlGroupBy :selected').val() != "--Select--" ? "RG=" + $('#ddlGroupBy :selected').val() : "");
            var EmployeeType = ($('#ddlEmployeeType :selected').text() != "" && $('#ddlEmployeeType :selected').text() != "--Select--" ? "EmployeeType=" + $('#ddlEmployeeType :selected').text() : "");
            var OfficeType = ($('#ddlULBType :selected').text() != "" && $('#ddlULBType :selected').text() != "--Select--" ? "OfficeType=" + $('#ddlULBType :selected').text() : "");
            var RetirementYear = ($('#txtRetirementYear').val() != "" && $('#txtRetirementYear').val() != "--Select--" ? "RetirementYear=" + $('#txtRetirementYear').val() : "");
            var JoiningYear = ($('#txtJoiningYear').val() != "" && $('#txtJoiningYear').val() != "--Select--" ? "JoiningYear=" + $('#txtJoiningYear').val() : "");
            var OfficeWise = ($('#ddlULBName :selected').text() != "" && $('#ddlULBName :selected').text() != "--Select--" ? "OfficeWise=" + $('#ddlULBName :selected').text() : "");
            var District = ($('#ddlDistrict :selected').text() != "" && $('#ddlDistrict :selected').text() != "--Select--" ? "District=" + $('#ddlDistrict :selected').text() : "");
            var Designation = ($('#ddlDesignation :selected').text() != "" && $('#ddlDesignation :selected').text() != "--Select--" ? "Designation=" + $('#ddlDesignation :selected').text() : "");
            var EmployeeName = ($('#txtEmployeeName').val() != "" && $('#txtEmployeeName').val() != "--Select--" ? "EmployeeName=" + $('#txtEmployeeName').val() : "");
            var EmployeeKey = ($('#ddlEmployeeCode :selected').val() != "" && $('#ddlEmployeeCode :selected').val() != "--Select--" ? "EmployeeKey=" + $('#ddlEmployeeCode :selected').val() : "");

            let a = document.createElement('a');
            a.target = '_blank';
            a.href =  "<%=ResolveUrl("~/Report/PrimaryReport.aspx")%>?" + GroupType + "&" + EmployeeType + "&" + OfficeType + "&" + RetirementYear + "&" + JoiningYear + "&" + OfficeWise + "&" + District + "&" + Designation + "&" + EmployeeName + "&" + EmployeeKey + "";
            a.click();

        }
    </script>
</asp:Content>
