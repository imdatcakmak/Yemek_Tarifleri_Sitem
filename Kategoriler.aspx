<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            background-color: #CCCCCC;
        }
        .auto-style12 {
            text-align: left;
            width: 241px;
        }
        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style16 {
            width: 17px;
        }
        .auto-style17 {
            width: 30px;
        }
        .auto-style18 {
            height: 29px;
        }
        .auto-style19 {
            border: 2px solid #777;
            border-radius: 20px;
            outline: none;
            height: 40px;
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11" BorderStyle="Groove" BorderWidth="2px">
        <table class="auto-style8">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                    </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                         <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil "> <asp:Image ID="Image2" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style13">
                          <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>">  <asp:Image ID="Image3" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/update.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server"  CssClass="auto-style11"  BorderStyle="Groove" BorderWidth="2px" >
        <table class="auto-style8" >
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style8">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style18">KATEGORİ AD:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtAd" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="235px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style19" OnClick="BtnEkle_Click" Text="Ekle" Width="100px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
