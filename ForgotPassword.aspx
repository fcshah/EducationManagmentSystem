<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="EducationManagementSystem.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>Online Education System</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <%--    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>--%>
    <script src="jquery/jQuery_v1.7.js"></script>
    <script src="jquery/jQuery_v1.9.2.js"></script>
    <link href="css/font.css" rel="stylesheet" />
    <script type="text/javascript" src="js/plugins/forms/jquery.uniform.min.js"></script>

    <script type="text/javascript" src="js/files/bootstrap.min.js"></script>

    <script type="text/javascript" src="js/files/login.js"></script>

</head>
<body class="no-background">
    <!-- Fixed top -->
    <!-- Fixed top -->
    <div id="top">
        <div class="fixed">
            <h1>
                <label style="color: white; font-family: Georgia">Online Education System</label>
            </h1>
            <marquee><b><label style="color:white"> Welcome to Online Education System</label> </b></marquee>
        </div>
    </div>
    <!-- /fixed top -->


    <!-- Login block -->
    <div class="login">
        <div class="navbar">
            <div class="navbar-inner">
                <h6><i class="icon-user"></i>Forgot Password</h6>
            </div>
        </div>
        <div class="well">
            <form runat="server" class="row-fluid">
                <asp:ValidationSummary runat="server"
                    ValidationGroup="vg"
                    ShowMessageBox="true"
                    ShowSummary="false"
                    DisplayMode="BulletList" />
                <div class="control-group">
                    <label class="control-label">Username/Email</label>
                    <div class="controls">
                        <input class="span12" type="text" name="username" id="txtUsername" placeholder="username" runat="server" />
                        <asp:RequiredFieldValidator ID="req" runat="server" ControlToValidate="txtUsername" ForeColor="Red" ErrorMessage="Enter Username / Email." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-actions align-right">
                    <asp:Button runat="server" ID="btnChangePassword" CssClass="btn btn-success" Text="Recover Password" OnClick="btnChangePassword_Click" ValidationGroup="vg" />
                    <asp:Button runat="server" ID="btnBack" Text="Back" class="btn" OnClick="btnBack_Click" />
                </div>

            </form>
        </div>
    </div>
    <!-- /login block -->


    <!-- Footer -->
    <div id="footer">
        <div class="copyrights">&copy;2016 All right <b>Online Education System </b>.</div>
 
    </div>
    <!-- /footer -->

</body>
</html>
