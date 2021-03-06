﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" AutoEventWireup="true" CodeBehind="selectedNews.aspx.cs" Inherits="BallGameManage.Administrator.selectedNews" %>
<%@ Register TagPrefix="uc" TagName="pageList" Src="~/UserControls/PageList.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../styles/indexcss.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="contentcontainer">
        <div class="headings altheading">
            <h2>
                新闻列表</h2>
        </div>
        <div class="contentbox">
            <asp:Button ID="btn_add" CssClass="btn" runat="server" Text="添加" 
                onclick="btn_add_Click" />
            <table width="100%">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" value="" id="CKB" />全选
                        </th>
                        <th>
                            标题
                        </th>
                        <th>
                            发布时间
                        </th>
                        <th>
                            发布人
                        </th>
                        <th>
                            操作
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater" runat="server" OnItemCommand="Repeater_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <input class="cb" type="checkbox" id="checkbox" runat="server" value='<%# Eval("sid") %>' />
                                </td>
                                <td>
                                    <%# Eval("title")%>
                                </td>
                                <td>
                                    <%# Eval("CreateTime")%>
                                </td>
                                <td>
                                    <%# Eval("CreatePeople")%>
                                </td>
                                <td>
                                    <asp:ImageButton ID="Edit" runat="server" PostBackUrl='<%# "UpdateNews.aspx?id="+Eval("sid")+"&type="+Eval("type") %>'
                                        ImageUrl="../img/icons/icon_edit.png" CommandName="Edit" />
                                    <asp:ImageButton ID="Delete" runat="server" CommandArgument='<%# Eval("sid") %>'
                                        ImageUrl="../img/icons/icon_delete.png" CommandName="Delete" />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr class="alt">
                                <td>
                                    <input type="checkbox" id="checkbox" class="cb" runat="server" value='<%# Eval("sid") %>' />
                                </td>
                                <td>
                                    <%# Eval("title")%>
                                </td>
                                 <td>
                                    <%# Eval("CreateTime")%>
                                </td>
                                <td>
                                    <%# Eval("CreatePeople")%>
                                </td>
                                <td>
                                    <asp:ImageButton ID="Edit" PostBackUrl='<%# "UpdateNews.aspx?id="+Eval("sid")+"&type="+Eval("type") %>'
                                        runat="server" ImageUrl="../img/icons/icon_edit.png" CommandName="Edit" />
                                    <asp:ImageButton ID="Delete" runat="server" CommandArgument='<%# Eval("sid") %>'
                                        ImageUrl="../img/icons/icon_delete.png" CommandName="Delete" />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
            <div class="extrabottom">
                <ul>
                    <li>
                        <asp:ImageButton ID="IMG_btn_batchDelete" runat="server" ImageUrl="../img/icons/icon_delete.png" OnClick="batchDelete_Click" AlternateText="批量删除" />
                        <asp:LinkButton ID="lk_btn_batchDelete" runat="server" OnClick="lk_btn_batchDelete_Click">批量删除</asp:LinkButton></li>
                </ul>
                <div class="bulkactions">
                    <uc:pageList ID="pagelist" runat="server"  Onpagelistchang="pagelist_chang"/>
                </div>
            </div>
            <div style="clear: both;">
            </div>
        </div>
    </div>
</asp:Content>
