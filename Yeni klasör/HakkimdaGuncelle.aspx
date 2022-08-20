<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimdaGuncelle.aspx.cs" Inherits="CVENTITYPROJECT.HakkımdaGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h4 style="font-family: Roboto; margin-left: 120px; font-weight: bold; font-size: 22px; color: #cc0000">Hakkımda Güncelleme Sayfası</h4>
    <br />
    <div style="margin-left: 120px; font-size: 20px; font-family: Roboto;">
        <asp:Label ID="Label2" runat="server" Text="Hakkımda:"></asp:Label>
    </div>
    <div style="margin-left: 120px;">
        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="Solid" Width="440px" TextMode="MultiLine" Height="80px"></asp:TextBox>

    </div>
    <br />
    <br />
    <div style="margin-left: 120px; font-size: 20px; font-family: Roboto;">
        <asp:Label ID="Label1" runat="server" Text="Eğitim Hayatım:"></asp:Label>
    </div>
    <div style="margin-left: 120px;">
        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Solid" Width="440px" TextMode="MultiLine" Height="80px"></asp:TextBox>

    </div>
    <br />
    <br />
    <div style="margin-left: 120px; font-size: 20px; font-family: Roboto;">
        <asp:Label ID="Label3" runat="server" Text="İŞ DENEYİMLERİ:"></asp:Label>
    </div>
    <div style="margin-left: 120px;">
        <asp:TextBox ID="TextBox3" runat="server" BorderStyle="Solid" Width="440px" TextMode="MultiLine" Height="80px"></asp:TextBox>

    </div>
    <br />
    <div style="margin-left: 350px;">
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" Font-Size="15px" Width="100px" Font-Bold="true" OnClick="Button1_Click"/>
    </div>
</asp:Content>
