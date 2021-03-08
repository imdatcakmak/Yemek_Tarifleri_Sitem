<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm11" %>


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
    .auto-style20 {
        text-align: center;
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
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style8">     
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                         <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil "> <asp:Image ID="Image2" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style13">
                          <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>">  <asp:Image ID="Image3" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/update.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style11" BorderStyle="Groove" BorderWidth="2px">
        <table class="auto-style8">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td>YEMEK EKLEME</td>
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
                <td class="auto-style18">YEMEK AD:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtAd" runat="server" CssClass="tb5" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMLER:</td>
                <td>
                    <asp:TextBox ID="TxtMalzemeler" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİF:</td>
                <td>
                    <asp:TextBox ID="TxtYemekTarif" runat="server" CssClass="tb5" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style19" Text="Ekle" Width="100px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
