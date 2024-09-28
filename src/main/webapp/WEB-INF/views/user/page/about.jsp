<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/vendor/vendor.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/plugins/plugins.min.css">

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.min.css">
<title>About Us</title>
</head>
<body>
    <!--====================  header area ====================-->
    <div class="header-area header-area--default">

        <!-- Header Bottom Wrap Start -->
        <header class="header-area  header_height-90 header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 col-md-4 d-none d-md-block">
                        <div class="header-left-search">
                            <form action="#" class="header-search-box">
                                <input class="search-field" type="text" placeholder="Search Anything...">
                                <button class="search-icon"><i class="icon-magnifier"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-6">
                        <div class="logo text-md-center">
                            <a href="${pageContext.servletContext.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo/logo.svg" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-6">
                        <div class="header-right-side text-end">
                            <div class="header-right-items  d-none d-md-block">
                                <a href="#" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    <i class="icon-user"></i>
                                </a>
                            </div>
                            <div class="header-right-items d-none d-md-block">
                                <a href="wishlist.html" class="header-cart">
                                    <i class="icon-heart"></i>
                                    <span class="item-counter">3</span>
                                </a>
                            </div>

                            <div class="header-right-items">
                                <a href="#miniCart" class=" header-cart minicart-btn toolbar-btn header-icon">
                                    <i class="icon-bag2"></i>
                                    <span class="item-counter">3</span>
                                </a>
                            </div>
                            <div class="header-right-items d-block d-md-none">
                                <a href="javascript:void(0)" class="search-icon" id="search-overlay-trigger">
                                    <i class="icon-magnifier"></i>
                                </a>
                            </div>
                            <div class="header-right-items">
                                <a href="javascript:void(0)" class="mobile-navigation-icon" id="mobile-menu-trigger">
                                    <i class="icon-menu"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header Bottom Wrap End -->

    </div>
    <!--====================  End of header area  ====================-->
    <!-- breadcrumb-area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="row breadcrumb_box  align-items-center">
                        <div class="col-lg-6 col-md-6 col-sm-6 text-center text-sm-start">
                            <h2 class="breadcrumb-title">About Us</h2>
                        </div>
                        <div class="col-lg-6  col-md-6 col-sm-6">
                            <!-- breadcrumb-list start -->
                            <ul class="breadcrumb-list text-center text-sm-end">
                                <li class="breadcrumb-item"><a href="${pageContext.servletContext.contextPath}/">Home</a></li>
                                <li class="active">/About Us</li>
                            </ul>
                            <!-- breadcrumb-list end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb-area end -->

    <div id="main-wrapper">
        <div class="site-wrapper-reveal border-bottom">

            <div class="about-us-pages-area">
                <div class="banner-video-area overflow-hidden section-space--pt_90">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="banner-video-box">
                                    <img src="${pageContext.request.contextPath}/resources/images/banners/video-about.webp" alt="">
                                    <div class="video-icon">
                                        <a href="https://www.youtube.com/watch?v=fkoEj95puX0" class="popup-youtube"><i class="linear-ic-play"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="our-customer-suppoer-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <!-- Single Support Item Start -->
                                <div class="single-support-item">
                                    <div class="header-support">
                                        <div class="icon">
                                            <i class="icon-bag2"></i>
                                        </div>
                                        <h6><a href="#">Shop online</a></h6>
                                    </div>
                                    <div class="iconbox-desc">
                                        <p>There are many variations pasbut the majority have suffered.</p>
                                    </div>
                                </div>
                                <!-- Single Support Item End -->
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <!-- Single Support Item Start -->
                                <div class="single-support-item">
                                    <div class="header-support">
                                        <div class="icon">
                                            <i class="icon-cash-dollar"></i>
                                        </div>
                                        <h6><a href="#">Payment methods</a></h6>
                                    </div>
                                    <div class="iconbox-desc">
                                        <p>Letraset sheets containing Lorem Ipsum publishing software.</p>
                                    </div>
                                </div>
                                <!-- Single Support Item End -->
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <!-- Single Support Item Start -->
                                <div class="single-support-item">
                                    <div class="header-support">
                                        <div class="icon">
                                            <i class="icon-paper-plane"></i>
                                        </div>
                                        <h6><a href="#">Free shipping</a></h6>
                                    </div>
                                    <div class="iconbox-desc">
                                        <p>when an unknown printer took a make a type book.</p>
                                    </div>
                                </div>
                                <!-- Single Support Item End -->
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-6">
                                <!-- Single Support Item Start -->
                                <div class="single-support-item">
                                    <div class="header-support">
                                        <div class="icon">
                                            <i class="icon-history"></i>
                                        </div>
                                        <h6><a href="#">Return policy</a></h6>
                                    </div>
                                    <div class="iconbox-desc">
                                        <p>Various versions have evolved over the years purpose.</p>
                                    </div>
                                </div>
                                <!-- Single Support Item End -->
                            </div>
                        </div>
                    </div>
                </div>

                <div class="perfection-area section-space--pt_90">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="perfection-dec mr-lg-5">
                                    <h5 class="mb-10">Functionality meets perfection</h5>
                                    <p>But I must explain to you how all this mistaken idea of denouncing sure and praising pain was born and I will give you a complete at the system, expound the actual teachings of the great of the truth, the human happiness was born. teachings of the great of the truth.</p>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="progress-wrapper tablet-mt__30 small-mt__30">

                                    <!-- Start Single Progress Charts -->
                                    <div class="progress-charts">
                                        <h6 class="prog-title">Creativity</h6>
                                        <div class="progress">
                                            <div class="progress-bar wow fadeInLeft custom-color--2" data-wow-duration="0.5s" data-wow-delay=".3s" role="progressbar" style="width: 92%" aria-valuenow="92" aria-valuemin="0" aria-valuemax="100"><span class="percent-label">82%</span></div>
                                        </div>
                                    </div>
                                    <!-- End Single Progress Charts -->

                                    <!-- Start Single Progress Charts -->
                                    <div class="progress-charts">
                                        <h6 class="prog-title">Advertising</h6>
                                        <div class="progress">
                                            <div class="progress-bar wow fadeInLeft custom-color--2" data-wow-duration="0.5s" data-wow-delay=".3s" role="progressbar" style="width: 92%" aria-valuenow="92" aria-valuemin="0" aria-valuemax="100"><span class="percent-label">82%</span></div>
                                        </div>
                                    </div>
                                    <!-- End Single Progress Charts -->

                                    <!-- Start Single Progress Charts -->
                                    <div class="progress-charts">
                                        <h6 class="prog-title">Design</h6>
                                        <div class="progress">
                                            <div class="progress-bar wow fadeInLeft custom-color--2" data-wow-duration="0.5s" data-wow-delay=".3s" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"><span class="percent-label">70%</span></div>
                                        </div>
                                    </div>
                                    <!-- End Single Progress Charts -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="banner-preduct-wrapper section-space--pt_90">
                    <div class="container">
                        <div class="row row--6">
                            <div class="col-lg-8 col-md-8">
                                <div class="banner-product-image mt-10">
                                    <a href="#">
                                        <img src="${pageContext.request.contextPath}/resources/images/banners/im-md-1-780x770.webp" class="img-fluid" alt="Banner images">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="banner-product-image mt-10">
                                    <a href="#">
                                        <img src="${pageContext.request.contextPath}/resources/images/banners/im-md-2-380x380.webp" class="img-fluid" alt="Banner images">
                                    </a>
                                </div>
                                <div class="banner-product-image mt-10">
                                    <a href="#">
                                        <img src="${pageContext.request.contextPath}/resources/images/banners/im-md-3.webp" class="img-fluid" alt="Banner images">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="banner-product-image mt-10">
                                    <a href="#">
                                        <img src="${pageContext.request.contextPath}/resources/images/banners/im-md-4-380x380.webp" class="img-fluid" alt="Banner images">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-8">
                                <div class="banner-product-image mt-10">
                                    <a href="#">
                                        <img src="${pageContext.request.contextPath}/resources/images/banners/im-md-5-780x380.webp" class="img-fluid" alt="Banner images">
                                    </a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="addres-area section-space--pb_90">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="helendo-section-title text-start section-space--mt_60">
                                    <h3 class="title">New York</h3>
                                    <div class="description">
                                        <p>2954 Golden Estates, Guys Store, New York, USA.<br> (571) 400-1255<br> info@helentheme.com</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="helendo-section-title text-start section-space--mt_60">
                                    <h3 class="title">San Diego</h3>
                                    <div class="description">
                                        <p>1102 Helen Estates, Guys Store, San Diego, USA.
                                            (571) 400-1255<br> office@helentheme.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <!--====================  footer area ====================-->
        <div class="footer-area-wrapper">
            <div class="footer-area section-space--ptb_120">
                <div class="container">
                    <div class="row footer-widget-wrapper">
                        <div class="col-lg-4 col-md-4 col-sm-6 footer-widget">
                            <h6 class="footer-widget__title mb-20">Address</h6>
                            <ul class="footer-widget__list">
                                <li><i class="icon_pin"></i> Helendo, Chicago, USA 2023</li>
                                <li> <i class="icon_phone"></i><a href="tel:846677028028" class="hover-style-link">+846677028028</a></li>

                            </ul>
                            <ul class="list footer-social-networks mt-25">

                                <li class="item">
                                    <a href="https://twitter.com/" target="_blank" aria-label="Twitter">
                                        <i class="social social_facebook"></i>
                                    </a>
                                </li>
                                <li class="item">
                                    <a href="https://facebook.com/" target="_blank" aria-label="Facebook">
                                        <i class="social social_twitter"></i>
                                    </a>
                                </li>
                                <li class="item">
                                    <a href="https://instagram.com/" target="_blank" aria-label="Instagram">
                                        <i class="social social_tumblr"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 footer-widget">
                            <h6 class="footer-widget__title mb-20">Help & Information</h6>
                            <ul class="footer-widget__list">
                                <li><a href="#" class="hover-style-link">Help & Contact Us</a></li>
                                <li><a href="#" class="hover-style-link">Returns & Refunds</a></li>
                                <li><a href="#" class="hover-style-link">Online Stores</a></li>
                                <li><a href="#" class="hover-style-link">Terms & Conditions</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-2 col-md-4 col-sm-6 footer-widget">
                            <h6 class="footer-widget__title mb-20">About Us</h6>
                            <ul class="footer-widget__list">
                                <li><a href="#" class="hover-style-link">About Us</a></li>
                                <li><a href="#" class="hover-style-link">What We Do</a></li>
                                <li><a href="#" class="hover-style-link">FAQ Page</a></li>
                                <li><a href="#" class="hover-style-link">Contact Us</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 footer-widget">
                            <h6 class="footer-widget__title mb-20">Newsletter</h6>
                            <div class="footer-widget__newsletter mt-30">
                                <input type="text" placeholder="Your email address">
                                <button class="submit-button"><i class="icon-arrow-right"></i></button>
                            </div>
                            <ul class="footer-widget__footer-menu  section-space--mt_60 d-none d-lg-block">
                                <li><a href="#">Term & Condition</a></li>
                                <li><a href="#">Policy</a></li>
                                <li><a href="#">Map</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-copyright-area section-space--pb_30">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-4 col-md-5 text-center text-md-start">
                            <ul class="footer-widget__footer-menu">
                                <li><a href="#">Term & Condition</a></li>
                                <li><a href="#">Policy</a></li>
                                <li><a href="#">Map</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-4 col-md-2 text-center">
                            <div class="footer-logo">
                                <a href="#"><img src="${pageContext.servletContext.contextPath}/resources/images/logo/logo.svg" alt="Logo images"></a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-5 order-md-3">
                            <div class="footer-bottom-social">
                                <h6 class="title">Follow Us On Social</h6>
                                <ul class="list footer-social-networks ">
                                    <li class="item">
                                        <a href="https://twitter.com/" target="_blank" aria-label="Twitter">
                                            <i class="social social_facebook"></i>
                                        </a>
                                    </li>
                                    <li class="item">
                                        <a href="https://facebook.com/" target="_blank" aria-label="Facebook">
                                            <i class="social social_twitter"></i>
                                        </a>
                                    </li>
                                    <li class="item">
                                        <a href="https://instagram.com/" target="_blank" aria-label="Instagram">
                                            <i class="social social_tumblr"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <span class="copyright-text text-center  section-space--mt_40">&copy; 2023 Helendo. <a  href="https://hasthemes.com/" target="_blank">All Rights Reserved.</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--====================  End of footer area  ====================-->
    </div>

    <!-- Modal -->
    <div class="header-login-register-wrapper modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-box-wrapper">
                    <div class="helendo-tabs">
                        <ul class="nav" role="tablist">
                            <li class="tab__item nav-item active">
                                <a class="nav-link active" data-bs-toggle="tab" href="#tab_list_06" role="tab">Login</a>
                            </li>
                            <li class="tab__item nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#tab_list_07" role="tab">Our Register</a>
                            </li>

                        </ul>
                    </div>
                    <div class="tab-content content-modal-box">
                        <div class="tab-pane fade show active" id="tab_list_06" role="tabpanel">
                            <form action="#" class="account-form-box">
                                <h6>Login your account</h6>
                                <div class="single-input">
                                    <input type="text" placeholder="Username">
                                </div>
                                <div class="single-input">
                                    <input type="password" placeholder="Password">
                                </div>
                                <div class="checkbox-wrap mt-10">
                                    <label class="label-for-checkbox inline mt-15">
                                        <input class="input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever"> <span>Remember me</span>
                                    </label>
                                    <a href="#" class=" mt-10">Lost your password?</a>
                                </div>
                                <div class="button-box mt-25">
                                    <a href="#" class="btn btn--full btn--black">Log in</a>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="tab_list_07" role="tabpanel">

                            <form action="#" class="account-form-box">
                                <h6>Register An Account</h6>
                                <div class="single-input">
                                    <input type="text" placeholder="Username">
                                </div>
                                <div class="single-input">
                                    <input type="text" placeholder="Email address">
                                </div>
                                <div class="single-input">
                                    <input type="password" placeholder="Password">
                                </div>
                                <p class="mt-15">Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our <a href="#" class="privacy-policy-link" target="_blank">privacy policy</a>.</p>
                                <div class="button-box mt-25">
                                    <a href="#" class="btn btn--full btn--black">Register</a>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="header-login-register-wrapper modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-box-wrapper">
                    <div class="helendo-tabs">
                        <ul class="nav" role="tablist">
                            <li class="tab__item nav-item active">
                                <a class="nav-link active" data-bs-toggle="tab" href="#tab_list_06" role="tab">Login</a>
                            </li>
                            <li class="tab__item nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#tab_list_07" role="tab">Our Register</a>
                            </li>

                        </ul>
                    </div>
                    <div class="tab-content content-modal-box">
                        <div class="tab-pane fade show active" id="tab_list_06" role="tabpanel">
                            <form action="#" class="account-form-box">
                                <h6>Login your account</h6>
                                <div class="single-input">
                                    <input type="text" placeholder="Username">
                                </div>
                                <div class="single-input">
                                    <input type="password" placeholder="Password">
                                </div>
                                <div class="checkbox-wrap mt-10">
                                    <label class="label-for-checkbox inline mt-15">
                                        <input class="input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever"> <span>Remember me</span>
                                    </label>
                                    <a href="#" class=" mt-10">Lost your password?</a>
                                </div>
                                <div class="button-box mt-25">
                                    <a href="#" class="btn btn--full btn--black">Log in</a>
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="tab_list_07" role="tabpanel">

                            <form action="#" class="account-form-box">
                                <h6>Register An Account</h6>
                                <div class="single-input">
                                    <input type="text" placeholder="Username">
                                </div>
                                <div class="single-input">
                                    <input type="text" placeholder="Email address">
                                </div>
                                <div class="single-input">
                                    <input type="password" placeholder="Password">
                                </div>
                                <p class="mt-15">Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our <a href="#" class="privacy-policy-link" target="_blank">privacy policy</a>.</p>
                                <div class="button-box mt-25">
                                    <a href="#" class="btn btn--full btn--black">Register</a>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--====================  mobile menu overlay ====================-->
    <div class="mobile-menu-overlay" id="mobile-menu-overlay">
        <div class="mobile-menu-overlay__inner">
            <div class="mobile-menu-close-box text-start">
                <span class="mobile-navigation-close-icon" id="mobile-menu-close-trigger"> <i class="icon-cross2"></i></span>
            </div>
            <div class="mobile-menu-overlay__body">
                <nav class="offcanvas-navigation">
                    <ul>
                        <li class="has-children">
                            <a href="${pageContext.servletContext.contextPath}/">Home</a>
                        </li>
                        <li class="has-children">
                            <a href="${pageContext.request.contextPath}/product">Shop</a>
                        </li>
                        <li class="has-children">
                            <a href="#">Pages</a>
                            <ul class="sub-menu">
                                <li><a href="${pageContext.servletContext.contextPath}/about"><span>About Us</span></a></li>
                                <li><a href="${pageContext.servletContext.contextPath}/contact"><span>Contact</span></a></li>
                            </ul>
                        </li>
                        <li class="has-children">
                            <a href="javascript:void(0)">Blog</a>
                            <ul class="sub-menu">
                                <li><a href="blog-grid.html"><span>Blog Grid</span></a></li>
                                <li><a href="blog-listing.html"><span>Blog List</span></a></li>
                                <li><a href="blog-masonry.html"><span>Blog Masonry</span></a></li>
                                <li><a href="blog-left-sidebar.html"><span>Blog Sidebar</span></a></li>
                                <li><a href="single-blog-post.html"><span>Single Post V1</span></a></li>
                                <li><a href="single-blog-post-2.html"><span>Single Post V2</span></a></li>
                            </ul>
                        </li>

                    </ul>
                </nav>

                <div class="mobile-menu-contact-info section-space--mt_60">
                    <h6>Contact Us</h6>
                    <p>69 Halsey St, Ny 10002, New York, United States <br>support.center@unero.co <br>(0091) 8547 632521</p>
                </div>

                <div class="mobile-menu-social-share section-space--mt_60">
                    <h6>Follow US On Socials</h6>
                    <ul class="social-share">
                        <li><a href="#"><i class="social social_facebook"></i></a></li>
                        <li><a href="#"><i class="social social_twitter"></i></a></li>
                        <li><a href="#"><i class="social social_googleplus"></i></a></li>
                        <li><a href="#"><i class="social social_linkedin"></i></a></li>
                        <li><a href="#"><i class="social social_pinterest"></i></a></li>
                    </ul>
                </div>


            </div>


        </div>


    </div>
    <!--====================  End of mobile menu overlay  ====================-->



    <!--  offcanvas Minicart Start -->
    <div class="offcanvas-minicart_wrapper" id="miniCart">
        <div class="offcanvas-menu-inner">
            <div class="close-btn-box">
                <a href="#" class="btn-close"><i class="icon-cross2"></i></a>
            </div>
            <div class="minicart-content">
                <ul class="minicart-list">
                    <li class="minicart-product">
                        <a class="product-item_remove" href="javascript:void(0)"><i class="icon-cross2"></i></a>
                        <a class="product-item_img">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/product/small/cart-01.webp" alt="Product Image">
                        </a>
                        <div class="product-item_content">
                            <a class="product-item_title" href="product-details.html">Plant pots</a>
                            <label>Qty : <span>1</span></label>
                            <label class="product-item_quantity">Price: <span> $20.00</span></label>
                        </div>
                    </li>
                    <li class="minicart-product">
                        <a class="product-item_remove" href="javascript:void(0)"><i class="icon-cross2"></i></a>
                        <a class="product-item_img">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/product/small/cart-02.webp" alt="Product Image">
                        </a>
                        <div class="product-item_content">
                            <a class="product-item_title" href="product-details.html">Teapot with black tea</a>
                            <label>Qty : <span>1</span></label>
                            <label class="product-item_quantity">Price: <span> $20.00</span></label>
                        </div>
                    </li>
                    <li class="minicart-product">
                        <a class="product-item_remove" href="javascript:void(0)"><i class="icon-cross2"></i></a>
                        <a class="product-item_img">
                            <img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/product/small/cart-03.webp" alt="Product Image">
                        </a>
                        <div class="product-item_content">
                            <a class="product-item_title" href="product-details.html">Simple Chair</a>
                            <label>Qty : <span>1</span></label>
                            <label class="product-item_quantity">Price: <span> $20.00</span></label>
                        </div>
                    </li>

                </ul>
            </div>
            <div class="minicart-item_total">
                <span class="font-weight--reguler">Subtotal:</span>
                <span class="ammount font-weight--reguler">$60.00</span>
            </div>
            <div class="minicart-btn_area">
                <a href="cart.html" class="btn btn--full btn--border_1">View cart</a>
            </div>
            <div class="minicart-btn_area">
                <a href="checkout.html" class="btn btn--full btn--black">Checkout</a>
            </div>
        </div>

        <div class="global-overlay"></div>
    </div>
    <!--  offcanvas Minicart End -->


    <!--====================  search overlay ====================-->
    <div class="search-overlay" id="search-overlay">

        <div class="search-overlay__header">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-8">
                        <div class="search-title">
                            <h4 class="font-weight--normal">Search</h4>
                        </div>
                    </div>
                    <div class="col-md-6 ms-auto col-4">
                        <!-- search content -->
                        <div class="search-content text-end">
                            <span class="mobile-navigation-close-icon" id="search-close-trigger"><i class="icon-cross"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="search-overlay__inner">
            <div class="search-overlay__body">
                <div class="search-overlay__form">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-9 m-auto">
                                <form action="#">
                                    <div class="product-cats section-space--mb_60 text-center">
                                        <label> <input type="radio" name="product_cat" value="" checked="checked"> <span class="line-hover">All</span> </label>
                                        <label> <input type="radio" name="product_cat" value="decoration"> <span class="line-hover">Decoration</span> </label>
                                        <label> <input type="radio" name="product_cat" value="furniture"> <span class="line-hover">Furniture</span> </label>
                                        <label> <input type="radio" name="product_cat" value="table"> <span class="line-hover">Table</span> </label> <label> <input type="radio" name="product_cat" value="chair"> <span class="line-hover">Chair</span> </label>
                                    </div>
                                    <div class="search-fields">
                                        <input type="text" placeholder="Search">
                                        <button class="submit-button"><i class="icon-magnifier"></i></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--====================  End of search overlay  ====================-->


    <!--====================  scroll top ====================-->
    <a href="#" class="scroll-top" id="scroll-top">
        <i class="arrow-top icon-arrow-up"></i>
        <i class="arrow-bottom icon-arrow-up"></i>
    </a>
    <!--====================  End of scroll top  ====================-->



    <!-- JS
    ============================================ -->
    <!-- Modernizer JS -->
    <script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-2.8.3.min.js"></script>

    <!-- jQuery JS -->
    <script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-migrate-3.3.0.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.min.js"></script>

    <!-- Plugins JS (Please remove the comment from below plugins.min.js for better website load performance and remove plugin js files from avobe) -->

    <script src="${pageContext.request.contextPath}/resources/js/plugins/plugins.js"></script>


    <!-- Main JS -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>



</body>
</html>