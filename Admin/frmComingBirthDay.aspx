<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="frmComingBirthDay.aspx.cs" Inherits="HRISDashboard.Admin.frmComingBirthDay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-body" style="margin-top: 28px;">
        <div class="page-wrapper">
            <div class="page-header card">
                <div class="row align-items-end">
                    <div class="col-lg-8">
                        <div class="page-header-title">
                            <i class="ti-gift bg-c-pink"></i>
                            <div class="d-inline">
                                <h4>Birthday Wishes</h4>
                                <span>Provide Information About Employee Birthday.</span>
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
                                <li class="breadcrumb-item"><a href="#!">Utility</a>
                                </li>
                                <li class="breadcrumb-item"><a href="#!">Birthday Wishes</a>
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
                                <h5>Birthday Wishes</h5>
                                <div class="btn-group f-right" role="group">
                                    <button type="button" class="btn btn-outline-primary btn-sm waves-effect waves-light" onclick="filterList('Today')" id="btnToday">Today</button>
                                    <button type="button" class="btn btn-outline-primary btn-sm waves-effect waves-light" onclick="filterList('Tommarow')" id="btnTommarow">Tommarow</button>
                                    <%--<button type="button" class="btn btn-outline-primary btn-sm waves-effect waves-light">Week</button>--%>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="position-relative row form-group">
                                    <label for="ddlDesignation" class="col-sm-1 col-form-label">Sending Message</label>
                                    <div class="col-sm-11">
                                        <textarea class="form-control" id="txtSendingMsg" rows="2" placeholder="Sending Message"></textarea>
                                    </div>
                                </div>
                                <div class="position-relative row form-group">
                                    <label for="ddlDesignation" class="col-sm-1 col-form-label"></label>
                                    <div class="col-sm-11">
                                        <button class="btn btn-primary" onclick="setMsg();"><i class="icofont icofont-ui-check"></i>Set To All</button>
                                    </div>
                                </div>
                                <div class="panel panel-success">
                                    <div class="panel-heading bg-info">
                                        Upcoming Birthday
                                    </div>
                                    <div class="panel-body">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-bordered wrap" id="dt_BirthdayList">
                                                <colgroup>
                                                    <col width="4%;" />
                                                    <col width="1%" />
                                                    <col width="7%" />
                                                    <col width="10%" />
                                                    <col width="5%" />
                                                    <col width="15%" />
                                                    <col width="5%" />
                                                    <col width="10%" />
                                                    <col width="7%" />

                                                    <col width="26%" />
                                                </colgroup>
                                                <thead>
                                                    <tr>
                                                        <th class="text-center">Serial No</th>
                                                        <th class="text-center">#</th>
                                                        <th>Date of Birth</th>
                                                        <th>ULB Name</th>
                                                        <th>Emp. Code</th>
                                                        <th>Employee Name</th>
                                                        <th>Gender</th>
                                                        <th>Designation</th>
                                                        <th>Contact No.</th>

                                                        <th>Sending Message</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="center pt-3 text-center">1</td>
                                                        <td class="center text-center">
                                                            <div class="checkbox-color checkbox-primary mr-0">
                                                                <input id="checkbox18" type="checkbox" checked="">
                                                                <label for="checkbox18" class="pl-0">
                                                                </label>
                                                            </div>
                                                        </td>
                                                        <td>NAGAR NIGAM AGRA</td>
                                                        <td>NAGAR NIGAM AGRA</td>
                                                        <td>NAGAR NIGAM AGRA</td>
                                                        <td>3977777777</td>
                                                        <td>01/01/2020</td>
                                                        <td>
                                                            <input type="text" class="form-control" placeholder="Sending Message" id="txtSendingMessage"></td>
                                                    </tr>
                                                </tbody>
                                                <tfoot>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="d-block text-left card-footer" style="background-color: #acafb730; padding: 15px 20px;">
                                <button class="btn btn-warning" onclick="sendMsg();"><i class="fa fa-send"></i>Send Msg</button>
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
                url: "frmComingBirthDay.aspx/GetEmployeeBirthday",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var dtEmpCount = $.parseJSON(r.d)
                    $('#dt_BirthdayList tbody').empty()
                    $.each(dtEmpCount, function (ind, val) {

                        var row = "<tr>"
                       
                        row += "<td class='center pt-3 text-center'>" + (ind + 1) + "</td>";
                        row += "<td class='center pt-3 text-center'><input id='chkBoxList" + (ind + 1) + "' type='checkbox' checked></div></td>";
                         row += "<td class='pt-3'>" + val.DateOfBirth + "</td>";
                        row += "<td class='pt-3'>" + val.OfficeName + "</td>";
                        row += "<td class='pt-3'>" + val.EmployeeCode + "</td>";
                        row += "<td class='pt-3'>" + val.EmployeeName + "</td>";
                        row += "<td class='center pt-3 text-center'>" + val.EmpGender + "</td>";
                        row += "<td class='pt-3'>" + val.DesignationName + "</td>";
                        
                        row += "<td class='pt-3'>" + val.ContactNo + "</td>";
                        row += "<td><input type='text' class='form-control' placeholder='Sending Message' id='txtSendingMessage'></td>";

                        row += "</tr>"

                        $('#dt_BirthdayList tbody').append(row);
                    })

                },
                error: function () {

                }
            });
        });

        function filterList(type) {

            event.preventDefault();
            $.ajax({
                type: "POST",
                url: "frmComingBirthDay.aspx/GetEmployeeBirthday",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var dtEmpCount = $.parseJSON(r.d)
                    $('#dt_BirthdayList tbody').empty()
                    $.each(dtEmpCount, function (ind, val) {
                    if (val.BirthType == type) {
                            var row = "<tr>"

                           row += "<td class='center pt-3 text-center'>" + (ind + 1) + "</td>";
                            row += "<td class='center pt-3 text-center'><input id='chkBoxList" + (ind + 1) + "' type='checkbox' checked></div></td>";
                             row += "<td class='pt-3'>" + val.DateOfBirth + "</td>";
                            row += "<td class='pt-3'>" + val.OfficeName + "</td>";
                            row += "<td class='pt-3'>" + val.EmployeeCode + "</td>";
                            row += "<td class='pt-3'>" + val.EmployeeName + "</td>";
                            row += "<td class='center pt-3 text-center'>" + val.EmpGender + "</td>";
                            row += "<td class='pt-3'>" + val.DesignationName + "</td>";
                        
                            row += "<td class='pt-3'>" + val.ContactNo + "</td>";
                            row += "<td><input type='text' class='form-control' placeholder='Sending Message' id='txtSendingMessage'></td>";

                            row += "</tr>"

                            $('#dt_BirthdayList tbody').append(row);
                        }
                    })

                },
                error: function () {

                }
            });

            if (type == "Today") {
                $("#btnToday").removeClass('btn-outline-primary');
                $("#btnToday").addClass('btn-primary');
               
                $("#btnTommarow").removeClass('btn-primary');
                $("#btnTommarow").addClass('btn-outline-primary');
                
            }
            else if (type == "Tommarow") {
                $("#btnToday").removeClass('btn-primary');
                $("#btnToday").addClass('btn-outline-primary');

                $("#btnTommarow").removeClass('btn-outline-primary');
                $("#btnTommarow").addClass('btn-primary');
            }
            else {
                $("#btnToday").removeClass('btn-primary');
                $("#btnToday").removeClass('btn-primary');

                $("#btnTommarow").addClass('btn-outline-primary');
                 $("#btnTommarow").addClass('btn-outline-primary');
            }
        }

        function setMsg() {
            event.preventDefault();
            var txtMsg = $('#txtSendingMsg').val();

            $("#dt_BirthdayList tbody").find('tr').each(function(){
                $(this).find("td:eq(9) input[type='text']").val(txtMsg);
            });
        }

        function sendMsg() {
            alert("Message Sent Successfully to Selected Employee.");
        }
    </script>
</asp:Content>
