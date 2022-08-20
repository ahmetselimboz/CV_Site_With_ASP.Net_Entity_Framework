<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YetenekGuncelle.aspx.cs" Inherits="CVENTITYPROJECT.YetenekGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h4 style="font-family: Roboto; margin-left: 120px; font-weight: bold; font-size: 22px; color: #cc0000">Yetenek Güncelleme Sayfası</h4>
    <br />
    <div style="margin-left: 120px; font-size:20px; font-family: Roboto; ">
        <asp:Label ID="Label1" runat="server" Text="Yetenek Adı:" ></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"  BorderStyle="Solid" Width="350px"></asp:TextBox>
    </div>
    <br />
    <div style="margin-left: 350px;">
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" Font-Size="15px" Width="100px" Font-Bold="true" OnClick="Button1_Click"/>
    </div>
</asp:Content>
