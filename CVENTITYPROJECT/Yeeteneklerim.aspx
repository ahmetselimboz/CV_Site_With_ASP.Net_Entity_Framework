<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yeeteneklerim.aspx.cs" Inherits="CVENTITYPROJECT.Yeeteneklerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 10px; width: 1490px; margin-left: 20px;">
        <table class="table table-bordered" style="border-color: black; border-radius: 10px;">
            <tr>
                <th style="text-align: center; font-size: 18px;">ID</th>
                <th style="text-align: center; font-size: 18px;">Yetenek</th>
                <th style="text-align: center; font-size: 18px;">Sil</th> 
                <th style="text-align: center; font-size: 18px;">Güncelle</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td style="text-align: center; font-family: Roboto"><%#Eval("ID") %></td>
                        <td style="font-family: Roboto"><%#Eval("Yetenek") %></td>
                        <td style="text-align: center">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "YetenekSil.aspx?ID=" + Eval("ID") %>'>Sil</asp:HyperLink></td>
                        <td style="text-align: center;">
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl='<%# "YetenekGuncelle.aspx?ID=" + Eval("ID") %>'>Güncelle</asp:HyperLink></td>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        <a href="YeniYetenek.aspx" class="btn btn-primary" style="margin-left: 1100px; font-size: 18px;">Yeni Yetenek Ekle</a>
    </div>

</asp:Content>
