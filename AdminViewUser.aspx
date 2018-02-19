<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminViewUser.aspx.cs" Inherits="EducationManagementSystem.AdminViewUser" %>

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
                        <h6>User List</h6>
                    </div>
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>
                </div>
                <div class="form-horizontal row-fluid well">
                    <asp:GridView ID="gvComment" AutoGenerateColumns="False" DataKeyNames="UserID" Width="100%"
                        runat="server" OnRowCommand="gvComment_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" OnRowDeleting="gvComment_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="UserID" HeaderText="UserID" />
                            <asp:BoundField DataField="Username" HeaderText="Username" />
                            <asp:BoundField DataField="Firstname" HeaderText="Firstname" />
                            <asp:BoundField DataField="Lastname" HeaderText="Lastname" />
                            <asp:BoundField DataField="Surname" HeaderText="Surname" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                            <asp:BoundField DataField="EmailID" HeaderText="EmailID" />
                            <asp:BoundField DataField="College" HeaderText="College" />

                            <asp:BoundField DataField="Education" HeaderText="Education" />

                            <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" />


                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:ImageButton ID="LinkButton1" ImageUrl="img/delete.png"  Width="20px" Height="20px"
                                        CommandArgument='<%# Eval("UserID") %>' OnClientClick="return confirm('Are you sure you want to delete this record');"
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
