<%-- 
    Document   : list
    Created on : May 19, 2023, 1:00:44 PM
    Author     : Đàm Quang Chiến
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
    <center>
        <h1>List of categories</h1>
        <div style="border: 1px solid gray; width: 15%; margin-bottom: 16px "><a href="add.jsp">Add new</a></div>
        <table border="1" >
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Describe</th>
                    <th>UPDATE/DELETE</th>
                </tr>
            </thead>
            <tbody>

                    <c:forEach items="${requestScope.data}" var="c">
                        <c:set var="ID" value="${c.id}"/>
                    <tr>
                        <td>${ID}</td>
                        <td>${c.name}</td>
                        <td>${c.describe}</td>
                        <td><a href="update?id=${id}">Update</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="onDelete()">Delete</a></td>
                    </tr>
                    </c:forEach>

            </tbody>
        </table>
    </center>
</body>
</html>
