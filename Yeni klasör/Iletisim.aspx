<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="CVENTITYPROJECT.İletişim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 10px; width: 1490px; margin-left: 20px;">
        <table class="table table-bordered" style="border-color: black; border-radius: 10px;">
            <tr>
                <th style="text-align: center; font-size: 18px;">ID</th>
                <th style="text-align: center; font-size: 18px;">Ad-Soyad</th>
                <th style="text-align: center; font-size: 18px;">Mail Adresi</th>
                <th style="text-align: center; font-size: 18px;">Konu</th>
                <th style="text-align: center; font-size: 18px;">Mesaj</th>
                <th style="text-align: center; font-size: 18px;">Sil</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td style="text-align: center; font-family: Roboto"><%#Eval("ID") %></td>
                        <td style="font-family: Roboto; text-align: center;"><%#Eval("ADSOYAD") %></td>
                        <td style="font-family: Roboto; text-align: center;"><%#Eval("MAIL") %></td>
                        <td style="font-family: Roboto; text-align: center;"><%#Eval("KONU") %></td>

                        <td style="text-align: center">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-success" BackColor="MediumPurple" NavigateUrl='<%# "IletisimDetay.aspx?ID=" + Eval("ID") %>'>Mesajı Gör</asp:HyperLink></td>
                        <td style="text-align: center">
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "IletisimSil.aspx?ID=" + Eval("ID") %>'>Sil</asp:HyperLink>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>

    </div>
</asp:Content>
