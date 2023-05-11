<%-- 
    Document   : welcome
    Created on : Apr 25, 2023, 10:53:22 AM
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
        <% 
            if(request.getParameter("name")!=null){
                String user_name = request.getParameter("name");
            
        %>
        <h1>Hello xin chao<%= user_name%>!</h1>
        <%
            }
        %>
        
    </body>
</html>
