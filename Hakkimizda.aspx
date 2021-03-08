<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="Yemek_Tarifleri_Sitem.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            font-size: large;
            text-align: center;
        height: 24px;
    }
    .auto-style11 {
        margin-top: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style10">
        <strong><em>HAKKIMIZDA</em></strong></p>
    <div class="auto-style9">
    <asp:DataList ID="DataList2" runat="server" Width="450px" CssClass="auto-style11">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>

    </div>

    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/Resimler/blog.jpg" Width="450px" />

</asp:Content>
