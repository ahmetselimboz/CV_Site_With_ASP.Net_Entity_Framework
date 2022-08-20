<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniProje.aspx.cs" Inherits="CVENTITYPROJECT.YeniProje" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h4 style="font-family: Roboto; margin-left: 120px; font-weight: bold; font-size: 22px; color: #cc0000">Yeni Proje Ekleme Sayfası</h4>
    <br />
    <div style="margin-left: 120px; font-size: 20px; font-family: Roboto;">
        <asp:Label ID="Label1" runat="server" Text="Proje Adı:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Width="350px"></asp:TextBox>
    </div>
    <br />
    <br />
    <div style="margin-left: 120px; font-size: 20px; font-family: Roboto;">
        <asp:Label ID="Label2" runat="server" Text="Proje Açıklaması:"></asp:Label>
    </div>
    

    <div style="margin-left: 120px;">
        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Width="440px" TextMode="MultiLine" Height="80px"></asp:TextBox>

    </div>
    <br />
    <div style="margin-left: 120px;">
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </div>
    <br />
    <div style="margin-left: 350px;">
        <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-primary" Font-Size="15px" Width="100px" Font-Bold="true" OnClick="Button1_Click" />
    </div>
</asp:Content>
