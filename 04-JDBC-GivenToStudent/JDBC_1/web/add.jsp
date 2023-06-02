<%-- 
    Document   : add
    Created on : May 19, 2023, 1:41:06 PM
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
        <h1>Add a new category</h1>
        <h2 style="color: red">${requestScope.error}</h2>
        <form action="add">
            ID: <input type="number" name="id"><br>
            Name: <input type="text" name="name"><br>
            Describe: <input type="text" name="descrb"><br>
            <input type="submit" name="SAVE">
        </form>
    </body>
</html>
