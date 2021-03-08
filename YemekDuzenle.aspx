<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            text-align: right;
            font-size: large;
        }
    .auto-style13 {
        border: 2px solid #777;
        border-radius: 20px;
        outline: none;
        font-weight: bold;
        color: #00CC00;
        font-size: large;
        background-color: #99CC00;
    }
    .auto-style14 {
        border: 2px solid #777;
        border-radius: 20px;
        outline: none;
        font-weight: bold;
        color: #FF0000;
        font-size: large;
        background-color: #FF9933;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>YEMEK AD:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemekAd" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>MALZEMELER:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzemeler" runat="server" CssClass="tb5" Height="50px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>TARİF:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarif" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>KATEGORİ:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="235px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>YEMEK GÖRÜNTÜ:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="232px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style13" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="235px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <strong>
                <asp:Button ID="BtnGununYemegiSec" runat="server" CssClass="auto-style14" OnClick="BtnGununYemegiSec_Click" Text="Günün Yemeği Seç" Width="235px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>
