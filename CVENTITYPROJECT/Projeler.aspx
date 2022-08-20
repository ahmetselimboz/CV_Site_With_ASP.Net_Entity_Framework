<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Projeler.aspx.cs" Inherits="CVENTITYPROJECT.Projeler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 10px; width: 1490px; margin-left: 20px;">
        <table class="table table-bordered" style="border-color: black; border-radius: 10px;">
            <tr>
                <th style="text-align: center; font-size: 18px;">ID</th>
                <th style="text-align: center; font-size: 18px;">İsim</th>
                <th style="text-align: center; font-size: 18px;">Açıklama</th>
                <th style="text-align: center; font-size: 18px;">Resim</th>
                <th style="text-align: center; font-size: 18px;">Sil</th>
                <th style="text-align: center; font-size: 18px;">Güncelle</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td style="text-align: center; font-family: Roboto"><%#Eval("ID") %></td>
                        <td style="font-family: Roboto"><%#Eval("PROJEAD") %></td>
                        <td style="font-family: Roboto"><%#Eval("PROJEDETAY") %></td>
                        <td>
                            <div style="width: 300px;">
                                <img src="<%#Eval("PROJERESİM") %>" alt="news image" style="width: 300px; height:180px;" class="img-fluid navimg">
                            </div>
                        </td>

                        <td style="text-align: center">
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%# "ProjeSil.aspx?ID=" + Eval("ID") %>'>Sil</asp:HyperLink></td>
                        <td style="text-align: center;">
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl='<%# "ProjeGuncelle.aspx?ID=" + Eval("ID") %>'>Güncelle</asp:HyperLink></td>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        <a href="YeniProje.aspx" class="btn btn-primary" style="margin-left: 1100px; font-size: 18px; background-color: orangered;">Yeni Proje Ekle</a>
    </div>
</asp:Content>
