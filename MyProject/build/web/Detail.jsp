<%-- 
    Document   : Detail
    Created on : Oct 21, 2023, 10:00:30 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>${detail.name}</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            /* Remove the navbar's default rounded borders and increase the bottom margin */
            .navbar {
                margin-bottom: 50px;
                border-radius: 0;
            }

            /* Remove the jumbotron's default bottom margin */
            .jumbotron {
                margin-bottom: 0;
                background-image: url(images/imgHeader3.webp);
                filter: brightness(85%);
                height: 300px;
            }

            /* Add a gray background color and some padding to the footer */
            footer {
                background-color: #f2f2f2;
                padding: 25px;
            }

            .img-fluid{
                border: 10px solid transparent;
                padding: 15px;
                border-image: url(https://img.freepik.com/free-vector/colorful-border-gray-background_53876-118888.jpg?w=360) 80 stretch;
            }

            .form-inline{
                height: 30px;
                margin: 7px 0px;
            }
        </style>
    </head>
    <body>
        <!-- Menu -->
        <div class="jumbotron">
            <div class="container text-center">
                <h1 style="    font-size: 7.2em;
                    font-weight: 800;
                    line-height: 1em;
                    letter-spacing: -0.02em;
                    text-transform: capitalize;
                    color: var(--dark-color);">Shop - Page</h1>      

            </div>
        </div>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand"  >
                        <img src="https://www.shutterstock.com/image-vector/open-book-pixel-perfect-linear-260nw-1674390214.jpg" alt="Book" width="100%" height="100%" style="background-color:white"/>
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="${tagClick==null?"active":""}"><a href="HomeControl1">Home</a></li>
                            <c:forEach items="${dao.cate}" var="c">
                            <li class="${tagClick == c.cid ? "active":""}"><a href="Category?cid=${c.cid}">${c.cname}</a></li>
                            </c:forEach>
                    </ul>
                    <c:if test="${sessionScope.acc!=null}">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="MyAccount.jsp"><span class="glyphicon glyphicon-user"></span> ${sessionScope.acc.fullname}</a></li>
                            <li><a href="cartshow?idU=${sessionScope.acc.username}"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
                        </ul>
                    </c:if>
                    <c:if test="${sessionScope.acc==null}">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Login.jsp"><span class="glyphicon glyphicon-user"></span> Login </a></li>

                        </ul>
                    </c:if>
                </div>
            </div>
        </nav>
        <!-- Body --> >
        <div class="container">
            <!--Grid row-->
            <div class="row">
                <!--Grid column-->


                <div class="col-md-6 mb-4">
                    <img src="images/${f.urlimg}.jpg" class="img-fluid" width="450" height="450" alt="" />
                </div>

                <!--Grid column-->

                <!--Grid column-->
                <div class="col-md-6 mb-4">
                    <!--Content-->
                    <div class="p-4">
                        <div class="mb-3">
                            <strong>
                                <p style="font-size: 20px;">${f.name}</p>
                            </strong>
                            <p class="lead" >

                                <span>${f.price} VNÐ</span>
                            </p>
                            <c:if test="${f.booktotal<=0}">
                                <p class="lead" style="color:red">
                                    <span>Hết hàng</span>
                                </p>
                            </c:if>
                            <strong>
                                <p style="font-size: 20px;">Số lượng còn:</p>
                            </strong>


                            <p class="lead">
                                <span>${f.booktotal} quyển</span>
                            </p>
                            <strong><p style="font-size: 20px;">Description</p></strong>

                            <p class="lead">${f.description}</p>
                            <strong><p style="font-size: 20px;">Author</p></strong>
                            <c:forEach items="${list}" var="o" >
                                <p class="lead">${o.fullname}</p>
                            </c:forEach>


                            <c:if test="${f.booktotal>0}">
                                <form class="d-flex justify-content-left">
                                    <!-- Default input -->

                                   
                                    <c:if test="${sessionScope.acc!=null}">

                                        <br>
                                        <a style=" font-size: large;"href="mycart?id=${f.idB}&idU=${sessionScope.acc.username}&quantity=1">
                                            Add to cart
                                        </a>
                                    </form>
                                </c:if>
                            </c:if>


                        </div>
                        <!--Content-->
                    </div>
                    <!--Grid column-->
                </div>
                <!--Grid row-->
            </div>

            <hr/>

            <!--Grid row-->
            <div class="row d-flex justify-content-center">
                <!--Grid column-->
                <div class="container text-center">
                    <h3 style="font-size: 3.2em;
                        font-weight: 400;
                        line-height: 1em;
                        letter-spacing: -0.02em;
                        text-transform: capitalize;
                        color: var(--dark-color);">Sản Phẩm Tương Tự: </h3>
                    <br>
                    <br>
                </div>
                <!--Grid column-->
            </div>
            <!--Grid row-->
            <div class="row">
                <c:forEach items="${listB}" var="o">
                    <c:if test = "${o.id!=id}">
                        <div class="col-sm-4">
                            <div class="panel panel-primary">

                                <div class="panel-body">
                                    <a href="BookDetail?id=${o.id}" title="View Product">
                                        <img src="images/${o.urlimg}.jpg" class="img-responsive" style="width:320px; height:340px" alt="Image">
                                    </a>
                                </div>
                                <div class="panel-footer">
                                    <div class="row">
                                        <div class='col'>

                                            <p class='btn btn-danger btn-block'>${o.price} VNÐ</p>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </div>
        <br>

        <!-- Footer -->
        <footer class="container-fluid text-center">
            <p>Online Store Copyright</p>  
            <form class="form-inline">Get deals:
                <input type="email" class="form-control" size="50" placeholder="Email Address">
                <button type="button" class="btn btn-danger">Sign Up</button>
            </form>
        </footer>
    </body>
</html>
