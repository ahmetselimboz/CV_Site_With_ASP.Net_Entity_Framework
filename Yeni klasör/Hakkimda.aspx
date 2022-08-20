<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Hakkimda.aspx.cs" Inherits="CVENTITYPROJECT.Hakkımda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="border-radius: 10px; width: 1490px; margin-left: 20px;">
        <table class="table table-bordered" style="border-color: black; border-radius: 10px;">
            <tr>
                <th style="text-align: center; font-size: 18px;">ID</th>
                <th style="text-align: center; font-size: 18px;">Hakkımda</th>
                <th style="text-align: center; font-size: 18px;">Eğitim Hayatım</th>
                <th style="text-align: center; font-size: 18px;">İş Deneyimleri</th>
                <th style="text-align: center; font-size: 18px;">Güncelle</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td style="text-align: center; font-family: Roboto"><%#Eval("ID") %></td>
                        <td style="font-family: Roboto"><%#Eval("EGITIM") %></td>
                        <td style="font-family: Roboto"><%#Eval("HAKKIMDA") %></td>
                        <td style="font-family: Roboto"><%#Eval("ISDENEYIMLERI") %></td>
                        <td style="text-align: center;">
                            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl='<%# "HakkimdaGuncelle.aspx?ID=" + Eval("ID") %>'>Güncelle</asp:HyperLink></td>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</asp:Content>
