<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CVENTITYPROJECT.Default" %>

<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Software CV Site</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Conjoint Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="/web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="/web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="/web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <!-- //online-fonts -->
</head>
<body>
    <div class="sidenav text-center" style="background-color: #600093;">
        <div class="side_top">
            <img src="/web/images/Selimm.jpeg" alt="news image" class="img-fluid navimg" style="border-color: snow; border-style: solid;">
            <h1 class="top_hd mt-2">
                <a href="index.html">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <%#Eval("BILGILER") %>
                        </ItemTemplate>
                    </asp:Repeater>
                </a></h1>
            <p class="top_hdp mt-2">-Bilgisayar Mühendisliği Öğrencisi-</p>
        </div>
        <!-- header -->
        <header>
            <div class="nav-top">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="active"><a href="#home" class="scroll">Ana Sayfa</a></li>
                        <li class="mt-sm-3"><a href="#about" class="scroll">Hakkımda</a></li>
                        <li class="mt-sm-3"><a href="#services" class="scroll">Yetenekler</a></li>
                        <li class="mt-sm-3"><a href="#news" class="scroll">Projeler</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">İletişim</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->
    </div>
    <div class="main">
        <div class="banner-text-w3ls" id="home">
            <div class="container" style="background: rgba(75, 75, 75, 0.50); width: 600px; height: 250px; border-radius: 10px; font-size: 25px;">
                <div class="mx-auto text-center" style="opacity: 1">

                    <h3>HOŞ GELDİNİZ
                    </h3>
                    <p class="banp mx-auto mt-3" style="font-size: 22px;">
                        Yazılım CV Sitesi
                    </p>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">Hakkımda</a>

                </div>
            </div>
        </div>
        <!-- about -->
        <section class="slide-wrapper" id="about">
            <h2 class="w3_head mb-4" style="margin-top: 45px; font-family: Roboto;">Hakkımda </h2>
            <h4 class="main_hd" style="font-size: 15px; margin-bottom: 120px; font-family: Inter;">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <%#Eval("EGITIM") %>
                    </ItemTemplate>
                </asp:Repeater>
            </h4>
            <h2 class="w3_head mb-4" style="font-family: Roboto;">Eğitim Hayatım</h2>
            <h4 class="main_hd" style="font-size: 15px; margin-bottom: 120px; font-family: Inter;">
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <%#Eval("HAKKIMDA") %>
                    </ItemTemplate>
                </asp:Repeater>
            </h4>
            <h2 class="w3_head mb-4" style="font-family: Roboto;">İş Deneyimlerim</h2>
            <h4 class="main_hd" style="font-size: 15px; font-family: Inter;">
                <asp:Repeater ID="Repeater4" runat="server">
                    <ItemTemplate>
                        <%#Eval("ISDENEYIMLERI") %>
                    </ItemTemplate>
                </asp:Repeater>
            </h4>
            <p class="iner mt-md-5"></p>
        </section>
        <!-- //about -->
        <!-- services -->
        <section class="services" id="services">
            <div class="container">
                <h3 class="w3_head mb-4 text-left" style="font-family: Roboto;">Yetenekler</h3>
                <ul class="list-unstyled mt-5">
                    <li>
                        <asp:Repeater ID="Repeater11" runat="server">
                            <ItemTemplate>
                                <div class="row" style="margin-right: -100px;">
                                    <div class="col-2 ic-lft">
                                        <span class="fa fa-code"></span>
                                    </div>
                                    <div class="col-10" style="font-family: Inter;">
                                        <h6><%#Eval("YETENEK") %></h6>
                                        <br />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </li>
                </ul>
            </div>
        </section>
        <!-- //services -->
        <!-- news -->
        <div class="news" id="news">
            <h3 class="w3_head mb-4 text-left" style="font-family: Roboto;">Projelerim</h3>
            <%--<p class="iner mt-md-5 text-left">Nunc fermentum adipiscing tempor cursus nascetur adipiscing adipiscing. Primis aliquam mus lacinia lobortis.Nunc fermentum adipiscing tempor cursus nascetur adipiscing adipiscing. </p>--%>
            <asp:Repeater ID="Repeater5" runat="server">
                <ItemTemplate>
                    <tr>
                        <div class="row news-grids-left mt-5">
                            <div class="col-lg-5 news_top" style="font-family: Inter;">
                                <h5>
                                    <%#Eval("PROJEAD") %>
                                </h5>
                                <p class="mt-3">
                                    <%#Eval("PROJEDETAY") %>
                                </p>
                            </div>
                            <div class="col-lg-7 news_top1">
                                <img src="<%#Eval("PROJERESİM") %>" alt="news image" class="img-fluid">
                            </div>
                        </div>
                    </tr>

                </ItemTemplate>
            </asp:Repeater>


            <!-- //news -->
            <!-- contact -->
            <section class="wedo" id="contact">
                <h3 class="w3_head mb-4 text-left" style="font-family: Roboto;">İletişim</h3>
                <div class="contact_grid_right mt-5 mx-auto text-left">
                    <form action="#" method="post" runat="server">
                        <div class="row contact_top" style="margin-right: -15px;">
                            <div class="col-sm-6">
                                <asp:TextBox ID="TextBox1" runat="server" placeholder="Ad-Soyadınız"></asp:TextBox>
                            </div>
                            <div class="col-sm-6">
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail Adresiniz"></asp:TextBox>
                            </div>
                        </div>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Başlığınız"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Mesajınız" TextMode="MultiLine" Height="50px"></asp:TextBox>
                        <div>
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Gönder" Width="150" Height="50" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Temizle" Width="150" Height="50" OnClick="Button2_Click" />
                        </div>
                        <div>
                        </div>


                        <div class="clearfix"></div>
                    </form>
                </div>
                <div class="cpy-right text-center">
                    <p>
                    </p>
                </div>

            </section>
            <!-- //contact -->
        </div>
</body>
</html>
