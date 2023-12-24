<%-- 
    Document   : HomePaging
    Created on : Oct 20, 2023, 8:29:39 AM
    Author     : 21H1 HNQA
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="DAL.*" %>
<%@page import="Models.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>My Project</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">
        <link rel="stylesheet" type="text/css" href="css/normalize.css">
        <link rel="stylesheet" type="text/css" href="icomoon/icomoon.css">
        <link rel="stylesheet" type="text/css" media="all" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/vendor.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <!-- script
        ================================================== -->
        <script src="js/modernizr.js"></script>
    </head>
    <body>
        <style>
            .tabs {
                justify-content: center;
            }
        </style>
        <div class="preloader-wrapper">
            <div class="preloader">
            </div>
        </div>


        <header id="header">
            <div id="header-wrap">
                <nav class="secondary-nav border-bottom">
                    <div class="container">
                        <div class="row d-flex align-items-center">
                            <div class="col-md-4 header-contact">
                                <p>Let's talk! <strong>+84 969 808 505</strong>
                                </p>
                            </div>
                            <div class="col-md-4 shipping-purchase text-center">
                                <p>Free shipping on a purchase value of 500.000 VND</p>
                            </div>
                            <div class="col-md-4 col-sm-12 user-items">
                                <ul class="d-flex justify-content-end list-unstyled">
                                    <!--     
                                    login-->
                                    
                                          <c:if test="${sessionScope.acc!=null}">
                                        <li>
                                            <a href="MyAccount.jsp" style=" text-decoration:underline;">
                                               ${sessionScope.acc.fullname}
                                            </a>
                                        </li>
                                    </c:if>
                                    <c:if test="${sessionScope.acc!=null}">
                                        <li>
                                            <a href="Logout">
                                                Logout
                                            </a>
                                        </li>
                             
                            <li><a href="cartshow?idU=${sessionScope.acc.username}"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
                       
                                    </c:if>
                                        
                                    
                                        
                                    <c:if test="${sessionScope.acc==null}">
                                        <li>
                                            <a href="Login.jsp">
                                                Login
                                            </a>
                                        </li>
                                    </c:if>
                                  
                                    


                                   
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
                <nav class="primary-nav padding-small">
                    <div class="container">
                        <div class="row d-flex align-items-center">
                            <div class="col-lg-2 col-md-2">
                                <div class="main-logo">
                                    <a >
                                        <img src="images/imgBook.jpg" alt="logo">
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-10 col-md-10">
                                <div class="navbar">

                                    <div id="main-nav" class="stellarnav d-flex justify-content-end right">
                                        <ul class="menu-list">

                                            <li class="menu-item has-sub">
                                                <a class="item-anchor d-flex align-item-center" data-effect="Home">Home</a>

                                            </li>

                                            <li><a  class="item-anchor" data-effect="About">About</a></li>



                                            <li class="menu-item has-sub">
                                                <a  class="item-anchor d-flex align-item-center" data-effect="Pages">Pages<i class="icon icon-chevron-down"></i></a>

                                            </li>

                                            <li class="menu-item has-sub">
                                                <a class="item-anchor d-flex align-item-center" data-effect="Blog">Blog<i class="icon icon-chevron-down"></i></a>

                                            </li>

                                            <li><a class="item-anchor" data-effect="Contact">Contact</a></li>

                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </header>

        <section class="site-banner jarallax min-height300 padding-large" style="background: url(images/imgHeader1.jpg) no-repeat; background-position: top;">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-title">Shop page</h1>
                        <div class="breadcrumbs">
                            <span class="item">
                                <a href="HomeControl1">Home /</a>
                            </span>
                            <span class="item">Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div class="shopify-grid padding-large">
            <div class="container">
                <div class="row">

                    <section id="selling-products" class="col-md-9 product-store">
                        <!--            <div class="container">
                                        
                                      <ul class="tabs list-unstyled">
                                     
                                        <li data-tab-target="#all" class="active tab">All</li>
                                        <li data-tab-target="#vanhoc" class="tab">Văn học</li>
                                        <li data-tab-target="#kinhte" class="tab">Kinh Tế</li>
                                        <li data-tab-target="#kynang" class="tab">Kỹ năng</li>
                                        <li data-tab-target="#selfhelp" class="tab">Self-Help</li>
                                      </ul>
                                        </div>-->
                        <!--                all-->

                        <div class="tab-content">


                            <div id="all" data-tab-content class="active">
                                <c:if test="${page.totalPage!=0}">
                                    <div class="row d-flex flex-wrap">

                                        <c:forEach items="${listP}" var="o" begin="${page.begin}" end="${page.end-1}">


                                            <div class="product-item col-lg-4 col-md-6 col-sm-6">
                                                <div class="image-holder">
                                                    <img src="images/${o.urlimg}.jpg" alt="Books" class="product-image">
                                                </div>
                                                <div class="cart-concern">
                                                    <div class="cart-button d-flex justify-content-between align-items-center">
                                                        <a href="BookDetail?id=${o.id}" title="View Product">
                                                        <button type="button" class="btn-wrap cart-link d-flex align-items-center">add to cart <i class="icon icon-arrow-io"></i>
                                                        </button></a>
                                                        <a href="BookDetail?id=${o.id}" title="View Product">
                                                        <button type="button" class="view-btn tooltipd-flex">
                                                            <i class="icon icon-screen-full"></i>
                                                            <span  class="tooltip-text">Quick view</span>
                                                        </button>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="product-detail">
                                                    <h3 class="product-title">
                                                        <a href="BookDetail?id=${o.id}">${o.name}</a>
                                                    </h3>
                                                    <div class="item-price text-primary">${o.price} VND</div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <nav class="navigation paging-navigation text-center padding-medium" role="navigation">
                                        <div class="pagination loop-pagination d-flex justify-content-center">
                                            <c:if test = '${page.start!=0}'>
                                                <a href="HomeControl1?index=${page.start-1}&price=${price}&type=${type}" class="pagination-arrow d-flex align-items-center">
                                                    <i class="icon icon-arrow-left"></i>
                                                </a></c:if>

                                            <c:forEach var="i" begin="1" end = "${page.totalPage}">

                                                <a class="page-numbers " href="HomeControl1?index=${i-1}&price=${price}&type=${type}">${i}</a>
                                            </c:forEach>

                                            <c:if test = '${page.start<page.totalPage-1}'>
                                                <a href="HomeControl1?index=${page.start+1}&price=${price}&type=${type}" class="pagination-arrow d-flex align-items-center">
                                                    <i class="icon icon-arrow-right"></i>
                                                </a> </c:if>
                                            </div>
                                        </nav>
                                </c:if>
                            </div>




                            <!--                phan trang-->

                        </div>
                    </section>

                    <aside class="col-md-3">
                        <div class="sidebar">
                            <div class="widgets widget-menu">
                                <div class="widget-search-bar">
                                    <form role="search" action="HomeControl1" method="post" class="d-flex">
                                        <input class="search-field" placeholder="Search" type="text" name="search">
                                        <button class="btn btn-dark"><i class="icon icon-search"></i></button>
                                    </form>
                                </div> 
                            </div>


                            <!--            type-->

                            <div class="widgets widget-price-filter">
                                <h5 class="widget-title">Type</h5>
                                <ul class="product-tags sidebar-list list-unstyled">
                                    <li class="tags-item">
                                        <a href="HomeControl1?type=0&price=${price}&index=0">ALL</a>
                                    </li>
                                    <li class="tags-item">
                                        <a href="HomeControl1?type=1&price=${price}&index=0">Văn học</a>
                                    </li>
                                    <li class="tags-item">
                                        <a href="HomeControl1?type=2&price=${price}&index=0">Kinh tế</a>
                                    </li>
                                    <li class="tags-item">
                                        <a href="HomeControl1?type=3&price=${price}&index=0">Kỹ năng</a>
                                    </li>
                                    <li class="tags-item">
                                        <a href="HomeControl1?type=4&price=${price}&index=0">Self-help</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="widgets widget-price-filter">
                                <h5 class="widget-title">Filter By Price</h5>
                                <ul class="product-tags sidebar-list list-unstyled">
                                    <li class="tags-item">
                                        <a href="HomeControl1?type=${type}&price=0&index=0">ALL</a>
                                    </li>
                                    <li class="tags-item">
                                        <a href="HomeControl1?type=${type}&price=1&index=0">Less than 100000VND</a>
                                    </li>
                                    <li class="tags-item">
                                        <a href="HomeControl1?type=${type}&price=2&index=0">100000VND - 200000VND</a>
                                    </li>
                                    <li class="tags-item">
                                        <a href="HomeControl1?type=${type}&price=3&index=0">200000VND - 300000VND</a>
                                    </li>
                                    <li class="tags-item">
                                        <a href="HomeControl1?price=4&type=${type}&index=1">300000VND - 400000VND</a>
                                    </li>
                                    <li class="tags-item">
                                        <a href="HomeControl1?price=5&type=${type}&index=1">More than 400000VND</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </aside>

                </div>        
            </div>      
        </div>




        <section id="shipping-information">
            <hr>
            <div class="container">
                <div class="row d-flex flex-wrap align-items-center justify-content-between">
                    <div class="col-md-3 col-sm-6">
                        <div class="icon-box">
                            <i class="icon icon-truck"></i>
                            <h4 class="block-title">
                                <strong>Free shipping</strong> Over $200
                            </h4>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="icon-box">
                            <i class="icon icon-return"></i>
                            <h4 class="block-title">
                                <strong>Money back</strong> Return within 7 days
                            </h4>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="icon-box">
                            <i class="icon icon-help_outline"></i>
                            <h4 class="block-title">
                                <strong>Any questions?</strong> experts are ready
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
        </section>

        <footer id="footer">
            <div class="container">
                <div class="footer-menu-list">
                    <div class="row d-flex flex-wrap justify-content-between">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer-menu">
                                <h5 class="widget-title">Ultras</h5>
                                <ul class="menu-list list-unstyled">
                                    <li class="menu-item">
                                        <a href="about.html">About us</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="#">Conditions </a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="blog.html">Our Journals</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="#">Careers</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="#">Affiliate Programme</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="#">Ultras Press</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer-menu">
                                <h5 class="widget-title">Customer Service</h5>
                                <ul class="menu-list list-unstyled">
                                    <li class="menu-item">
                                        <a href="faqs.html">FAQ</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="contact.html">Contact</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="#">Privacy Policy</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="#">Returns & Refunds</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="#">Cookie Guidelines</a>
                                    </li>
                                    <li class="menu-item">
                                        <a href="#">Delivery Information</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer-menu">
                                <h5 class="widget-title">Contact Us</h5>
                                <p>Do you have any questions or suggestions? <a href="#" class="email">lapnqhe171882@fpt.edu.vn</a>
                                </p>
                                <p>Do you need assistance? Give us a call. <br>
                                    <strong>+84 969 808 505</strong>
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="footer-menu">
                                <h5 class="widget-title">Forever 2018</h5>
                                <p>Cras mattis sit ornare in metus eu amet adipiscing enim. Ullamcorper in orci, ultrices integer eget arcu. Consectetur leo dignissim lacus, lacus sagittis dictumst.</p>
                                <div class="social-links">
                                    <ul class="d-flex list-unstyled">
                                        <li>
                                            <a href="#">
                                                <i class="icon icon-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="icon icon-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="icon icon-youtube-play"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="icon icon-behance-square"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
        </footer>

        <div id="footer-bottom">
            <div class="container">
                <div class="d-flex align-items-center flex-wrap justify-content-between">
                    <div class="copyright">
                        <p>Freebies by <a href="https://templatesjungle.com/">Templates Jungle</a> Distributed by <a href="https://themewagon.com">ThemeWagon</a>
                        </p>
                    </div>
                    <div class="payment-method">
                        <p>Payment options :</p>
                        <div class="card-wrap">
                            <img src="images/visa-icon.jpg" alt="visa">
                            <img src="images/mastercard.png" alt="mastercard">
                            <img src="images/american-express.jpg" alt="american-express">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/jquery-1.11.0.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>
