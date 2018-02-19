<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserViewQuestion.aspx.cs" Inherits="EducationManagementSystem.UserViewQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- Content -->
    <div id="content">
        <div>

            <!-- /breadcrumbs line -->
            <!-- Page header -->
            <div class="page-header">
                <div class="page-title">
                </div>
            </div>
            <div class="row-fluid">
                <!-- Column -->
                <div class="span12">
                    <div class="widget">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <h6><i class="icon-edit"></i>Interview Preparation</h6>
                            </div>
                        </div>

                        <div class="well">
                            <div class="widget">

                                <div class="widget-body">
                                    <!--begin blog post-->
                                    <div class="row-fluid blog">
                                        <!-- Comment form -->
                                        <div class="span2">
                                            &nbsp;
                                        </div>
                                        <div class="span9">
                                            <!--end blog post-->
                                            <div>
                                                <asp:Repeater ID="RepterDetails" runat="server">
                                                    <HeaderTemplate>
                                                        <table class="table" style="width: 1024x">
                                                            <tr style="background-color: lightgray; color: #000000; font-size: large; font-weight: bold;">
                                                                <td>
                                                                    <h4>
                                                                        <asp:Label ID="l" runat="server" Font-Bold="true" Text='<%#Eval("Question") %>' />
                                                                   </h4>
                                                                </td>
                                                            </tr>
                                                    </HeaderTemplate>
                                                    <ItemTemplate>
                                                        <div>
                                                            <tr>
                                                                <td>
                                                                    <table style="width: 1024x">
                                                                        <tr>
                                                                            <td style="vertical-align: top; padding-left: 40px">
                                                                                <h5>
                                                                                    <asp:Label ID="lblUser" runat="server" Font-Bold="true" Text='<%#Eval("Question") %>' />
                                                                                </h5>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="vertical-align: top">
                                                                                <asp:Label ID="lblAnswer1" runat="server" Text='<%#Eval("Answer1") %>' />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="vertical-align: top">
                                                                                <asp:Label ID="lblAnswer2" runat="server" Text='<%#Eval("Answer2") %>' />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="vertical-align: top">
                                                                                <asp:Label ID="lblAnswer3" runat="server" Text='<%#Eval("Answer3") %>' />
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="vertical-align: top">
                                                                                <asp:Label ID="lblAnswer4" runat="server" Text='<%#Eval("Answer4") %>' />
                                                                            </td>
                                                                        </tr>

                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </div>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                        </table>
                                                    </FooterTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>
                                        <div class="span1">&nbsp;</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
