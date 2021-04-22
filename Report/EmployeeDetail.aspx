<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeDetail.aspx.cs" Inherits="HRISDashboard.Report.EmployeeDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Language" content="en" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" href="<%=ResolveUrl("~/files/assets/images/favicon.ico")%>" type="image/x-icon" />
    <title>Employee Detail</title>
    <link href="<%=ResolveUrl("~/files/bower_components/bootstrap/css/bootstrap.min.css") %>" rel="stylesheet" />
    <style>
        .container-fluid {
            width: 98% !important
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid pt-3">
            <div class="row" style="border-bottom: 1px solid #ccc; padding-bottom: 7px">
                <div class="col-md-7" style="border-right: 1px solid #ccc">
                    <img src="<%= Page.ResolveUrl("~/files/assets/images/logo3.png")%>" class="img-fluid" alt="Directorate of Local Bodies(ULB)" />
                </div>
                <div class="col-md-5 pt-1">
                    <h4>
                        <label id="employeename" class="col-sm-12 col-form-label" runat="server"></label>
                    </h4>
                    <h5 style="margin-top: 15px;">
                        <asp:Label ID="lblCurrDate" runat="server" class="col-sm-12 col-form-label"></asp:Label></h5>
                </div>
            </div>

            <div class="row" style="border-bottom: 1px solid #ccc; padding-bottom: 7px">
                <div class="col-md-12">
                    <h5 class=" pt-3" style="border-bottom: 1px solid #ccc; padding-bottom: 7px">Basic Detail</h5>

                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group row">
                                <label for="employeecode" class="col-sm-5 col-form-label"><b>Employee Code :</b></label>
                                <div class="col-sm-7">
                                    <label id="employeecode" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                             <div class="form-group row">
                                <label for="empdob" class="col-sm-5 col-form-label"><b>Date of Birth :</b></label>
                                <div class="col-sm-7">
                                    <label id="empdob" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                             <div class="form-group row">
                                <label for="SourceRecruitment" class="col-sm-5 col-form-label"><b>Source Of Recruitment :</b></label>
                                <div class="col-sm-7">
                                    <label id="SourceRecruitment" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="currposting" class="col-sm-5 col-form-label"><b>Current Posting :</b></label>
                                <div class="col-sm-7">
                                    <label id="currposting" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                           
                            <div class="form-group row">
                                <label for="gradevetan" class="col-sm-5 col-form-label"><b>Grade Vetan :</b></label>
                                <div class="col-sm-7">
                                    <label id="gradevetan" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                            
                        </div>

                        <div class="col-md-4">
                            <div class="form-group row">
                                <label for="employeename2" class="col-sm-5 col-form-label"><b>Employee Name :</b></label>
                                <div class="col-sm-7">
                                    <label id="employeename2" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                           <div class="form-group row">
                                <label for="JoiningDate" class="col-sm-5 col-form-label"><b>Joining Date :</b></label>
                                <div class="col-sm-7">
                                    <label id="JoiningDate" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                           
                            
                            <div class="form-group row">
                                <label for="AppointmentOrderNo" class="col-sm-5 col-form-label"><b>Appointment OrderNo :</b></label>
                                <div class="col-sm-7">
                                    <label id="AppointmentOrderNo" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div> 
                            <div class="form-group row">
                                <label for="designationname" class="col-sm-5 col-form-label"><b>Designation Name:</b></label>
                                <div class="col-sm-7">
                                    <label id="designationname" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                           
                        </div>
                        <div class="col-md-4">
                             <div class="form-group row">
                                <label for="gender" class="col-sm-5 col-form-label"><b>Gender :</b></label>
                                <div class="col-sm-7">
                                    <label id="gender" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="empdor" class="col-sm-5 col-form-label"><b>Retirement Date :</b></label>
                                <div class="col-sm-7">
                                    <label id="empdor" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                              <div class="form-group row">
                                <label for="ClassName" class="col-sm-5 col-form-label"><b>Class :</b></label>
                                <div class="col-sm-7">
                                    <label id="ClassName" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                             <div class="form-group row">
                                <label for="vetanmaan" class="col-sm-5 col-form-label"><b>Vetanmaan :</b></label>
                                <div class="col-sm-7">
                                    <label id="vetanmaan" class="col-sm-12 col-form-label" runat="server">-</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <h5 class=" pt-3" style="border-bottom: 1px solid #ccc; padding-bottom: 7px">Academic/Professional Qualification</h5>

                    <div class="row">
                        <div class="col-md-12">

                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">S. No.</th>
                                        <th scope="col">Qualification</th>
                                        <th scope="col">Board/University</th>
                                        <th scope="col">Obtain Marks (%)</th>
                                        <th scope="col">Passing Year</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%if (dsQualification.Tables[0].Rows.Count > 0 && dsTransfer != null)
                                        {
                                            for (var data = 0; data < dsQualification.Tables[0].Rows.Count; data++)
                                            {%>
                                    <tr>
                                        <th scope="row"><%= data + 1 %>.</th>
                                        <td><%=dsQualification.Tables[0].Rows[data]["Education_Name"]%></td>
                                        <td><%=dsQualification.Tables[0].Rows[data]["Institute_Name"]%></td>
                                        <td><%=dsQualification.Tables[0].Rows[data]["Marks"]%></td>
                                        <td><%=dsQualification.Tables[0].Rows[data]["Passing_Year"]%></td>
                                    </tr>
                                    <%}
                                        }
                                        else
                                        {%>
                                    <tr>
                                        <td colspan="5">
                                            <center>Qualification Detail Not Found</center>
                                        </td>
                                    </tr>
                                    <%} %>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <h5 class=" pt-3" style="border-bottom: 1px solid #ccc; padding-bottom: 7px">Transfer/Promotion/ACP Service Details</h5>

                    <div class="row">
                        <div class="col-md-12">

                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">S.No.</th>
                                        <th scope="col">Transfer Type</th>
                                        <th scope="col">Order No.</th>
                                        <th scope="col">Order Date</th>
                                        <th scope="col">From Office</th>
                                        <th scope="col">To Office</th>
                                        <th scope="col">From Designation</th>
                                        <th scope="col">To Designation</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%if (dsTransfer.Tables[0].Rows.Count > 0 && dsTransfer != null)
                                        {
                                            for (var data = 0; data < dsTransfer.Tables[0].Rows.Count; data++)
                                            {%>
                                    <tr>
                                        <th scope="row"><%= data + 1 %>.</th>
                                        <td><%=dsTransfer.Tables[0].Rows[data]["TransferType"]%></td>
                                        <td><%=dsTransfer.Tables[0].Rows[data]["Order_No"]%></td>
                                        <td><%=dsTransfer.Tables[0].Rows[data]["orderdate"]%></td>
                                        <td><%=dsTransfer.Tables[0].Rows[data]["frmoffice"]%></td>
                                        <td><%=dsTransfer.Tables[0].Rows[data]["tooffice"]%></td>
                                        <td><%=dsTransfer.Tables[0].Rows[data]["frmdesig"]%></td>
                                        <td><%=dsTransfer.Tables[0].Rows[data]["todesig"]%></td>
                                    </tr>
                                    <%}
                                        }
                                        else
                                        {%>
                                    <tr>
                                        <td colspan="8">
                                            <center>Transfer Detail Not Found</center>
                                        </td>
                                    </tr>
                                    <%} %>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <h5 class=" pt-3" style="border-bottom: 1px solid #ccc; padding-bottom: 7px">Adverse Entry</h5>
                    <div class="row">
                        <div class="col-md-12">
                            <h5 style="text-align: center">This Employee has not any adverse entry in the last 10 years</h5>

                        </div>

                    </div>
                </div>
                <div class="col-md-12">
                    <h5 class=" pt-3" style="border-bottom: 1px solid #ccc; padding-bottom: 7px">ACR (Annual Confidential Report)</h5>
                    <div class="row">
                        <div class="col-md-12">

                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">S.No.</th>
                                        <th scope="col">Year</th>
                                        <th scope="col">From Date</th>
                                        <th scope="col">To Date</th>
                                        <th scope="col">Grading</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%if (dsACR.Tables[0].Rows.Count > 0 && dsACR != null)
                                        {
                                            for (var data = 0; data < dsACR.Tables[0].Rows.Count; data++)
                                            {%>
                                    <tr>
                                        <th scope="row"><%= data + 1 %>.</th>
                                        <td><%=dsACR.Tables[0].Rows[data]["FinYear"]%></td>
                                        <td><%=dsACR.Tables[0].Rows[data]["FromDate"]%>tto</td>
                                        <td><%=dsACR.Tables[0].Rows[data]["ToDate"]%></td>
                                        <td><%=dsACR.Tables[0].Rows[data]["Grading"]%></td>

                                    </tr>
                                    <%}
                                        }
                                        else
                                        {%>
                                    <tr>
                                        <td colspan="5">
                                            <center>ACR Detail Not Found</center>
                                        </td>
                                    </tr>
                                    <%} %>
                                </tbody>

                            </table>
                        </div>
                    </div>

                </div>


            </div>

        </div>
    </form>
</body>
</html>
