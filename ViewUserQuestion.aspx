<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="ViewUserQuestion.aspx.cs" Inherits="EducationManagementSystem.ViewUserQuestion" %>

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
                    
                    <!-- Table with options for buttons -->
                    <div class="widget">
                        
                        <div class="table-overflow">
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Class</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><code>.btn</code></td>
                                        <td>Default light buttons</td>
                                    </tr>
                                    <tr>
                                        <td><code>.btn .btn-primary</code></td>
                                        <td>Blue button</td>
                                    </tr>
                                    <tr>
                                        <td><code>.btn .btn-warning</code></td>
                                        <td>Warning button with orange background</td>
                                    </tr>
                                    <tr>
                                        <td><code>.btn .btn-success</code></td>
                                        <td>Success button with green background</td>
                                    </tr>
                                    <tr>
                                        <td><code>.btn .btn-danger</code></td>
                                        <td>Error or danger button with red background</td>
                                    </tr>
                                    <tr>
                                        <td><code>.btn .btn-info</code></td>
                                        <td>Info button with light blue background</td>
                                    </tr>
                                    <tr>
                                        <td><code>.btn .btn-inverse</code></td>
                                        <td>Inversed button with dark grey background</td>
                                    </tr>
                                    <tr>
                                        <td><code>.btn .btn-link</code></td>
                                        <td>Button as a link, without background</td>
                                    </tr>
                                </tbody>
                            </table>
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
