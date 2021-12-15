<%-- 
    Document   : login
    Created on : Apr 24, 2020, 6:38:59 PM
    Author     : user
--%>

<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="eAdministration.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        MyDb db = new MyDb();
        Connection con =db.getCon();    
        Statement stmt = con.createStatement();
        
        String uname = request.getParameter("username");
        String password = request.getParameter("password");
        
        
        if(uname.equals("admin") && uname.equals("admin")){
            response.sendRedirect("CoolAdmin/index.html");
        }else
        if(uname != null && password != null){
            response.sendRedirect("welcome.jsp");    
        }
        
        else {
            response.sendRedirect("index.html");
        }
        
        
        %>
    </body>
</html>