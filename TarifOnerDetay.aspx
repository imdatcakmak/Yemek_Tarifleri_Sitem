<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .auto-style16 {
        width: 100%;
        background-color: #CCFFFF;
    }
    .auto-style19 {
        height: 26px;
        text-align: right;
            color: #000000;
            width: 126px;
            font-size: large;
            background-color: #0099CC;
        }
    .auto-style18 {
        height: 26px;
    }
        .auto-style22 {
            background-color: #0066FF;
        }
        .auto-style23 {
            text-align: right;
            height: 110px;
            color: #000000;
            width: 126px;
            font-size: large;
            background-color: #0099CC;
        }
        .auto-style24 {
            height: 110px;
        }
        .auto-style26 {
            color: #0066FF;
        }
        .auto-style29 {
            height: 23px;
        }
        .auto-style30 {
            color: #000000;
            width: 126px;
            text-align: right;
            font-size: medium;
            height: 30px;
            background-color: #0099CC;
        }
        .auto-style31 {
            color: #0066FF;
            width: 126px;
        }
        .auto-style32 {
            color: #000000;
            width: 126px;
            height: 23px;
            text-align: right;
            font-size: large;
            background-color: #0099CC;
        }
        .auto-style33 {
            height: 30px;
        }
        .auto-style34 {
            color: #000000;
            width: 126px;
            font-size: large;
            text-align: right;
            background-color: #0099FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <asp:Panel ID="Panel1" runat="server"  CssClass="auto-style22" BackColor="#0066FF">
        <table class="auto-style16">
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Tarif Ad:</strong></td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtTarifAd" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style30"><strong>Tarif Malzemeler:</strong></td>
                <td class="auto-style33">
                    <asp:TextBox ID="TxtTarifMalzeme" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Yapılış:</strong></td>
                <td class="auto-style24">
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style32"><strong>Tarif Resim:</strong></td>
                <td class="auto-style29">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="216px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style32"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TxtTarifOneren" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style32"><strong>&nbsp;Öneren Mail:</strong></td>
                <td class="auto-style29">
                    <asp:TextBox ID="TxtOnerenMail" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style34"><strong>&nbsp;Kategori:&nbsp;</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style31">&nbsp;</td>
                <td><strong><em>
                    <asp:Button ID="BtnOnayla" runat="server" BackColor="White" CssClass="fb8" Height="44px" OnClick="BtnOnayla_Click" Text="Onayla" Width="200px" />
                    </em></strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
