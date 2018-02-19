<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminDeletePost.aspx.cs" Inherits="EducationManagementSystem.AdminDeletePost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Content -->
    <div id="content">

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
                        <h6>Post List</h6>
                    </div>
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>
                </div>
                <div class="form-horizontal row-fluid well">
                    <asp:GridView ID="gvComment" AutoGenerateColumns="False" DataKeyNames="PostID" Width="100%"
                        runat="server"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" OnRowDeleting="gvComment_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="PostTitle" HeaderText="PostTitle" />
                            <asp:BoundField DataField="PostDescription" HeaderText="PostDescription" />
                            <asp:BoundField DataField="PostDateTime" HeaderText="PostDateTime" />
                            <asp:BoundField DataField="Username" HeaderText="PostBy" />
                            <asp:BoundField DataField="CommentsCOunt" HeaderText="Comments" />
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:ImageButton ID="LinkButton1"  ImageUrl="~/img/delete.png" Height="20px" Width="20px"
                                        CommandArgument='<%# Eval("PostID") %>' OnClientClick="return confirm('Are you sure you want to delete this record');"
                                        CommandName="Delete" runat="server" Text="Delete"></asp:ImageButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>

                </div>
            </div>
            <!-- /default wizard -->

        </div>
        <!-- /content wrapper -->

    </div>
    <!-- /content -->
</asp:Content>
