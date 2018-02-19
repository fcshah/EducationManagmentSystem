<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="EditUserProfile.aspx.cs" Inherits="EducationManagementSystem.EditUserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- Content -->
    <div id="content">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
            ValidationGroup="vg"
            ShowMessageBox="true"
            ShowSummary="true"
            DisplayMode="BulletList" />
        <!-- Content wrapper -->
        <div class="wrapper">
         
            <!-- /breadcrumbs line -->
            <!-- Page header -->
            <div class="page-header">
                <div class="page-title">
                
                </div>
            </div>
            <!-- /page header -->
            <!-- Default wizard -->
            <div class="widget">
                <!-- Basic inputs -->
                <div class="form-horizontal">
                    <fieldset>
                        <div class="well">

                            <div class="navbar">
                                <div class="navbar-inner">
                                    <h6>Full size inputs</h6>
                                </div>
                            </div>

                            <div class="control-group ">
                                <div class="row pull-right">
                                    <div class="span2">
                                        <asp:Image ID="Image1" runat="server" alt="" Style="width: 150px; height: 150px" />
                                    </div>
                                    <div class="span4">
                                        <p>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                            <br>
                                            <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="btnUploadImage_Click" />
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Usual input field:</label>
                                <div class="controls">
                                    <input type="text" name="regular" class="span12" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Password:</label>
                                <div class="controls">
                                    <input class="span12" type="password" name="pass" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">With placeholder:</label>
                                <div class="controls">
                                    <input class="span12" type="text" name="placeholder" placeholder="placeholder" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Read only field:</label>
                                <div class="controls">
                                    <input class="span12" type="text" name="readonly" readonly value="read only" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Disabled field:</label>
                                <div class="controls">
                                    <input type="text" name="disabled" disabled="disabled" value="disabled" class="span12" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Helpers:</label>
                                <div class="controls">
                                    <div class="row-fluid">
                                        <div class="span4">
                                            <input type="text" name="regular" class="span12" /><span class="help-block">Left aligned helper</span>
                                        </div>
                                        <div class="span4">
                                            <input type="text" name="regular" class="span12" /><span class="help-block align-center">Centered helper</span>
                                        </div>
                                        <div class="span4">
                                            <input type="text" name="regular" class="span12" /><span class="help-block align-right">Right aligned helper</span>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Predefined value:</label>
                                <div class="controls">
                                    <input type="text" name="regular" value="http://" class="span12" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Field with tooltip on focus:</label>
                                <div class="controls">
                                    <input type="text" name="regular" title="Tooltip on focus" class="focustip span12" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Field with tooltip on hover:</label>
                                <div class="controls">
                                    <input type="text" name="regular" title="Tooltip on hover" class="tip span12" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Max 10 characters:</label>
                                <div class="controls">
                                    <input type="text" name="regular" maxlength="10" placeholder="max 10 characters" class="span12" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label"><i class="icon-cog"></i>With icons:</label>
                                <div class="controls">
                                    <input type="text" name="regular" class="span12" /><i class="icon-cog field-icon"></i>
                                </div>
                            </div>

                            <div class="control-group">
                                <label for="labelfor" class="control-label">Clickable label:</label>
                                <div class="controls">
                                    <input type="text" name="labelfor" id="labelfor" class="span12" />
                                </div>
                            </div>

                            <div class="control-group info">
                                <label for="inputInfo" class="control-label">Info input:</label>
                                <div class="controls">
                                    <input type="text" id="inputInfo" class="span12" /><span class="help-block">Info help line</span>
                                </div>
                            </div>

                            <div class="control-group warning">
                                <label for="inputWarning" class="control-label">Warning input:</label>
                                <div class="controls">
                                    <input type="text" id="inputWarning" class="span12" /><span class="help-block">Something may have gone wrong</span>
                                </div>
                            </div>

                            <div class="control-group error">
                                <label for="inputError" class="control-label">Warning input:</label>
                                <div class="controls">
                                    <input type="text" id="inputError" class="span12" /><span class="help-block">Please correct the error</span>
                                </div>
                            </div>

                            <div class="control-group success">
                                <label for="inputSuccess" class="control-label">Success input:</label>
                                <div class="controls">
                                    <input type="text" id="inputSuccess" class="span12" /><span class="help-block">Woohoo!</span>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Predefined width:</label>
                                <div class="controls">
                                    <input class="input-mini" type="text" placeholder=".input-mini" style="display: block;" />
                                    <input class="input-small" type="text" placeholder=".input-small" style="display: block; margin-top: 6px;" />
                                    <input class="input-medium" type="text" placeholder=".input-medium" style="display: block; margin-top: 6px;" />
                                    <input class="input-large" type="text" placeholder=".input-large" style="display: block; margin-top: 6px;" />
                                    <input class="input-xlarge" type="text" placeholder=".input-xlarge" style="display: block; margin-top: 6px;" />
                                    <input class="input-xxlarge" type="text" placeholder=".input-xxlarge" style="display: block; margin-top: 6px;" />
                                    <input class="input-block-level" type="text" placeholder=".input-block-level" style="display: block; margin-top: 6px;" />
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Prepend:</label>
                                <div class="controls">
                                    <div class="input-prepend">
                                        <span class="add-on">@</span><input id="prependedInput" type="text" placeholder=".input-prepend" />
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Append:</label>
                                <div class="controls">
                                    <div class="input-append">
                                        <input type="text" placeholder=".input-append" />
                                        <span class="add-on">
                                            <i class="icon-cog"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Both:</label>
                                <div class="controls">
                                    <div class="input-prepend input-append">
                                        <span class="add-on">
                                            <i class="icon-bell"></i>
                                        </span>
                                        <input type="text" placeholder=".input-append .input-prepend" />
                                        <span class="add-on">@</span>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Appended buttons:</label>
                                <div class="controls">
                                    <div class="input-append">
                                        <input id="appendedInputButton" type="text">
                                        <button class="btn" type="button">Go!</button>
                                    </div>
                                    <div class="input-append" style="display: block; margin-top: 6px;">
                                        <input id="appendedInputButtons" type="text">
                                        <button class="btn" type="button">Options</button>
                                        <button class="btn" type="button">Search</button>
                                    </div>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Appended dropdowns:</label>
                                <div class="controls">

                                    <!-- Prepend -->
                                    <div class="input-prepend">
                                        <div class="btn-group">
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">Action <span class="caret dd-caret"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><a href="#"><i class="icon-plus"></i>Add new option</a></li>
                                                <li><a href="#"><i class="icon-reorder"></i>View statement</a></li>
                                                <li><a href="#"><i class="icon-cogs"></i>Parameters</a></li>
                                            </ul>
                                        </div>
                                        <input id="prependedDropdownButton" type="text">
                                    </div>
                                    <!-- /prepend -->

                                    <!-- Append, prepend -->
                                    <div class="input-prepend input-append" style="display: block; margin-top: 6px;">
                                        <div class="btn-group">
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">Action <span class="caret dd-caret"></span></button>
                                            <ul class="dropdown-menu">
                                                <li><a href="#"><i class="icon-plus"></i>Add new option</a></li>
                                                <li><a href="#"><i class="icon-reorder"></i>View statement</a></li>
                                                <li><a href="#"><i class="icon-cogs"></i>Parameters</a></li>
                                            </ul>
                                        </div>
                                        <input id="appendedPrependedDropdownButton" type="text">
                                        <div class="btn-group">
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">Action <span class="caret dd-caret"></span></button>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="#"><i class="icon-plus"></i>Add new option</a></li>
                                                <li><a href="#"><i class="icon-reorder"></i>View statement</a></li>
                                                <li><a href="#"><i class="icon-cogs"></i>Parameters</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /append, prepend -->

                                    <!-- Append -->
                                    <div class="input-append" style="display: block; margin-top: 6px;">
                                        <input id="appendedDropdownButton" type="text">
                                        <div class="btn-group">
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">Action <span class="caret dd-caret"></span></button>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="#"><i class="icon-plus"></i>Add new option</a></li>
                                                <li><a href="#"><i class="icon-reorder"></i>View statement</a></li>
                                                <li><a href="#"><i class="icon-cogs"></i>Parameters</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- /append -->

                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label">Textarea:</label>
                                <div class="controls">
                                    <textarea rows="5" cols="5" name="textarea" class="span12"></textarea>
                                </div>
                            </div>
                        </div>
                        <!-- /general form elements -->
                    </fieldset>
                </div>
                <!-- /basic inputs -->
            </div>
        </div>
        <!-- /default wizard -->
    </div>
    <!-- /content wrapper -->
    <!-- /content -->
</asp:Content>
