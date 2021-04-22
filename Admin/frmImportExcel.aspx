<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="frmImportExcel.aspx.cs" Inherits="HRISDashboard.Admin.frmImportExcel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../files/assets/pages/jquery.filer/css/jquery.filer.css" type="text/css" rel="stylesheet" />
    <link href="../files/assets/pages/jquery.filer/css/themes/jquery.filer-dragdropbox-theme.css" type="text/css"
        rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main-body" style="margin-top: 28px;">
        <div class="page-wrapper">
            <div class="page-header card">
                <div class="row align-items-end">
                    <div class="col-lg-8">
                        <div class="page-header-title">
                            <i class="fa fa-file-excel-o bg-c-green"></i>
                            <div class="d-inline">
                                <h4>Import District Wise Excel</h4>
                                <span>Import District Wise Entry From HRIS Portal</span>
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
                                <li class="breadcrumb-item"><a href="#!">Import Excel</a>
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
                            <div class="card-body">
                                <div class="position-relative row form-group">
                                    <input type="file" name="files[]" id="filer_input1" multiple="multiple">
                                </div>
                            </div>
                            <div class="d-block text-left card-footer" style="background-color: #acafb730; padding: 15px 20px;">
                                <button class="btn btn-primary" onclick="uploadExcel();"><i class="fa fa-file-excel-o"></i>Upload Excel</button>
                                <button class="btn btn-success" onclick="updateRecord();"><i class="fa fa-database"></i>Update Record</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script src="../files/assets/pages/jquery.filer/js/jquery.filer.min.js"></script>
    <script src="../files/assets/pages/filer/custom-filer.js" type="text/javascript"></script>
    <script src="../files/assets/pages/filer/jquery.fileuploads.init.js" type="text/javascript"></script>

    <script type="text/javascript">
        function uploadExcel() {
            event.preventDefault()
            var count = 1;
            var fileCount = 0;
            var dataFiles = new FormData();
            dataFiles.append("RefNo", "1");
            dataFiles.append("filePath", "UploadFiles/DataExcel");
            dataFiles.append("fileType", "Excel");

            if ($("#filer_input1").length > 0) {
                for (var i = 0; i < $("#filer_input1").length; i++) {
                    fileUpload = $("#filer_input1").get(i);
                    files = fileUpload.files;
                    if (files.length > 0) {
                        for (var j = 0; j < files.length; j++) {
                            dataFiles.append(count++, (j + 1));
                            dataFiles.append(files[j].name, files[j]);
                            fileCount += 1;
                        }
                       
                    }
                }

                if (fileCount > 0) {
                    $('#overlay').show();
                    $.ajax({
                        url: "UploadHandler.ashx",
                        type: "POST",
                        data: dataFiles,
                        contentType: false,
                        processData: false,
                        success: function (data) {
                            var files = data;
                            if (files != "Error") {
                                files = $.parseJSON(files);
                                $.ajax({
                                    type: "POST",
                                    url: "frmImportExcel.aspx/UploadExcel",
                                    data: '{objList : ' + JSON.stringify(files) + '}',
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                    success: function (r) {
                                        var r = $.parseJSON(response.d);
                                        if (r.StatusCode == "200") {
                                            alert("File Uploaded on Server.");
                                        }
                                    },
                                    error: function () {

                                    }
                                });
                            }
                        },
                        error: function () {
                            $('#overlay').hide();
                        }
                    });
                }
              
            }
        }
    </script>
</asp:Content>
