<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advertise.aspx.cs" Inherits="freelancer.Advertise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>İlan Ver</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Main CSS-->
    <link href="advertise/css/main.css" rel="stylesheet" media="all">

    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
</head>
<body>

    <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">Yeni bir ilan ver</h2>
                </div>
                <div class="card-body">
                    <form method="POST" id="form1" runat="server">
                        <div class="form-row">
                            <div class="name">Başlık</div>
                            <div class="value">
                                <asp:TextBox ID="baslikTbx" runat="server" MaxLength="50" class="input--style-6"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Açıklama</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="aciklamaTbx" runat="server" class="textarea--style-6" placeholder="İşin tanımını açıklayınız" MaxLength="250"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Maaş</div>
                            <div class="value">
                                <asp:TextBox ID="maasTbx" runat="server" class="input--style-6" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Kontenjan</div>
                            <div class="value">
                                <asp:TextBox ID="kontenjanTbx" runat="server" class="input--style-6" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <button class="btn btn--radius-2 btn--blue-2" type="submit">İlanı Yayınla</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="advertise/vendor/jquery/jquery.min.js"></script>


    <!-- Main JS-->
    <script src="advertise/js/global.js"></script>
</body>
</html>
