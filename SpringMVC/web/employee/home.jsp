<%@page import="employee.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <table class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>年齡</th>
                    <th>名字</th>
                    <th>姓氏</th>
                    <th>聯絡電話</th>
                    <th>聯絡信箱</th>
                </tr>
                <%
                    Object obj = request.getAttribute("employeeList");
                    List<Employee> employeeList = null;
                    if (obj instanceof List) {
                        employeeList = (List<Employee>) obj;
                    }
                    if (employeeList != null) {
                        for (Employee emp : employeeList) {
                            String id = "" + emp.getId();
                            String age = "" + emp.getAge();
                            String firstName = emp.getFirst();
                            String LastName = emp.getLast();
                            String phone = emp.getPhone();
                            String mail = emp.getEmail();
                %>
                <tr>
                    <td><%=id%></td>
                    <td><%=age%></td>
                    <td><%=firstName%></td>
                    <td><%=LastName%></td>
                    <td><%=phone%></td>
                    <td><%=mail%></td>
                </tr>
                <%
                        }
                    }
                %>

            </table>

        </div>
    </body>
</html>