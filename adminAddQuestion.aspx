<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="adminAddQuestion.aspx.cs" Inherits="EducationManagementSystem.adminAddQuestion" %>
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
                        <h6>Add Interview Question</h6>
                    </div>
                </div>
                <div class="form-horizontal row-fluid well">
              <asp:Label runat="server" ID="lblMsg" ForeColor="Green"></asp:Label>
                    <div>
                        <div class="control-group">
                            <label class="control-label"><span class="requiredfield">*</span> Question:</label>
                            <div class="controls">
                                <asp:TextBox runat="server"  ID="txtQuestion" class="span12" width="500px" Height="150px" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="req"  runat="server" ControlToValidate="txtQuestion" ForeColor="Red" ErrorMessage="Enter Question." Text="*" ValidationGroup="vg"></asp:RequiredFieldValidator>

                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"><span class="requiredfield">*</span>Option 1:</label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="txtOp1" class="span12" width="500px" ></asp:TextBox>
                               
                            </div>
                        </div>
                         <div class="control-group">
                            <label class="control-label"><span class="requiredfield">*</span>Option 2:</label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="txtOp2" class="span12" width="500px"></asp:TextBox>
                                
                            </div>
                        </div>

                          <div class="control-group">
                            <label class="control-label"><span class="requiredfield">*</span>Option 3:</label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="txtOp3" class="span12" width="500px"></asp:TextBox>
                                
                            </div>
                        </div>


                          <div class="control-group">
                            <label class="control-label"><span class="requiredfield">*</span>Option 4:</label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="txtOp4" class="span12" width="500px"></asp:TextBox>
                                
                            </div>
                        </div>


                    </div>
                    <div class="form-actions align-right">
                        <asp:Button runat="server" ID="btnAddQuestion" CssClass="btn btn-success" OnClick="btnAddQuestion_Click" Text="Add Question"  ValidationGroup="vg" />
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
