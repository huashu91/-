﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BallGameManage.Main.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>光熙杯篮球赛)</title>
    <link rel="stylesheet" href="../styles/reset.css" />
    <link rel="stylesheet" href="../styles/common.css" />
    <link rel="stylesheet" href="../styles/index.css" />
    <style>
        
        #tinybox{position:absolute; display:none; padding:10px; border:10px solid #e3e3e3; z-index:2000;}
#tinymask{position:absolute; display:none; top:0; left:0; height:100%; width:100%; background:#000000; z-index:1500;}
#tinycontent{background:#ffffff url(image/preload.gif) no-repeat 50% 50%; font-size:1.1em;}

#n{margin:10px auto; width:920px; border:1px solid #CCC;font-size:12px; line-height:30px;}
#n a{ padding:0 4px; color:#333}
        /*图片轮换*/
        .slideBox
        {
            width: 270px;
            height: 180px;
            overflow: hidden;
            position: relative;
            border: 1px solid #ddd;
            float: left;
        }
        .slideBox .img_hd
        {
            height: 15px;
            overflow: hidden;
            position: absolute;
            right: 5px;
            bottom: 5px;
            z-index: 1;
        }
        .slideBox .img_hd ul
        {
            overflow: hidden;
            zoom: 1;
            float: left;
        }
        .slideBox .img_hd ul li
        {
            float: left;
            margin-right: 2px;
            width: 15px;
            height: 15px;
            line-height: 14px;
            text-align: center;
            background: #fff;
            cursor: pointer;
        }
        .slideBox .img_hd ul li.on
        {
            background: #f00;
            color: #fff;
        }
        .slideBox .img_bd
        {
            position: relative;
            height: 100%;
            z-index: 0;
        }
        .slideBox .img_bd li
        {
            zoom: 1;
            vertical-align: middle;
        }
        .slideBox .img_bd img
        {
            width: 270px;
            height: 180px;
            display: block;
        }
        
        /* 本例子css */
        .picScroll-left
        {
            width: 495px;
            overflow: hidden;
            position: relative;
        }
        .picScroll-left .hd
        {
            overflow: hidden;
            height: 30px;
            background: #f4f4f4;
            padding: 0 10px;
        }
        .picScroll-left .hd .prev, .picScroll-left .hd .next
        {
            display: block;
            width: 5px;
            height: 9px;
            float: right;
            margin-right: 5px;
            margin-top: 10px;
            overflow: hidden;
            cursor: pointer;
            background: url("../img/icons/icoLeft.gif") no-repeat;
        }
        .picScroll-left .hd .next
        {
            background: url("../img/icons/icoRight.gif") no-repeat;
        }
        .picScroll-left .hd ul
        {
            float: right;
            overflow: hidden;
            zoom: 1;
            margin-top: 10px;
            zoom: 1;
        }
        .picScroll-left .hd ul li
        {
            float: left;
            width: 9px;
            height: 9px;
            overflow: hidden;
            margin-right: 5px;
            text-indent: -999px;
            cursor: pointer;
            background: url("../img/icons/icoCircle.gif") 0 -9px no-repeat;
        }
        .picScroll-left .hd ul li.on
        {
            background-position: 0 0;
        }
        .picScroll-left .bd
        {
            padding: 10px;
        }
        .picScroll-left .bd ul
        {
            overflow: hidden;
            zoom: 1;
        }
        .picScroll-left .bd ul li
        {
            margin: 0 15px;
            width: 128px;
            float: left;
            _display: inline;
            overflow: hidden;
            text-align: center;
        }
        .picScroll-left .bd ul li .pic
        {
            text-align: center;
        }
        .picScroll-left .bd ul li .pic img
        {
            width: 120px;
            height: 90px;
            display: block;
            padding: 2px;
            border: 1px solid #ccc;
        }
        .picScroll-left .bd ul li .pic a:hover img
        {
            border-color: #999;
        }
        .picScroll-left .bd ul li .title
        {
            line-height: 24px;
        }
        
        
        /*列表*/
        .span_t
        {
            float: right;
            margin-right: 10px;
        }
        
       
    </style>
    <script src="../scripts/move.js"></script>
    <script src="../scripts/web.js"></script>
    
    <script type="text/javascript" src="../scripts/tinybox.js"></script>


    <script type="text/javascript" src="../scripts/jquery.pack.js"></script>
    <script type="text/javascript" src="../scripts/jquery.SuperSlide.js"></script>
    <script type="text/javascript">
        var initializationTime = (new Date()).getTime();
        function showLeftTime() {
            var now = new Date();

            var year = now.getYear();
            if (year < 1900) {
                year += 1900;
            }
            var month = now.getMonth();
            var day = now.getDate();
            var hours = now.getHours();
            var minutes = now.getMinutes();
            var seconds = now.getSeconds();
            document.all.show.innerHTML = "" + year + "年" + month + "月" + day + "日 " + hours + "时" + minutes + "分" + seconds + "秒";
            //一秒刷新一次显示时间
            var timeID = setTimeout(showLeftTime, 1000);
        }

        function show() {

//            var content4 = "<img width='1024' height='768' src='image/guanggao.jpg' />";
//            TINY.box.show(content4, 0, 1024, 768, 0, 5)
        }

        function Open(url) {
            window.open(url);
        }
       
    </script>
