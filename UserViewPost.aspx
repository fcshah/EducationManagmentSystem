<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserViewPost.aspx.cs" Inherits="EducationManagementSystem.UserViewPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
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
                <div class="span9">
                    <div class="widget">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <h6><i class="icon-edit"></i>View Post</h6>
                            </div>
                        </div>

                        <div class="well">
                            <asp:Repeater ID="RepterDetails" runat="server">
                                <HeaderTemplate>
                                    <table class="table" style="width: 1024x">
                                        <tr style="background-color: lightgray; color: #000000; font-size: large; font-weight: bold;">
                                            <td>
                                                <h4>
                                                    <asp:Label ID="l" runat="server" Font-Bold="true" Text='<%#Eval("CommentsCOunt") %>' />
                                                    Comments </h4>
                                            </td>
                                        </tr>
                                </HeaderTemplate>
                                <ItemTemplate>

                                    <div class="widget">

                                        <div class="widget-body">
                                            <!--begin blog post-->
                                            <div class="row-fluid blog">

                                                <div class="span9">
                                                    <div>
                                                        <p>
                                                            <%#Eval("PostDateTime") %>
                                                        </p>
                                                    </div>
                                                    <h2>
                                                        <%#Eval("PostTitle") %>
                                                    </h2>
                                                    <p>
                                                        By <a href="javascript:;"><%#Eval("Username") %>
                                                    </p>
                                                    </a>
                                                    </p>
                                                    <p>
                                                        <%#Eval("PostDescription") %>
                                                    </p>
                                                    <ul>
                                                        <li><a href="javascript:;"><i class="icon-comments-alt"></i><%#Eval("CommentsCOunt") %> Comments</a></li>
                                                        <li><a href="javascript:;"><i class="icon-heart"></i>0 Likes</a></li>
                                                        <li><a href="javascript:;"><i class="icon-share"></i>0 Shares</a></li>
                                                    </ul>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                    
                                            <a href="UserViewPostDetails.aspx?PostID=<%#Eval("PostID") %>" class="btn btn-primary align-right">Continue Reading</a>

                                                </div>


                                            </div>
                                            <hr>


                                            <!--end blog post-->
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>



                    </div>

                </div>
            </div>
            <!-- /column -->
            <!-- /column -->
        </div>
        <!-- /form templates -->
    </div>
    </div>

    <!-- END PAGE CONTENT-->
</asp:Content>
