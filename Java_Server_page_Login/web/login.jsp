<%-- 
    Document   : login
    Created on : Apr 25, 2023, 10:40:41 AM
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
        <h1>Login Form</h1>
        <%
            String u_check = getServletContext().getInitParameter("user");
            String p_check = getServletContext().getInitParameter("pass");
            if (request.getParameter("user") != null && request.getParameter("pass") != null) {
                String u = request.getParameter("user");
                String p = request.getParameter("pass");
                if (u.equalsIgnoreCase(u_check) && p.equals(p_check)) {

        %>
        <jsp:forward page="welcome.jsp">
            <jsp:param name="name" value="<%= u%>"/>
        </jsp:forward>
        <%
        } else {
            String er = "Ban da nhap sai yeu cau nhap lai";
            
        %>
        <h3 style="color: red"><%= er%></h3>
        <%
                }
            }
        %>
        <form method="post">
            Enter userName: <input type="text" name="user"/><br>
            Enter password: <input type="password" name="pass"/><br>
            <input type="submit" value="LOGIN"/><br>
        </form>
    </body>
</html>
