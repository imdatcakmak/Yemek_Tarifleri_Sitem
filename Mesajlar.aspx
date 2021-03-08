<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm15" %>
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
        .auto-style18 {
        width: 100%;
        height: 36px;
    }
        .auto-style19 {
            text-align: left;
        }
        .auto-style20 {
            text-align: right;
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                    </strong></td>
                <td>MESAJ LİSTESİ&nbsp; LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
       <asp:Panel ID="Panel2" runat="server">
            <div class="auto-style19">
                <asp:DataList ID="DataList1" runat="server" Width="447px">
                    <ItemTemplate>
                        <table class="auto-style8">
                            <tr>
                                <td class="auto-style12">
                                    <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                                </td>
                                <td class="auto-style20">
                                  <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>">  <asp:Image ID="Image2" runat="server" CssClass="auto-style14" Height="30px" ImageUrl="~/İcons/read.png" Width="30px" /></a>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            </asp:Panel>
</asp:Content>
