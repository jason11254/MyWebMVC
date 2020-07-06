<%-- 
    Document   : login
    Created on : 2020/7/5, 下午 07:29:43
    Author     : jason
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <title>Login</title>
        <link rel=stylesheet type="text/css" href="${pageContext.request.contextPath}/viewcss/login.css">
        <script src="${pageContext.request.contextPath}/viewJSP/login.js"></script> 
    </head>
    <body>        
        <div class="container d-flex justify-content-center">
            <div class="card mx-5 my-5">
                <div class="card-body py-2 px-2">
                    <h2 class="card-heading py-3 px-5">Log In</h2>
                    <form name="form" action="/SpringMVC/LoginServlet" method="post" onsubmit="return validate()">
                        <div class="row rone mx-3 my-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="inputEmail" class="sr-only">
                                        Email or Phone
                                    </label>
                                    <input type="text" name="username" class="form-control" id="inputEmail" placeholder="username" required="required">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="inputPassword" class="sr-only">
                                        Password
                                    </label>
                                    <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Password" required="required">                                    
                                </div>
                                <span style="color:red">
                                    <%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%>
                                </span>
                            </div>

                        </div>
                        <div class="row rtwo mx-3">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary mb-2">log In</button>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <a href="${pageContext.request.contextPath}/viewpage/signup.jsp" class="forgot">
                                        sign up
                                    </a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
