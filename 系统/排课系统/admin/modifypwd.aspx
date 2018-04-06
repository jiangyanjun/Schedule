﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modifypwd.aspx.cs" Inherits="排课系统.admin.modifypwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><link rel="shortcut icon" href="../favicon.ico" /><link rel="icon" href="../favicon.ico" />
     <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/main.css"/>
    <script type="text/javascript" src="../Scripts/modernizr.min.js"></script>
</head>
<body>
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
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label> </li>
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
                            <li><a href="majormana.aspx"><i class="icon-font">&#xe008;</i>专业管理</a></li>
                            <li><a href="teacherman.aspx"><i class="icon-font">&#xe005;</i>教师管理</a></li>
                            <li><a href="studentman.aspx"><i class="icon-font">&#xe005;</i>学生管理</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="icon-font">&#xe003;</i>排课操作</a>
                        <ul class="sub-menu">
                            <li><a href="courseplan.aspx"><i class="icon-font">&#xe052;</i>教学计划</a></li>
                            <li><a href="coursetask.aspx"><i class="icon-font">&#xe033;</i>教学任务</a></li>
                            <li><a href="paikemana.aspx"><i class="icon-font">&#xe005;</i>排课管理</a></li>
                            <li><a href="coursetablemana.aspx"><i class="icon-font">&#xe006;</i>课表管理</a></li>
                            <li><a href="coursetask.aspx"><i class="icon-font">&#xe033;</i>教学任务</a></li>
                              <li><a href="coursetablemana.aspx"><i class="icon-font">&#xe006;</i>课表管理</a></li>
                              <li><a href="MatieralStatistics.aspx"><i class="icon-font">&#xe006;</i>图表</a></li>
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
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.aspx">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">修改密码</span></div>
        </div>
        <form id="login_form" runat="server">
        <div class="result-wrap">
            <div class="result-title">
               
            </div>
            <div class="result-content">
                <ul class="sys-info-list">
                    <li>
                        <label class="res-lab">新密码</label><asp:TextBox ID="TextBox1" runat="server" 
                            TextMode="Password"></asp:TextBox>
                    </li>
                    <li>
                        <label class="res-lab">确认密码</label><asp:TextBox ID="TextBox2" runat="server" 
                            TextMode="Password"></asp:TextBox>
                    </li>
                    <li>
                        <label class="res-lab"></label>
                        <asp:Button ID="Button1" runat="server" class="btn btn-success btn6 mr10"
                            Text="保存" Height="33px" Width="72px" onclick="Button1_Click" />
                    </li>
                </ul>
            </div>
        </div>
        </form>
    </div>
    <!--/main-->
</div>
</body>
</html>
