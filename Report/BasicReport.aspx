<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/ReportMaster.Master" AutoEventWireup="true" CodeBehind="BasicReport.aspx.cs" Inherits="HRISDashboard.Report.BasicReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="<%=ResolveUrl("~/files/bower_components/jquery/js/jquery.min.js") %>"></script>
    <script type="text/javascript">

        function CallPrint(strid) {
            var prtContent = document.getElementById(strid);
            var WinPrint = window.open('', '', 'letf=0,top=0,width=1000,height=1000,toolbar=0,scrollbars=2,status=0');
            var innerHtmlText = prtContent.innerHTML;
            //alert(innerHtmlText);
            for (; innerHtmlText.indexOf('DISPLAY: none;') >= 0 || innerHtmlText.indexOf('DISPLAY: none') >= 0;) {
                innerHtmlText = innerHtmlText.replace('DISPLAY: none;', '').replace('DISPLAY: none', '');
            }
            //  WinPrint.document.write('<link rel="stylesheet" type="text/css" href="<%= Page.ResolveUrl("~/files/assets/css/main.css")%>" />');
            WinPrint.document.write(innerHtmlText);

            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function SetHTMLinHidden() {
            document.getElementById("hidInnerHTML").value = document.getElementById("print_content").innerHTML;
        }
    </script>
    <input type="hidden" id="hidInnerHTML" name="hidInnerHTML" />
    <asp:HiddenField ID="hidExcelFileName" runat="server" />
    <div id="print_content">
        <div class="container-fluid" style="padding: 40px 40px 0px 40px;">
            <div class="row align-items-center" style="display: flex;">
                <div class="col-md-10 col-2 pr-0" style="padding-left: 10px">
                    <img src="<%= Page.ResolveUrl("~/files/assets/images/logo2.png")%>" style="width: 625px;" alt="Directorate of Local Bodies(ULB)" />
                </div>
                <%--  <div class="col-md-8  col-6 pl-0" >
                    <div class="Dep-title">
                        <h4 style="line-height: 1.2em; text-align:left; margin-top:0px">Document Management System (DMS),</h4>
                        <h5>Directorate of Local Bodies,Government of Uttar Pradesh</h5>
                    </div>
            </div>--%>

                <div class="col-md-2 col-3 d-print-none">
                    <asp:Panel ID="panel1" runat="server" class="text-right">
                        <a href="javascript:CallPrint('print_content');" class="view normal_english" title="Print Report">
                            <img src="../files/assets/images/print.png" width="24px" height="24px" border="0" alt="print" />
                        </a>
                        &emsp;
                    <%--<asp:LinkButton ID="LinkButton1" src="../img/excel.png" Text="" runat="server" CssClass="bt-excel">
                            <img src="../files/assets/images/excel.png" class="normal_english" style="width:25px;" />  
                    </asp:LinkButton>--%>
                    </asp:Panel>
                </div>

            </div>
        </div>
        <div class="container-fluid">
            <div style="clear: both; width: 100%;">
                <style type="text/css">
                    .smallest_eng {
                        font-family: 'Calibri';
                        font-size: 11px;
                        font-style: normal;
                        text-decoration: none;
                    }

                    @media print {
                        .d-print-none {
                            display: none !important;
                        }

                        .d-print-inline {
                            display: inline !important;
                        }
                    }

                    .reportHeaderEng {
                        font-family: 'Calibri';
                        font-size: 13px;
                        font-style: normal;
                        text-decoration: none;
                        font-weight: bold;
                        height: 20px;
                    }

                    .reportHeaderHindi {
                        font-family: 'DevLys 010';
                        font-size: 14px;
                        font-style: normal;
                        text-decoration: none;
                        background-color: #D6F0F8;
                        color: #333333;
                    }

                    .reportTextHindi {
                        font-family: 'DevLys 010';
                        font-size: 13.5px;
                        font-style: normal;
                        text-decoration: none;
                        color: #333333;
                    }

                    .reportTextEng {
                        font-family: 'Calibri';
                        font-size: 12px;
                        font-style: normal;
                        text-decoration: none;
                        color: #333333;
                    }

                    .smallest_hindi {
                        font-family: 'DevLys 010';
                        font-size: 13.5px;
                        font-style: normal;
                        text-decoration: none;
                    }

                    .normal_eng {
                        font-family: 'Arial';
                        font-size: 12px;
                        font-style: normal;
                        text-decoration: none;
                    }

                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }

                    .table td {
                        padding: 4px 4px 4px 4px;
                        border-collapse: collapse;
                        border: solid 1px #000000;
                        background-color: #FFFFFF;
                    }

                    .table th {
                        padding: 5px 5px 5px 5px;
                        border-collapse: collapse;
                        border: solid 1px #000000;
                        background-color: #ffffff;
                        font-size: 14px;
                    }
                </style>
                <div class="row">
                    <div class="space30">
                    </div>
                </div>
                <div style="width: 100%; float: left;">
                    <div style="width: 100%; float: left;">
                        <div style="width: 99%; float: left; margin: 5px 5px 5px 5px; padding-bottom: 2px; text-align: center;">
                            <%--<img src="http://upabs.in/Admin/img/UPSBB.png" style="width: 60px; height: 60px" />--%>
                        </div>
                    </div>
                    <div style="font-family: 'Calibri'; font-size: 16pt; float: left; width: 99%; text-align: center; color: #333; margin: 0px 5px 5px 5px;">
                        <strong>
                            <label id="lblHeading">List of Employee (HRIS Dashboard)</label><br />
                            <span id="lblgroupname"></span></strong>
                    </div>
                </div>
                <div style="clear: both;">
                    <ul style="margin: 2px; list-style: none; background: #f1f1f1; border: 1px solid #000000">
                        <li style="display: inline-block; padding: 5px; font-size: 14px; font-weight: 600;">Employee Type :</li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px;">
                            <label id="lblEmployeeType">--</label>
                        </li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px; font-weight: 600;">District :</li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px;">
                            <label id="lblDistrict">--</label></li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px; font-weight: 600;">ULB Type :</li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px;">
                            <label id="lblUlbType">--</label></li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px; font-weight: 600;">ULB Name :</li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px;">
                            <label id="lblUlbName">--</label></li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px; font-weight: 600;">Designation :</li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px;">
                            <label id="lblDesignation">--</label></li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px; font-weight: 600;">RetirementYear :</li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px;">
                            <label id="lblRetireYear">--</label></li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px; width: 220px" class="f-right d-print-none">
                            <input id="myInput" type="text" placeholder="Search.." style="width: 200px" /><i class="fa fa-search"></i></li>

                        <%--    <li style="display: inline-block; padding: 5px; font-size: 14px; font-weight: 600;">फ़ाइल कोड :</li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px;">
                            <asp:Label Text="--" runat="server" ID="lblFileCode" /></li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px; font-weight: 600;">विषय :</li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px;">
                            <asp:Label Text="--" runat="server" ID="lblSubject" /></li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px; font-weight: 600;">स्थिति :</li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px;">
                            <asp:Label Text="--" runat="server" ID="lblStatus" /></li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px; font-weight: 600;">ऑफिसर (पद) :</li>
                        <li style="display: inline-block; padding: 5px; font-size: 14px;">
                            <asp:Label Text="--" runat="server" ID="lblOfficer" /></li>--%>
                    </ul>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered" id="tblRecord">
                                <thead>
                                    <tr>
                                        <th style="text-align: center; width: 5%" id="thSrNo">Serial No</th>
                                        <th style="width: 8%" id="thIsVerfied">Is Verified</th>
                                        <th style="text-align: center; width: 8%" id="thEmployeeCode">Employee Code</th>
                                        <th style="width: 10%" id="thEmpType">Employee Type</th>
                                        <th style="width: 10%" id="thDistrict">District</th>
                                        <th style="width: 15%" id="thOffice">ULB/Office Name</th>
                                        <th style="width: 15%" id="thEmployeeName">Employee Name</th>
                                        <th style="width: 8%" id="thGuardianType">Guardian Type</th>
                                        <th style="width: 15%" id="thGuardianName">Guardian Name</th>
                                        <th style="width: 8%" id="thGender">Gender</th>
                                        <th style="width: 10%" id="thContactNo">Contact No</th>
                                        <th style="width: 10%" id="thDesignation">Designation</th>
                                        <th style="width: 10%" id="thSubDesignation">Sub-Designation</th>
                                        <th style="text-align: center; width: 7%" id="thDOB">Date of Birth</th>
                                        <th style="text-align: center; width: 7%" id="thDOJ">Date of Joining</th>
                                        <th style="text-align: center; width: 7%" id="thDOR">Date of Retirement</th>
                                        <th style="width: 20%" id="thEmployeeAddress">Employee Address</th>
                                    </tr>
                                </thead>
                                <tbody style="font-family: Calibri; font-size: 12px">
                                    <tr>
                                        <%--<td><%# Container.ItemIndex+1 %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"SectionName") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"FileTypeName") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"FSType") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"FileCode") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"FileName") %></td>

                                        <td><%# DataBinder.Eval(Container.DataItem,"Subject") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"OpeningYear") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"OfficerName") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"LastActionDate") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"PassedDays") %></td>
                                        <td><%# DataBinder.Eval(Container.DataItem,"CStatus") %></td>--%>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function getParameter(name) {
            var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
            if (results == null) {
                return "";
            }
            return decodeURI(results[1]) || 0;
        }

        $(document).ready(function () {
            var GroupType = getParameter("RG");

            var EmployeeType = getParameter("EmployeeType");
            var OfficeType = getParameter("OfficeType");
            var RetireYear = getParameter("RetireYear");
            var OfficeWise = getParameter("OfficeWise");
            var District = getParameter("District");
            var Designation = getParameter("Designation");
            var IsVerified = getParameter("IsVerified");

            if (EmployeeType != "") {
                $('#lblEmployeeType').text(EmployeeType);
            }

            if (OfficeType != "") {
                $('#lblUlbType').text(OfficeType);
            }

            if (RetireYear != "") {
                $('#lblRetireYear').text(RetireYear);
            }

            if (OfficeWise != "") {
                $('#lblUlbName').text(OfficeWise);
            }

            if (District != "") {
                $('#lblDistrict').text(District);
            }

            if (Designation != "") {
                $('#lblDesignation').text(Designation);
            }
            $('#tblRecord tbody').empty();

            $.ajax({
                type: "POST",
                url: "BasicReport.aspx/GetEmployeeDetail",
                data: '{RGroup:' + JSON.stringify(GroupType) + ',EmployeeType:' + JSON.stringify(EmployeeType) + ',OfficeType:' + JSON.stringify(OfficeType) + ',RetireYear:' + JSON.stringify(RetireYear) + ',OfficeWise:' + JSON.stringify(OfficeWise) + ',District:' + JSON.stringify(District) + ',IsVerified:' + JSON.stringify(IsVerified) + ',Designation:' + JSON.stringify(Designation) + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var arrRecord = r.d.split("E_E")
                    var record = $.parseJSON(arrRecord[0]);
                    var DistRecord = arrRecord[1];

                    var sr = 0;

                    if (DistRecord != "") {
                        DistRecord = $.parseJSON(arrRecord[1]);
                        $.each(DistRecord, function (ind, val) {
                            var count = 0;
                            var ver_emp = 0;
                            var nver_emp = 0;
                            var arrFiler = record.filter(function (i, v) {
                                return i[GroupType] == val[GroupType];
                            });

                            if (getParameter("RG") != "") {

                                if (GroupType == "EmployeeType") {
                                    $('#thEmpType').hide();

                                    var gheader = "<tr><td colspan=16 style='background-color: #f1f1f1;'><span style='font-weight:600; font-size:16px'> Employee Type : " + val[GroupType].toUpperCase() + "</td></tr>"
                                    $('#tblRecord tbody').append(gheader);

                                    $('#lblgroupname').text("Group By : Employee Type");
                                }

                                if (GroupType == "OfficeType") {
                                    var gheader = "<tr><td colspan=17 style='background-color: #f1f1f1;'><span style='font-weight:600; font-size:16px'> ULB Type :" + val[GroupType].toUpperCase() + "</td></tr>"
                                    $('#tblRecord tbody').append(gheader);

                                    $('#lblgroupname').text("Group By : ULB Type");
                                }

                                if (GroupType == "RetireYear") {
                                    var gheader = "<tr><td colspan=17 style='background-color: #f1f1f1;'><span style='font-weight:600; font-size:16px'> Retirement Year : " + val[GroupType] + "</td></tr>"
                                    $('#tblRecord tbody').append(gheader);

                                    $('#lblgroupname').text("Group By : Retirement Year");
                                }

                                if (GroupType == "OfficeWise") {
                                    $('#thOffice').hide();

                                    var gheader = "<tr><td colspan=16 style='background-color: #f1f1f1;'><span style='font-weight:600; font-size:16px'>ULB  : " + val[GroupType].toUpperCase() + "</td></tr>"
                                    $('#tblRecord tbody').append(gheader);

                                    $('#lblgroupname').text("Group By : ULB");
                                }

                                if (GroupType == "District") {
                                    $('#thDistrict').hide();

                                    var gheader = "<tr><td colspan=16 style='background-color: #f1f1f1;'><span style='font-weight:600; font-size:16px'> District : " + val[GroupType].toUpperCase() + "</td></tr>"
                                    $('#tblRecord tbody').append(gheader);

                                    $('#lblgroupname').text("Group By : District");
                                }

                                if (GroupType == "Designation") {
                                    $('#thDesignation').hide();

                                    var gheader = "<tr><td colspan=16 style='background-color: #f1f1f1;'><span style='font-weight:600; font-size:16px'> Designation : " + val[GroupType].toUpperCase() + "</td></tr>"
                                    $('#tblRecord tbody').append(gheader);

                                    $('#lblgroupname').text("Group By : Designation");
                                }

                                if (GroupType == "IsVerified") {
                                    $('#thIsVerfied').hide();

                                    var gheader = "<tr><td colspan=16 style='background-color: #f1f1f1;'><span style='font-weight:600; font-size:16px'>IsVerified : " + val[GroupType].toUpperCase() + "</td></tr>"
                                    $('#tblRecord tbody').append(gheader);
                                }
                            }

                            $.each(arrFiler, function (i, v) {
                                sr++;
                                count++;
                                var row = "<tr>"
                                row += "<td>" + (sr) + "</td>"

                                if (GroupType != "IsVerified") {
                                    if (v.IsVerified == "Yes") {
                                        ver_emp++;
                                        row += "<td><spna class='text-success'>" + v.IsVerified + "</span></td>"
                                    }
                                    else {
                                        row += "<td><spna class='text-danger'>" + v.IsVerified + "</span></td>"
                                        nver_emp++;
                                    }
                                }

                                row += "<td>" + v.EmployeeCode + "</td>"

                                if (GroupType != "EmployeeType") {
                                    row += "<td>" + v.EmployeeType + "</td>"
                                }
                                //
                                if (GroupType != "District") {
                                    row += "<td>" + v.District + "</td>"
                                }
                                if (GroupType != "OfficeWise") {
                                    row += "<td>" + v.OfficeName + "</td>"
                                }

                                row += "<td>" + v.EmployeeName + "</td>"
                                row += "<td>" + v.GuardianRelation + "</td>"
                                row += "<td>" + v.GuardianName + "</td>"
                                row += "<td>" + v.Gender + "</td>"

                                row += "<td>" + v.ContactNo + "</td>"
                                if (GroupType != "Designation") {
                                    row += "<td>" + v.Designation + "</td>"
                                }

                                row += "<td>" + v.SubDesignation + "</td>"

                                row += "<td>" + v.DateOfBirth + "</td>"
                                row += "<td>" + v.DateOfJoin + "</td>"
                                row += "<td>" + v.DateOfRetire + "</td>"

                                row += "<td>" + v.EmpAddress + "</td>"

                                row += "</tr>"

                                $('#tblRecord tbody').append(row);
                            });
                            if (getParameter("RG") != "") {
                                var gfoot = "<tr><td colspan=" + (GroupType == "RetireYear" || GroupType == "OfficeType" ? 17 : 16) + " style='background-color: #f1f1f1;'><span style='font-weight:600; font-size:16px'> TOTAL " + (GroupType == "RetireYear" ? val[GroupType] : val[GroupType].toUpperCase()) + " EMPLOYEE : " + count + "; <span class='text-success pl-2'> VERIFIED : " + ver_emp + ";<span><span class='text-danger pl-2'> NON-VERIFIED : " + nver_emp + "<span></td></tr>"
                                $('#tblRecord tbody').append(gfoot);
                            }

                        });
                    }
                    else {
                        var ver_emp = 0;
                        var nver_emp = 0;
                        $.each(record, function (i, v) {
                            sr++;

                            var row = "<tr>"
                            row += "<td>" + (sr) + "</td>"

                            if (GroupType != "IsVerified") {
                                if (v.IsVerified == "Yes") {
                                    ver_emp++;
                                    row += "<td><spna class='text-success'>" + v.IsVerified + "</span></td>"
                                }
                                else {
                                    row += "<td><spna class='text-danger'>" + v.IsVerified + "</span></td>"
                                    nver_emp++;
                                }
                            }

                            row += "<td>" + v.EmployeeCode + "</td>"

                            row += "<td>" + v.EmployeeType + "</td>"
                            row += "<td>" + v.District + "</td>"
                            row += "<td>" + v.OfficeName + "</td>"

                            row += "<td>" + v.EmployeeName + "</td>"
                            row += "<td>" + v.GuardianRelation + "</td>"
                            row += "<td>" + v.GuardianName + "</td>"
                            row += "<td>" + v.Gender + "</td>"

                            row += "<td>" + v.ContactNo + "</td>"
                            row += "<td>" + v.Designation + "</td>"
                            row += "<td>" + v.SubDesignation + "</td>"

                            row += "<td>" + v.DateOfBirth + "</td>"
                            row += "<td>" + v.DateOfJoin + "</td>"
                            row += "<td>" + v.DateOfRetire + "</td>"

                            row += "<td>" + v.EmpAddress + "</td>"

                            row += "</tr>"

                            $('#tblRecord tbody').append(row);
                        });
                        $('#tblRecord tfoot').empty;
                        var gfoot = "<tr><td colspan=17 style='background-color: #f5f5f5;'><span style='font-weight:600; font-size:16px'> TOTAL EMPLOYEE : " + sr + "; <span class='text-success pl-2'> Verfied : " + ver_emp + ";<span><span class='text-danger pl-2'> Non-Verfied : " + nver_emp + "<span></td></tr>"
                        $('#tblRecord tfoot').append(gfoot);
                    }
                }
            });
        });

        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#tblRecord tbody tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
</asp:Content>
