<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



        .auto-style11 {
            background-color: #CCCCCC;
        }
        .auto-style18 {
        width: 100%;
        height: 36px;
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
        .auto-style19 {
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11" BorderStyle="Groove" BorderWidth="2px">
        <table class="auto-style18">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"   />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"   />
                    </strong></td>
                <td>ONAYSIZ TARİF&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                     <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">       <asp:Image ID="Image2" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/öneri.png" Width="30px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style11" BorderStyle="Groove" BorderWidth="2px">
        <table class="auto-style18">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"   />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"    />
                    </strong></td>
                <td>ONAYLI TARİF&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                     <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">       <asp:Image ID="Image2" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/öneri.png" Width="30px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>
