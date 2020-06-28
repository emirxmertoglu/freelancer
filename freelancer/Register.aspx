<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="freelancer.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MSKÜ Freelancer - Kayıt Ol!</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="login_register/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="login_register/css/style.css">

    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
</head>
<body>
    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Kayıt ol</h2>
                        <form method="POST" class="register-form" id="kayit_formu" runat="server">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="adSoyadTbx" runat="server" placeholder="Ad Soyad" MaxLength="100"></asp:TextBox>
                            </div>
                            <%--Bu kısımda bir hata var giderilmesi gerek
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <div class="default-select" id="default-select" "="">
										<select asp-for="Cinsiyet" class="form-control" asp-items="@Html.GetEnumSelectList<Kisi.CinsiyetTipi>()">
                                            <option selected="selected" value="">Lütfen seçim yapınız</option>
                                        </select>
							    </div>
                            </div>--%>
                            <div class="form-group">
                                <label for="cinsiyet"><i class="zmdi zmdi-male-female"></i></label>
                                <asp:TextBox ID="cinsiyetTbx" runat="server" placeholder="Cinsiyet" TextMode="SingleLine" MaxLength="50"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <asp:TextBox ID="emailTbx" runat="server" placeholder="Email" TextMode="Email" MaxLength="50"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="sifreTbx" runat="server" placeholder="Sifre" TextMode="Password" MaxLength="50"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <asp:TextBox ID="sifreTekrarTbx" runat="server" MaxLength="50" TextMode="Password" placeholder="Sifre Tekrar"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="phone"><i class="zmdi zmdi-phone"></i></label>
                                <asp:TextBox ID="telefonTbx" runat="server" MaxLength="11" TextMode="Phone" placeholder="Telefon"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="bolge"><i class="zmdi zmdi-pin"></i></label>
                                <asp:TextBox ID="bolgeTbx" runat="server" MaxLength="50" TextMode="SingleLine" placeholder="Bölge"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="tcno"><i class="zmdi zmdi-accounts-list"></i></label>
                                <asp:TextBox ID="tcNoTbx" runat="server" MaxLength="11" TextMode="SingleLine" placeholder="TC No"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="firma"><i class="zmdi zmdi-case"></i></label>
                                <asp:TextBox ID="firmaTbx" runat="server" MaxLength="50" TextMode="SingleLine" placeholder="Firma"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="unvan"><i class="zmdi zmdi-mood"></i></label>
                                <asp:TextBox ID="unvanTbx" runat="server" MaxLength="50" TextMode="SingleLine" placeholder="Ünvan"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span><a href="#" class="term-service">Hizmet sartlarındaki</a> tüm beyanları kabul ediyorum</label>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="kayitBtn" runat="server" Text="Kayıt ol" class="form-submit" OnClick="kayitBtn_Click" />
                                <asp:Button ID="vazgecBtn" runat="server" Text="Vazgec" class="form-submit" OnClick="vazgecBtn_Click"/>
                            </div>
                            <asp:Label ID="durumLbl" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Red"></asp:Label>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="login_register/images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="Login.aspx" class="signup-image-link">Zaten üyeyim</a>
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="login_register/vendor/jquery/jquery.min.js"></script>
    <script src="login_register/js/main.js"></script>
</body>
</html>
