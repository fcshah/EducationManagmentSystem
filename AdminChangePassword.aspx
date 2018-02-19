<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminChangePassword.aspx.cs" Inherits="EducationManagementSystem.AdminChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content -->
    <div id="content">
        <asp:ValidationSummary runat="server"
            ValidationGroup="vg"
            ShowMessageBox="true"
            ShowSummary="true"
            DisplayMode="BulletList" />
        <!-- Content wrapper -->
        <div class="wrapper">
            <!-- Breadcrumbs line -->
        
            <!-- /breadcrumbs line -->
            <!-- Page header -->
            <div class="page-header">
                <div class="page-title">
                   &nbsp;
                </div>
            </div>
            <!-- /page header -->
            <!-- Default wizard -->
            <div class="widget">
                <div class="navbar">
                    <div class="navbar-inner">
                        <h6>Change Password</h6>
                    </div>
                </div>
                <div class="form-horizontal row-fluid well">
              <asp:Label runat="server" ID="lblMsg"></asp:Label>
                    <div>
                        <div class="control-group">
                            <label class="control-label"><span class="requiredfield">*</span> Current Password:</label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="txtCurrentPassword" class="span12" width="500px" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="req" runat="server" ControlToValidate="txtCurrentPassword" ForeColor="Red" ErrorMessage="Enter Current Password." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"><span class="requiredfield">*</span>New Password:</label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="txtNewPassword" class="span12" width="500px" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqNewPass" runat="server" ControlToValidate="txtNewPassword" ForeColor="Red" ErrorMessage="Enter New Password." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                               
                            </div>
                        </div>
                    </div>
                    <div class="form-actions align-right">
                        <asp:Button runat="server" ID="btnChangePassword" CssClass="btn btn-success" OnClick="btnChangePassword_Click" Text="Change Password"  ValidationGroup="vg" />
                        <asp:Button runat="server" ID="btnBack" Text="Back" class="btn" />
                    </div>
                </div>
            </div>
            <!-- /default wizard -->

        </div>
        <!-- /content wrapper -->

    </div>
    <!-- /content -->
</asp:Content>
