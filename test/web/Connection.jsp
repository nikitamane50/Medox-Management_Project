<%-- 
    Document   : Connection
    Created on : Oct 30, 2023, 12:12:03 PM
    Author     : 91880
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">      
    </head>
    <body>
        <%
           Class.forName("com.mysql.jdbc.Driver");
           java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medox","root","root");
           //out.println("connection sucess");
        %>
    </body>
</html>