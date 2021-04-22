<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="HRISDashboard.Secure.frmLogin" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>HRIS-Dashboard</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="#">
    <meta name="keywords" content="Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
    <meta name="author" content="#">

    <link rel="icon" href="<%=ResolveUrl("~/files/assets/images/favicon.ico")%>" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,800" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

    <link rel="stylesheet" type="text/css" href="<%=ResolveUrl("~/files/bower_components/bootstrap/css/bootstrap.min.css")%>">

    <link rel="stylesheet" type="text/css" href="<%=ResolveUrl("~/files/assets/icon/themify-icons/themify-icons.css")%>">

    <link rel="stylesheet" type="text/css" href="<%=ResolveUrl("~/files/assets/icon/icofont/css/icofont.css")%>">

    <link rel="stylesheet" type="text/css" href="<%=ResolveUrl("~/files/assets/css/style.css")%>">
    <style>
       
    </style>
</head>
<body class="fix-menu login-img-bg">

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

    <section class="login custom-login-form p-fixed d-flex text-center ">
        <div class="h-100 w-100 bg-sunny-morning-login bg-animation">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center mt-3">
                            <img src="<%=ResolveUrl("~/files/assets/images/logo-hader.png")%>" alt="logo.png" style="width: 125px">
                            <h1 class="mt-2  text-white font-weight-600">Human Resource Information System
                            </h1>
                            <h1 class="font-weight-600 text-white">(HRIS-Dashboard)</h1>

                        </div>

                    </div>
                    <div class="col-sm-12">
                        <div class="login-card card-block auth-body mr-auto ml-auto">
                            <form class="md-float-material">

                                <div class="auth-box-1">
                                    <div class="row m-b-20">
                                        <div class="col-md-12">
                                            <h3 class="text-center txt-primary ">Sign In</h3>
                                        </div>
                                    </div>

                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fa fa-user" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control-custom" placeholder="Username" id="txtUserName">
                                        <span class="md-line"></span>
                                    </div>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                        <input type="password" class="form-control-custom" placeholder="Password" id="txtPassword">
                                        <span class="md-line"></span>
                                    </div>
                                    <%-- <div class="row m-t-25 text-left">
                                    <div class="col-12">
                                        <div class="checkbox-fade fade-in-primary d-">
                                            <label>
                                                <input type="checkbox" value="">
                                                <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                                <span class="text-inverse">Remember me</span>
                                            </label>
                                        </div>
                                        <div class="forgot-phone text-right f-right">
                                            <a href="auth-reset-password.html" class="text-right f-w-600 text-inverse">Forgot Password?</a>
                                        </div>
                                    </div>
                                </div>--%>
                                    <div class="row m-t-30">
                                        <div class="col-md-12">
                                            <button type="button" class="btn btn-primary butto-shadow btn-md btn-block waves-effect text-center m-b-20" onclick="login();">Sign in</button>
                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>
                        <div class="text-center opacity-8 mt-3 copyright-text">
                            <span>Copyright © Directorate of Local Bodies, Uttar Pradesh | All rights reserved.</span>
                            <span>Design and Developed by MARG Software Solutions.</span>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </section>

    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/jquery/js/jquery.min.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/jquery-ui/js/jquery-ui.min.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/popper.js/js/popper.min.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/bootstrap/js/bootstrap.min.js")%>"></script>

    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/jquery-slimscroll/js/jquery.slimscroll.js")%>"></script>

    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/modernizr/js/modernizr.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/modernizr/js/css-scrollbars.js")%>"></script>

    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/i18next/js/i18next.min.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/i18next-xhr-backend/js/i18nextXHRBackend.min.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/i18next-browser-languagedetector/js/i18nextBrowserLanguageDetector.min.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/bower_components/jquery-i18next/js/jquery-i18next.min.js")%>"></script>
    <script type="text/javascript" src="<%=ResolveUrl("~/files/assets/js/common-pages.js")%>"></script>

    <script type="text/javascript">
        function login() {
            if ($('#txtUserName').val().trim() != "" && $('#txtPassword').val().trim() != "") {
                $.ajax({
                    type: "POST",
                    url: "frmLogin.aspx/UserAuth",
                    data: '{username:' + JSON.stringify($('#txtUserName').val().trim()) + ', password : ' + JSON.stringify($('#txtPassword').val().trim()) + '}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (r) {
                        if (parseInt(r.d) == 1) {
                            window.location.href = "<%=ResolveUrl("~/Admin/Dashboard.aspx")%>";
                        }
                        else {
                            alert('Please Unauthorised Login.');
                        }
                    },
                    error: function () {
                        alert('Something went wrong');
                    }
                });
            }
            else {
                alert('Please Enter Your Credentials.');
            }
        }


    </script>
</body>

</html>
