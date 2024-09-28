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
<title>Insert title here</title>
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
                            <a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/images/logo/logo.svg" alt=""></a>
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
                            <h2 class="breadcrumb-title">Contact</h2>
                        </div>
                        <div class="col-lg-6  col-md-6 col-sm-6">
                            <!-- breadcrumb-list start -->
                            <ul class="breadcrumb-list text-center text-sm-end">
                                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Home</a></li>
                                <li class="active">/Contact</li>
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
            <div class="contact-us-info-area mt-30 section-space--mb_60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="single-contact-info-item">
                                <div class="icon">
                                    <i class="icon-clock3"></i>
                                </div>
                                <div class="iconbox-desc">
                                    <h6 class="mb-10">Open houses</h6>
                                    <p>Mon – Fri : 8:30 – 18:00 <br>Sat – Sun : 9:00 – 17:00</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="single-contact-info-item">
                                <div class="icon">
                                    <i class="icon-telephone"></i>
                                </div>
                                <div class="iconbox-desc">
                                    <h6 class="mb-10">Phone number</h6>
                                    <p>(504) 586 256 23 <br> (306) 574 326 56</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="single-contact-info-item">
                                <div class="icon">
                                    <i class="icon-envelope-open"></i>
                                </div>
                                <div class="iconbox-desc">
                                    <h6 class="mb-10">Our email</h6>
                                    <p>office@helentheme.com <br>Info@helentheme.com</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="single-contact-info-item">
                                <div class="icon">
                                    <i class="icon-map-marker"></i>
                                </div>
                                <div class="iconbox-desc">
                                    <h6 class="mb-10">Our location</h6>
                                    <p>1102 Helen Estates, Guys <br>Store, San Diego, USA.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contact-us-page-warpper section-space--pb_120">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="border-top">
                                <div class="row">
                                    <div class="col-lg-7">
                                        <div class="contact-form-wrap  section-space--mt_60">
                                            <h5 class="mb-10">Get in touch</h5>
                                            <p>Write us a letter !</p>
                                            <form id="contact-form" class="mt-30" action="https://hasthemes.com/file/mail.php" method="post">
                                                <div class="contact-form">
                                                    <div class="contact-input">
                                                        <div class="contact-inner">
                                                            <input name="con_name" type="text" placeholder="Name *">
                                                        </div>
                                                        <div class="contact-inner">
                                                            <input name="con_email" type="email" placeholder="Email *">
                                                        </div>
                                                    </div>
                                                    <div class="contact-inner">
                                                        <input name="con_subject" type="text" placeholder="Subject *">
                                                    </div>
                                                    <div class="contact-inner contact-message">
                                                        <textarea name="con_message" placeholder="Please describe what you need."></textarea>
                                                    </div>
                                                    <div class="submit-btn mt-20">
                                                        <button class="btn btn--black btn--md" type="submit">Submit</button>
                                                        <p class="form-messege"></p>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 ms-auto">
                                        <div class="conatact-info-text section-space--mt_60">
                                            <h5 class="mb-10">Our address</h5>
                                            <p>Duis aute irure dolor in reprehenderit ioluptate velit esse cillum dolore pariatur.</p>
                                            <p class="mt-30">1102 Helen Estates, Guys Store, San Diego, USA. <br>(693) 650-2389 <br>office@helentheme.com</p>
                                            <div class="product_socials mt-30">
                                                <span class="label">FOLLOW US:</span>
                                                <ul class="helendo-social-share socials-inline">
                                                    <li>
                                                        <a class="share-twitter helendo-twitter" href="#" target="_blank"><i class="social_twitter"></i></a>
                                                    </li>
                                                    <li>
                                                        <a class="share-facebook helendo-facebook" href="#" target="_blank"><i class="social_facebook"></i></a>
                                                    </li>
                                                    <li>
                                                        <a class="share-google-plus helendo-google-plus" href="#" target="_blank"><i class="social_googleplus"></i></a>
                                                    </li>
                                                    <li>
                                                        <a class="share-pinterest helendo-pinterest" href="#" target="_blank"><i class="social_pinterest"></i></a>
                                                    </li>
                                                    <li>
                                                        <a class="share-linkedin helendo-linkedin" href="#" target="_blank"><i class="social_linkedin"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="map-area">
                <div class="google-map">
                    <div id="googleMap-1" class="embed-responsive-item googleMap-1" data-lat="40.730610" data-Long="-73.935242"></div>
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
                                <a href="#"><img src="${pageContext.request.contextPath}/resources/images/logo/logo.svg" alt="Logo images"></a>
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
                            <a href="${pageContext.request.contextPath}/">Home</a>
                        </li>
                        <li class="has-children">
                            <a href="${pageContext.request.contextPath}/product">Shop</a>
                        </li>
                        <li class="has-children">
                            <a href="#">Pages</a>
                            <ul class="sub-menu">
                                <li><a href="${pageContext.request.contextPath}/about"><span>About Us</span></a></li>
                                <li><a href="${pageContext.request.contextPath}/contact"><span>Contact</span></a></li>
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


    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBQ5y0EF8dE6qwc03FcbXHJfXr4vEa7z54"></script>

    <!-- Modernizer JS -->
    <script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-2.8.3.min.js"></script>

    <!-- jQuery JS -->
    <script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-migrate-3.3.0.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.min.js"></script>

    <!-- Fullpage JS -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/fullpage.min.js"></script>

    <!-- Slick Slider JS -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/slick.min.js"></script>

    <!-- Countdown JS -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/countdown.min.js"></script>

    <!-- Magnific Popup JS -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/magnific-popup.js"></script>

    <!-- Easyzoom JS -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/easyzoom.js"></script>

    <!-- ImagesLoaded JS -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/images-loaded.min.js"></script>

    <!-- Isotope JS -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/isotope.min.js"></script>

    <!-- YTplayer JS -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/YTplayer.js"></script>

    <!-- Instagramfeed JS -->
    <!-- <script src="assets/js/plugins/jquery.instagramfeed.min.js"></script> -->

    <!-- Ajax Mail JS -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/ajax.mail.js"></script>

    <!-- wow JS -->
    <script src="${pageContext.request.contextPath}/resources/js/plugins/wow.min.js"></script>



    <!-- Plugins JS (Please remove the comment from below plugins.min.js for better website load performance and remove plugin js files from avobe) -->

    <!--
    <script src="assets/js/plugins/plugins.min.js"></script>
    -->

    <!-- Main JS -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>



