<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- CSS
            ============================================ -->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/vendor/vendor.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/plugins/plugins.min.css">

<!-- Main Style CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.min.css">
<style>
	.header-right-items .dropdown-toggle::after {
    display: none; /* Hide the dropdown arrow */
    }
    .header-right-items .dropdown-menu .dropdown-item {
    font-size: 14px; /* Change this value to your desired font size */
}
</style>

<title>Home page</title>
</head>
<body>
	<div class="page-box">
		<!--====================  header area ====================-->
		<div class="header-area header-area--default bg-white">

			<!-- Header Bottom Wrap Start -->
			<header class="header-area   header-sticky">
				<div class="container-fluid container-fluid--cp-100">
					<div class="row">
						<div class="col-lg-12 d-none d-md-block">
							<div class="top-logo-area">
								<div class="logo text-md-center">
									<a href="${pageContext.servletContext.contextPath}/"><img
										src="${pageContext.request.contextPath}/resources/images/logo/logo.svg"
										alt=""></a>
								</div>
							</div>
						</div>
					</div>
					<div class="row align-items-center pt-3 pb-3">

						<div class="col-lg-3 col-lg-3 col-6">
							<div class="header-right-items content__hidden d-none d-md-block">
								<a href="#" class=""><span class="phone-number font-lg-p">
										<i class="icon-telephone"></i> +8 (268) 654 - 587- 68
								</span></a>
							</div>
							<div class="logo__hidden text-start">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/images/logo/logo.svg"
									alt=""></a>
							</div>
						</div>

						<div class="col-lg-6 col-lg-6  d-none d-lg-block">
							<!-- navigation menu -->
							<div class="header__navigation d-none d-lg-block">
								<nav class="navigation-menu">
									<ul class="justify-content-center">
										<li class="has-children has-children--multilevel-submenu">
											<a href="${pageContext.request.contextPath}/"><span>Home</span></a>
										</li>
										<li class="has-children"><a
											href="${pageContext.request.contextPath}/product"><span>Shop</span></a>
										</li>
										<li class="has-children has-children--multilevel-submenu">

											<a href="#"><span>Pages</span></a> <!-- multilevel submenu -->
											<ul class="submenu">
												<li><a
													href="${pageContext.servletContext.contextPath}/about"><span>About
															Us</span></a></li>
												<li><a
													href="${pageContext.request.contextPath}/contact"><span>Contact</span></a></li>
											</ul>
										</li>
										<li class="has-children has-children--multilevel-submenu">
											<a href="#"><span>Blog</span></a> <!-- multilevel submenu -->
											<ul class="submenu">
												<li><a href="blog-grid.html"><span>Blog Grid</span></a></li>
												<li><a href="blog-listing.html"><span>Blog
															List</span></a></li>
												<li><a href="blog-masonry.html"><span>Blog
															Masonry</span></a></li>
											</ul>
										</li>

									</ul>
								</nav>
							</div>
						</div>
						<div class="col-lg-3 col-lg-3 col-6">
							<div class="header-right-side text-end">
								<div class="header-right-items">
									<a href="javascript:void(0)" class="search-icon"
										id="search-overlay-trigger"> <i class="icon-magnifier"></i>
									</a>
								</div>
								<div class="header-right-items  d-none d-md-block dropdown">
									<a href="#" class="dropdown-toggle" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false"><span> <i class="icon-user"></i></span></a>
									<ul class="dropdown-menu" >
									<c:choose>
										<c:when test="${!empty sessionScope.userid}">
											<li><a href="" class="dropdown-item"><span>${sessionScope.username}</span></a></li>
											<li><a href="${pageContext.request.contextPath}/logout" class="dropdown-item"><span>Đăng xuất</span></a></li>
										</c:when>
										
										<c:otherwise>
											<li><a href="${pageContext.request.contextPath}/login" class="dropdown-item"><span>Đăng nhập</span></a></li>
											<li><a href="${pageContext.request.contextPath}/register" class="dropdown-item"><span>Đăng ký</span></a></li>
										</c:otherwise>
									</c:choose>
									</ul>

								</div>
								
								<div class="header-right-items">
									<a href="#miniCart"
										class=" header-cart minicart-btn toolbar-btn header-icon">
										<c:choose>
											<c:when test="${!empty sessionScope.userid}">
											<i class="icon-bag2"></i> <span class="item-counter">${cartItemCount}</span>
											</c:when>
											<c:otherwise>
												<i class="icon-bag2"></i> <span class="item-counter">0</span>
											</c:otherwise>
										</c:choose>
									</a>
								</div>
								<!-- <div class="header-right-items ">
                                    <a href="#" class="mobile-navigation-icon" id="mobile-menu-trigger">
                                        <i class="icon-menu"></i>
                                    </a>
                                </div>
                             -->
							</div>
						</div>
					</div>
				</div>
			</header>
			<!-- Header Bottom Wrap End -->

		</div>
		<!--====================  End of header area  ====================-->

		<div id="main-wrapper">
			<div class="site-wrapper-reveal">
				<div class="hero-box-area">
					<div class="container">
						<div class="row ">
							<div class="col-lg-12">

								<!-- Hero Slider Area Start -->
								<div class="hero-area hero-slider-7">
									<div class="single-hero-slider-7">
										<div class="container">
											<div class="row">
												<div class="col-lg-12">
													<div class="hero-content-wrap">
														<div class="hero-text-7 mt-lg-5">
															<h6 class="mb-20">Helendo store</h6>
															<h1>
																Hailey <br> Wooden Chair
															</h1>

															<div class="button-box section-space--mt_60">
																<a href="#"
																	class="text-btn-normal font-weight--reguler font-lg-p">Discover
																	now</a>
															</div>
														</div>
														<div class="inner-images">
															<div class="image-one">
																<img
																	src="${pageContext.request.contextPath}/resources/images/hero/home-box-1.webp"
																	width="443" height="244" class="img-fluid" alt="Image">
															</div>
														</div>
													</div>
												</div>

											</div>
										</div>
									</div>
									<div class="single-hero-slider-7">
										<div class="container">
											<div class="row">
												<div class="col-lg-12">
													<div class="hero-content-wrap">
														<div class="hero-text-7 mt-lg-5">
															<h6 class="mb-20">Helendo store</h6>
															<h1>
																Hailey <br> Wooden Chair
															</h1>

															<div class="button-box section-space--mt_60">
																<a href="#"
																	class="text-btn-normal font-weight--reguler font-lg-p">Discover
																	now</a>
															</div>
														</div>
														<div class="inner-images">
															<div class="image-one">
																<img
																	src="${pageContext.request.contextPath}/resources/images/hero/home-box-2.webp"
																	width="307" height="277" class="img-fluid" alt="Image">
															</div>
														</div>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
								<!-- Hero Slider Area End -->

							</div>
						</div>
					</div>
				</div>

				<div class="about-us-area section-space--ptb_120">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="about-us-content_6 text-center">
									<h2>Helendo Store</h2>
									<p>When you start with a portrait and search for a pure
										form, a clear volume, through successive eliminations, you
										arrive inevitably at the egg. Likewise, starting with the egg
										and following the same process in reverse, one finishes with
										the portrait.</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Banner Video Area Start -->
				<div class="banner-video-area overflow-hidden">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<div class="banner-video-box">
									<img
										src="${pageContext.request.contextPath}/resources/images/bg/video-banner2.webp"
										alt="">
									<div class="video-icon">
										<a href="https://www.youtube.com/watch?v=fkoEj95puX0"
											class="popup-youtube"><i class="linear-ic-play"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Banner Video Area End -->

				<!-- Product Area Start -->
				<div class="product-wrapper section-space--ptb_120">
					<div class="container">
						<div class="row align-items-center">
							<div class="col-lg-4">
								<div class="section-title text-lg-start text-center mb-20">
									<h3 class="section-title">Popular Products</h3>
								</div>
							</div>
							<div class="col-lg-8">
								<ul
									class="nav product-tab-menu justify-content-lg-end justify-content-center"
									role="tablist">
									<li class="tab__item nav-item active"><a
										class="nav-link active" data-bs-toggle="tab"
										href="#tab_list_all" role="tab">All Products</a></li>
									<c:forEach var="category" items="${categories}">
										<li class="tab__item nav-item"><a class="nav-link"
											data-bs-toggle="tab" href="#tab_list_${category.id}"
											role="tab"> ${category.name} </a></li>
									</c:forEach>

								</ul>
							</div>

						</div>

						<div class="tab-content mt-30">
							<div class="tab-pane fade show active" id="tab_list_all">
								<!-- product-slider-active -->
								<div class="row">
									<c:forEach var="p" items="${products}">
										<div class="col-lg-3 col-md-4 col-sm-6">
											<!-- Single Product Item Start -->
											<div class="single-product-item text-center">
												<div class="products-images">
													<a href="${pageContext.request.contextPath}/productDetails/${p.id}"
														class="product-thumbnail"> <img
														src="resources/images/product/${p.image}"
														class="img-fluid" alt="Product Images" width="300"
														height="300">

													</a>
													<div class="product-actions">
														<a href="#" data-bs-toggle="modal"
															data-bs-target="#prodect-modal-${p.id}">
															<i class="p-icon icon-plus"></i>
															<span class="tool-tip">Quick View</span>
														</a> 
														<a>
														<f:form action="${pageContext.request.contextPath}/cart/add" method="post" style="display:inline;">
															<input type="hidden" name="productId" value="${p.id}" />
    														<input type="hidden" name="quantity" value="1" />
															<button type="submit" style="border:none; background: none;">
        														<i class="p-icon icon-bag2"></i> 
        														<span class="tool-tip">Add to cart</span>
    														</button>
														</f:form>
														</a>
														
													</div>
												</div>
												<div class="product-content">
													<h6 class="prodect-title">
														<a
															href="${pageContext.request.contextPath}/productDetails/${p.id}">${p.name}</a>
													</h6>
													<div class="prodect-price">
														<span class="new-price">$${p.salePrice}</span> - <span
															class="old-price"> $${p.price}</span>
													</div>
												</div>
											</div>
											<!-- Single Product Item End -->
										</div>
									</c:forEach>
								</div>

							</div>
							<c:forEach var="category" items="${categories}">
								<div class="tab-pane fade" id="tab_list_${category.id}">
									<div class="row">
										<c:forEach var="p" items="${products}">
											<c:if test="${p.category.id == category.id}">
												<div class="col-lg-3 col-md-4 col-sm-6">
													<!-- Single Product Item Start -->
													<div class="single-product-item text-center">
														<div class="products-images">
															<a
																href="${pageContext.request.contextPath}/productDetails/${p.id}"
																class="product-thumbnail"> <img
																src="resources/images/product/${p.image}"
																class="img-fluid" alt="${p.name}" width="300"
																height="300">
															</a>
															<div class="product-actions">
																<a href="#" data-bs-toggle="modal"
																	data-bs-target="#product-modal-${p.id}"> 
																	<i class="p-icon icon-plus"></i> 
																	<span class="tool-tip">Quick View</span>
																</a> 
																<a>
																	<f:form action="${pageContext.request.contextPath}/cart/add" method="post" style="display:inline;">
																		<input type="hidden" name="productId" value="${p.id}" />
			    														<input type="hidden" name="quantity" value="1" />
																		<button type="submit" style="border:none; background: none;">
			        														<i class="p-icon icon-bag2"></i> 
			        														<span class="tool-tip">Add to cart</span>
			    														</button>
																	</f:form>
																</a>
																
															</div>
														</div>
														<div class="product-content">
															<h6 class="product-title">
																<a
																	href="${pageContext.request.contextPath}/productDetails/${p.id}">
																	${p.name} </a>
															</h6>
															<div class="product-price">
																<span class="new-price">$${p.salePrice}</span> - <span
																	class="old-price">$${p.price}</span>
															</div>
														</div>
													</div>
													<!-- Single Product Item End -->
												</div>
												
												
											</c:if>
										</c:forEach>
									</div>
								</div>
							</c:forEach>

						</div>
					</div>

				</div>

			</div>
		</div>
		<!-- Product Area End -->

		<!-- Our Brand Area Start -->
		<div class="our-brand-area section-space--pb_90">
			<div class="container">
				<div class="brand-slider-active">
					<div class="col-lg-12">
						<div class="single-brand-item">
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/images/brand/partner1.webp"
								class="img-fluid" alt="Brand Images"></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand-item">
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/images/brand/partner2.webp"
								class="img-fluid" alt="Brand Images"></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand-item">
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/images/brand/partner3.webp"
								class="img-fluid" alt="Brand Images"></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand-item">
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/images/brand/partner4.webp"
								class="img-fluid" alt="Brand Images"></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand-item">
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/images/brand/partner5.webp"
								class="img-fluid" alt="Brand Images"></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand-item">
							<a href="#"><img
								src="${pageContext.request.contextPath}/resources/images/brand/partner3.webp"
								class="img-fluid" alt="Brand Images"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Our Brand Area End -->

		<!-- Our Newsletter Area Start -->
		<div class="our-newsletter-area section-space--pb_120">

			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="newsletter--box">
							<div class="row align-items-center">
								<div class="col-lg-5 col-md-4">
									<div class="section-title small-mb__40 tablet-mb__40">
										<h4 class="section-title">Our Newsletter</h4>
										<p>Subscribe our newsletter and get discount 50% off</p>
									</div>
								</div>
								<div class="col-lg-7 col-md-8">
									<div class="newsletter-wrap">
										<form action="#" class="newsletter--two">
											<input class="input-box" type="text"
												placeholder="Your email address">
											<button class="submit-btn">
												<i class="icon-arrow-right"></i>
											</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Our Newsletter Area End -->

	</div>
	<!--====================  footer area ====================-->
	<div class="footer-area-wrapper bg-white">
		<div class="footer-area section-space--pb_90">
			<div class="container-fluid container-fluid--cp-100">
				<div class="row footer-widget-wrapper">

					<div class="col-lg-3 col-md-4 col-sm-6 footer-widget">
						<h6 class="footer-widget__title mb-20">Customer Service</h6>
						<ul class="footer-widget__list">
							<li><a href="#" class="hover-style-link">Help & Contact
									Us</a></li>
							<li><a href="#" class="hover-style-link">Returns &
									Refunds</a></li>
							<li><a href="#" class="hover-style-link">Online Stores</a></li>
							<li><a href="#" class="hover-style-link">Terms &
									Conditions</a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 footer-widget">
						<h6 class="footer-widget__title mb-20">Company</h6>
						<ul class="footer-widget__list">
							<li><a href="#" class="hover-style-link">About Us</a></li>
							<li><a href="#" class="hover-style-link">What We Do</a></li>
							<li><a href="#" class="hover-style-link">FAQ Page</a></li>
							<li><a href="#" class="hover-style-link">Contact Us</a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 footer-widget">
						<h6 class="footer-widget__title mb-20">Social Media</h6>
						<ul class="footer-widget__list">
							<li><a href="#" class="hover-style-link">Twitter</a></li>
							<li><a href="#" class="hover-style-link">Instagram</a></li>
							<li><a href="#" class="hover-style-link">Tumblr</a></li>
							<li><a href="#" class="hover-style-link">Pinterest</a></li>
						</ul>
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6 footer-widget">
						<h6 class="footer-widget__title mb-20">Newsletter</h6>
						<div class="footer-widget__newsletter mt-30">
							<input type="text" placeholder="Your email address">
							<button class="submit-button">
								<i class="icon-arrow-right"></i>
							</button>
						</div>
						<ul
							class="footer-widget__footer-menu  section-space--mt_60 d-none d-lg-block">
							<li><a href="#">Term & Condition</a></li>
							<li><a href="#">Policy</a></li>
							<li><a href="#">Map</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-copyright-area border-top section-space--ptb_30">
			<div class="container-fluid container-fluid--cp-100">
				<div class="row align-items-center">
					<div class="col-lg-6 col-md-6 order-md-1 order-2">
						<span class="copyright-text text-center text-md-start">&copy;
							2023 Helendo. <a href="https://hasthemes.com/" target="_blank">All
								Rights Reserved.</a>
						</span>

					</div>

					<div class="col-lg-6 col-md-6 order-md-2 order-1">
						<div class="footer-bottom-social">
							<h6 class="title">Follow Us On Social</h6>
							<ul class="list footer-social-networks ">
								<li class="item"><a href="https://twitter.com/"
									target="_blank" aria-label="Twitter"> <i
										class="social social_facebook"></i>
								</a></li>
								<li class="item"><a href="https://facebook.com/"
									target="_blank" aria-label="Facebook"> <i
										class="social social_twitter"></i>
								</a></li>
								<li class="item"><a href="https://instagram.com/"
									target="_blank" aria-label="Instagram"> <i
										class="social social_tumblr"></i>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--====================  End of footer area  ====================-->

	<!-- Modal -->
	<c:forEach var="p" items="${products}">
	<div class="product-modal-box modal fade" id="prodect-modal-${p.id}"
		tabindex="-1" role="dialog">
		<div class="modal-dialog  modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-bs-dismiss="modal"
						aria-label="Close">
						<span class="icon-cross" aria-hidden="true"></span>
					</button>
				</div>
				<div class="modal-body container">
					<div class="row align-items-center">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="quickview-product-active mr-lg-5">
								<a href="#" class="images"> <img
									src="resources/images/product/${p.image}"
									class="img-fluid" alt="">
								</a> 
							</div>
							<!-- Thumbnail Large Image End -->
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="product-details-content quickview-content-wrap ">

								<h5 class="font-weight--reguler mb-10">${p.name}</h5>
								<div class="quickview-ratting-review mb-10">
									<div class="quickview-ratting-wrap">
										<div class="quickview-ratting">
											<i class="yellow icon_star"></i> <i class="yellow icon_star"></i>
											<i class="yellow icon_star"></i> <i class="yellow icon_star"></i>
											<i class="yellow icon_star"></i>
										</div>
										<a href="#"> 2 customer review</a>
									</div>
								</div>
								<h3 class="price">$${p.price}</h3>

								<div class="stock in-stock mt-10">
									<p>
										Available: <span> <c:choose>
												<c:when test="${p.status == 1}">In stock</c:when>
												<c:otherwise>Out of stock</c:otherwise>
											</c:choose>
										</span>
									</p>
								</div>

								<div class="quickview-peragraph mt-10">
									<p>At vero accusamus et iusto odio dignissimos blanditiis
										praesentiums dolores molest.</p>
								</div>
								<div class="quickview-action-wrap mt-30">
								<f:form action="${pageContext.request.contextPath}/cart/add" method="post">
									<div class="quickview-cart-box">
										<div class="quickview-quality">
											<div class="cart-plus-minus">
												<input class="cart-plus-minus-box" type="text"
													name="quantity" value="1">
											</div>
										</div>
										<div class="quickview-button">
											<div class="quickview-cart button">
												
													<input type="hidden" name="productId" value="${p.id}">
													<!-- <input type="hidden" name="quantity" value="1"> -->
													<button type="submit" class="btn--lg btn--black font-weight--reguler text-white">Add to cart</button>
												
											</div>
										</div>
									</div>
									</f:form>
								</div>

								<div class="product_meta mt-30">
									<div class="posted_in item_meta">
										<span class="label">Categories: </span><a href="${pageContext.request.contextPath}/product">${p.category.name}</a>
									</div>
									<div class="tagged_as item_meta">
										<span class="label">Tag: </span><a href="#">Pottery</a>
									</div>
								</div>

								<div class="product_socials section-space--mt_60">
									<span class="label">Share this items :</span>
									<ul class="helendo-social-share socials-inline">
										<li><a class="share-twitter helendo-twitter" href="#"
											target="_blank"><i class="social_twitter"></i></a></li>
										<li><a class="share-facebook helendo-facebook" href="#"
											target="_blank"><i class="social_facebook"></i></a></li>
										<li><a class="share-google-plus helendo-google-plus"
											href="#" target="_blank"><i class="social_googleplus"></i></a>
										</li>
										<li><a class="share-pinterest helendo-pinterest" href="#"
											target="_blank"><i class="social_pinterest"></i></a></li>
										<li><a class="share-linkedin helendo-linkedin" href="#"
											target="_blank"><i class="social_linkedin"></i></a></li>
									</ul>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</c:forEach>

	<!-- Modal end -->
	
	<!-- Modal -->
	<c:forEach var="category" items="${categories}">
	<c:forEach var="p" items="${products}">
	<c:if test="${p.category.id == category.id}">
	<div class="product-modal-box modal fade" id="product-modal-${p.id}"
		tabindex="-1" role="dialog">
		<div class="modal-dialog  modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-bs-dismiss="modal"
						aria-label="Close">
						<span class="icon-cross" aria-hidden="true"></span>
					</button>
				</div>
				<div class="modal-body container">
					<div class="row align-items-center">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="quickview-product-active mr-lg-5">
								<a href="#" class="images"> <img
									src="resources/images/product/${p.image}"
									class="img-fluid" alt="">
								</a> 
							</div>
							<!-- Thumbnail Large Image End -->
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="product-details-content quickview-content-wrap ">

								<h5 class="font-weight--reguler mb-10">${p.name}</h5>
								<div class="quickview-ratting-review mb-10">
									<div class="quickview-ratting-wrap">
										<div class="quickview-ratting">
											<i class="yellow icon_star"></i> <i class="yellow icon_star"></i>
											<i class="yellow icon_star"></i> <i class="yellow icon_star"></i>
											<i class="yellow icon_star"></i>
										</div>
										<a href="#"> 2 customer review</a>
									</div>
								</div>
								<h3 class="price">$${p.price}</h3>

								<div class="stock in-stock mt-10">
									<p>
										Available: <span> <c:choose>
												<c:when test="${p.status == 1}">In stock</c:when>
												<c:otherwise>Out of stock</c:otherwise>
											</c:choose>
										</span>
									</p>
								</div>

								<div class="quickview-peragraph mt-10">
									<p>At vero accusamus et iusto odio dignissimos blanditiis
										praesentiums dolores molest.</p>
								</div>
								<div class="quickview-action-wrap mt-30">
									<f:form action="${pageContext.request.contextPath}/cart/add" method="post">
									<div class="quickview-cart-box">
										<div class="quickview-quality">
											<div class="cart-plus-minus">
												<input class="cart-plus-minus-box" type="text"
													name="quantity" value="1">
											</div>
										</div>
										<div class="quickview-button">
											<div class="quickview-cart button">
												<input type="hidden" name="productId" value="${p.id}">
												<!-- <input type="hidden" name="quantity" value="1"> -->
												<button type="submit" class="btn--lg btn--black font-weight--reguler text-white">Add to cart</button>
											</div>
										</div>
									</div>
									</f:form>

								</div>

								<div class="product_meta mt-30">
									<div class="posted_in item_meta">
										<span class="label">Categories: </span><a href="${pageContext.request.contextPath}/product">${p.category.name}</a>
									</div>
									<div class="tagged_as item_meta">
										<span class="label">Tag: </span><a href="#">Pottery</a>
									</div>
								</div>

								<div class="product_socials section-space--mt_60">
									<span class="label">Share this items :</span>
									<ul class="helendo-social-share socials-inline">
										<li><a class="share-twitter helendo-twitter" href="#"
											target="_blank"><i class="social_twitter"></i></a></li>
										<li><a class="share-facebook helendo-facebook" href="#"
											target="_blank"><i class="social_facebook"></i></a></li>
										<li><a class="share-google-plus helendo-google-plus"
											href="#" target="_blank"><i class="social_googleplus"></i></a>
										</li>
										<li><a class="share-pinterest helendo-pinterest" href="#"
											target="_blank"><i class="social_pinterest"></i></a></li>
										<li><a class="share-linkedin helendo-linkedin" href="#"
											target="_blank"><i class="social_linkedin"></i></a></li>
									</ul>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</c:if>
	</c:forEach>
	</c:forEach>
	
	<!-- Modal end -->

	<!--  offcanvas Minicart Start -->
	<div class="offcanvas-minicart_wrapper" id="miniCart">
	
		<div class="offcanvas-menu-inner">
		
			<div class="close-btn-box">
				<a href="#" class="btn-close"><i class="icon-cross2"></i></a>
			</div>
			<div class="minicart-content">
				<ul class="minicart-list">
			<c:choose>
     		<c:when test="${!empty sessionScope.cartItems}">
					<c:forEach var="item" items="${cartItems}">
						<li class="minicart-product">
							<%-- <f:form action="${pageContext.request.contextPath}/cart/remove" method="post">
								<input type="hidden" name="cartItemId" value="${item.id}">
								<a class="product-item_remove">
									<i class="icon-cross2"></i>
								</a> 
							</f:form> --%>
						<a class="product-item_img"> <img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/images/product/${item.product.image}" width="70"
								alt="Product Image">
						</a>
							<div class="product-item_content">
								<a class="product-item_title"
									href="${pageContext.request.contextPath}/productDetails">${item.product.name}</a> <label>Qty : <span>${item.quantity}</span></label> <label
									class="product-item_quantity">Price: <span>
										$${item.product.price}</span></label>
							</div>
						</li>
					</c:forEach>
					
					</c:when>
		           <c:otherwise>
		               <li>Your cart is empty.</li>
		           </c:otherwise>
		       </c:choose>
				</ul>
			
			</div>
			<div class="minicart-item_total">
				<c:choose>
					<c:when test="${!empty sessionScope.userid}">
					<span class="font-weight--reguler">Subtotal:</span>  
					<span class="ammount font-weight--reguler">${subtotal}</span>
					</c:when>
					<c:otherwise>
						<span class="font-weight--reguler">Subtotal:</span>  
					<span class="ammount font-weight--reguler">0</span>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="minicart-btn_area">
				<a href="${pageContext.request.contextPath}/cart" class="btn btn--full btn--border_1">View
					cart</a>
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
							<span class="mobile-navigation-close-icon"
								id="search-close-trigger"><i class="icon-cross"></i></span>
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
								<form action="product" method="get">
									<div class="search-fields">
										<input type="text" name="query" placeholder="Search">
										<button class="submit-button" type="submit">
											<i class="icon-magnifier"></i>
										</button>
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
	<a href="#" class="scroll-top" id="scroll-top"> <i
		class="arrow-top icon-arrow-up"></i> <i
		class="arrow-bottom icon-arrow-up"></i>
	</a>
	<!--====================  End of scroll top  ====================-->




	<!-- JS
    ============================================ -->
	<!-- Modernizer JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-2.8.3.min.js"></script>

	<!-- jQuery JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/jquery-3.5.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/jquery-migrate-3.3.0.min.js"></script>

	<!-- Bootstrap JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.min.js"></script>

	<!-- Plugins JS (Please remove the comment from below plugins.min.js for better website load performance and remove plugin js files from avobe) -->

	<script
		src="${pageContext.request.contextPath}/resources/js/plugins/plugins.js"></script>


	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>