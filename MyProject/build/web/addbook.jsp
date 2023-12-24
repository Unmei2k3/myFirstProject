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
        <a href="ManageControl"><button type="button" class="btn btn-primary">Back</button></a>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Add New Book</div>
                        <div class="card-body">


                            <form class="form-horizontal" method="post" action="addbook">

                                <div class="form-group">
                                    <label for="name" class="cols-sm-2 control-label">Id</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="id" id="id"  required>
                                        </div>
                                    </div>
                                </div>
                                <p class="lead" style="color:red">
                                    <span>${loi}</span>
                                </p>  
                                <div class="form-group">
                                    <label for="email" class="cols-sm-2 control-label">Name</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="name" id="name"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="username" class="cols-sm-2 control-label">Description</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="descrip" id="username"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="cols-sm-2 control-label">Price</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="text"  class="form-control" name="price"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirm" class="cols-sm-2 control-label">Type</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="type"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirm" class="cols-sm-2 control-label">UrlImg</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="url"  required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirm" class="cols-sm-2 control-label">BookTotal</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="total" required>
                                        </div>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="confirm" class="cols-sm-2 control-label">Author</label>

                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                            <input type="text" class="form-control" name="author" id="confirm" required>
                                        </div>
                                    </div>
                                    <br>
                                    <p class="lead" style="color:red">
                                        <span>${mess}</span>
                                    </p>  


                                </div>
                                <div class="form-group ">
                                    <input type='submit' class="btn btn-primary btn-lg btn-block login-button" name='add' value='Add'>
                                </div>

                            </form>



                        </div>

                    </div>

                </div>

            </div>
        </div>



    </body>
</html>
