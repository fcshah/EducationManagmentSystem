<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EducationManagementSystem.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <title>Online Education System</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <script src="jquery/jQuery_v1.7.js"></script>
    <script src="jquery/jQuery_v1.9.2.js"></script>
    <link href="css/font.css" rel="stylesheet" />
    <script type="text/javascript" src="js/plugins/forms/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="js/files/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/files/login.js"></script>

</head>
<body class="no-background">

    <form id="form1" runat="server">
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
        <div>
            <!-- Content -->
            <div id="content">
                <asp:ValidationSummary runat="server"
                    ValidationGroup="vg"
                    ShowMessageBox="true"
                    ShowSummary="false"
                    DisplayMode="BulletList" />
                <!-- Content wrapper -->
                <div class="wrapper">
                    <!-- Breadcrumbs line -->

                    <!-- /breadcrumbs line -->
                    <!-- Page header -->
                    <div class="page-header">
                        <div class="page-title">
                        </div>
                    </div>
                    <!-- /page header -->
                    <!-- Default wizard -->
                    <div class="widget">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <h6>New User Registration</h6>
                                <div class="align-right">
                                    <asp:Button runat="server" ID="Button2" Text="Back" class="btn align-right" OnClick="btnBack_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="form-horizontal row-fluid well">
                            <div class="step-title align-right">

                                <span><b><i>Note:(<span class="requiredfield">*</span>) Indicate requirefield.</i></b></span>
                            </div>
                            <div class="align-center">
                                <asp:Label Text="" runat="server" ID="lblMsg" ForeColor="Green"></asp:Label>
                            </div>
                            <div>
                                <div class="control-group">
                                    <label class="control-label"><span class="requiredfield">*</span>Username:</label>
                                    <div class="controls">
                                        <asp:TextBox runat="server" ID="txtUsername" class="span12" Width="500px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="req" runat="server" ControlToValidate="txtUsername" ForeColor="Red" ErrorMessage="Enter Username." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label"><span class="requiredfield">*</span>Password:</label>
                                    <div class="controls">
                                        <asp:TextBox runat="server" ID="txtPassword" class="span12" Width="500px" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqNewPass" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Enter Password." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label"><span class="requiredfield">*</span> Confirm Password:</label>
                                    <div class="controls">
                                        <asp:TextBox runat="server" ID="txtConfirmPassword" class="span12" Width="500px" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="reqConf" runat="server" ControlToValidate="txtPassword" ForeColor="Red" ErrorMessage="Enter Confirm Password." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtConfirmPassword" ForeColor="Red" ControlToCompare="txtPassword" ErrorMessage="Password and Confirm Password must be same." Text="*" ValidationGroup="vg"></asp:CompareValidator>
                                    </div>
                                </div>

                                <div class="control-group">

                                    <div class="controls">
                                        <div class="row-fluid">
                                            <div class="span4">
                                                <span class="help-block align-center"><span class="requiredfield">*</span>Firstname</span>

                                                <asp:TextBox runat="server" ID="txtFirstname" class="span12"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFirstname" ForeColor="Red" ErrorMessage="Enter Firstname." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>


                                            </div>
                                            <div class="span4">
                                                <span class="help-block align-center">Middlename</span>

                                                <asp:TextBox runat="server" ID="txtMiddlename" class="span12"></asp:TextBox>

                                            </div>
                                            <div class="span4">
                                                <span class="help-block align-center"><span class="requiredfield">*</span>Lastname</span>
                                                <asp:TextBox runat="server" ID="txtLastname" class="span12"></asp:TextBox>

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLastname" ForeColor="Red" ErrorMessage="Enter Lastname." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label"><span class="requiredfield">*</span>Gender:</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="ddlGender" runat="server">
                                            <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Female" Value="2"></asp:ListItem>

                                        </asp:DropDownList>

                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label"><span class="requiredfield">*</span>User Type:</label>
                                    <div class="controls">
                                        <asp:DropDownList ID="ddlUserType" runat="server" OnSelectedIndexChanged="ddlUserType_SelectedIndexChanged">
                                            <asp:ListItem Text="Student" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Teacher" Value="2"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label"><span class="requiredfield">*</span>Mobile:</label>
                                    <div class="controls">
                                        <asp:TextBox runat="server" ID="txtMobile" MaxLength="10" class="span12" Width="500px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMobile"
                                            ForeColor="Red" ErrorMessage="Enter Mobile." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label"><span class="requiredfield">*</span>Email:</label>
                                    <div class="controls">
                                        <asp:TextBox runat="server" ID="txtEmail" class="span12" Width="500px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail"
                                            ForeColor="Red" ErrorMessage="Enter Email." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label"><span class="requiredfield">*</span>College:</label>
                                    <div class="controls">
                                        <asp:TextBox runat="server" ID="txtCollege" class="span12" Width="500px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCollege"
                                            ForeColor="Red" ErrorMessage="Enter College." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                                    </div>
                                </div>


                                <div class="control-group">
                                    <label class="control-label"><span style="color: red">*</span>Education:</label>
                                    <div class="controls">
                                        <asp:TextBox runat="server" ID="txtEducation" class="span12" Width="500px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEducation" ForeColor="Red" ErrorMessage="Enter Education." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                            </div>
                            <div class="form-actions align-right">
                                <asp:Button runat="server" ID="btnChangePassword" CssClass="btn btn-success" OnClick="btnChangePassword_Click" Text="Register" ValidationGroup="vg" />
                                <asp:Button runat="server" ID="btnBack" Text="Back" class="btn" OnClick="btnBack_Click" />
                            </div>
                        </div>
                    </div>
                    <!-- /default wizard -->

                </div>
                <!-- /content wrapper -->

            </div>
            <!-- /content -->
        </div>

        <!-- Footer -->
        <div id="footer">
            <div class="copyrights">&copy;2016 All right <b>Online Education System </b>.</div>

        </div>
        <!-- /footer -->

    </form>
</body>
</html>
