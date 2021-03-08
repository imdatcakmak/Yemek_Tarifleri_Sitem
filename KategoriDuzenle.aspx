<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 139px;
        }
        .auto-style12 {
            border: 2px solid #777;
            border-radius: 20px;
            outline: none;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            width: 139px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style8">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>KATEGORİ AD:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>ADET:</strong></td>
            <td>
                <asp:TextBox ID="TxtAdet" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>RESİM:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style13"><strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style12" Text="Güncelle" Width="237px" OnClick="BtnGuncelle_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
