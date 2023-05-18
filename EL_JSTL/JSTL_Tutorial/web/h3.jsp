<%-- 
    Document   : h3
    Created on : May 17, 2023, 8:16:24 PM
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
        <h1>JSTL</h1>
        <c:set var="s" value="${requestScope.st}"/>
        <h2>Hello ${s.name}</h2>
    </body>
</html>