</head>
<body onload="show();showLeftTime();">
    <form id="form1" runat="server">
    <div>
        <div id="container">
            <!-- header start -->
            <div id="header">
                <div class="banner">
                    <img src="../img/images/header.jpg"></div>
                <div id="menu">
                    <ul class="menu-list">
                        <li class="menu-list-child"><a href="Index.aspx" title="首页">首页
                            </a> </li>
                        <li class="menu-list-child"><a href="NewList.aspx" title="新闻公告">新闻公告
                            </a> </li>
                        <li class="menu-list-child"><a href="Memberlist.aspx" title="赛程安排">赛程安排
                            </a> </li>
                        <li class="menu-list-child"><a href="Economylist.aspx" title="比赛情况">比赛情况
                            </a> </li>
                        <li class="menu-list-child"><a href="Proceedingslist.aspx?type=one" title="精彩图片">精彩片段
                            </a> </li>
                             <li class="menu-list-child"><a href="Proceedingslist.aspx?type=two" title="精彩图片">绝杀时刻
                            </a> </li>
                    </ul>
                    <span id="show" class="date"></span>
                </div>
            </div>
            <!-- header end -->
            <div style="clear: both;">
            </div>
            <!-- content start --->
            <div id="content">
                <!-- content-t start -->
                <div class="content-t clear">
                    <div class="content-t-l">
                        <h1 class="content-title">
                            <strong>新闻公告</strong> <a href="NewList.aspx" class="more">更多信息>>></a>
                        </h1>
                        <div class="content-t-c">
                            <ul class="content-t-c-ul">
                                <asp:Repeater ID="Repeater_gg" runat="server">
                                    <ItemTemplate>
                                        <li><a href="NewsDetail.aspx?id=<%# Eval("sid")%>" title="">
                                            <%# Eval("title")%></a><span class="span_t">[<%# Eval("CreateTime")%>]</span></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- content-t end -->
                <div class="content-t clear">
                    <div class="content-t-l">
                        <h1 class="content-title">
                            <strong>最新赛事</strong> <a href="Dynamiclist.aspx?type=hyhwxx" class="more">更多信息>>></a>
                        </h1>
                        <div class="content-t-c">
                            <ul class="content-t-c-ul">
                                <asp:Repeater ID="Repeater_ss" runat="server">
                                    <ItemTemplate>
                                        <li><a href="NewsDetail.aspx?id=<%# Eval("SID")%>" title=""> <%# Eval("HomeCourtName")%> 对阵  <%# Eval("awayName")%>
                                           </a><span class="span_t">[<%# Eval("StartTime")%>]</span></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div id="footer">
                    
            </div>
        </div>
    </div>
    </form>
</body>
</html>
