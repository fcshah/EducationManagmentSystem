﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="ViewPost.aspx.cs" Inherits="EducationManagementSystem.ViewPost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style_gray.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
               <div class="span9">
                  <div class="widget">
                        <div class="widget-title">
                           <h4><i class="icon-edit"></i> Latest Blog</h4>
                           <span class="tools">
                           <a href="javascript:;" class="icon-chevron-down"></a>
                           <a href="javascript:;" class="icon-remove"></a>
                           </span>                    
                        </div>
                        <div class="widget-body">
                            <!--begin blog post-->
                            <div class="row-fluid blog">
                               
                                <div class="span8">
                                    <div class="date">
                                        <p class="day">02</p>
                                        <p class="month">Dec</p>
                                    </div>
                                    <h2>
                                        <a href="blog_details.html">Suspendisse et mauris nisi, in semper justo.</a>
                                    </h2>
                                    <p>
                                        By <a href="javascript:;">Vector Lab</a>
                                    </p>
                                    <p>
                                        Nam sed arcu non tellus fringilla fringilla ut vel ipsum. Aliquam ac magna metus. Nam
                                        sed arcu non tellus fringilla fringilla ut vel ipsum. Aliquam ac magna metus.
                                    </p>
                                    <ul>
                                        <li><a href="javascript:;"><i class="icon-comments-alt"></i> 55 Comments</a></li>
                                        <li><a href="javascript:;"><i class="icon-heart"></i> 342 Likes</a></li>
                                        <li><a href="javascript:;"><i class="icon-share"></i> 34 Shares</a></li>
                                    </ul>
                                    <a href="blog_details.html" class="btn btn-info">Continue Reading</a>
                                </div>
                            </div>
                            <hr>
                            <div class="row-fluid blog">
                                
                                <div class="span8">
                                    <div class="date">
                                        <p class="day">02</p>
                                        <p class="month">Dec</p>
                                    </div>
                                    <h2>
                                        <a href="blog_details.html">Suspendisse et mauris nisi, in semper justo.</a>
                                    </h2>
                                    <p>
                                        By <a href="javascript:;">Vector Lab</a>
                                    </p>
                                    <p>
                                        Nam sed arcu non tellus fringilla fringilla ut vel ipsum. Aliquam ac magna metus. Nam
                                        sed arcu non tellus fringilla fringilla ut vel ipsum. Aliquam ac magna metus.
                                    </p>
                                    <ul>
                                        <li><a href="javascript:;"><i class="icon-comments-alt"></i> 55 Comments</a></li>
                                        <li><a href="javascript:;"><i class="icon-heart"></i> 342 Likes</a></li>
                                        <li><a href="javascript:;"><i class="icon-share"></i> 34 Shares</a></li>
                                    </ul>
                                    <a href="blog_details.html" class="btn btn-info">Continue Reading</a>
                                </div>
                            </div>
                            <hr>


                        </div>
                  </div>
               </div>
               <div class="span3">
                   <div class="blog-side-bar">
                       <h2>categories</h2>
                       <ul class="unstyled">
                           <li><a href="#"><i class="icon-chevron-right"></i>  Animals</a></li>
                           <li><a href="#"><i class="icon-chevron-right"></i> Landscape</a></li>
                           <li><a href="#"><i class="icon-chevron-right"></i> Portait</a></li>
                           <li><a href="#"><i class="icon-chevron-right"></i> Wild Life</a></li>
                           <li><a href="#"><i class="icon-chevron-right"></i> Video</a></li>
                       </ul>
                       <hr>
                       <h2>latest blog post</h2>
                       <div class="space15"></div>
                       <div class="row-fluid">
                           <div class="span3">
                               <img src="img/blog/blog-thumb-1.jpg" alt="">
                           </div>
                           <div class="span9">
                               <h5>
                                   <a href="javascript:;">02 MAY 2013</a>
                               </h5>
                               <p>Nam sed arcu non tellus
                                   fringilla fringilla ut vel ipsum.</p>
                           </div>
                       </div>
                       <div class="space10"></div>
                       <div class="row-fluid">
                           <div class="span3">
                               <img src="img/blog/blog-thumb-2.jpg" alt="">
                           </div>
                           <div class="span9">
                               <h5>
                                   <a href="javascript:;">02 MAY 2013</a>
                               </h5>
                               <p>Nam sed arcu non tellus
                                   fringilla fringilla ut vel ipsum.</p>
                           </div>
                       </div>
                       <div class="space10"></div>
                       <div class="row-fluid">
                           <div class="span3">
                               <img src="img/blog/blog-thumb-3.jpg" alt="">
                           </div>
                           <div class="span9">
                               <h5>
                                   <a href="javascript:;">02 MAY 2013</a>
                               </h5>
                               <p>Nam sed arcu non tellus
                                   fringilla fringilla ut vel ipsum.</p>
                           </div>
                       </div>
                       <hr>
                       <h2>popular tags</h2>
                       <ul class="unstyled tag">
                           <li><a href="#">Admin Panel</a></li>
                           <li><a href="#"> Dashboard Theme</a></li>
                           <li><a href="#"> Admin</a></li>
                           <li><a href="#"> Control Panel</a></li>
                           <li><a href="#"> UI</a></li>
                           <li><a href="#"> Web Design</a></li>
                           <li><a href="#"> UIX</a></li>
                           <li><a href="#"> Blog</a></li>
                       </ul>
                       <hr>
                       <h2>ARCHIVES</h2>
                       <ul class="unstyled">
                           <li><a href="#"><i class="icon-chevron-right"></i> January 2013</a></li>
                           <li><a href="#"><i class="icon-chevron-right"></i> February 2013 </a></li>
                           <li><a href="#"><i class="icon-chevron-right"></i> March 2013</a></li>
                           <li><a href="#"><i class="icon-chevron-right"></i> April 2013</a></li>
                           <li><a href="#"><i class="icon-chevron-right"></i> May 2013</a></li>
                       </ul>
                   </div>
               </div>
            </div>
            <!-- END PAGE CONTENT--> 
</asp:Content>
