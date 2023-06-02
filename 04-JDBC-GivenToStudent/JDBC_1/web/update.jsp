<%-- 
    Document   : update
    Created on : May 21, 2023, 7:59:09 AM
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
         <h1>UPdate category</h1>
         <form action="update" method="post">
            ID: <input type="number" name="id"><br>
            Name: <input type="text" name="name"><br>
            Describe: <input type="text" name="descrb"><br>
            <input type="submit" name="SAVE">
        </form>
    </body>
</html>
