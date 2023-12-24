<%-- 
    Document   : MyAccount
    Created on : Oct 24, 2023, 11:16:16 PM
    Author     : 21H1 HNQA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/CssAccount.css" rel="stylesheet" type="text/css"/>
    </head>
   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

<body>
 
    <div class="container mt-7">
      <!-- Table -->
     
   
       
         
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                    
                  <h3 class="mb-0">My account</h3>
                </div>
                <div class="col-4 text-right">
                  <a href="history?username=${sessionScope.acc.username}" class="btn btn-sm btn-primary">My history</a>
                </div>
              </div>
            </div>

                <form action="changeAccount" method="post">
                <h6 class="heading-small text-muted mb-4">User information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-username">Username</label>
                        <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Username" value="${sessionScope.acc.username}" readonly>
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Full Name</label>
                        <input type="text"  class="form-control form-control-alternative" placeholder="${sessionScope.acc.fullname}" name="name" value="${sessionScope.acc.fullname}">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">Pass Word</label>
                        <input type="password" class="form-control form-control-alternative" placeholder="${sessionScope.acc.password}" value="${sessionScope.acc.password}" readonly>
                      </div>
                    </div>
                    <div class="col-lg-6">
                    <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">Addresss</label>
                        <input type="text"  class="form-control form-control-alternative" placeholder="${sessionScope.acc.address}" name="add" value="${sessionScope.acc.address}">
                      </div>
                    </div>
                  </div>
                </div>
                      <button style="background-color: #9b9bf5"class="btn btn-dark"><i class="icon icon-search">Accept</i></button>
                      </form>
               
</body>
</html>
