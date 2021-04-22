<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="frmAdvanceSearch.aspx.cs" Inherits="HRISDashboard.Admin.frmAdvanceSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-body" style="margin-top: 28px;">
        <div class="page-wrapper">
            <div class="page-header card">
                <div class="row align-items-end">
                    <div class="col-lg-8">
                        <div class="page-header-title">
                            <i class="icofont icofont-phoenix bg-c-green"></i>
                            <div class="d-inline">
                                <h4>Advance Query Base Employee Detail</h4>
                                <span>Provide Employee Information With Employee Search</span>
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
                                <div class="row">
                                    <div class="col-sm-10">
                                        <h5 class="font-weight-bold">Create Rule</h5>
                                    </div>
                                    <%--<div class="col-sm-2">
                                        <p class="text-primary mb-0 text-right">
                                           <button type="button" class="btn btn-primary btn-sm waves-effect waves-light"><i class="icofont icofont-info-square"></i>Refresh</button>
                                        </p>
                                    </div>--%>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <table class="table table-striped table-bordered">
                                        <colgroup>
                                            <col width="10%" />
                                            <col width="30%" />
                                            <col width="15%" />
                                            <col width="35%" />
                                            <col width="10%" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <td class="font-weight-bold text-center">Connector</td>
                                                <td class="font-weight-bold">Column Name</td>
                                                <td class="font-weight-bold">Operator/Operators</td>
                                                <td class="font-weight-bold">Column Value</td>
                                                <td class="font-weight-bold text-center">#</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">
                                                    <div class="btn-group" role="group">
                                                        <button type="button" class="btn btn-primary btn-sm waves-effect waves-light" onclick="setConnector(true)" id="btnAnd">And</button>
                                                        <button type="button" class="btn btn-primary btn-outline-primary btn-sm waves-effect waves-light" onclick="setConnector(false)" id="btnOr">OR</button>
                                                    </div>
                                                </td>
                                                <td>
                                                    <select class="js-example-basic-single form-control" id="ddlColumns" onchange="ddlColumns_onChange();">
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="js-example-basic-single form-control" id="ddlOperator" onchange="ddlOperator_onChange();">
                                                    </select>
                                                </td>
                                                <td id="tdOperatorInput">
                                                    <input type="text" class="form-control text-left" id="txtColumnValue" />
                                                </td>
                                                <td id="tdOperatorSingle">
                                                    <select class="js-example-basic-single form-control" id="ddlSingleValue">
                                                    </select>
                                                </td>
                                                <td id="tdOperatorMulti">
                                                    <select class="js-example-basic-multiple form-control" multiple id="ddlMultiValues">
                                                    </select>
                                                </td>
                                                <td class="text-center" id="tdOperatorbet">
                                                    <div class="row">
                                                        <div class="col-sm-5">
                                                            <input type="number" class="form-control text-right" id="txtFrom" />
                                                        </div>
                                                        <div class="col-sm-2 mt-2">
                                                            <span class="font-weight-bold text-center">To</span>
                                                        </div>
                                                        <div class="col-sm-5">
                                                            <input type="number" class="form-control text-right" id="txtTo" />
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <div class="btn-group" role="group">
                                                        <button class="btn btn-success btn-sm waves-effect waves-light" onclick="addRule();" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add Rule"><i class="fa fa-plus"></i></button>
                                                        <button class="btn btn-info btn-sm waves-effect waves-light" onclick="refreshRule();" data-toggle="tooltip" data-placement="top" title="" data-original-title="Reset Rule"><i class="fa fa-refresh"></i></button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="row">
                                    <table class="table table-striped table-bordered" id="tblRule">
                                        <colgroup>
                                            <col width="10%" />
                                            <col width="30%" />
                                            <col width="15%" />
                                            <col width="40%" />
                                            <col width="5%" />
                                        </colgroup>
                                        <thead>
                                            <tr style="background-color: #79a3ff5e;">
                                                <td class="font-weight-bold text-center">Connector</td>
                                                <td class="font-weight-bold">Column Name</td>
                                                <td class="font-weight-bold">Filter Operator</td>
                                                <td class="font-weight-bold">Filter Option</td>
                                                <td class="font-weight-bold text-center">#</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="row pt-3" style="background-color: #f2f2f2">
                                    <div class="col-sm-12">
                                        <div class="position-relative row form-group">
                                            <label for="ddlReportFor" class="col-sm-1 col-form-label font-weight-bold">Report For</label>
                                            <div class="col-sm-3">
                                                <select class="js-example-basic-single form-control" id="ddlReportFor" onchange="ReportFor_onChange();">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="background-color: #f2f2f2" id="divPostingCond">
                                    <div class="col-sm-6">
                                        <div class="position-relative row form-group">
                                            <label for="ddlPosting" class="col-sm-12 col-form-label font-weight-bold">Posting</label>
                                            <div class="col-sm-12">
                                                <select class="js-example-basic-single form-control" id="ddlPosting">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="position-relative row form-group">
                                            <label for="ddlPostingOperator" class="col-sm-12 col-form-label font-weight-bold">Operator</label>
                                            <div class="col-sm-12">
                                                <select class="js-example-basic-single form-control" id="ddlPostingOperator">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="position-relative row form-group">
                                            <label for="txtPostingDuration" class="col-sm-12 col-form-label font-weight-bold">Service Period (in year)</label>
                                            <div class="col-sm-12">
                                                <input type="number" class="form-control text-left" id="txtPostingDuration" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="background-color: #f2f2f2" id="divVacantCond">
                                    <div class="col-sm-6">
                                        <div class="position-relative row form-group">
                                            <label for="ddlVacantLevel" class="col-sm-12 col-form-label font-weight-bold">Vacant On</label>
                                            <div class="col-sm-12">
                                                <select class="js-example-basic-single form-control" id="ddlVacantLevel">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="position-relative row form-group">
                                            <label for="ddlVacantOperator" class="col-sm-12 col-form-label font-weight-bold">Operator</label>
                                            <div class="col-sm-12">
                                                <select class="js-example-basic-single form-control" id="ddlVacantOperator">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="position-relative row form-group">
                                            <label for="txtNosVacant" class="col-sm-12 col-form-label font-weight-bold">No of Vacant Post</label>
                                            <div class="col-sm-12">
                                                <input type="number" class="form-control text-left" id="txtNosVacant" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="background-color: #f2f2f2" id="divAttendance">
                                    <div class="col-sm-3">
                                        <div class="position-relative row form-group">
                                            <label for="ddlVacantLevel" class="col-sm-12 col-form-label font-weight-bold">Duration</label>
                                            <div class="col-sm-12">
                                                <select class="js-example-basic-single form-control" id="ddlAttendanceDuration">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="position-relative row form-group">
                                            <label for="ddlVacantLevel" class="col-sm-12 col-form-label font-weight-bold">Attendance</label>
                                            <div class="col-sm-12">
                                                <select class="js-example-basic-single form-control" id="ddlAttendanceType">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="position-relative row form-group">
                                            <label for="ddlVacantOperator" class="col-sm-12 col-form-label font-weight-bold">Operator</label>
                                            <div class="col-sm-12">
                                                <select class="js-example-basic-single form-control" id="ddlAttendanceOperator">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-3">
                                        <div class="position-relative row form-group">
                                            <label for="txtNosVacant" class="col-sm-12 col-form-label font-weight-bold">Percent(%)</label>
                                            <div class="col-sm-12">
                                                <input type="number" class="form-control text-left" id="txtAttendancePercent" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-sm-12">
                                        <div class="position-relative row form-group">
                                            <label for="ddlColumnDisp" class="col-sm-1 col-form-label font-weight-bold">Column To Be Display</label>
                                            <div class="col-sm-11">
                                                <select class="js-example-basic-multiple form-control" multiple id="ddlColumnDisp">
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-block text-left card-footer" style="background-color: #acafb730; padding: 15px 20px;">
                                <button class="btn btn-primary" onclick="searchRecord();" id="btnSearch"><i class="icofont icofont-surgeon"></i>Search</button>
                                <button class="btn btn-dark"><i class="icofont icofont-taco"></i>Reset</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id="divFilterRecord">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-header border-bottom-1" style="background-color: #acafb730; padding: 15px 20px;">
                                <h5>Filtered Record</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered" id="dt_FilterRecord">
                                        <thead>
                                            <tr>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        var arrStrCond = ['EqualTo', 'Like', 'Not Like', 'In', 'Not In', 'Is Null'];

        var arrIntCond = ['=', '!=', '>', '>=', '<', '<=', 'between']

        var arrReportFor = [{ Text: "Basic Detail", Value: "1" }, { Text: "Service Period", Value: "2" }, { Text: "Vacant Post", Value: "3" }, { Text: "Attendance", Value: "4" }];

        var arrPosting = [{ Text: "All Posting", Value: "All" }, { Text: "Current Posting", Value: "Current" }];

        var arrVacantOn = [{ Text: "Sanction Post", Value: "SanctionPost" }, { Text: "Occupied Post", Value: "OccupiedPost" }, { Text: "Vacant Post", Value: "VacantPost" }];

        var arrAttDuration = [{ Text: "Monthly", Value: "Monthly" }, { Text: "Quarterly", Value: "Quarterly" }, { Text: "Half-Yearly", Value: "HalfYearly" }, { Text: "Yearly", Value: "Yearly" }];

        var arrAttType = [{ Text: "Present", Value: "Present" }, { Text: "Absent", Value: "Absent" }];

        var OpConnect = true; //true for And. false for OR

        var Columns =
            [
                { Text: 'Office Type', Value: 'OfficeType', DType: 1 },
                { Text: 'District', Value: 'District', DType: 1 },
                { Text: 'ULB/Office Name', Value: 'OfficeName', DType: 1 },
                { Text: 'Employee Type', Value: 'EmployeeType', DType: 1 },
                { Text: 'Employee Code', Value: 'EmployeeCode', DType: 1 },

                { Text: 'Employee Name', Value: 'EmployeeName', DType: 1 },
                { Text: 'Guardian Relation', Value: 'GuardianRelation', DType: 1 },
                { Text: 'Guardian Name', Value: 'GuardianName', DType: 1 },
                { Text: 'Gender', Value: 'Gender', DType: 1 },

                { Text: 'ContactNo', Value: 'ContactNo', DType: 0 },
                { Text: 'Designation', Value: 'Designation', DType: 1 },
                { Text: 'Sub-Designation', Value: 'SubDesignation', DType: 1 },
                { Text: 'Joining Year', Value: 'JoiningYear', DType: 0 },
                { Text: 'Retirement Year', Value: 'RetirementYear', DType: 0 },

                { Text: 'Verified', Value: 'Verified', DType: 2 }

            ];

        var ColumnDisp =
            [
                { Text: 'Verified', Value: 'Verified', DType: 2 },
                { Text: 'Office Type', Value: 'OfficeType', DType: 1 },
                { Text: 'District', Value: 'District', DType: 1 },
                { Text: 'ULB/Office Name', Value: 'OfficeName', DType: 1 },
                { Text: 'Employee Type', Value: 'EmployeeType', DType: 1 },
                { Text: 'Employee Code', Value: 'EmployeeCode', DType: 1 },

                { Text: 'Employee Name', Value: 'EmployeeName', DType: 1 },
                { Text: 'Guardian Type', Value: 'GuardianRelation', DType: 1 },
                { Text: 'Guardian Name', Value: 'GuardianName', DType: 1 },
                { Text: 'Gender', Value: 'Gender', DType: 1 },

                { Text: 'ContactNo', Value: 'ContactNo', DType: 0 },
                { Text: 'Designation', Value: 'Designation', DType: 1 },
                { Text: 'Sub-Designation', Value: 'SubDesignation', DType: 1 },

                { Text: 'Date of Birth', Value: 'DateofBirth', DType: 0 },
                { Text: 'Date of Joining', Value: 'DateofJoining', DType: 0 },
                { Text: 'Date of Retirement', Value: 'DateofRetirement', DType: 0 },
                { Text: 'EmpAddress', Value: 'EmpAddress', DType: 0 },

            ];

        var ColumnDispService =
            [
                { Text: 'Verified', Value: 'Verified', DType: 2 },
                { Text: 'Office Type', Value: 'OfficeType', DType: 1 },
                { Text: 'District', Value: 'District', DType: 1 },
                { Text: 'ULB/Office Name', Value: 'OfficeName', DType: 1 },
                { Text: 'Employee Type', Value: 'EmployeeType', DType: 1 },
                { Text: 'Employee Code', Value: 'EmployeeCode', DType: 1 },

                { Text: 'Employee Name', Value: 'EmployeeName', DType: 1 },
                { Text: 'Gender', Value: 'Gender', DType: 1 },
                { Text: 'ContactNo', Value: 'ContactNo', DType: 0 },

                { Text: 'Transaction Name', Value: 'Transaction_Name', DType: 0 },
                { Text: 'Order No.', Value: 'Order_No', DType: 0 },
                { Text: 'Order Date', Value: 'OrderDate', DType: 0 },
                { Text: 'From Date', Value: 'FromDate', DType: 0 },
                { Text: 'From State', Value: 'From_State', DType: 0 },
                { Text: 'From Office', Value: 'FromOffice', DType: 0 },
                { Text: 'From Designation', Value: 'FromDesignation', DType: 0 },

                { Text: 'To Date', Value: 'ToDate', DType: 0 },
                { Text: 'To State', Value: 'ToState', DType: 0 },
                { Text: 'To Office', Value: 'ToOffice', DType: 0 },
                { Text: 'To Designation', Value: 'ToDesignation', DType: 0 },

                { Text: 'Service Period', Value: 'ServicePeriod', DType: 1 },

                { Text: 'Date of Birth', Value: 'DateofBirth', DType: 0 },
                { Text: 'Date of Joining', Value: 'DateofJoining', DType: 0 },
                { Text: 'Date of Retirement', Value: 'DateofRetirement', DType: 0 },
                { Text: 'EmpAddress', Value: 'EmpAddress', DType: 0 },

            ];

        var ColumnDispVacant =
            [
                { Text: 'District', Value: 'District', DType: 1 },
                { Text: 'Office Type', Value: 'OfficeType', DType: 1 },
                { Text: 'ULB/Office Name', Value: 'OfficeName', DType: 1 },

                { Text: 'Designation', Value: 'Designation', DType: 1 },
                { Text: 'Sub-Designation', Value: 'SubDesignation', DType: 1 },

                { Text: 'Sanction Post', Value: 'SanctionPost', DType: 0 },
                { Text: 'Occupied Post', Value: 'OccupiedPost', DType: 0 },
                { Text: 'Vacant Post', Value: 'VacantPost', DType: 0 }
            ];

        $(document).ready(function () {
            loadColumns();
            loadColumnDisp();
            loadOperator(0);
            setConnector(true);

            loadReportFor();
            $('#divPostingCond').hide();
            $('#divVacantCond').hide();
            $('#divAttendance').hide();
            loadOperatorSpc();

            loadPosting();
            loadVacantOn();
            loadAttDuration();
            loadAttType();

            $('#tdOperatorbet').hide();
            $('#tdOperatorMulti').hide();
            $('#tdOperatorSingle').hide();
            $("#tblRule").hide();
            $('#divFilterRecord').hide();

            $("#tblRule").on("click", ".deleteRow", function () {
                $(this).closest("tr").remove();

                if ($("#tblRule tbody tr").length == 0) {
                    $("#tblRule").hide();
                }
                else {
                    $("#tblRule").show();
                }
            });

        });

        function refreshRule() {
            event.preventDefault();
            loadColumns();
            loadOperator(0);
            setConnector(true);

            $('#ddlSingleValue').empty();
            $('#ddlMultiValues').empty();
            $('#txtColumnValue').val();
        }

        function loadColumns() {
            $('#ddlColumns').empty();
            $('#ddlColumns').append($("<option selected disabled hidden></option>").val('').html('--Select--'));
            $.each(Columns, function (ind, val) {
                $('#ddlColumns').append($("<option></option>").val(val.Value).html(val.Text).attr("data-type", val.DType));
            });
        }

        function loadColumnDisp() {
            $('#ddlColumnDisp').empty();
            $('#ddlColumnDisp').append($("<option selected disabled hidden></option>").val('').html('--Select--'));
            $.each(ColumnDisp, function (ind, val) {
                $('#ddlColumnDisp').append($("<option></option>").val(val.Value).html(val.Text));
            });

            $('#ddlColumnDisp').val(['EmployeeCode', 'EmployeeName', 'District', 'OfficeName', 'Designation', 'ContactNo', 'DateofBirth', 'DateofJoining', 'DateofRetirement']);

        }

        function loadColumnDispService() {
            $('#ddlColumnDisp').empty();
            $('#ddlColumnDisp').append($("<option selected disabled hidden></option>").val('').html('--Select--'));
            $.each(ColumnDispService, function (ind, val) {
                $('#ddlColumnDisp').append($("<option></option>").val(val.Value).html(val.Text));
            });

            $('#ddlColumnDisp').val(['EmployeeCode', 'EmployeeName', 'OfficeName', 'DateOfJoining', 'Order_No', 'OrderDate', 'FromOffice', 'FromDesignation', 'ServicePeriod']);

        }

        function loadColumnDispVacant() {
            $('#ddlColumnDisp').empty();
            $('#ddlColumnDisp').append($("<option selected disabled hidden></option>").val('').html('--Select--'));
            $.each(ColumnDispVacant, function (ind, val) {
                $('#ddlColumnDisp').append($("<option></option>").val(val.Value).html(val.Text));
            });

            $('#ddlColumnDisp').val(['District', 'OfficeType', 'OfficeName', 'Designation', 'SubDesignation', 'SanctionPost', 'OccupiedPost', 'VacantPost']);

        }

        function loadReportFor() {
            $('#ddlReportFor').empty();
            $.each(arrReportFor, function (ind, val) {
                $('#ddlReportFor').append($("<option></option>").val(val.Value).html(val.Text));
            });
        }

        function loadPosting() {
            $('#ddlPosting').empty();
            $.each(arrPosting, function (ind, val) {
                $('#ddlPosting').append($("<option></option>").val(val.Value).html(val.Text));
            });
        }

        function loadVacantOn() {
            $('#ddlVacantLevel').empty();
            $.each(arrVacantOn, function (ind, val) {
                $('#ddlVacantLevel').append($("<option></option>").val(val.Value).html(val.Text));
            });
        }

        function loadOperator(isStr) {
            if (isStr == 0) {
                $('#ddlOperator').empty();
                $('#ddlOperator').append($("<option selected disabled hidden></option>").val('').html('--Select--'));
                $.each(arrIntCond, function (ind, val) {
                    $('#ddlOperator').append($("<option></option>").val(val).html(val));
                });
            }
            else if (isStr == 2) {
                $('#ddlOperator').empty();
                $('#ddlOperator').append($("<option></option>").val('=').html('='));
            }
            else {
                $('#ddlOperator').empty();
                $('#ddlOperator').append($("<option selected></option>").val('').html('--Select--'));
                $.each(arrStrCond, function (ind, val) {
                    $('#ddlOperator').append($("<option></option>").val(val).html(val));
                });
            }
        }

        function loadOperatorSpc() {
            $('#ddlPostingOperator').empty();
            $.each(arrIntCond, function (ind, val) {
                if (val != "between") {
                    $('#ddlPostingOperator').append($("<option></option>").val(val).html(val));
                }
            });

            $('#ddlVacantOperator').empty();
            $.each(arrIntCond, function (ind, val) {
                if (val != "between") {
                    $('#ddlVacantOperator').append($("<option></option>").val(val).html(val));
                }
            });

            $('#ddlAttendanceOperator').empty();
            $.each(arrIntCond, function (ind, val) {
                if (val != "between") {
                    $('#ddlAttendanceOperator').append($("<option></option>").val(val).html(val));
                }
            });
        }

        function loadAttDuration() {
            $('#ddlAttendanceDuration').empty();
            $('#ddlAttendanceDuration').append($("<option selected disabled hidden></option>").val('').html('--Select--'));
            $.each(arrAttDuration, function (ind, val) {
                $('#ddlAttendanceDuration').append($("<option></option>").val(val.Value).html(val.Text).attr("data-type", val.DType));
            });
        }

        function loadAttType() {
            $('#ddlAttendanceType').empty();
            $('#ddlAttendanceType').append($("<option selected disabled hidden></option>").val('').html('--Select--'));
            $.each(arrAttType, function (ind, val) {
                $('#ddlAttendanceType').append($("<option></option>").val(val.Value).html(val.Text).attr("data-type", val.DType));
            });
        }

        function ReportFor_onChange() {

            if ($('#ddlReportFor option:selected').val() == "2") {
                $('#divPostingCond').show();
                $('#divAttendance').hide();
                $('#divVacantCond').hide();
                loadColumnDispService();
            }
            else if ($('#ddlReportFor option:selected').val() == "3") {
                $('#divPostingCond').hide();
                $('#divVacantCond').show();
                $('#divAttendance').hide();
                loadColumnDispVacant();
            }
            else if ($('#ddlReportFor option:selected').val() == "4") {
                $('#divPostingCond').hide();
                $('#divVacantCond').hide();
                $('#divAttendance').show();
                loadColumnDisp();
            }
            else {
                $('#divPostingCond').hide();
                $('#divVacantCond').hide();
                $('#divAttendance').hide();
                loadColumnDisp();
            }
        }

        function setConnector(connector) {
            OpConnect = connector;
            if (connector) {
                $("#btnOr").removeClass('btn-primary');
                $("#btnOr").addClass('btn-outline-primary');

                $("#btnAnd").removeClass('btn-outline-primary');
                $("#btnAnd").addClass('btn-primary');
            }
            else {
                $("#btnAnd").removeClass('btn-primary');
                $("#btnAnd").addClass('btn-outline-primary');

                $("#btnOr").removeClass('btn-outline-primary');
                $("#btnOr").addClass('btn-primary');
            }
        }

        function ddlOperator_onChange() {
            $('#txtColumnValue').removeAttr("readonly");

            if ($('#ddlOperator option:selected').val() == "EqualTo") {
                $('#tdOperatorbet').hide();
                $('#tdOperatorInput').hide();
                $('#tdOperatorMulti').hide();
                $('#tdOperatorSingle').show();
                $('#txtColumnValue').removeAttr("readonly");
            }
            else if ($('#ddlOperator option:selected').val() == "between") {
                $('#tdOperatorbet').show();
                $('#tdOperatorInput').hide();
                $('#tdOperatorMulti').hide();
                $('#tdOperatorSingle').hide();
                $('#txtColumnValue').removeAttr("readonly");
            }
            else if ($('#ddlOperator option:selected').val() == "Like" || $('#ddlOperator option:selected').val() == "Not Like") {
                $('#tdOperatorbet').hide();
                $('#tdOperatorInput').show();
                $('#tdOperatorMulti').hide();
                $('#tdOperatorSingle').hide();
                $('#txtColumnValue').removeAttr("readonly");
            }
            else if ($('#ddlOperator option:selected').val() == "In" || $('#ddlOperator option:selected').val() == "Not In") {
                $('#tdOperatorbet').hide();
                $('#tdOperatorInput').hide();
                $('#tdOperatorMulti').show();
                $('#tdOperatorSingle').hide();
                $('#txtColumnValue').removeAttr("readonly");
            }
            else if (($('#ddlOperator option:selected').val() == "=" || $('#ddlOperator option:selected').val() == "!="
                || $('#ddlOperator option:selected').val() == ">" || $('#ddlOperator option:selected').val() == ">="
                || $('#ddlOperator option:selected').val() == "<" || $('#ddlOperator option:selected').val() == "<="
            ) && $("#ddlColumns option:selected").val() != "Verified") {
                $('#tdOperatorbet').hide();
                $('#tdOperatorInput').show();
                $('#tdOperatorMulti').hide();
                $('#tdOperatorSingle').hide();
                $('#txtColumnValue').removeAttr("readonly");
            }
            else if ($("#ddlColumns option:selected").val() == "Verified") {
                $('#tdOperatorbet').hide();
                $('#tdOperatorInput').hide();
                $('#tdOperatorMulti').show();
                $('#tdOperatorSingle').hide();
                $('#txtColumnValue').removeAttr("readonly");
            }
            else if ($('#ddlOperator option:selected').val() == "Is Null") {
                $('#tdOperatorbet').hide();
                $('#tdOperatorInput').show();
                $('#tdOperatorSingle').hide();
                $('#txtColumnValue').attr("readonly", "readonly");
                $('#tdOperatorMulti').hide();
            }
        }

        function ddlColumns_onChange() {
            if ($("#ddlColumns option:selected").val() != "") {

                var dataType = $("#ddlColumns option:selected").attr("data-type");
                if (dataType != "") {
                    loadOperator(parseInt(dataType));
                }
                if ($("#ddlColumns option:selected").val() == "Verified") {
                    $('#ddlSingleValue').empty();
                    $('#ddlSingleValue').append($("<option></option>").val('true').html('Yes'));
                    $('#ddlSingleValue').append($("<option></option>").val('false').html('No'));
                }
                else {
                    $.ajax({
                        type: "POST",
                        url: "frmAdvanceSearch.aspx/GetColumnData",
                        data: '{columnname:' + JSON.stringify($("#ddlColumns option:selected").val()) + '}',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (r) {
                            var ddlMulti = $("#ddlMultiValues");
                            ddlMulti.empty();

                            var ddlSingle = $("#ddlSingleValue");
                            ddlSingle.empty();

                            $.each(r.d, function () {
                                ddlMulti.append($("<option></option>").val(this['Value']).html(this['Text']));
                                ddlSingle.append($("<option></option>").val(this['Value']).html(this['Text']));
                            });
                        },
                        error: function () {

                        }
                    });
                }

            }

        }

        function getValues() {
            var arrValues = $("#ddlMultiValues").val();

            var strValues = "(";

            $.each(arrValues, function (ind, val) {
                strValues += (strValues == "(" ? "" : ", ");
                strValues += "'" + val + "'";
            });

            return strValues += ")";
        }

        function getColumns() {
            var arrValues = $("#ddlColumnDisp").val();

            var strValues = "";

            $.each(arrValues, function (ind, val) {
                strValues += (strValues == "" ? "" : ", ");
                strValues += val;
            });

            return strValues += "";
        }

        function addRule() {
            event.preventDefault();
            if ($('#ddlColumns option:selected').val() != "0" && $('#ddlColumns option:selected').val() != "" && $('#ddlOperator option:selected').val() != "0" && $('#ddlOperator option:selected').val() != "") {
                $("#tblRule").show();
                var tblRule = $('#tblRule');

                var row = "<tr>";
                row += "<td class='text-center'>" + (OpConnect ? "AND" : "OR") + "</td>";
                row += "<td>" + $('#ddlColumns option:selected').text() + "</td>";
                row += "<td>" + $('#ddlOperator option:selected').text() + "</td>";

                if ($('#ddlOperator option:selected').val() == "EqualTo") {
                    row += "<td>'" + $('#ddlSingleValue option:selected').val() + "'</td>";
                }
                else if ($('#ddlOperator option:selected').val() == "between") {
                    row += "<td>" + $('#txtFrom').val() + " To " + $('#txtTo').val() + "</td>";
                }
                else if ($('#ddlOperator option:selected').val() == "Like" || $('#ddlOperator option:selected').val() == "Not Like") {
                    row += "<td>'%" + $('#txtColumnValue').val() + "%'</td>";
                }
                else if ($('#ddlOperator option:selected').val() == "In" || $('#ddlOperator option:selected').val() == "Not In") {
                    row += "<td>" + getValues(); + "</td>";
                }
                else if (($('#ddlOperator option:selected').val() == "=" || $('#ddlOperator option:selected').val() == "!="
                    || $('#ddlOperator option:selected').val() == ">" || $('#ddlOperator option:selected').val() == ">="
                    || $('#ddlOperator option:selected').val() == "<" || $('#ddlOperator option:selected').val() == "<="
                ) && $("#ddlColumns option:selected").val() != "Verified") {
                    row += "<td>" + $('#txtColumnValue').val() + "</td>";
                }
                else if ($("#ddlColumns option:selected").val() == "Verified") {
                    row += "<td>'" + $('#ddlSingleValue option:selected').val() + "'</td>";
                }
                else if ($('#ddlOperator option:selected').val() == "Is Null") {
                    row += "<td></td>";
                }


                row += "<td class='text-center'><button class='btn btn-danger btn-mini waves-effect waves-light deleteRow' data-toggle='tooltip' data-placement='top' title='' data-original-title='Delete Rule'><i class='icofont icofont-fast-delivery'></i></button></td>";
                row += "</tr>";

                tblRule.append(row);
            }


        }

        function searchRecord() {
            var condList = [];
            var cond = {};
            event.preventDefault();
            $('#divFilterRecord').show();
            $('#tblRule > tbody  > tr').each(function () {
                var cond = {};
                cond.Connnector = $($(this).find('td')[0]).html();
                cond.ColumnName = $($(this).find('td')[1]).html();
                cond.FilterOperator = $($(this).find('td')[2]).html();
                cond.FilterOption = $($(this).find('td')[3]).html();

                condList.push(cond);
            })



            if ($('#ddlReportFor option:selected').val() == "1") {
                $.ajax({
                    type: "POST",
                    url: "frmAdvanceSearch.aspx/GetSearchRecord",
                    data: '{columnname:' + JSON.stringify(getColumns()) + ', lstCondition : ' + JSON.stringify(condList) + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        if ($.fn.DataTable.isDataTable('#dt_FilterRecord')) {
                            var tables = $.fn.dataTable.fnTables(true);
                            $(tables).each(function () {
                                $(this).dataTable().fnClearTable();
                                $(this).dataTable().fnDestroy();
                            });
                        }

                        var tbl = $.parseJSON(r.d);
                        var columns = Object.getOwnPropertyNames(tbl[0]);

                        $('#dt_FilterRecord thead').empty();
                        var hrow = "<tr>";
                        hrow += "<th>Serial No.</th>";
                        $.each(columns, function (ind, val) {
                            hrow += "<th>" + val + "</th>";
                        })
                        hrow += "</tr>";
                        $('#dt_FilterRecord thead').append(hrow);

                        $('#dt_FilterRecord tbody').empty();

                        $.each(tbl, function (ind, val) {
                            var row = "<tr>";
                            row += "<td>" + (ind + 1) + "</td>";
                            $.each(columns, function (i, v) {
                                row += "<td>" + val[v] + "</td>";
                            })
                            row += "</tr>";
                            $('#dt_FilterRecord tbody').append(row);
                        });

                        if ($.fn.DataTable.isDataTable('#dt_FilterRecord')) {
                            var tables = $.fn.dataTable.fnTables(true);
                            $(tables).each(function () {
                                $(this).dataTable().fnClearTable();
                                $(this).dataTable().fnDestroy();
                            });
                        }

                        $('#dt_FilterRecord').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });

                    },
                    error: function () {

                    }
                });
            }
            else if ($('#ddlReportFor option:selected').val() == "2") {
                var serviceCond = [];
                if ($('#ddlPosting option:selected').val() == "Current") {
                    var cond = {};
                    cond.Connnector = "And";
                    cond.ColumnName = " CurrentToDate ";
                    cond.FilterOperator = "=";
                    cond.FilterOption = "getDate();";

                    serviceCond.push(cond);
                }

                if (($('#txtPostingDuration').val() != "" ? $('#txtPostingDuration').val() : 0) > 0) {
                    var cond = {};
                    cond.Connnector = "And";
                    cond.ColumnName = " ServicePeriod ";
                    cond.FilterOperator = $('#ddlPostingOperator option:selected').val();
                    cond.FilterOption = $('#txtPostingDuration').val();

                    serviceCond.push(cond);
                }

                $.ajax({
                    type: "POST",
                    url: "frmAdvanceSearch.aspx/GetSearchServiceRecord",
                    data: '{columnname:' + JSON.stringify(getColumns()) + ', lstCondition : ' + JSON.stringify(condList) + ', serviceCond : ' + JSON.stringify(serviceCond) + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        if ($.fn.DataTable.isDataTable('#dt_FilterRecord')) {
                            var tables = $.fn.dataTable.fnTables(true);
                            $(tables).each(function () {
                                $(this).dataTable().fnClearTable();
                                $(this).dataTable().fnDestroy();
                            });
                        }

                        var tbl = $.parseJSON(r.d);
                        var columns = Object.getOwnPropertyNames(tbl[0]);

                        $('#dt_FilterRecord thead').empty();
                        var hrow = "<tr>";
                        hrow += "<th>Serial No.</th>";
                        $.each(columns, function (ind, val) {
                            hrow += "<th>" + val + "</th>";
                        })
                        hrow += "</tr>";
                        $('#dt_FilterRecord thead').append(hrow);

                        $('#dt_FilterRecord tbody').empty();

                        $.each(tbl, function (ind, val) {
                            var row = "<tr>";
                            row += "<td>" + (ind + 1) + "</td>";
                            $.each(columns, function (i, v) {
                                if (v == "EmployeeCode") {
                                    row += "<td><a href='<%=ResolveUrl("~/Report/EmployeeDetail.aspx?EK=")%>" + val[v] + "' target='_blank'>" + val[v] + "</td>";
                                }
                                else
                                    row += "<td>" + val[v] + "</td>";
                            })
                            row += "</tr>";
                            $('#dt_FilterRecord tbody').append(row);
                        });

                        if ($.fn.DataTable.isDataTable('#dt_FilterRecord')) {
                            var tables = $.fn.dataTable.fnTables(true);
                            $(tables).each(function () {
                                $(this).dataTable().fnClearTable();
                                $(this).dataTable().fnDestroy();
                            });
                        }

                        $('#dt_FilterRecord').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });

                    },
                    error: function () {

                    }
                });
            }
            else if ($('#ddlReportFor option:selected').val() == "3") {
                var vacantCond = [];

                if (($('#txtNosVacant').val() != "" ? $('#txtNosVacant').val() : 0) > 0) {
                    var cond = {};
                    cond.Connnector = "And";
                    cond.ColumnName = $('#ddlVacantLevel option:selected').val();
                    cond.FilterOperator = $('#ddlVacantOperator option:selected').val();
                    cond.FilterOption = $('#txtNosVacant').val();

                    vacantCond.push(cond);
                }

                $.ajax({
                    type: "POST",
                    url: "frmAdvanceSearch.aspx/GetSearchVacantRecord",
                    data: '{columnname:' + JSON.stringify(getColumns()) + ', lstCondition : ' + JSON.stringify(condList) + ', vacantCond : ' + JSON.stringify(vacantCond) + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        if ($.fn.DataTable.isDataTable('#dt_FilterRecord')) {
                            var tables = $.fn.dataTable.fnTables(true);
                            $(tables).each(function () {
                                $(this).dataTable().fnClearTable();
                                $(this).dataTable().fnDestroy();
                            });
                        }

                        var tbl = $.parseJSON(r.d);
                        var columns = Object.getOwnPropertyNames(tbl[0]);

                        $('#dt_FilterRecord thead').empty();
                        var hrow = "<tr>";
                        hrow += "<th>Serial No.</th>";
                        $.each(columns, function (ind, val) {
                            hrow += "<th>" + val + "</th>";
                        })
                        hrow += "</tr>";
                        $('#dt_FilterRecord thead').append(hrow);

                        $('#dt_FilterRecord tbody').empty();

                        $.each(tbl, function (ind, val) {
                            var row = "<tr>";
                            row += "<td>" + (ind + 1) + "</td>";
                            $.each(columns, function (i, v) {
                                row += "<td>" + val[v] + "</td>";
                            })
                            row += "</tr>";
                            $('#dt_FilterRecord tbody').append(row);
                        });

                        if ($.fn.DataTable.isDataTable('#dt_FilterRecord')) {
                            var tables = $.fn.dataTable.fnTables(true);
                            $(tables).each(function () {
                                $(this).dataTable().fnClearTable();
                                $(this).dataTable().fnDestroy();
                            });
                        }

                        $('#dt_FilterRecord').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });

                    },
                    error: function () {

                    }
                });
            }

        }
    </script>
</asp:Content>
