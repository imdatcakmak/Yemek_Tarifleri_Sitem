<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            background-color: #CCCCCC;
        }
        .auto-style16 {
            width: 17px;
        }
        .auto-style15 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style17 {
            width: 30px;
        }
        .auto-style12 {
            text-align: left;
            width: 241px;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style13 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11" BorderStyle="Groove" BorderWidth="2px">
        <table class="auto-style8">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>ONAYLANAN YORUM&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="447px">
                <ItemTemplate>
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style13">
                                <asp:Image ID="Image2" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/delete.png" Width="30px" />
                            </td>
                            <td class="auto-style13">
                                <asp:Image ID="Image3" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/update.jpg" Width="30px" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" BorderStyle="Groove" BorderWidth="2px" CssClass="auto-style11">
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style16"><strong>
                            <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                            </strong></td>
                        <td class="auto-style17"><strong>
                            <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                            </strong></td>
                        <td>ONAYSIZ YORUM&nbsp; LİSTESİ</td>
                    </tr>
                </table>
            
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="447px">
                <ItemTemplate>
                    <table class="auto-style8">
                        <tr>
                            <td class="auto-style12">
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style13">
                                <asp:Image ID="Image2" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/delete.png" Width="30px" />
                            </td>
                            <td class="auto-style13">
                               <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"> <asp:Image ID="Image3" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/update.jpg" Width="30px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            </asp:Panel>
    </asp:Content>
