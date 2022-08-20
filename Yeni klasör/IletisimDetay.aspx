<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="IletisimDetay.aspx.cs" Inherits="CVENTITYPROJECT.İletişimDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h4 style="font-family: Roboto; margin-left: 120px; font-weight: bold; font-size: 22px; color: #cc0000">Mesaj Sayfası</h4>
    <br />
    <div style="margin-left: 120px; font-size: 20px; font-family: Roboto;">
        <asp:Label ID="Label2" runat="server" Text="Gönderen:"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    </div>
    <br />
    <div style="margin-left: 120px; font-size: 20px; font-family: Roboto;">
        <asp:Label ID="Label1" runat="server" Text="Mesaj:"></asp:Label>

    </div>
    <div style="margin-left: 120px;">
        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Width="350px" TextMode="MultiLine" Height="250px"></asp:TextBox>
    </div>
    <br />
    <div style="margin-left: 320px;">
        <asp:Button ID="Button1" runat="server" Text="Geri Dön" CssClass="btn btn-primary" Font-Size="15px" Width="100px" Font-Bold="true" OnClick="Button1_Click" />

    </div>
</asp:Content>
