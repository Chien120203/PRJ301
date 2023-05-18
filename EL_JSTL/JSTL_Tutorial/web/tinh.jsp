<%-- 
    Document   : tinh
    Created on : May 17, 2023, 8:49:30 PM
    Author     : Đàm Quang Chiến
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>DOI TIEN JSP</h1>
       <h2 style="color: red">${requestScope.error}</h2>
       <form action="tinh" >
            Nhap tien viet: <input type="text" name="tien" /><br>
            <input type="radio" name="change" checked value="0"/>USD
            <input type="radio" name="change" value="1"/>YEN
            <input type="submit" value="DOI TIEN"/>
        </form>
       <h2>Tien sau quy doi: ${requestScope.result}</h2>
    </body>
</html>
