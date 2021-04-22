<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="HRISDashboard.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="theme-loader">
        <div class="ball-scale">
            <div class='contain'>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
                <div class="ring">
                    <div class="frame"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-body">
        <div class="page-wrapper">
            <div class="page-body m-t-20">
                <div class="row">
                    <div class="col-md-6 col-xl-3">
                        <div class="card widget-card-1">
                            <div class="card-block-small">
                                <i class="icofont icofont-prescription bg-c-pink card1-icon"></i>
                                <span class="text-c-pink f-20 f-w-600">Total Registered Employee</span>
                                <h4>
                                    <label id="lblTotalRegEmp" class="count">102565</label></h4>
                                <div class="b-t-default m-t-5 p-t-10">
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-12 text-center">
                                            <p class="text-c-green m-0 f-w-600 f-18">Verified</p>
                                            <span class="f-w-600 f-18">
                                                <label id="lblTotalRegEmpVer" class="count">22005</label></span>
                                            <div class="progress m-t-10">
                                                <div class="progress-bar bg-c-green" style="width: 58%" id="divTotalRegEmpVer">
                                                    <label id="lblTotalRegEmpVerPer">58</label>% 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-xs-12 text-center">
                                            <p class="text-c-pink m-0 f-w-600 f-18">Non-Verified</p>
                                            <span class="f-w-600 f-18">
                                                <label id="lblTotalRegEmpNVer" class="count">80560</label></span>
                                            <div class="progress m-t-10">
                                                <div class="progress-bar bg-c-pink" style="width: 69%" id="divTotalRegEmpNVer">
                                                    <label id="lblTotalRegEmpNVerPer">69</label>%
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <p class="text-muted mt-3 mb-0 text-left">
                                                As Per Bio-Metric Attendance
                                            </p>
                                        </div>
                                        <div class="col-md-4">
                                            <p class="text-primary mt-3 mb-0 text-right">
                                                <a href="<%=ResolveUrl("~/Report/BasicReport.aspx?RG=EmployeeType")%>" class="text-primary" target="_blank">View More<i class="icofont icofont-chart-histogram ml-1"></i></a>
                                            </p>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3">
                        <div class="card widget-card-1">
                            <div class="card-block-small">
                                <i class="icofont icofont-cur-rouble-true bg-c-green card1-icon"></i>
                                <span class="text-c-green f-20 f-w-600">Total Directorate Employee</span>
                                <h4>
                                    <label id="lblTotalDirEmp" class="count">11779</label></h4>
                                <div class="b-t-default m-t-5 p-t-10">
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-12 text-center">
                                            <p class="text-c-green m-0 f-w-600 f-18">Verified</p>
                                            <span class="f-w-600 f-18">
                                                <label id="lblTotalDirEmpVer" class="count">80560</label></span>
                                            <div class="progress m-t-10">
                                                <div class="progress-bar bg-c-green" style="width: 69%" id="divTotalDirEmpVer">
                                                    <label id="lblTotalDirEmpVerPer">69</label>%
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-xs-12 text-center">
                                            <p class="text-c-pink m-0 f-w-600 f-18">Non-Verified</p>
                                            <span class="f-w-600 f-18">
                                                <label id="lblTotalDirEmpNVer" class="count">22005</label></span>
                                            <div class="progress m-t-10">
                                                <div class="progress-bar bg-c-pink" style="width: 58%" id="divTotalDirEmpNVer">
                                                    <label id="lblTotalDirEmpNVerPer">58</label>%
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <p class="text-muted mt-3 mb-0 text-left">
                                                As Per Bio-Metric Attendance
                                            </p>
                                        </div>
                                        <div class="col-md-4">
                                            <p class="text-primary mt-3 mb-0 text-right">
                                                <a href="<%=ResolveUrl("~/Report/BasicReport.aspx?RG=EmployeeType&EmployeeType=Directorate")%>" class="text-primary" target="_blank">View More<i class="icofont icofont-chart-histogram ml-1"></i></a>
                                            </p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3">
                        <div class="card widget-card-1">
                            <div class="card-block-small">
                                <i class="icofont icofont-blood-drop bg-c-blue card1-icon"></i>
                                <span class="text-c-blue f-20 f-w-600">Total Centralised Employee</span>
                                <h4>
                                    <label id="lblTotalCentEmp" class="count">80500</label></h4>
                                <div class="b-t-default m-t-5 p-t-10">
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-12 text-center">
                                            <p class="text-c-green m-0 f-w-600 f-18">Verified</p>
                                            <span class="f-w-600 f-18">
                                                <label id="lblTotalCentEmpVer" class="count">45264</label></span>
                                            <div class="progress m-t-10">
                                                <div class="progress-bar bg-c-green" style="width: 69%" id="divTotalCentEmpVer">
                                                    <label id="lblTotalCentEmpVerPer">69</label>%
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-xs-12 text-center">
                                            <p class="text-c-pink m-0 f-w-600 f-18">Non-Verified</p>
                                            <span class="f-w-600 f-18">
                                                <label id="lblTotalCentEmpNVer" class="count">14506</label></span>
                                            <div class="progress m-t-10">
                                                <div class="progress-bar bg-c-pink" style="width: 58%" id="divTotalCentEmpNVer">
                                                    <label id="lblTotalCentEmpNVerPer">58</label>%
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <p class="text-muted mt-3 mb-0 text-left">
                                                As Per Bio-Metric Attendance
                                            </p>
                                        </div>
                                        <div class="col-md-4">
                                            <p class="text-primary mt-3 mb-0 text-right">
                                                <a href="<%=ResolveUrl("~/Report/BasicReport.aspx?RG=EmployeeType&EmployeeType=Centralised")%>" class="text-primary" target="_blank">View More<i class="icofont icofont-chart-histogram ml-1"></i></a>
                                            </p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-xl-3">
                        <div class="card widget-card-1">
                            <div class="card-block-small">
                                <i class="icofont icofont-blood bg-c-yellow card1-icon"></i>
                                <span class="text-c-yellow f-20 f-w-600">Total Non-Centralised Employee</span>
                                <h4>
                                    <label id="lblTotalNCentEmp" class="count">10286</label></h4>
                                <div class="b-t-default m-t-5 p-t-10">
                                    <div class="row">
                                        <div class="col-sm-6 col-xs-12 text-center">
                                            <p class="text-c-green m-0 f-w-600 f-18">Verified</p>
                                            <span class="f-w-600 f-18">
                                                <label id="lblTotalNCentEmpVer" class="count">80560</label></span>
                                            <div class="progress m-t-10">
                                                <div class="progress-bar bg-c-green" style="width: 69%" id="divTotalNCentEmpVer">
                                                    <label id="lblTotalNCentEmpVerPer">69</label>%
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 col-xs-12 text-center">
                                            <p class="text-c-pink m-0 f-w-600 f-18">Non-Verified</p>
                                            <span class="f-w-600 f-18">
                                                <label id="lblTotalNCentEmpNVer" class="count">22005</label></span>
                                            <div class="progress m-t-10">
                                                <div class="progress-bar bg-c-pink" style="width: 58%">
                                                    <label id="lblTotalNCentEmpNVerPer">58</label>%
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <p class="text-muted mt-3 mb-0 text-left">
                                                As Per Bio-Metric Attendance
                                            </p>
                                        </div>
                                        <div class="col-md-4">
                                            <p class="text-primary mt-3 mb-0 text-right">
                                                <a href="<%=ResolveUrl("~/Report/BasicReport.aspx?RG=EmployeeType&EmployeeType=Non-Centralised")%>" class="text-primary" target="_blank">View More<i class="icofont icofont-chart-histogram ml-1"></i></a>
                                            </p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="mb-4 text-center">
                            <div class="btn-group col-md-6" role="group">
                                <button type="button" class="btn btn-primary waves-effect waves-light col-md-3" onclick="filterEmployee('All')" id="btnAll">All</button>
                                <button type="button" class="btn btn-outline-primary waves-effect waves-light col-md-3" onclick="filterEmployee('Directorate')" id="btnState">Directorate</button>
                                <button type="button" class="btn btn-outline-primary waves-effect waves-light col-md-3" onclick="filterEmployee('Centralised')" id="btnCentralised">Centralised</button>
                                <button type="button" class="btn btn-outline-primary waves-effect waves-light col-md-3" onclick="filterEmployee('Non-Centralised')" id="btnNonCentralised">Non-Centralised</button>
                                <%--<button type="button" class="btn btn-outline-primary btn-sm waves-effect waves-light">Week</button>--%>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="alert alert-primary background-primary mb-0">
                            <span class="f-w-600 f-16">ULB Wise Employee Statistics</span>
                            <a class="f-right text-white  f-16" href="<%=ResolveUrl("~/Report/BasicReport.aspx?RG=OfficeType")%>" target="_blank">View More<i class="icofont icofont-chart-histogram ml-1 mr-0"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-4">
                        <div class="card">
                            <div class="card-header mb-0">
                                <div class="row">
                                    <div class="col-md-8">
                                        <p class="text-dark mt-0 mb-0 text-left font-bold">
                                            ULB Wise Employee
                                        </p>
                                    </div>
                                    <div class="col-md-4">
                                        <p class="text-primary mt-0 mb-0 text-right">
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card-block">
                                <div id="chart_Donut"></div>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-12 col-lg-8">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-8">
                                        <p class="text-dark mt-0 mb-0 text-left font-bold">
                                            ULB/District Wise Employee
                                        </p>
                                    </div>
                                    <div class="col-md-4">
                                        <p class="text-primary mt-0 mb-0 text-right">
                                            <a href="<%=ResolveUrl("~/Report/BasicReport.aspx?RG=District")%>" class="text-primary" target="_blank">View More<i class="icofont icofont-chart-histogram ml-1"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card-block">
                                <div id="bar_chart"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="alert alert-info background-info mb-0">
                            <span class="f-w-600 f-16">Application Special Request Regarding Online Transfer Posting (OTP) Statistics</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-4">
                        <div class="card" style="height: 756px">
                            <div class="card-header">
                                <h5>Application Special Request Regarding Online Transfer Posting (OTP)</h5>
                            </div>
                            <div class="card-block">
                                <div id="chart_transfer"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-8">
                        <div class="card" style="height: 756px">
                            <div class="card-header">
                                <h5>Application Special Request Regarding Online Transfer Posting (OTP) Detail</h5>
                            </div>
                            <div class="card-block">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered" id="dt_TransferDetail">
                                        <colgroup>
                                            <col width="5%" />
                                            <col width="25%" />
                                            <col width="30%" />
                                            <col width="10%" />
                                            <col width="10%" />
                                            <col width="10%" />
                                            <col width="10%" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th>Serial No</th>
                                                <th>District Name</th>
                                                <th>ULB Name</th>
                                                <th>Received</th>
                                                <th>Approved</th>
                                                <th>Rejected</th>
                                                <th>Pending</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>AGRA</td>
                                                <td>NAGAR NIGAM AGRA</td>
                                                <td>39</td>
                                                <td>20</td>
                                                <td>5</td>
                                                <td>14</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>AYODHYA(FAIZABAD)</td>
                                                <td>NAGAR NIGAM AYODHYA FAIZABAD</td>
                                                <td>5</td>
                                                <td>2</td>
                                                <td>0</td>
                                                <td>3</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>BAREILLY</td>
                                                <td>NAGAR PANCHAYAT SHAHI</td>
                                                <td>80</td>
                                                <td>50</td>
                                                <td>5</td>
                                                <td>25</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>BIJNOR</td>
                                                <td>NAGAR PALIKA PARISHAD BIJNOR</td>
                                                <td>10</td>
                                                <td>8</td>
                                                <td>2</td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>BIJNOR</td>
                                                <td>NAGAR PALIKA PARISHAD DHAMPUR</td>
                                                <td>15</td>
                                                <td>10</td>
                                                <td>5</td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>DEORIA</td>
                                                <td>NAGAR PALIKA PARISHAD GAURA BARHAJ</td>
                                                <td>3</td>
                                                <td>1</td>
                                                <td>0</td>
                                                <td>2</td>
                                            </tr>
                                            <tr>
                                                <td>7</td>
                                                <td>GORAKHPUR</td>
                                                <td>NAGAR NIGAM GORAKHPUR</td>
                                                <td>45</td>
                                                <td>35</td>
                                                <td>5</td>
                                                <td>5</td>
                                            </tr>
                                            <tr>
                                                <td>8</td>
                                                <td>MORADABAD</td>
                                                <td>NAGAR PALIKA PARISHAD THAKURDWARA</td>
                                                <td>40</td>
                                                <td>25</td>
                                                <td>2</td>
                                                <td>13</td>
                                            </tr>
                                            <tr>
                                                <td>9</td>
                                                <td>MORADABAD</td>
                                                <td>NAGAR PANCHAYAT KANTH</td>
                                                <td>15</td>
                                                <td>5</td>
                                                <td>10</td>
                                                <td>0</td>
                                            </tr>
                                            <tr>
                                                <td>10</td>
                                                <td>PRAYAGRAJ(ALLAHABAD)</td>
                                                <td>NAGAR NIGAM ALLAHABAD</td>
                                                <td>70</td>
                                                <td>60</td>
                                                <td>4</td>
                                                <td>6</td>
                                            </tr>
                                            <tr>
                                                <td>11</td>
                                                <td>SHAHJAHANPUR</td>
                                                <td>NAGAR PALIKA PARISHAD JALALABAD</td>
                                                <td>8</td>
                                                <td>5</td>
                                                <td>2</td>
                                                <td>1</td>
                                            </tr>
                                            <tr>
                                                <td>12</td>
                                                <td>VARANASI</td>
                                                <td>NAGAR PALIKA PARISHAD RAMNAGAR</td>
                                                <td>2</td>
                                                <td>2</td>
                                                <td>0</td>
                                                <td>0</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="alert alert-warning background-warning mb-0">
                            <span class="f-w-600 f-16">ULB/District Wise Retirement Statistics</span>
                            <a class="f-right text-white  f-16" href="<%=ResolveUrl("~/Report/BasicReport.aspx?RG=RetireYear")%>" target="_blank">View More<i class="icofont icofont-chart-histogram ml-1 mr-0"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-6">
                        <div class="card" style="height: 756px">
                            <%-- <div class="card-header">
                                <h5>ULB Wise Retirement Statistics (Monthly)</h5>
                            </div>--%>
                            <div class="card-block">
                                <div id="linechart_material"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <div class="card" style="height: 756px">
                            <div class="card-header">
                                <h5>ULB/District Wise Retirement Detail(Next 5 Year)</h5>
                            </div>
                            <div class="card-block">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped" id="dt_Retirement">
                                        <colgroup>
                                            <col width="5%" />
                                            <col width="5%" />
                                            <col width="20%" />
                                            <col width="50%" />
                                            <col width="10%" />
                                            <col width="10%" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th>Sr No.</th>
                                                <th>Year</th>
                                                <th>District Name</th>
                                                <th>ULB Name</th>
                                                <th>Employee</th>
                                                <th>Retire</th>
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
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="alert alert-danger background-danger mb-0">
                            <span class="f-w-600 f-16">Attendance Related Statistics</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card" style="height: 810px">
                            <div class="card-block">
                                <div id="chart_div"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <div class="card" style="height: 810px">
                            <div class="card-header">
                                <h5>ULB Wise Employee Absenteeism Detail (As per 6-month below 35% average absent.)</h5>
                            </div>
                            <div class="card-block">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-striped" id="dt_Absenteeism">
                                        <colgroup>
                                            <col width="5%" />
                                            <col width="25%" />
                                            <col width="30%" />
                                            <col width="10%" />
                                            <col width="10%" />
                                            <col width="15%" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th>SrNo.</th>
                                                <%--<th>District Name</th>--%>
                                                <th>ULB Name</th>
                                                <th>Total Employee</th>
                                                <th>Total Absent</th>
                                                <th>Absent %</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <%--<td>AGRA</td>--%>
                                                <td>NAGAR NIGAM AGRA</td>
                                                <td>39</td>
                                                <td>15</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 38%">
                                                            <label>38%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <%--<td>AYODHYA(FAIZABAD)</td>--%>
                                                <td>NAGAR NIGAM AYODHYA FAIZABAD</td>
                                                <td>5</td>
                                                <td>2</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 40%">
                                                            <label>40%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <%--<td>BALRAMPUR</td>--%>
                                                <td>NAGAR PALIKA PARISHAD BALRAMPUR</td>
                                                <td>3</td>
                                                <td>1</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 33%">
                                                            <label>33%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <%--<td>BAREILLY</td>--%>
                                                <td>NAGAR PALIKA PARISHAD FARIDPUR</td>
                                                <td>45</td>
                                                <td>5</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 11%">
                                                            <label>11%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <%--<td>BAREILLY</td>--%>
                                                <td>NAGAR NIGAM BAREILLY</td>
                                                <td>80</td>
                                                <td>10</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 13%">
                                                            <label>13%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>6</td>
                                                <%--<td>BIJNOR</td>--%>
                                                <td>NAGAR PALIKA PARISHAD SHERKOT</td>
                                                <td>15</td>
                                                <td>5</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 33%">
                                                            <label>33%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>7</td>
                                                <%--<td>DEORIA</td>--%>
                                                <td>NAGAR PALIKA PARISHAD GAURA BARHAJ</td>
                                                <td>3</td>
                                                <td>1</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 33%">
                                                            <label>33%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>8</td>
                                                <%--<td>FIROZABAD</td>--%>
                                                <td>NAGAR NIGAM FIROZABAD</td>
                                                <td>15</td>
                                                <td>4</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 27%">
                                                            <label>27%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>9</td>
                                                <%--<td>KANPUR NAGAR</td>--%>
                                                <td>NAGAR NIGAM KANPUR</td>
                                                <td>58</td>
                                                <td>10</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 17%">
                                                            <label>17%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>10</td>
                                                <%--<td>LUCKNOW</td>--%>
                                                <td>DLB UP</td>
                                                <td>27</td>
                                                <td>4</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 15%">
                                                            <label>15%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>11</td>
                                                <%--<td>LUCKNOW</td>--%>
                                                <td>NAGAR NIGAM LUCKNOW</td>
                                                <td>120</td>
                                                <td>35</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 29%">
                                                            <label>29%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>12</td>
                                                <%--<td>MEERUT</td>--%>
                                                <td>NAGAR NIGAM MEERUT</td>
                                                <td>13</td>
                                                <td>5</td>
                                                <td>
                                                    <div class="progress m-t-10">
                                                        <div class="progress-bar bg-c-pink" style="width: 38%">
                                                            <label>38%</label>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="alert alert-success background-success mb-0">
                            <span class="f-w-600 f-16">District/ULB/Designation Wise Employee Detail</span>
                            <a class="f-right text-white  f-16" href="<%=ResolveUrl("~/Report/BasicReport.aspx?RG=District")%>" target="_blank">View More<i class="icofont icofont-chart-histogram ml-1 mr-0"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-block">
                                <div class="dt-responsive table-responsive">
                                    <table class="table table-striped table-bordered nowrap" id="dt_Location">
                                        <colgroup>
                                            <col width="5%" />
                                            <col width="10%" />
                                            <col width="25%" />
                                            <col width="18%" />
                                            <%--<col width="10%" />--%>
                                            <col width="8%" />
                                            <col width="8%" />
                                            <col width="8%" />
                                            <col width="10%" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th>Serial No</th>
                                                <th>District Name</th>
                                                <th>ULB Name</th>
                                                <th>Designation Name</th>
                                                <%--<th>Sub-Designation Name</th>--%>
                                                <th>Sanction Post</th>
                                                <th>Occupied Post</th>
                                                <th>Vacant Post</th>

                                                <th></th>
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
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="alert alert-default background-default mb-0 text-dark">
                            <span class="f-w-600 f-16">Designation Wise Employee Statistics</span>
                            <a class="f-16 f-right" href="<%=ResolveUrl("~/Report/BasicReport.aspx?RG=Designation")%>" target="_blank">View More<i class="icofont icofont-chart-histogram ml-1 mr-0"></i></a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        <div class="card">
                            <div class="card-block">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered" id="dt_Designation">
                                        <colgroup>
                                            <col width="5%" />
                                            <col width="50%" />
                                            <%--<col width="25%" />--%>
                                            <col width="10%" />
                                            <col width="10%" />
                                            <col width="10%" />
                                            <col width="15%" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th>Sr No.</th>
                                                <th>Designation Name</th>
                                                <%--<th>Sub-Designation Name</th>--%>
                                                <th>Sanction Post</th>
                                                <th>Occupied Post</th>
                                                <th>Vacant Post</th>
                                                <th></th>
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

    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/chart.js/js/Chart.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/assets/pages/dashboard/amchart/js/amcharts.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/assets/pages/dashboard/amchart/js/serial.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/assets/pages/dashboard/amchart/js/light.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/assets/pages/dashboard/amchart/js/custom-amchart.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/assets/pages/dashboard/custom-dashboard.js")%>"></script>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <%-- Load Data --%>
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({
                type: "POST",
                url: "Dashboard.aspx/GetEmployeeCount",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var dtEmpCount = $.parseJSON(r.d)

                    var totalEmp = 0;
                    var totalVer = 0;
                    var totalNVer = 0;
                    var totalVerPer = 0;
                    var totalNVerPer = 0;

                    var dirEmp = 0;
                    var dirVer = 0;
                    var dirNVer = 0;

                    var centEmp = 0;
                    var centVer = 0;
                    var centNVer = 0;

                    var non_centEmp = 0;
                    var non_centVer = 0;
                    var non_centNVer = 0;

                    $.each(dtEmpCount, function (ind, val) {
                        if (val.EmployeeType == 'Directorate') {
                            if (val.IsVerified == 1) {
                                dirVer = parseInt(val.EmployeeCount);
                            }
                            else {
                                dirNVer = parseInt(val.EmployeeCount);
                            }
                        }
                        else if (val.EmployeeType == 'Centralised') {
                            if (val.IsVerified == 1) {
                                centVer = parseInt(val.EmployeeCount);
                            }
                            else {
                                centNVer = parseInt(val.EmployeeCount);
                            }
                        }
                        else if (val.EmployeeType == 'Non-Centralised') {
                            if (val.IsVerified == 1) {
                                non_centVer = parseInt(val.EmployeeCount);
                            }
                            else {
                                non_centNVer = parseInt(val.EmployeeCount);
                            }
                        }
                    });

                    totalEmp = dirVer + dirNVer + centVer + centNVer + non_centVer + non_centNVer;
                    totalVer = dirVer + centVer + non_centVer;
                    totalNVer = dirNVer + centNVer + non_centNVer
                    totalVerPer = Math.round(((totalVer / totalEmp) * 100), 2);
                    totalNVerPer = Math.round(((totalNVer / totalEmp) * 100), 2);

                    $('#lblTotalRegEmp').text(totalEmp);
                    $('#lblTotalRegEmpVer').text(totalVer);
                    $('#lblTotalRegEmpNVer').text(totalNVer);
                    $('#lblTotalRegEmpVerPer').text(totalVerPer);
                    $('#lblTotalRegEmpNVerPer').text(totalNVerPer);
                    $('#divTotalRegEmpVer').css('width', '' + totalVerPer + '%');
                    $('#divTotalRegEmpNVer').css('width', '' + totalNVerPer + '%');

                    $('#lblTotalDirEmp').text(dirVer + dirNVer);
                    $('#lblTotalDirEmpVer').text(dirVer);
                    $('#lblTotalDirEmpNVer').text(dirNVer);
                    $('#lblTotalDirEmpVerPer').text(Math.round(((dirVer / (dirVer + dirNVer)) * 100), 2));
                    $('#lblTotalDirEmpNVerPer').text(Math.round(((dirNVer / (dirVer + dirNVer)) * 100), 2));
                    $('#divTotalDirEmpVer').css('width', '' + Math.round(((dirVer / (dirVer + dirNVer)) * 100), 2) + '%');
                    $('#divTotalDirEmpNVer').css('width', '' + Math.round(((dirNVer / (dirVer + dirNVer)) * 100), 2) + '%');

                    $('#lblTotalCentEmp').text(centVer + centNVer);
                    $('#lblTotalCentEmpVer').text(centVer);
                    $('#lblTotalCentEmpNVer').text(centNVer);
                    $('#lblTotalCentEmpVerPer').text(Math.round(((centVer / (centVer + centNVer)) * 100), 2));
                    $('#lblTotalCentEmpNVerPer').text(Math.round(((centNVer / (centVer + centNVer)) * 100), 2));
                    $('#divTotalCentEmpVer').css('width', '' + Math.round(((centVer / (centVer + centNVer)) * 100), 2) + '%');
                    $('#divTotalCentEmpNVer').css('width', '' + Math.round(((centNVer / (centVer + centNVer)) * 100), 2) + '%');


                    $('#lblTotalNCentEmp').text(non_centVer + non_centNVer);
                    $('#lblTotalNCentEmpVer').text(non_centVer);
                    $('#lblTotalNCentEmpNVer').text(non_centNVer);
                    $('#lblTotalNCentEmpVerPer').text(Math.round(((non_centVer / (non_centVer + non_centNVer)) * 100), 2));
                    $('#lblTotalNCentEmpNVerPer').text(Math.round(((non_centNVer / (non_centVer + non_centNVer)) * 100), 2));
                    $('#divTotalNCentEmpVer').css('width', '' + Math.round(((non_centVer / (non_centVer + non_centNVer)) * 100), 2) + '%');
                    $('#divTotalNCentEmpNVer').css('width', '' + Math.round(((non_centNVer / (non_centVer + non_centNVer)) * 100), 2) + '%');

                    $('.count').each(function () {
                        $(this).prop('Counter', 0).animate({
                            Counter: $(this).text()
                        }, {
                                duration: 4000,
                                easing: 'swing',
                                step: function (now) {
                                    $(this).text(Math.ceil(now));
                                }
                            });
                    });
                }
            });

            $.ajax({
                type: "POST",
                url: "Dashboard.aspx/GetEmployeeDesignationWise",
                data: '{empType :' + JSON.stringify('All') + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var dtEmpCount = $.parseJSON(r.d)
                    $('#dt_Designation tbody').empty()

                    $.each(dtEmpCount, function (ind, val) {
                        var totalPost = 0;
                        var totalEmp = 0;
                        var totalVacant = 0;

                        var row = "<tr>"
                        row += "<td>" + (ind + 1) + "</td>"
                        row += "<td> <a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=Designation&Designation=")%>" + val.DesignationName + "' class='text-primary' target='_blank'>" + val.DesignationName + "</a></td>";
                        //row += "<td>" + val.SubDesignationName + "</td>"

                        totalPost = parseInt(val.Post);
                        totalEmp = parseInt(val.TotalEmployee);
                        totalVacant = (totalPost - totalEmp);
                        totalVacantPer = Math.round(((totalEmp / totalPost) * 100), 2);

                        row += "<td>" + val.Post + "</td>"
                        row += "<td>" + val.TotalEmployee + "</td>"
                        row += "<td>" + totalVacant + "</td>"

                        row += "<td>";
                        row += "<div class='progress m-t-10'>";
                        row += "<div class='progress-bar bg-c-blue' style='width:  " + totalVacantPer + "% '>";
                        row += "<label>" + totalVacantPer + "%</label>";
                        row += "</div>";
                        row += "</div>";
                        row += "</td>";

                        row += "</tr>"

                        $('#dt_Designation tbody').append(row);
                    })

                    $('#dt_Designation').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });
                }
            });

            $.ajax({
                type: "POST",
                url: "Dashboard.aspx/GetEmployeeLocationWise",
                data: '{empType :' + JSON.stringify('All') + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var dtEmpCount = $.parseJSON(r.d)
                    $('#dt_Location tbody').empty()

                    $.each(dtEmpCount, function (ind, val) {
                        var totalPost = 0;
                        var totalEmp = 0;
                        var totalVacant = 0;

                        var row = "<tr>"
                        row += "<td>" + (ind + 1) + "</td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=District&District=")%>" + val.DistrictName + "' class='text-primary' target='_blank'>" + val.DistrictName + "</a></td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=OfficeWise&District=")%>" + val.DistrictName + "&OfficeWise=" + val.OfficeName + "' class='text-primary' target='_blank'>" + val.OfficeName + "</a></td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=OfficeWise&District=")%>" + val.DistrictName + "&OfficeWise=" + val.OfficeName + "&Designation=" + val.DesignationName + "' class='text-primary' target='_blank'>" + val.DesignationName + "</a></td>"
                        //row += "<td>" + val.SubDesignationName + "</td>"

                        totalPost = parseInt(val.Post);
                        totalEmp = parseInt(val.TotalEmployee);
                        totalVacant = (totalPost - totalEmp);
                        totalVacantPer = Math.round(((totalEmp / totalPost) * 100), 2);

                        row += "<td>" + val.Post + "</td>"
                        row += "<td>" + val.TotalEmployee + "</td>"
                        row += "<td>" + totalVacant + "</td>"

                        row += "<td>";
                        row += "<div class='progress m-t-10'>";
                        row += "<div class='progress-bar bg-c-blue' style='width:  " + totalVacantPer + "% '>";
                        row += "<label>" + totalVacantPer + "%</label>";
                        row += "</div>";
                        row += "</div>";
                        row += "</td>";

                        row += "</tr>"

                        $('#dt_Location tbody').append(row);
                    })

                    $('#dt_Location').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });
                }
            });

        });

    </script>

    <script type="text/javascript">

        google.charts.load("current", { packages: ["corechart"] });
        //google.charts.setOnLoadCallback(drawBarChart);
        google.charts.setOnLoadCallback(drawEmployeeChart);
        google.charts.setOnLoadCallback(drawTransferChart);

        function drawEmployeeChart() {
            $.ajax({
                type: "POST",
                url: "Dashboard.aspx/GetULBEmployeeCount",
                data: '{empType :' + JSON.stringify('All') + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var arrRecord = r.d.split("E_E")
                    var record = $.parseJSON(arrRecord[0]);
                    var DistRecord = $.parseJSON(arrRecord[1]);

                    var data = new google.visualization.DataTable();
                    data.addColumn("string", "Office");
                    data.addColumn("number", "Number");

                    $.each(record, function (ind, val) {
                        data.addRow([val[0], parseInt(val[1])]);
                    });

                    var options = {
                        height: 600,
                        title: '',
                        pieHole: 0.5,
                    };

                    var chart = new google.visualization.PieChart(document.getElementById('chart_Donut'));
                    chart.draw(data, options);

                    var distData = new google.visualization.DataTable();

                    var distCol = DistRecord[0];
                    distData.addColumn("string", "Offices");

                    for (var i = 1; i < distCol.length; i++) {
                        distData.addColumn("number", distCol[i]);
                    }

                    distData.addColumn({ type: 'string', role: 'annotation' });

                    for (var i = 1; i < DistRecord.length; i++) {
                        var arrRow = DistRecord[i];
                        var strArr = [];
                        for (var ij = 0; ij < arrRow.length; ij++) {
                            if (ij != 0) {
                                strArr.push((arrRow[ij] == "" ? 0 : parseInt(arrRow[ij])));
                            }
                            else
                                strArr.push(arrRow[ij]);
                        }
                        strArr.push('');
                        distData.addRow(strArr);
                    }

                    var options = {
                        height: 600,
                        legend: { position: 'top', maxLines: 3 },
                        bar: { groupWidth: '75%' },
                        isStacked: true
                    };
                    var chart = new google.visualization.ColumnChart(document.getElementById('bar_chart'));
                    chart.draw(distData, options);
                }
            });
        }

        function drawTransferChart() {
            var data = google.visualization.arrayToDataTable([
                ['Office', 'Number'],
                ['Pending', 223],
                ['Reject', 40],
                ['Approved', 69]
            ]);

            var options = {
                height: 680,
                title: '',
                pieHole: 0.5,
            };

            var chart = new google.visualization.PieChart(document.getElementById('chart_transfer'));
            chart.draw(data, options);
        }

        google.charts.load('current', { 'packages': ['line'] });
        google.charts.setOnLoadCallback(drawRetirement);

        function drawRetirement() {
            $.ajax({
                type: "POST",
                url: "Dashboard.aspx/GetEmployeeRetirement",
                data: '{empType:"All"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var arrRecord = r.d.split("E_E")
                    var record = $.parseJSON(arrRecord[1]);
                    var graphRecord = $.parseJSON(arrRecord[0]);

                    var graphData = new google.visualization.DataTable();

                    var graphCol = graphRecord[0];

                    graphData.addColumn("string", "Year");

                    for (var i = 1; i < graphCol.length; i++) {
                        graphData.addColumn("number", graphCol[i]);
                    }

                    for (var i = 1; i < graphRecord.length; i++) {
                        var arrRow = graphRecord[i];
                        var strArr = [];
                        for (var ij = 0; ij < arrRow.length; ij++) {
                            if (ij != 0) {
                                strArr.push((arrRow[ij] == "" ? 0 : parseInt(arrRow[ij])));
                            }
                            else
                                strArr.push(arrRow[ij]);
                        }
                        graphData.addRow(strArr);
                    }

                    var options = {
                        chart: {
                            title: 'ULB Wise Retirement Statistics (Next 5 Year)'
                        },
                        height: 680
                    };

                    var chart = new google.charts.Line(document.getElementById('linechart_material'));

                    chart.draw(graphData, google.charts.Line.convertOptions(options));

                    $('#dt_Retirement tbody').empty()

                    $.each(record, function (ind, val) {
                        var row = "<tr>"
                        row += "<td>" + (ind + 1) + "</td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=RetireYear&RetireYear=")%>" + val.RetYear + "' class='text-primary' target='_blank'>" + val.RetYear + "</a></td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=OfficeWise&District=")%>" + val.EnglishName + "&RetireYear=" + val.RetYear + "' class='text-primary' target='_blank'>" + val.EnglishName + "</a></td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=OfficeWise&District=")%>" + val.EnglishName + "&RetireYear=" + val.RetYear + "&OfficeWise=" + val.OfficeName + "' class='text-primary' target='_blank'>" + val.OfficeName + "</a></td>"
                        row += "<td>" + val.TotalEmp + "</td>"
                        row += "<td>" + val.RetEmployee + "</td>"
                        row += "</tr>"

                        $('#dt_Retirement tbody').append(row);
                    })

                    $('#dt_Retirement').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });
                }
            });
        }
    </script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawVisualization);

        function drawVisualization() {
            // Some raw data (not necessarily accurate)
            var data = google.visualization.arrayToDataTable([
                ['Month', 'NN', 'NPP', 'NP', 'Dir.', 'Avg.'],
                ['November', 17, 6, 5, 2, 7.5],
                ['December', 16, 4, 3, 3, 6.5],
                ['January', 15, 8, 5, 3, 7.75],
                ['Febuary', 14, 6, 4, 5, 7.75],
                ['March', 18, 7, 6, 2, 8.25],
                ['April', 12, 9, 4, 3, 7]
            ]);

            var options = {
                height: 720,
                title: 'ULB Wise Employee Absenteeism - 2020 ',
                subtitle: 'As per less than 35% attendance',
                vAxis: { title: 'No of Emp.' },
                hAxis: { title: 'Month' },
                seriesType: 'bars',
                series: { 4: { type: 'line' } }
            };

            var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#dt_TransferDetail').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });

            $('#dt_Absenteeism').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });
        });
    </script>
    <script type="text/javascript">
        $('.Count').each(function () {
            var $this = $(this);
            jQuery({ Counter: 0 }).animate({ Counter: $this.text() }, {
                duration: 1000,
                easing: 'swing',
                step: function () {
                    $this.text(Math.ceil(this.Counter));
                }
            });
        });
    </script>

    <script type="text/javascript">
        function filterEmployee(type) {
            $("#btnAll").removeClass('btn-primary');
            $("#btnState").removeClass('btn-primary');
            $("#btnCentralised").removeClass('btn-primary');
            $("#btnNonCentralised").removeClass('btn-primary');

            $("#btnAll").addClass('btn-outline-primary');
            $("#btnState").addClass('btn-outline-primary');
            $("#btnCentralised").addClass('btn-outline-primary');
            $("#btnNonCentralised").addClass('btn-outline-primary');

            if (type == "Directorate") {
                $("#btnState").removeClass('btn-outline-primary');
                $("#btnState").addClass('btn-primary');
            }
            else if (type == "Centralised") {
                $("#btnCentralised").removeClass('btn-outline-primary');
                $("#btnCentralised").addClass('btn-primary');
            }
            else if (type == "Non-Centralised") {
                $("#btnNonCentralised").removeClass('btn-outline-primary');
                $("#btnNonCentralised").addClass('btn-primary');
            }
            else {
                $("#btnAll").removeClass('btn-outline-primary');
                $("#btnAll").addClass('btn-primary');
            }


            // ULB Wise Employee Statistics
            $.ajax({
                type: "POST",
                url: "Dashboard.aspx/GetULBEmployeeCount",
                data: '{empType :' + JSON.stringify(type) + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var arrRecord = r.d.split("E_E")
                    var record = $.parseJSON(arrRecord[0]);
                    var DistRecord = $.parseJSON(arrRecord[1]);

                    var data = new google.visualization.DataTable();
                    data.addColumn("string", "Office");
                    data.addColumn("number", "Number");

                    $.each(record, function (ind, val) {
                        data.addRow([val[0], parseInt(val[1])]);
                    });

                    var options = {
                        height: 600,
                        title: '',
                        pieHole: 0.5,
                    };

                    var chart = new google.visualization.PieChart(document.getElementById('chart_Donut'));
                    chart.draw(data, options);

                    var distData = new google.visualization.DataTable();

                    var distCol = DistRecord[0];
                    distData.addColumn("string", "Offices");

                    for (var i = 1; i < distCol.length; i++) {
                        distData.addColumn("number", distCol[i]);
                    }

                    distData.addColumn({ type: 'string', role: 'annotation' });

                    for (var i = 1; i < DistRecord.length; i++) {
                        var arrRow = DistRecord[i];
                        var strArr = [];
                        for (var ij = 0; ij < arrRow.length; ij++) {
                            if (ij != 0) {
                                strArr.push((arrRow[ij] == "" ? 0 : parseInt(arrRow[ij])));
                            }
                            else
                                strArr.push(arrRow[ij]);
                        }
                        strArr.push('');
                        distData.addRow(strArr);
                    }

                    var options = {
                        height: 600,
                        legend: { position: 'top', maxLines: 3 },
                        bar: { groupWidth: '75%' },
                        isStacked: true
                    };
                    var chart = new google.visualization.ColumnChart(document.getElementById('bar_chart'));
                    chart.draw(distData, options);
                }
            });

            // ULB/District Wise Retirement Statistics
            $.ajax({
                type: "POST",
                url: "Dashboard.aspx/GetEmployeeRetirement",
                data: '{empType :' + JSON.stringify(type) + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var arrRecord = r.d.split("E_E")
                    var record = $.parseJSON(arrRecord[1]);
                    var graphRecord = $.parseJSON(arrRecord[0]);

                    var graphData = new google.visualization.DataTable();

                    var graphCol = graphRecord[0];

                    graphData.addColumn("string", "Year");

                    for (var i = 1; i < graphCol.length; i++) {
                        graphData.addColumn("number", graphCol[i]);
                    }

                    for (var i = 1; i < graphRecord.length; i++) {
                        var arrRow = graphRecord[i];
                        var strArr = [];
                        for (var ij = 0; ij < arrRow.length; ij++) {
                            if (ij != 0) {
                                strArr.push((arrRow[ij] == "" ? 0 : parseInt(arrRow[ij])));
                            }
                            else
                                strArr.push(arrRow[ij]);
                        }
                        graphData.addRow(strArr);
                    }

                    var options = {
                        chart: {
                            title: 'ULB Wise Retirement Statistics (Next 5 Year)'
                        },
                        height: 680
                    };

                    var chart = new google.charts.Line(document.getElementById('linechart_material'));

                    chart.draw(graphData, google.charts.Line.convertOptions(options));

                    if ($.fn.DataTable.isDataTable('#dt_Retirement')) {
                        var tables = $.fn.dataTable.fnTables(true);
                        $(tables).each(function () {
                            $(this).dataTable().fnClearTable();
                            $(this).dataTable().fnDestroy();
                        });
                    }

                    $('#dt_Retirement tbody').empty()

                    $.each(record, function (ind, val) {
                        var row = "<tr>"
                        row += "<td>" + (ind + 1) + "</td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=RetireYear&RetireYear=")%>" + val.RetYear + "' class='text-primary' target='_blank'>" + val.RetYear + "</a></td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=OfficeWise&District=")%>" + val.EnglishName + "&RetireYear=" + val.RetYear + "' class='text-primary' target='_blank'>" + val.EnglishName + "</a></td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=OfficeWise&District=")%>" + val.EnglishName + "&RetireYear=" + val.RetYear + "&OfficeWise=" + val.OfficeName + "' class='text-primary' target='_blank'>" + val.OfficeName + "</a></td>"
                        row += "<td>" + val.TotalEmp + "</td>"
                        row += "<td>" + val.RetEmployee + "</td>"
                        row += "</tr>"

                        $('#dt_Retirement tbody').append(row);
                    })

                    $('#dt_Retirement').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });
                }
            });

            $.ajax({
                type: "POST",
                url: "Dashboard.aspx/GetEmployeeDesignationWise",
                data: '{empType :' + JSON.stringify(type) + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var dtEmpCount = $.parseJSON(r.d)
                    if ($.fn.DataTable.isDataTable('#dt_Designation')) {
                        var tables = $.fn.dataTable.fnTables(true);
                        $(tables).each(function () {
                            $(this).dataTable().fnClearTable();
                            $(this).dataTable().fnDestroy();
                        });
                    }
                    $('#dt_Designation tbody').empty()

                    $.each(dtEmpCount, function (ind, val) {
                        var totalPost = 0;
                        var totalEmp = 0;
                        var totalVacant = 0;

                        var row = "<tr>"
                        row += "<td>" + (ind + 1) + "</td>"
                        row += "<td> <a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=Designation&Designation=")%>" + val.DesignationName + "' class='text-primary' target='_blank'>" + val.DesignationName + "</a></td>";
                        //row += "<td>" + val.SubDesignationName + "</td>"

                        totalPost = parseInt(val.Post);
                        totalEmp = parseInt(val.TotalEmployee);
                        totalVacant = (totalPost - totalEmp);
                        totalVacantPer = Math.round(((totalEmp / totalPost) * 100), 2);

                        row += "<td>" + val.Post + "</td>"
                        row += "<td>" + val.TotalEmployee + "</td>"
                        row += "<td>" + totalVacant + "</td>"

                        row += "<td>";
                        row += "<div class='progress m-t-10'>";
                        row += "<div class='progress-bar bg-c-blue' style='width:  " + totalVacantPer + "% '>";
                        row += "<label>" + totalVacantPer + "%</label>";
                        row += "</div>";
                        row += "</div>";
                        row += "</td>";

                        row += "</tr>"

                        $('#dt_Designation tbody').append(row);
                    })
                    if ($.fn.DataTable.isDataTable('#dt_Designation')) {
                        var tables = $.fn.dataTable.fnTables(true);
                        $(tables).each(function () {
                            $(this).dataTable().fnClearTable();
                            $(this).dataTable().fnDestroy();
                        });
                    }

                    $('#dt_Designation').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });
                }
            });


            $.ajax({
                type: "POST",
                url: "Dashboard.aspx/GetEmployeeLocationWise",
                data: '{empType :' + JSON.stringify(type) + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var dtEmpCount = $.parseJSON(r.d)

                    if ($.fn.DataTable.isDataTable('#dt_Location')) {
                        var tables = $.fn.dataTable.fnTables(true);
                        $(tables).each(function () {
                            $(this).dataTable().fnClearTable();
                            $(this).dataTable().fnDestroy();
                        });
                    }
                    $('#dt_Location tbody').empty()

                    $.each(dtEmpCount, function (ind, val) {
                        var totalPost = 0;
                        var totalEmp = 0;
                        var totalVacant = 0;

                        var row = "<tr>"
                        row += "<td>" + (ind + 1) + "</td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=District&District=")%>" + val.DistrictName + "' class='text-primary' target='_blank'>" + val.DistrictName + "</a></td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=OfficeWise&District=")%>" + val.DistrictName + "&OfficeWise=" + val.OfficeName + "' class='text-primary' target='_blank'>" + val.OfficeName + "</a></td>"
                        row += "<td><a href='<%=ResolveUrl("~/Report/BasicReport.aspx?RG=OfficeWise&District=")%>" + val.DistrictName + "&OfficeWise=" + val.OfficeName + "&Designation=" + val.DesignationName + "' class='text-primary' target='_blank'>" + val.DesignationName + "</a></td>"
                        //row += "<td>" + val.SubDesignationName + "</td>"

                        totalPost = parseInt(val.Post);
                        totalEmp = parseInt(val.TotalEmployee);
                        totalVacant = (totalPost - totalEmp);
                        totalVacantPer = Math.round(((totalEmp / totalPost) * 100), 2);

                        row += "<td>" + val.Post + "</td>"
                        row += "<td>" + val.TotalEmployee + "</td>"
                        row += "<td>" + totalVacant + "</td>"

                        row += "<td>";
                        row += "<div class='progress m-t-10'>";
                        row += "<div class='progress-bar bg-c-blue' style='width:  " + totalVacantPer + "% '>";
                        row += "<label>" + totalVacantPer + "%</label>";
                        row += "</div>";
                        row += "</div>";
                        row += "</td>";

                        row += "</tr>"

                        $('#dt_Location tbody').append(row);
                    })
                    if ($.fn.DataTable.isDataTable('#dt_Location')) {
                        var tables = $.fn.dataTable.fnTables(true);
                        $(tables).each(function () {
                            $(this).dataTable().fnClearTable();
                            $(this).dataTable().fnDestroy();
                        });
                    }
                    $('#dt_Location').DataTable({ dom: 'Bfrtip', buttons: ['copy', 'csv', 'excel', 'pdf', 'print'] });
                }
            });
        }


    </script>
</asp:Content>
