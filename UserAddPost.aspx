<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserAddPost.aspx.cs" Inherits="EducationManagementSystem.UserAddPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                        <h6>Generate New Post </h6>
                    </div>
                </div>
                <div class="form-horizontal row-fluid well">
                    <div class="step-title align-right">

                        <span>Note:(<span class="requiredfield">*</span>) Indicate requirefield.</span>
                    </div>
                    <div>
                        <asp:Label ID="lblMsg" Text="" runat="server" ForeColor="Green"></asp:Label>


                        <div class="control-group">
                            <label class="control-label"><span class="requiredfield">*</span>Title:</label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="txtTitle" class="span12"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="req" runat="server" ControlToValidate="txtTitle"
                                    ForeColor="Red" ErrorMessage="Enter Title." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"><span class="requiredfield">*</span>Description:</label>
                            <div class="controls">
                                <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDesc" class="span12" Height="250px" Rows="5" cols="5"></asp:TextBox>


                                <asp:RequiredFieldValidator ID="reqNewPass" runat="server" ControlToValidate="txtDesc" ForeColor="Red" ErrorMessage="Enter Description." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions align-right">
                        <asp:Button runat="server" ID="btnAddPost" CssClass="btn btn-primary" Text="Add Post" OnClick="btnAddPost_Click" ValidationGroup="vg" />
                        <asp:Button runat="server" ID="btnClear" Text="Clear" class="btn" OnClick="btnClear_Click" />
                    </div>
                </div>
            </div>
            <!-- /default wizard -->

        </div>
        <!-- /content wrapper -->

    </div>
    <!-- /content -->
</asp:Content>
