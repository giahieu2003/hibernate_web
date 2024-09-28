<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Product</title>
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
							<form action="product" class="header-search-box" method="get">
								<input class="search-field" type="text" name="query"
									placeholder="Search Anything...">
								<button class="search-icon" type="submit">
									<i class="icon-magnifier"></i>
								</button>
							</form>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-6">
						<div class="logo text-md-center">
							<a href="${pageContext.request.contextPath}/"><img
								src="${pageContext.request.contextPath}/resources/images/logo/logo.svg"
								alt=""></a>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-6">
						<div class="header-right-side text-end">
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
							<div class="header-right-items d-block d-md-none">
								<a href="javascript:void(0)" class="search-icon"
									id="search-overlay-trigger"> <i class="icon-magnifier"></i>
								</a>
							</div>
							<div class="header-right-items">
								<a href="javascript:void(0)" class="mobile-navigation-icon"
									id="mobile-menu-trigger"> <i class="icon-menu"></i>
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
							<h2 class="breadcrumb-title">Shop</h2>
						</div>
						<div class="col-lg-6  col-md-6 col-sm-6">
							<!-- breadcrumb-list start -->
							<ul class="breadcrumb-list text-center text-sm-end">
								<li class="breadcrumb-item"><a
									href="${pageContext.request.contextPath}/">Home</a></li>
								<li class="active">/Shop</li>
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
			<!-- Product Area Start -->
			<div class="product-wrapper section-space--ptb_120">
				<div class="container">

					<div class="row">
						<div class="col-lg-3 col-md-3 order-md-1 order-2  small-mt__40">
							<div class="shop-widget widget-shop-categories">
								<div class="product-filter">
									<h6 class="mb-20">Categories</h6>
									<ul class="widget-nav-list">
										<li><a href="${pageContext.request.contextPath}/product">All</a></li>
										<c:forEach var="c" items="${categories}">
											<li><a
												href="${pageContext.request.contextPath}/product?categoryId=${c.id}">${c.name}</a></li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<!-- Product Filter -->
							<!-- <div class="shop-widget">
                                <div class="product-filter widget-price">
                                    <h6 class="mb-20">Price</h6>
                                    <ul class="widget-nav-list">
                                        <li><a href="#">$0.00 - $20.00</a></li>
                                        <li><a href="#">$20.00 - $40.00</a></li>
                                        <li><a href="#">£40.00 - £50.00</a></li>
                                        <li><a href="#">£50.00 - £60.00</a></li>
                                        <li><a href="#">£60.00 +</a></li>
                                    </ul>
                                </div>
                            </div> -->
						</div>
						<div class="col-lg-9 col-md-9  order-md-2 order-1">
							<div class="row">
								<div class="col-lg-6 col-md-8">
									<div class="shop-toolbar__items shop-toolbar__item--left">
										<div class="shop-toolbar__item shop-toolbar__item--result">
											<p class="result-count">Showing: ${productCount}</p>
										</div>
										<!-- <div class="shop-toolbar__item shop-short-by">
                                            <ul>
                                                <li>
                                                    <a href="#">Sort by: <span class="d-none d-sm-inline-block">Default</span> <i class="fa fa-angle-down angle-down"></i></a>
                                                    <ul>
                                                        <li class="active"><a href="#">Default sorting</a></li>
                                                        <li><a href="#">Sort by popularity</a></li>
                                                        <li><a href="#">Sort by average rating</a></li>
                                                        <li><a href="#">Sort by latest</a></li>
                                                        <li><a href="#">Sort by price: low to high</a></li>
                                                        <li><a href="#">Sort by price: high to low</a></li>
                                                    </ul>
                                                </li>

                                            </ul>

                                        </div> -->
									</div>
								</div>
								<div class="col-lg-6 col-md-4">
									<div class="shop-toolbar__items shop-toolbar__item--right">
										<div class="shop-toolbar__items-wrapper">

											<div class="shop-toolbar__item">
												<ul class="nav toolber-tab-menu justify-content-start"
													role="tablist">
													<li class="tab__item nav-item active"><a
														class="nav-link active" data-bs-toggle="tab"
														href="#tab_columns_01" role="tab"> <img
															src="${pageContext.request.contextPath}/resources//images/svg/column-03.svg"
															class="img-fluid" alt="Columns 03">
													</a></li>
													<li class="tab__item nav-item"><a class="nav-link"
														data-bs-toggle="tab" href="#tab_columns_02" role="tab"><img
															src="${pageContext.request.contextPath}/resources/images/svg/column-04.svg"
															class="img-fluid" alt="Columns 04"> </a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>

							</div>

							<div class="tab-content">
								<div class="tab-pane fade show active" id="tab_columns_01">
									<div class="row">
										<c:forEach var="p" items="${products}">
											<div class="col-lg-4 col-md-4 col-sm-6">
												<!-- Single Product Item Start -->

												<div class="single-product-item text-center">
													<div class="products-images">
														<a
															href="${pageContext.request.contextPath}/productDetails/${p.id}"
															class="product-thumbnail"> <img
															src="${pageContext.request.contextPath}/resources/images/product/${p.image}"
															class="img-fluid" alt="Product Images" width="300"
															height="300"> <span class="ribbon out-of-stock ">
																<c:choose>
																	<c:when test="${p.status == 0}">Out of stock</c:when>
																</c:choose>

														</span>
														</a>
														<div class="product-actions">
															<a href="#" data-bs-toggle="modal"
																data-bs-target="#prodect-modal-${p.id}"> <i
																class="p-icon icon-plus"></i> <span class="tool-tip">Quick View</span>
															</a> <a> <f:form
																	action="${pageContext.request.contextPath}/cart/add"
																	method="post" style="display:inline;">
																	<input type="hidden" name="productId" value="${p.id}" />
																	<input type="hidden" name="quantity" value="1" />
																	<button type="submit"
																		style="border: none; background: none;">
																		<i class="p-icon icon-bag2"></i> <span
																			class="tool-tip">Add to cart</span>
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
																class="old-price">$${p.price}</span>
														</div>
													</div>
												</div>
												<!-- Single Product Item End -->

											</div>
										</c:forEach>
									</div>
								</div>
								<div class="tab-pane fade" id="tab_columns_02">
									<div class="row">
										<c:forEach var="p" items="${products}">
											<div class="col-lg-3 col-md-4 col-sm-6">
												<!-- Single Product Item Start -->
												<div class="single-product-item text-center">
													<div class="products-images">
														<a
															href="${pageContext.request.contextPath}/productDetails/${p.id}"
															class="product-thumbnail"> <img
															src="${pageContext.request.contextPath}/resources/images/product/${p.image}"
															class="img-fluid" alt="Product Images" width="300"
															height="300">

														</a>
														<div class="product-actions">
															<a href="#" data-bs-toggle="modal"
																data-bs-target="#prodect-modal-${p.id}"> <i
																class="p-icon icon-plus"></i> <span class="tool-tip">Quick View</span>
															</a> <a> <f:form
																	action="${pageContext.request.contextPath}/cart/add"
																	method="post" style="display:inline;">
																	<input type="hidden" name="productId" value="${p.id}" />
																	<input type="hidden" name="quantity" value="1" />
																	<button type="submit"
																		style="border: none; background: none;">
																		<i class="p-icon icon-bag2"></i> <span
																			class="tool-tip">Add to cart</span>
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
															<span class="new-price">${p.salePrice}</span> - <span
																class="old-price"> ${p.price}</span>
														</div>
													</div>
												</div>
												<!-- Single Product Item End -->
											</div>
										</c:forEach>

									</div>
								</div>

								<div class="row">
                                    <div class="col-12">
                                        <ul class="page-pagination text-center mt-40">
	                                        <c:forEach var="i" begin="1" end="3">
	                                            <!-- <li><span class="page-numbers current">1</span></li>
	                                            <li><a class="page-numbers" href="#">2</a></li>
	                                            <li><a class="page-numbers" href="#">3</a></li>
	                                            <li><a class="next page-numbers" href="#">Next Page<i class="icon-chevron-right"></i></a>
	                                            </li> -->
	                                             <li>
								                    <a class="page-numbers <c:if test='${i == currentPage}'>current</c:if>'"
								                       href="${pageContext.request.contextPath}/product?page=${i}&size=${pageSize}">${i}</a>
								                </li>
								           </c:forEach>
								           <li>
								                <a class="next page-numbers" 
								                   href="${pageContext.request.contextPath}/product?page=${currentPage + 1}&size=${pageSize}">Next Page
								                    <i class="icon-chevron-right"></i>
								                </a>
								           </li>
                                        </ul>
                                    </div>
                                </div>

							</div>

						</div>
					</div>

				</div>
			</div>
			<!-- Product Area End -->
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
								<li><i class="icon_phone"></i><a href="tel:846677028028"
									class="hover-style-link">+846677028028</a></li>

							</ul>
							<ul class="list footer-social-networks mt-25">

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
						<div class="col-lg-3 col-md-4 col-sm-6 footer-widget">
							<h6 class="footer-widget__title mb-20">Help & Information</h6>
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
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/images/logo/logo.svg"
									alt="Logo images"></a>
							</div>
						</div>
						<div class="col-lg-4 col-md-5 order-md-3">
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
					<div class="row">
						<div class="col-lg-12">
							<span class="copyright-text text-center  section-space--mt_40">&copy;
								2023 Helendo. <a href="https://hasthemes.com/" target="_blank">All
									Rights Reserved.</a>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--====================  End of footer area  ====================-->
	</div>

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
										src="resources/images/product/${p.image}" class="img-fluid"
										alt="">
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
									<h3 class="price"> $${p.price}</h3>

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
										<f:form action="${pageContext.request.contextPath}/cart/add"
											method="post">
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
														<button type="submit"
															class="btn--lg btn--black font-weight--reguler text-white">Add
															to cart</button>

													</div>
													
												</div>
											</div>
										</f:form>

									</div>

									<div class="product_meta mt-30">
										<div class="posted_in item_meta">
											<span class="label">Categories: </span><a
												href="${pageContext.request.contextPath}/product">${p.category.name}</a>
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
											<li><a class="share-pinterest helendo-pinterest"
												href="#" target="_blank"><i class="social_pinterest"></i></a>
											</li>
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


	<!--====================  mobile menu overlay ====================-->
	<div class="mobile-menu-overlay" id="mobile-menu-overlay">
		<div class="mobile-menu-overlay__inner">
			<div class="mobile-menu-close-box text-start">
				<span class="mobile-navigation-close-icon"
					id="mobile-menu-close-trigger"> <i class="icon-cross2"></i></span>
			</div>
			<div class="mobile-menu-overlay__body">

				<nav class="offcanvas-navigation">
					<ul>
						<li class="has-children"><a
							href="${pageContext.request.contextPath}/">Home</a></li>
						<li class="has-children"><a
							href="${pageContext.request.contextPath}/product">Shop</a></li>
						<li class="has-children"><a href="#">Pages</a>
							<ul class="sub-menu">
								<li><a href="${pageContext.request.contextPath}/about"><span>About
											Us</span></a></li>
								<li><a href="${pageContext.request.contextPath}/contact"><span>Contact</span></a></li>
							</ul></li>
						<li class="has-children"><a href="javascript:void(0)">Blog</a>
							<ul class="sub-menu">
								<li><a href="blog-grid.html"><span>Blog Grid</span></a></li>
								<li><a href="blog-listing.html"><span>Blog List</span></a></li>
								<li><a href="blog-masonry.html"><span>Blog
											Masonry</span></a>

					</ul>
				</nav>

				<div class="mobile-menu-contact-info section-space--mt_60">
					<h6>Contact Us</h6>
					<p>
						69 Halsey St, Ny 10002, New York, United States <br>support.center@unero.co
						<br>(0091) 8547 632521
					</p>
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
				<a href="${pageContext.request.contextPath}/cart"
					class="btn btn--full btn--border_1">View cart</a>
			</div>
			<div class="minicart-btn_area">
				<a href="checkout.html" class="btn btn--full btn--black">Checkout</a>
			</div>
		</div>

		<div class="global-overlay"></div>
	</div>
	<!--  offcanvas Minicart End -->


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