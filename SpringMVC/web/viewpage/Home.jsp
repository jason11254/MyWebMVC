<%-- 
    Document   : Home
    Created on : 2020/6/22, 上午 11:33:37
    Author     : jason
--%>

<%@page contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Page</title>
    </head>
    <body>
    <center><h2>Home Page</h2></center>
    Welcome <%=request.getAttribute("userName")%> <!-- Refer to the video to understand how this works -->
    <div style="text-align: right"><a href="LogoutServlet">Logout</a></div>
</body>
</html>
