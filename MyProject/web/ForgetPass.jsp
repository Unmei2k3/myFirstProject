<%-- 
    Document   : ForgetPass
    Created on : Oct 29, 2023, 9:05:15 PM
    Author     : 21H1 HNQA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Account</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="css/mylogincss.css" rel="stylesheet" type="text/css"/>
        <script src="js/myloginjs.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="panel panel-login">
                        <div class="panel-heading">
                            <c:if test="${check!=true}">
                                <div class="col-xs-6">
                                    <a href="#" class="active" id="login-form-link">Forget password</a>
                                </div>


                                <hr>
                            </div>
                            <p class="text-danger">${loi}</p>


                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">

                                        <form id="login-form" action="resetpass" method="post" role="form" style="display: block;">


                                            <div class="form-group">
                                                <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" required>
                                            </div>
                                            <div class="form-group">
                                                <h4>Giáo viên mà bạn yêu quý nhất:</h4>
                                            </div>

                                            <div class="form-group">
                                                <input type="text" name="ft" id="username" tabindex="2" class="form-control" placeholder="Favorite Teacher" required>
                                            </div>

                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-6 col-sm-offset-3">
                                                        <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Submit">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>





                                    </div>
                                </div>
                            </div>
                        </c:if>    
                        <c:if test="${check==true}">
                            
                            
                            <a href="Logout">
                                                Home
                                            </a>
                            <div class="col-xs-6">
                                <a href="#" class="active" id="login-form-link">New pasword</a>
                            </div>


                            <hr>
                        </div>

      
                        <p class="text-danger">${loi1}</p>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">

                                    <form id="login-form" action="newpass" method="post" role="form" style="display: block;">
                                        <div class="form-group">
                                            <input type="text" name="username" value="${username}" id="username" tabindex="1" class="form-control" placeholder="Confirm" readonly>
                                        </div>

                                        <div class="form-group">
                                            <input type="password" name="password" id="username" tabindex="2" class="form-control" placeholder="Your new password" required>
                                        </div>


                                        <div class="form-group">
                                            <input type="password" name="repassword" id="username" tabindex="3" class="form-control" placeholder="Confirm" required>
                                        </div>

                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Submit">
                                                </div>
                                            </div>
                                        </div>

                                    </form>
                                </c:if>




                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>
