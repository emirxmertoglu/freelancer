<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="freelancer.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Giriş Yap</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="login_register/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="login_register/css/style.css">

    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
</head>
<body>
    <div class="main">

        <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="login_register/images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="Register.aspx" class="signup-image-link">Bir hesap oluştur</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Giris Yap</h2>
                        <form method="POST" class="register-form" id="giris_formu" runat="server">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox ID="emailTbx" runat="server" MaxLength="50" placeholder="Email" TextMode="Email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="sifreTbx" runat="server" MaxLength="50" placeholder="Sifre" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Beni hatırla</label>
                            </div>
                            <div class="form-group form-button">
                                <asp:Button ID="girisBtn" runat="server" Text="Giris" class="form-submit" OnClick="girisBtn_Click" />
                            </div>
                            <asp:Label ID="durumLbl" runat="server" Text="" Font-Bold="True" ForeColor="Red" Font-Underline="True"></asp:Label>
                        </form>
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
