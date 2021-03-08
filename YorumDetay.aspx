<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            border: 2px solid #777;
            border-radius: 20px;
            outline: none;
        }
        .auto-style12 {
            font-size: large;
            text-align: right;
        }
        .auto-style13 {
            width: 100%;
            height: 261px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style13">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>AD SOYAD:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>MAİL ADRESİ:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>İÇERİK:</strong></td>
            <td>
                <asp:TextBox ID="Txticerik" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>YEMEK:</strong></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style11" Text="ONAYLA" Width="235px" OnClick="BtnOnayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