</body>
</html>
<script>
    /*--
        Google Map
        -----------------------------------*/

    // Google Map For Single Property Map
    $('.googleMap-1').each(function() {
        if ($(this).length) {
            var $this = $(this);
            var $lat = $this.data('lat');
            var $long = $this.data('long');

            function initialize() {
                var mapOptions = {
                    zoom: 14,
                    scrollwheel: false,
                    center: new google.maps.LatLng($lat, $long),
                    styles: [{
                            "featureType": "water",
                            "elementType": "geometry.fill",
                            "stylers": [{
                                "color": "#F1F1F1"
                            }]
                        },
                        {
                            "featureType": "transit",
                            "stylers": [{
                                    "color": "#F1F1F1"
                                },
                                {
                                    "visibility": "off"
                                }
                            ]
                        },
                        {
                            "featureType": "road.highway",
                            "elementType": "geometry.stroke",
                            "stylers": [{
                                    "visibility": "on"
                                },
                                {
                                    "color": "#fff"
                                }
                            ]
                        },
                        {
                            "featureType": "road.highway",
                            "elementType": "geometry.fill",
                            "stylers": [{
                                "color": "#fff"
                            }]
                        },
                        {
                            "featureType": "road.local",
                            "elementType": "geometry.fill",
                            "stylers": [{
                                    "visibility": "on"
                                },
                                {
                                    "color": "#F1F1F1"
                                },
                                {
                                    "weight": 1.8
                                }
                            ]
                        },
                        {
                            "featureType": "road.local",
                            "elementType": "geometry.stroke",
                            "stylers": [{
                                "color": "#ECECEC"
                            }]
                        },
                        {
                            "featureType": "poi",
                            "elementType": "geometry.fill",
                            "stylers": [{
                                    "visibility": "on"
                                },
                                {
                                    "color": "#FF5151"
                                }
                            ]
                        },
                        {
                            "featureType": "administrative",
                            "elementType": "geometry",
                            "stylers": [{
                                "color": "#fff"
                            }]
                        },
                        {
                            "featureType": "road.arterial",
                            "elementType": "geometry.fill",
                            "stylers": [{
                                "color": "#F1F1F1"
                            }]
                        },
                        {
                            "featureType": "road.arterial",
                            "elementType": "geometry.fill",
                            "stylers": [{
                                "color": "#ffffff"
                            }]
                        },
                        {
                            "featureType": "landscape",
                            "elementType": "geometry.fill",
                            "stylers": [{
                                    "visibility": "on"
                                },
                                {
                                    "color": "#F9F9F9"
                                }
                            ]
                        },
                        {
                            "featureType": "road",
                            "elementType": "labels.text.fill",
                            "stylers": [{
                                "color": "#B7B7B7"
                            }]
                        },
                        {
                            "featureType": "administrative",
                            "elementType": "labels.text.fill",
                            "stylers": [{
                                    "visibility": "on"
                                },
                                {
                                    "color": "#8b8b8b"
                                }
                            ]
                        },
                        {
                            "featureType": "poi",
                            "elementType": "labels.icon",
                            "stylers": [{
                                "visibility": "off"
                            }]
                        },
                        {
                            "featureType": "poi",
                            "elementType": "labels",
                            "stylers": [{
                                "visibility": "off"
                            }]
                        },
                        {
                            "featureType": "road.arterial",
                            "elementType": "geometry.stroke",
                            "stylers": [{
                                "color": "#d6d6d6"
                            }]
                        },
                        {
                            "featureType": "road",
                            "elementType": "labels.icon",
                            "stylers": [{
                                "visibility": "off"
                            }]
                        },
                        {},
                        {
                            "featureType": "poi",
                            "elementType": "geometry.fill",
                            "stylers": [{
                                "color": "#EBEBEB"
                            }]
                        }
                    ]
                };
                var map = new google.maps.Map(document.getElementById('googleMap-1'), mapOptions);
                var marker = new google.maps.Marker({
                    position: map.getCenter(),
                    icon: '',
                    map: map,
                    overlay: {
                        values: [{
                            address: "40.7590615,-73.969231",
                            position: 'center',
                            options: {
                                content: '',
                            }
                        }, ],
                        events: {
                            mouseover: function(overlay, event, context) {
                                var target = overlay.getDOMElement();

                                target.style.zIndex = 2;

                                var info = $(target).find('.gmap-info-wrapper');
                                info.find('.gmap-info-template').show();
                            },
                            mouseout: function(overlay) {
                                var target = overlay.getDOMElement();

                                target.style.zIndex = 1;

                                var info = $(target).find('.gmap-info-wrapper');
                                info.find('.gmap-info-template').hide();
                            }
                        }
                    },


                });






            };

            google.maps.event.addDomListener(window, 'load', initialize);
        }
    });
</script>