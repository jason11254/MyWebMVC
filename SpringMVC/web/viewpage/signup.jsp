<%-- 
    Document   : signup
    Created on : 2020/7/5, 下午 07:30:40
    Author     : jason
--%>

<%@page contentType="text/html" pageEncoding="Big5"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=Big5">
        <title>SignUp</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel=stylesheet type="text/css" href="${pageContext.request.contextPath}/viewcss/signup.css">
    </head>
    <body>
        <div class="padding container d-flex justify-content-center">
            <div class="col-md-10 col-md-offset-1">
                <form class="signup-form" action="/SpringMVC/UserServlet" method="post" onsubmit="return validate()">
                    <h2 class="text-center">SIGNUP</h2>
                    <hr>
                    <div class="form-group"> <input type="text" name="name" class="form-control" placeholder="Full Name" required="required"></div>
                    <div class="form-group"> <input type="email" name="email" class="form-control" placeholder="Email Address" required="required"></div>
                    <div class="form-group">
                        <span style="color:red">
                            <%=(request.getAttribute("userNameError") == null) ? "" : request.getAttribute("userNameError")%>
                        </span>
                        <input type="text" name="username" class="form-control" placeholder="User Name" required="required">                        
                    </div>
                    <div class="form-group"> <input type="text" name="password" class="form-control" placeholder="Password" required="required"></div>
                    <div class="form-group text-center"> 
                        <button type="submit" class="btn btn-blue btn-block">
                            Sent
                        </button> 
                    </div>
                </form>
            </div>
        </div>
    </body>
    
</html>
