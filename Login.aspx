<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EducationManagementSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>Online Education System by fenil shah</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />

    <script src="jquery/jQuery_v1.7.js"></script>
    <script src="jquery/jQuery_v1.9.2.js"></script>
    <link href="css/font.css" rel="stylesheet" />
    <script type="text/javascript" src="js/files/bootstrap.min.js"></script>
    <%--<script type="text/javascript" src="js/files/login.js"></script>--%>


</head>
<body class="no-background">

    <!-- Fixed top -->
    <div id="top">
        <div class="fixed">
            <h1>
                <label style="color: white; font-family: Georgia">Online Education System</label>
            </h1>
              <marquee><b><label style="color:white"> Welcome to Online Education System by fenil Shah</label> </b></marquee>
        </div>
    </div>
    <!-- /fixed top -->


    <!-- Login block -->
    <div class="login">
        <div class="navbar">
            <div class="navbar-inner">
                <h6><i class="icon-user"></i>Login</h6>
                <div class="nav pull-right">
                    <a href="#" class="dropdown-toggle navbar-icon" data-toggle="dropdown"><i class="icon-cog"></i></a>
                    <ul class="dropdown-menu pull-right">
                        <li><a href="Registration.aspx"><i class="icon-plus"></i>Register</a></li>
                        <li><a href="ForgotPassword.aspx"><i class="icon-refresh"></i>Recover password</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="well">
            <form runat="server" class="row-fluid">
                <asp:ValidationSummary runat="server"
                    ValidationGroup="vg"
                    ShowMessageBox="true"
                    ShowSummary="false"
                    DisplayMode="BulletList" />

                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                <div class="control-group">
                    <label class="control-label">Username</label>
                    <div class="controls">


                        <input class="span12" type="text" name="username" id="txtUsername" placeholder="username" runat="server" />
                        <asp:RequiredFieldValidator ID="req" runat="server" ControlToValidate="txtUsername" ForeColor="Red" ErrorMessage="Enter Username." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>

                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">Password:</label>
                    <div class="controls">
                        <input class="span12" type="password" name="pass" id="txtPassword" placeholder="password" runat="server" />
                        <asp:RequiredFieldValidator ID="reqPass" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Enter Password." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>

                    </div>
                </div>


                <div class="login-btn">
                    <%--<input type="submit" value="Log me in" class="btn btn-danger btn-block"  />--%>

                    <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" class="btn btn-success btn-block" ValidationGroup="vg" />


                </div>

                <div class="login-btn">
                    <%--<input type="submit" value="Log me in" class="btn btn-danger btn-block"  />--%>
                    <asp:Button runat="server" ID="btnRegistration" Text="Registration" class="btn btn-info  btn-block" OnClick="btnRegistration_Click" />
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
