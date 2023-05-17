<%-- 
    Document   : list
    Created on : Apr 24, 2023, 11:22:28 PM
    Author     : Đàm Quang Chiến
--%>

<%@page import="model.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List students</h1>
        <table border="1px">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>DOB</th>
                <th>GENDER</th>
            </tr>
            <%
                List<Student> list = (List<Student>) request.getAttribute("data");
                for (Student i : list) {
            %>
            <tr>
                <td><%= i.getId()%></td>
                <td><%= i.getName()%></td>
                <td><%= i.getDob()%></td>
                <td>
                    <img <%=(i.isGender()?"src='images/male.jpg'":"src='images/female.jpg'")%> 
                        width="30px" height="30px" alt="alt"/>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
