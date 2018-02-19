<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="EducationManagementSystem.UserDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Content -->
    <div id="content">

        <!-- Content wrapper -->
        <div class="wrapper">

            <!-- Breadcrumbs line -->
            <div class="crumbs">
                <ul id="breadcrumbs" class="breadcrumb">
                    <li><a href="index.html">Dashboard</a></li>
                    <li class="active"><a href="calendar.html" title="">Calendar</a></li>
                </ul>

                <ul class="alt-buttons">
                    <li><a href="#" title=""><i class="icon-signal"></i><span>Stats</span></a></li>
                    <li><a href="#" title=""><i class="icon-comments"></i><span>Messages</span></a></li>
                    <li class="dropdown"><a href="#" title="" data-toggle="dropdown"><i class="icon-tasks"></i><span>Tasks</span> <strong>(+16)</strong></a>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="#" title=""><i class="icon-plus"></i>Add new task</a></li>
                            <li><a href="#" title=""><i class="icon-reorder"></i>Statement</a></li>
                            <li><a href="#" title=""><i class="icon-cog"></i>Settings</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /breadcrumbs line -->

            <!-- Page header -->
            <div class="page-header">
                <div class="page-title">
                    <h5>Dashboard</h5>
                    <span>Good morning, Eugene!</span>
                </div>

                <ul class="page-stats">
                    <li>
                        <div class="showcase">
                            <span>New visits</span>
                            <h2>22.504</h2>
                        </div>
                        <div id="total-visits" class="chart">10,14,8,45,23,41,22,31,19,12, 28, 21, 24, 20</div>
                    </li>
                    <li>
                        <div class="showcase">
                            <span>My balance</span>
                            <h2>$16.290</h2>
                        </div>
                        <div id="balance" class="chart">10,14,8,45,23,41,22,31,19,12, 28, 21, 24, 20</div>
                    </li>
                </ul>
            </div>
            <!-- /page header -->

            <!-- Action tabs -->
            <div class="actions-wrapper">
                <div class="actions">

                    <div id="user-stats">
                        <ul class="round-buttons">
                            <li>
                                <div class="depth"><a href="" title="Add new post" class="tip"><i class="icon-plus"></i></a></div>
                            </li>
                            <li>
                                <div class="depth"><a href="" title="View statement" class="tip"><i class="icon-signal"></i></a></div>
                            </li>
                            <li>
                                <div class="depth"><a href="" title="Media posts" class="tip"><i class="icon-reorder"></i></a></div>
                            </li>
                            <li>
                                <div class="depth"><a href="" title="RSS feed" class="tip"><i class="icon-rss"></i></a></div>
                            </li>
                            <li>
                                <div class="depth"><a href="" title="Create new task" class="tip"><i class="icon-tasks"></i></a></div>
                            </li>
                            <li>
                                <div class="depth"><a href="" title="Layout settings" class="tip"><i class="icon-cogs"></i></a></div>
                            </li>
                        </ul>
                    </div>

                    <div id="quick-actions">
                        <ul class="statistics">
                            <li>
                                <div class="top-info">
                                    <a href="#" title="" class="blue-square"><i class="icon-plus"></i></a>
                                    <strong>12,476</strong>
                                </div>
                                <div class="progress progress-micro">
                                    <div class="bar" style="width: 60%;"></div>
                                </div>
                                <span>User registrations</span>
                            </li>
                            <li>
                                <div class="top-info">
                                    <a href="#" title="" class="red-square"><i class="icon-hand-up"></i></a>
                                    <strong>621,873</strong>
                                </div>
                                <div class="progress progress-micro">
                                    <div class="bar" style="width: 20%;"></div>
                                </div>
                                <span>Total clicks</span>
                            </li>
                            <li>
                                <div class="top-info">
                                    <a href="#" title="" class="purple-square"><i class="icon-shopping-cart"></i></a>
                                    <strong>562</strong>
                                </div>
                                <div class="progress progress-micro">
                                    <div class="bar" style="width: 90%;"></div>
                                </div>
                                <span>New orders</span>
                            </li>
                            <li>
                                <div class="top-info">
                                    <a href="#" title="" class="green-square"><i class="icon-ok"></i></a>
                                    <strong>$45,360</strong>
                                </div>
                                <div class="progress progress-micro">
                                    <div class="bar" style="width: 70%;"></div>
                                </div>
                                <span>General balance</span>
                            </li>
                            <li>
                                <div class="top-info">
                                    <a href="#" title="" class="sea-square"><i class="icon-group"></i></a>
                                    <strong>562K+</strong>
                                </div>
                                <div class="progress progress-micro">
                                    <div class="bar" style="width: 50%;"></div>
                                </div>
                                <span>Total users</span>
                            </li>
                            <li>
                                <div class="top-info">
                                    <a href="#" title="" class="dark-blue-square"><i class="icon-facebook"></i></a>
                                    <strong>36,290</strong>
                                </div>
                                <div class="progress progress-micro">
                                    <div class="bar" style="width: 93%;"></div>
                                </div>
                                <span>Facebook fans</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /action tabs -->



            <!-- Earnings stats widgets -->
            <div class="row-fluid">

                <div class="span4">
                    <div class="widget">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <h6>Earnings statistic</h6>
                            </div>
                        </div>
                        <div class="well body">
                            <ul class="stats-details">
                                <li>
                                    <strong>Current balance</strong>
                                    <span>latest update on 12:39 am</span>
                                </li>
                                <li>
                                    <div class="number">
                                        <a href="#" title="" data-toggle="dropdown"></a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="#" title=""><i class="icon-refresh"></i>Reload data</a></li>
                                            <li><a href="#" title=""><i class="icon-calendar"></i>Change time period</a></li>
                                            <li><a href="#" title=""><i class="icon-cog"></i>Parameters</a></li>
                                            <li><a href="#" title=""><i class="icon-download-alt"></i>Download statement</a></li>
                                        </ul>
                                        <span>$6,458</span>
                                    </div>
                                </li>
                            </ul>
                            <div class="graph" id="chart1"></div>
                        </div>
                    </div>
                </div>

                <div class="span4">
                    <div class="widget">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <h6>Visitor statistics</h6>
                            </div>
                        </div>
                        <div class="well body">
                            <ul class="stats-details">
                                <li>
                                    <strong>Today's visitors</strong>
                                    <span>latest update on 4:42 pm</span>
                                </li>
                                <li>
                                    <div class="number">
                                        <a href="#" title="" data-toggle="dropdown"></a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="#" title=""><i class="icon-refresh"></i>Reload data</a></li>
                                            <li><a href="#" title=""><i class="icon-calendar"></i>Change time period</a></li>
                                            <li><a href="#" title=""><i class="icon-cog"></i>Parameters</a></li>
                                            <li><a href="#" title=""><i class="icon-download-alt"></i>Download statement</a></li>
                                        </ul>
                                        <span>+12,127</span>
                                    </div>
                                </li>
                            </ul>
                            <div class="graph" id="chart2"></div>
                        </div>
                    </div>
                </div>

                <div class="span4">
                    <div class="widget">
                        <div class="navbar">
                            <div class="navbar-inner">
                                <h6>Click statistics</h6>
                            </div>
                        </div>
                        <div class="well body">
                            <ul class="stats-details">
                                <li>
                                    <strong>Total clicks</strong>
                                    <span>latest update on 3:09 pm</span>
                                </li>
                                <li>
                                    <div class="number">
                                        <a href="#" title="" data-toggle="dropdown"></a>
                                        <ul class="dropdown-menu pull-right">
                                            <li><a href="#" title=""><i class="icon-refresh"></i>Reload data</a></li>
                                            <li><a href="#" title=""><i class="icon-calendar"></i>Change time period</a></li>
                                            <li><a href="#" title=""><i class="icon-cog"></i>Parameters<strong class="badge badge-info">9</strong></a></li>
                                            <li><a href="#" title=""><i class="icon-download-alt"></i>Download statement</a></li>
                                        </ul>
                                        <span>168k+</span>
                                    </div>
                                </li>
                            </ul>
                            <div class="graph" id="chart3"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /earnings stats widgets -->




            <h5 class="widget-name"><i class="icon-th"></i>Grid gallery items</h5>

            <!-- With titles -->
            <div class="media row-fluid">

                <div class="span3">
                    <div class="widget">
                        <div class="well">
                            <div class="view">
                                <a href="img/demo/big.jpg" class="view-back lightbox"></a>
                                <img src="http://placehold.it/580x380" alt="" />
                            </div>
                            <div class="item-info">
                                <a href="#" title="" class="item-title">Aenean Malesuada Consectetur Risus</a>
                                <p>Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur mollis ornare vel leo.</p>
                                <p class="item-buttons">
                                    <a href="#" class="btn btn-info tip" title="Edit"><i class="icon-pencil"></i></a>
                                    <a href="#" class="btn btn-danger tip" title="Move to trash"><i class="icon-trash"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="widget">
                        <div class="well">
                            <div class="view">
                                <a href="img/demo/big.jpg" class="view-back lightbox"></a>
                                <img src="http://placehold.it/580x380" alt="" />
                            </div>
                            <div class="item-info">
                                <a href="#" title="" class="item-title">Aenean Malesuada Consectetur Risus</a>
                                <p>Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur mollis ornare vel leo.</p>
                                <p class="item-buttons">
                                    <a href="#" class="btn btn-info tip" title="Edit"><i class="icon-pencil"></i></a>
                                    <a href="#" class="btn btn-danger tip" title="Move to trash"><i class="icon-trash"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="span3">
                    <div class="widget">
                        <div class="well">
                            <div class="view">
                                <a href="img/demo/big.jpg" class="view-back lightbox"></a>
                                <img src="http://placehold.it/580x380" alt="" />
                            </div>
                            <div class="item-info">
                                <a href="#" title="" class="item-title">Aenean Malesuada Consectetur Risus</a>
                                <p>Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur mollis ornare vel leo.</p>
                                <p class="item-buttons">
                                    <a href="#" class="btn btn-info tip" title="Edit"><i class="icon-pencil"></i></a>
                                    <a href="#" class="btn btn-danger tip" title="Move to trash"><i class="icon-trash"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="widget">
                        <div class="well">
                            <div class="view">
                                <a href="img/demo/big.jpg" class="view-back lightbox"></a>
                                <img src="http://placehold.it/580x380" alt="" />
                            </div>
                            <div class="item-info">
                                <a href="#" title="" class="item-title">Aenean Malesuada Consectetur Risus</a>
                                <p>Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur mollis ornare vel leo.</p>
                                <p class="item-buttons">
                                    <a href="#" class="btn btn-info tip" title="Edit"><i class="icon-pencil"></i></a>
                                    <a href="#" class="btn btn-danger tip" title="Move to trash"><i class="icon-trash"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="span3">
                    <div class="widget">
                        <div class="well">
                            <div class="view">
                                <a href="img/demo/big.jpg" class="view-back lightbox"></a>
                                <img src="http://placehold.it/580x380" alt="" />
                            </div>
                            <div class="item-info">
                                <a href="#" title="" class="item-title">Aenean Malesuada Consectetur Risus</a>
                                <p>Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur mollis ornare vel leo.</p>
                                <p class="item-buttons">
                                    <a href="#" class="btn btn-info tip" title="Edit"><i class="icon-pencil"></i></a>
                                    <a href="#" class="btn btn-danger tip" title="Move to trash"><i class="icon-trash"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="widget">
                        <div class="well">
                            <div class="view">
                                <a href="img/demo/big.jpg" class="view-back lightbox"></a>
                                <img src="http://placehold.it/580x380" alt="" />
                            </div>
                            <div class="item-info">
                                <a href="#" title="" class="item-title">Aenean Malesuada Consectetur Risus</a>
                                <p>Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur mollis ornare vel leo.</p>
                                <p class="item-buttons">
                                    <a href="#" class="btn btn-info tip" title="Edit"><i class="icon-pencil"></i></a>
                                    <a href="#" class="btn btn-danger tip" title="Move to trash"><i class="icon-trash"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="span3">
                    <div class="widget">
                        <div class="well">
                            <div class="view">
                                <a href="img/demo/big.jpg" class="view-back lightbox"></a>
                                <img src="http://placehold.it/580x380" alt="" />
                            </div>
                            <div class="item-info">
                                <a href="#" title="" class="item-title">Aenean Malesuada Consectetur Risus</a>
                                <p>Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur mollis ornare vel leo.</p>
                                <p class="item-buttons">
                                    <a href="#" class="btn btn-info tip" title="Edit"><i class="icon-pencil"></i></a>
                                    <a href="#" class="btn btn-danger tip" title="Move to trash"><i class="icon-trash"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="widget">
                        <div class="well">
                            <div class="view">
                                <a href="img/demo/big.jpg" class="view-back lightbox"></a>
                                <img src="http://placehold.it/580x380" alt="" />
                            </div>
                            <div class="item-info">
                                <a href="#" title="" class="item-title">Aenean Malesuada Consectetur Risus</a>
                                <p>Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur mollis ornare vel leo.</p>
                                <p class="item-buttons">
                                    <a href="#" class="btn btn-info tip" title="Edit"><i class="icon-pencil"></i></a>
                                    <a href="#" class="btn btn-danger tip" title="Move to trash"><i class="icon-trash"></i></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /with titles -->

        </div>
        <!-- /content wrapper -->

    </div>
    <!-- /content -->
</asp:Content>
