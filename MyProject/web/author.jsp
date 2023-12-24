<%-- 
    Document   : author
    Created on : Oct 26, 2023, 10:24:10 AM
    Author     : 21H1 HNQA
--%>
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
                            <div class="card-header">Add new author</div>
                            <div class="card-body">
                             ${id}
                             ${name}
                                <form class="form-horizontal" method="post" action="addauthor">

                                    <div class="form-group">
                                        <label for="name" class="cols-sm-2 control-label">Id</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="id"  required>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="lead" style="color:red">
                                        <span>${loi}</span>
                                    </p> 
                                      <div class="form-group">
                                        <label for="name" class="cols-sm-2 control-label">FullName</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                <input type="text" class="form-control" name="name"required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                    <input type='submit' class="btn btn-primary btn-lg btn-block login-button" name='add' value='Add'>
                                </div>
                                      <p class="lead" style="color:red">
                                        <span>${mess}</span>
                                    </p> 
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
</div>
    </body>
</html>




