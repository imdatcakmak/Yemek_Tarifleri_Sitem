<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: 30px;
            color: #FFCCCC;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            font-size: xx-small;
        }
        .auto-style13 {
            font-size: x-large;
        }
        .auto-style15 {
        background-color: #999999;
    }
    .auto-style16 {
        width: 100%;
        background-color: #CCFFFF;
    }
    .auto-style17 {
        font-weight: bold;
        font-style: italic;
        background-color: #999999;
    }
    .auto-style18 {
        height: 26px;
    }
    .auto-style19 {
        height: 26px;
        text-align: right;
    }
    .auto-style20 {
        text-align: right;
    }
    .auto-style21 {
        height: 43px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
    &nbsp;
    <br />
&nbsp;
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style11">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style13" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </strong>
    <div class="auto-style15">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style16">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>Ad Soyad:</strong></td>
                <td class="auto-style18">
                    <asp:TextBox ID="TxtAdSoyad" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TxtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong><em>
                    <asp:Button ID="BtnYorumYap" runat="server" CssClass="tb5" Height="44px" OnClick="BtnYorumYap_Click" Text="Yorum Yap" Width="200px" />
                    </em></strong></td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style21"></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
