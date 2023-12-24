<%-- 
    Document   : Cart
    Created on : Oct 28, 2023, 11:14:45 AM
    Author     : 21H1 HNQA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>


        <a href="BookDetail?id=${idB}"><button type="button" class="btn btn-primary">Back</button></a>
<div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-10 col-md-offset-1">
                    <table class="table table-hover">
                      
                        <thead>
                            <tr>
                                <th>Product</th>
                                <th>Quantity</th>
                                <th class="text-center">Price</th>
                                <th class="text-center">Total</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>


                            <c:forEach items="${listC}" var="o">
                                <tr>
                                    <td class="col-sm-8 col-md-6">
                                        <div class="media">
                                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="images/${o.urlimg}.jpg" style="width: 72px; height: 72px;"> </a>
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="#">${o.name}</a></h4>

                                            </div>
                                        </div></td>

                                    <td class="col-sm-1 col-md-1 " >
                                        <form method="post" action="quantitybook">
                                            <input type="number" name="quantity" value="${o.quantity}" class="form-control" min="1" max="${o.booktotal}"/>
                                            <input name="idU" value="${sessionScope.acc.username}" style="display: none;"/>
                                            <br>
                                            <button name="idB" value="${o.bookid}" class="btn btn-primary ms-1" type="submit">
                                                Add to cart
                                                <i class="fas fa-shopping-cart ms-1"></i>
                                            </button>

                                        </form>
                                    </td>
                                    <td class="col-sm-1 col-md-1 text-center"><strong>${o.sellprice} VND</strong></td>
                                    <td class="col-sm-1 col-md-1 text-center"><strong>${o.sellprice*o.quantity} VND</strong></td>
                                    <td class="col-sm-1 col-md-1">
                                        <a href="mycart?id=${o.bookid}&idU=${sessionScope.acc.username}&Bdel=${o.bookid}">
                                            <button type="button" class="btn btn-danger">
                                                <span class="glyphicon glyphicon-remove"></span> Remove
                                            </button>                        </a>
                                    </td>
                                </tr>


                            </c:forEach>


                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <td><h3>Total</h3></td>
                                <td class="text-right"><h3><strong>${total} VND</strong></h3></td>
                            </tr>
                            <tr>
                                <td>   </td>
                                <td>   </td>
                                <td>   </td>
                                <c:if test="${total!=0}">
                                <td>
                                    <a href="cartshow?id=${idB}&idU=${sessionScope.acc.username}&buy=1">
                                        <button type="button" class="btn btn-success">
                                            Checkout <span class="glyphicon glyphicon-play"></span>
                                        </button>
                                    </a>
                                </td>
                                </c:if> 
                                <td>

                            </tr>

                       

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
