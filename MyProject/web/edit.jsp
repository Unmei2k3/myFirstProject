<%-- 
    Document   : edit
    Created on : Oct 26, 2023, 9:56:28 AM
    Author     : 21H1 HNQA
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

    </head>
    <body>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Edit Book</div>
                        <div class="card-body">

                            <form class="form-horizontal" method="post" action="EditBook">

                                <div class="form-group">
                                    <label for="name" class="cols-sm-2 control-label">Id</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="id"  value='${a.idB}' readonly>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="cols-sm-2 control-label">Name</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="name"  value='${a.name}'>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="username" class="cols-sm-2 control-label">Description</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="description"  value='${a.description}'>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="cols-sm-2 control-label">Price</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="price" value='${a.price}'>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirm" class="cols-sm-2 control-label">Type</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="type" value='${a.type}'>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirm" class="cols-sm-2 control-label">UrlImg</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="urlimg" value='${a.urlimg}'>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="confirm" class="cols-sm-2 control-label">Book Total</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="booktotal" value='${a.booktotal}'>
                                        </div>
                                    </div>
                                </div>

                                <label for="confirm" class="cols-sm-2 control-label">Author:</label>
                              <div class="form-group">
                                <c:forEach items="${listB}" var="o">

                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="author${o.idA}" value='${o.fullname}'> 
                                        </div>
                                    </div>

                                    <br>
                                </c:forEach>
                            </div>

                                <div class="form-group ">
                                    <input  type='submit' class="btn btn-primary btn-lg btn-block login-button" name='add' value='Edit'>
                                </div>
                            </form>


                        </div>

                    </div>


                </div>




            </div>
        </div>

    </body>
</html>
