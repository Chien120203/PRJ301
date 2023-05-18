<%-- 
    Document   : h2
    Created on : May 17, 2023, 7:42:46 PM
    Author     : Đàm Quang Chiến
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tính toán</title>
    </head>
    <body>
        <h1>Ví dụ EL</h1>
        <form>
            nhap so 1: <input type="number" name="n1" value="${param.n1}"/><br>
            nhap so 2: <input type="number" name="n2" value="${param.n2}"/><br>
            nhap so 3: <input type="number" name="n3" value="${param.n3}"/><br>
            <input type="submit" name="tinh"><br>
        </form>
            <h2>Tong: ${(param.n1+param.n2+param.n3)}</h2>
            <h2>Trung Binh: ${(param.n1+param.n2+param.n3)/3}</h2>
            <h2>Hello: ${requestScope.name}</h2>
    </body>
</html>
