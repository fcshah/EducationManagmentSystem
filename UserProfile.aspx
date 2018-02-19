<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="EducationManagementSystem.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div id="content">

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
                        <h6>User Profile</h6>

                    </div>
                </div>
                <div class="form-horizontal row-fluid well">

                    <div class="align-center">
                        <asp:Label Text="" runat="server" ID="lblMsg" ForeColor="Green"></asp:Label>
                    </div>
                    <div>
                        <div class="control-group">
                            <label class="control-label"><b>Username: </b></label>
                            <div class="controls">
                                <asp:Label runat="server" ID="txtUsername" class="span12" Width="500px"></asp:Label>

                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label"><b>Firstname: </b></label>
                            <div class="controls">
                                <asp:Label runat="server" ID="lblFirstname" class="span12" Width="500px"></asp:Label>

                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"><b>Middlename: </b></label>
                            <div class="controls">
                                <asp:Label runat="server" ID="lblMiddlename" class="span12" Width="500px"></asp:Label>

                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"><b>Lastname: </b></label>
                            <div class="controls">
                                <asp:Label runat="server" ID="lblLastname" class="span12" Width="500px"></asp:Label>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label"><b>Gender:</b></label>
                            <div class="controls">
                            <asp:Label runat="server" ID="lblGender" class="span12" Width="500px"></asp:Label>
                            
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label"><b>User Type:</b></label>
                            <asp:Label runat="server" ID="lblUserType" class="span12" Width="500px"></asp:Label>
                            
                        </div>

                        <div class="control-group">
                            <label class="control-label"><b>Mobile:</b></label>
                            <div class="controls">
                                <asp:Label runat="server" ID="txtMobile" MaxLength="10" class="span12" Width="500px"></asp:Label>

                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label"><b>Email:</b></label>
                            <div class="controls">
                                <asp:Label runat="server" ID="txtEmail" class="span12" Width="500px"></asp:Label>

                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label"><b>College:</b></label>
                            <div class="controls">
                                <asp:Label runat="server" ID="txtCollege" class="span12" Width="500px"></asp:Label>

                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label"><b> Education:</b></label>
                            <div class="controls">
                                <asp:Label runat="server" ID="txtEducation" class="span12" Width="500px"></asp:Label>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- /default wizard -->

        </div>
        <!-- /content wrapper -->

    </div>
    <!-- /content -->
   
</asp:Content>
