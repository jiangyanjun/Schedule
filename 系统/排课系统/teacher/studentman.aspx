﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentman.aspx.cs" Inherits="排课系统.teacher.studentman" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><link rel="shortcut icon" href="../favicon.ico" /><link rel="icon" href="../favicon.ico" />
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css" />
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <script type="text/javascript" src="../Scripts/modernizr.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="topbar-wrap white">
            <div class="topbar-inner clearfix">
                <div class="topbar-logo-wrap clearfix">
                    <h1 class="topbar-logo none"><a href="index.aspx" class="navbar-brand">后台管理</a></h1>
                    <ul class="navbar-list clearfix">
                        <li><a class="on" href="index.aspx">首页</a></li>
                    </ul>
                </div>
                <div class="top-info-wrap">
                    <ul class="top-info-list clearfix">
                        <li>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </li>
                        <li><a href="../Default.aspx">退出</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container clearfix">
            <div class="sidebar-wrap">
                <div class="sidebar-title">
                    <h1>菜单</h1>
                </div>
                <div class="sidebar-content">
                <ul class="sidebar-list">
                        <li>
                            <a href="#"><i class="icon-font">&#xe003;</i>基本操作</a>
                            <ul class="sub-menu">
                                <li class="active"><a href="studentman.aspx"><i class="icon-font">&#xe005;</i>学生管理</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="icon-font">&#xe003;</i>排课操作</a>
                            <ul class="sub-menu">
                                <li><a href="courseplan.aspx"><i class="icon-font">&#xe052;</i>教学计划</a></li>
                                <li><a href="SecretSecuritypwd.aspx"><i class="icon-font">&#xe006;</i>密保管理</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
                            <ul class="sub-menu">
                                <li><a href="modifypwd.aspx"><i class="icon-font">&#xe017;</i>个人密码</a></li>
                                <li><a href="SecretSecuritypwd.aspx"><i class="icon-font">&#xe006;</i>密保管理</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <!--/sidebar-->
            <!--/main-->


            <div class="main-wrap">

                <div class="crumb-wrap">
                    <div class="crumb-list"><i class="icon-font"></i><a href="index.aspx">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">教师管理</span></div>
                </div>
                <div class="search-wrap">
                    <div class="search-content">
                        <table class="search-tab">
                            <tr>
                                <th width="70">关键字:</th>
                                <td>
                                    <asp:TextBox class="common-text" placeholder="关键字" ID="findinfo" runat="server" Type="text"></asp:TextBox></td>
                                <td>
                                    <asp:Button ID="Button1" class="btn btn-primary btn2" runat="server" Text="查询"
                                        Style="margin: auto;" OnClick="Button1_Click" /></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="result-wrap">
                    <div class="result-title">
                        <div class="result-list">
                            <asp:FileUpload ID="FileUpload1" runat="server" class="common-text" />&nbsp;&nbsp;
                        <asp:Button ID="Button2" class="btn btn-success btn2" runat="server" Text="导入"
                            Style="margin: auto;" OnClick="Button2_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" class="btn btn-info btn2" runat="server" Text="新增"
                            Style="margin: auto;" OnClick="Button3_Click" />
                        </div>
                    </div>
                    <div class="result-content">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="15"
                            GridLines="None" AllowPaging="True" CssClass="result-tab"
                            DataKeyNames="id" Width="100%"
                            OnPageIndexChanging="GridView1_PageIndexChanging"
                            OnRowCancelingEdit="GridView1_RowCancelingEdit"
                            OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                            OnRowUpdating="GridView1_RowUpdating">
                            <Columns>
                                <asp:BoundField DataField="studentId" HeaderText="学生学号" ReadOnly="True" />
                                <asp:BoundField DataField="name" HeaderText="学生姓名" />
                                <asp:BoundField DataField="major" HeaderText="学生专业" />
                                <asp:BoundField DataField="grade" HeaderText="学生年级" />

                                <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                            </Columns>
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="Black" />

                        </asp:GridView>
                    </div>

                </div>
            </div>


        </div>

    </form>
</body>
</html>
