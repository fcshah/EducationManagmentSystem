<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminQuestionList.aspx.cs" Inherits="EducationManagementSystem.AdminQuestionList" %>
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
                        <h6>Question List</h6>
                    </div>
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>
                </div>
                <div class="form-horizontal row-fluid well">
                    <asp:GridView ID="gvComment" AutoGenerateColumns="False" DataKeyNames="QuestionID" Width="100%"
                        runat="server" OnRowCommand="gvComment_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" OnRowDeleting="gvComment_RowDeleting">
                        <Columns>
                            <asp:BoundField DataField="QuestionID" HeaderText="QuestionID" />
                                <asp:BoundField DataField="Question" HeaderText="Question" />
                            <asp:BoundField DataField="Answer1" HeaderText="Option 1" />
                            <asp:BoundField DataField="Answer2" HeaderText="Option 2" />
                            <asp:BoundField DataField="Answer3" HeaderText="Option 3" />
                            <asp:BoundField DataField="Answer4" HeaderText="Option 4" />
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate> 
                                    <asp:ImageButton ID="LinkButton1"   ImageUrl="~/img/delete.png" Height="20px" Width="20px"
                                        CommandArgument='<%# Eval("QuestionID") %>' OnClientClick="return confirm('Are you sure you want to delete this record');"
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
