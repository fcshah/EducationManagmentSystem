<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserViewPostDetails.aspx.cs" Inherits="EducationManagementSystem.UserViewPostDetails" %>

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
                                <h6><i class="icon-edit"></i>View Post</h6>
                            </div>
                        </div>

                        <div class="well">

                            <div class="widget">

                                <div class="widget-body">
                                    <!--begin blog post-->
                                    <div class="row-fluid blog">
                                        <div class="span1">&nbsp;</div>
                                        <div class="span10">
                                            <div>
                                                <p>
                                                    <asp:Label ID="lblPostTime" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                            <h2>
                                                <a href="javascript:;">
                                                    <asp:Label ID="lblPostTitle" runat="server"></asp:Label>
                                                </a>
                                            </h2>
                                            <p>
                                                By&nbsp;<asp:Label ID="lblUsername" runat="server"></asp:Label>
                                            </p>

                                            <p>
                                                <asp:Label ID="lblPostDesc" runat="server"></asp:Label>
                                            </p>
                                            <ul>
                                                <li><a href="javascript:;"><i class="icon-comments-alt"></i>
                                                    <asp:Label ID="lblCommentCnt" runat="server"></asp:Label>
                                                    Comments</a></li>

                                            </ul>

                                        </div>
                                    </div>

                                    <div class="row-fluid blog">
                                        <div class="span1">&nbsp;</div>
                                        <div class="span10">
                                            &nbsp;
                                        </div>
                                    </div>

                                    <div class="row-fluid blog">
                                        <div class="span1">&nbsp;</div>
                                        <div class="span10">
                                            <div>
                                                <asp:Button CssClass="btn" Text="Back To Post" ID="btnBack" runat="server" OnClick="Unnamed_Click" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row-fluid blog">
                                        <!-- Comment form -->
                                        <div class="span2">
                                            &nbsp;
                                        </div>
                                        <div class="span10">
                                            <div class="panel-heading">
                                                <asp:Label runat="server" ID="lblMsg" ForeColor="Green"></asp:Label>
                                                <h4>Leave a comment</h4>
                                            </div>
                                            <div class="panel-body">
                                                <div class="clearfix">
                                                    <div class="col-md-12 form-group">
                                                        <label class="sr-only" for="email">Comment :</label>
                                                        <asp:TextBox TextMode="MultiLine" class="form-control" ID="txtComment" Style="width: 800px" placeholder="Comment" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="col-md-12 form-group text-right">
                                                        <asp:Button runat="server" ID="btnComment" class="btn btn-primary" Text="Submit" OnClick="btnComment_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row-fluid blog">
                                        <!-- Comment form -->
                                        <div class="span12">
                                            &nbsp;
                                        </div>
                                    </div>

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
                                                                        <asp:Label ID="l" runat="server" Font-Bold="true" Text='<%#Eval("CommentsCOunt") %>' />
                                                                        Comments </h4>
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
                                                                                <h5>-<asp:Label ID="lblUser" runat="server" Font-Bold="true" Text='<%#Eval("Username") %>' />
                                                                                </h5>
                                                                            </td>
                                                                            <td style="vertical-align: top; padding-left: 10px" colspan="2">
                                                                                <h5>On&nbsp;<asp:Label ID="lblDate" runat="server" Font-Bold="true" Text='<%#Eval("CommentDateTime") %>' /></h5>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                             <%--   <img src="img/userpic.png" style="width: 40px; height: 40px" />--%>
                                                                            </td>
                                                                            <td colspan="2" style="vertical-align: top">
                                                                                <asp:Label ID="lblComment" runat="server" Text='<%#Eval("CommentDescription") %>' />
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
