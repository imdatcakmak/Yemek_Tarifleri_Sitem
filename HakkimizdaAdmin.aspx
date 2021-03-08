<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm20" %>
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
        margin-left: 80px;
    }
    .auto-style20 {
        border: 2px solid #777;
        border-radius: 20px;
        outline: none;
        font-weight: bold;
        font-size: x-large;
    }
    .auto-style21 {
        text-align: center;
        margin-left: 80px;
    }
    .auto-style22 {
        font-style: italic;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11" BorderStyle="Groove" BorderWidth="2px">
        <table class="auto-style18">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"   />
                    </strong></td>
                <td>HAKKIMIZDA </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style8">
            <tr>
                <td class="auto-style19"><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style22" Height="190px" TextMode="MultiLine" Width="438px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="48px" Text="Güncelle" Width="223px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
