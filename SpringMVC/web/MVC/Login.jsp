<%-- 
    Document   : Login
    Created on : 2020/6/22, 上午 11:23:32
    Author     : jason
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Login</title>
        <script src="${pageContext.request.contextPath}/viewJSP/login.js"></script> 
    </head>
    <body>
        <div style="text-align:center"><h1>Login application in Java using MVC and MySQL </h1> </div>
        <br>
        <form name="form" action="/SpringMVC/LoginServlet" method="post" onsubmit="return validate()">
            <!-- Do not use table to format fields. As a good practice use CSS -->
            <table align="center">
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr> <!-- refer to the video to understand request.getAttribute() -->
                    <td>
                        <span style="color:red">
                            <%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Reset"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
