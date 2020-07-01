<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="freelancer.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>MSKÜ Freelancer</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/slicknav.css">

    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>

    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid ">
                    <div class="header_bottom_border">
                        <div class="row align-items-center">
                            <div class="col-xl-3 col-lg-2">
                                <div class="logo">
                                    <a href="Default.aspx">
                                        <img src="img/logo.png" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-7">
                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a href="Default.aspx">Anasayfa</a></li>
                                            <li><a href="Contact.aspx">İletişim</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                                <div class="Appointment">
                                    <div class="phone_num d-none d-xl-block">
                                        <a href="Login.aspx">Giriş Yap</a>
                                    </div>
                                    <div class="d-none d-lg-block">
                                        <a class="boxed-btn3" href="Register.aspx">Kayıt ol</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->

    <!-- slider_area_start -->
    <div class="slider_area">
        <div class="single_slider  d-flex align-items-center slider_bg_1">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-6">
                        <div class="slider_text">
                            <h5 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".2s">4536+ İlan verildi</h5>
                            <h3 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".3s">Sende hayalindeki işi bul</h3>
                            <p class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".4s">Uzmanlık alanına yada uzmanlaşmak istediğin alana göre sana uygun işi bulabilmeni garantiliyoruz</p>
                            <asp:Label ID="adSoyadLbl" runat="server" Text=""></asp:Label>
                            <div class="sldier_btn wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".5s">
                                <a href="Advertise.aspx" class="boxed-btn3">İş veren misin? Hemen İlan Yükle</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ilstration_img wow fadeInRight d-none d-lg-block text-right" data-wow-duration="1s" data-wow-delay=".2s">
            <img src="img/banner/illustration.png" alt="">
        </div>
    </div>
    <!-- slider_area_end -->

    <!-- catagory_area -->
    <div class="catagory_area">
        <div class="container">
            <div class="row cat_search">
                <div class="col-lg-3 col-md-4">
                    <div class="single_input">
                        <input type="text" placeholder="Anahtar kelimelerle ara">
                    </div>
                </div>
                <div class="col-lg-3 col-md-4">
                    <div class="single_input">
                        <select class="wide" >
                            <option data-display="Bölge">Bölge</option>
                            <option value="1">Bodrum</option>
                            <option value="2">Dalaman</option>
                            <option value="4">Menteşe</option>
                          </select>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4">
                    <div class="single_input">
                        <select class="wide">
                            <option data-display="Sektör">Sektör</option>
                            <option value="1">Ajans</option>
                            <option value="2">Akademik</option>
                            <option value="4">Araştırma</option>
                          </select>
                    </div>
                </div>
                <div class="col-lg-3 col-md-12">
                    <div class="job_btn">
                        <a href="#" class="boxed-btn3">İş Bul</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="popular_search d-flex align-items-center">
                        <span>Popüler aramalar:</span>
                        <ul>
                            <li><a href="#">Bilişim / Bilgisayar</a></li>
                            <li><a href="#">Gayrimenkul</a></li>
                            <li><a href="#">Satış ve Pazarlama</a></li>
                            <li><a href="#">Ajans</a></li>
                            <li><a href="#">Eğitim</a></li>
                            <li><a href="#">Tasarım / Grafik</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ catagory_area -->

    <!-- job_listing_area_start  -->
    <div class="job_listing_area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="section_title">
                        <h3>İlanlar</h3>
                    </div>
                </div>
                <!-- <div class="col-lg-6">
                    <div class="brouse_job text-right">
                        <a href="jobs.html" class="boxed-btn4">Browse More Job</a>
                    </div>
                </div> -->
            </div>
            <div class="job_lists">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="single_jobs white-bg d-flex justify-content-between">
                            <div class="jobs_left d-flex align-items-center">
                                <div class="thumb">
                                    <img src="img/svg_icon/1.svg" alt="">
                                </div>
                                <div class="jobs_conetent">
                                    <a href="job_details.html"><h4>Yazılım Mühendisi</h4></a>
                                    <div class="links_locat d-flex align-items-center">
                                        <div class="location">
                                            <p> <i class="fa fa-map-marker"></i> Menteşe, Muğla</p>
                                        </div>
                                        <div class="location">
                                            <p> <i class="fa fa-clock-o"></i> Part-time</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="jobs_right">
                                <div class="apply_now">
                                    <a class="heart_mark" href="#"> <i class="ti-heart"></i> </a>
                                    <a href="job_details.html" class="boxed-btn3">Hemen başvur</a>
                                </div>
                                <div class="date">
                                    <p>İlan veriliş tarihi: 23 Haz 2020</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- job_listing_area_end  -->


    <!-- footer start -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 col-md-6 col-lg-3">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s">
                            <div class="footer_logo">
                                <a href="#">
                                    <img src="img/logo.png" alt="">
                                </a>
                            </div>
                            <p>
                                info@mskuogrencisinegelir.com <br>
                                +90 252 111 22 33 <br>
                                Muğla Sıtkı Koçman Üniversitesi Teknokent
                            </p>
                            <div class="socail_links">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <i class="ti-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-google-plus"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-lg-2">
                        <div class="footer_widget wow fadeInUp" data-wow-duration="1.1s" data-wow-delay=".4s">
                            <h3 class="footer_title">
                                Şirket
                            </h3>
                            <ul>
                                <li><a href="#">Hakkımızda </a></li>
                                <li><a href="#"> İletişim</a></li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right_text wow fadeInUp" data-wow-duration="1.4s" data-wow-delay=".3s">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="copy_right text-center">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://emirxmertoglu.github.io" target="_blank">Emir Mertoğlu</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--/ footer end  -->

    <!-- link that opens popup -->
    <!-- JS here -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>



    <!--contact js-->
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>


    <script src="js/main.js"></script>
</body>
</html>
