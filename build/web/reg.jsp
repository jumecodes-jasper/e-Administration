<%-- 
    Document   : reg
    Created on : Feb 16, 2020, 6:53:48 PM
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
       
          String firstname = request.getParameter("firstname");
          String lastname = request.getParameter("lastname");
          String username = request.getParameter("username");
          String password = request.getParameter("password");
          
        try{  
          MyDb db = new MyDb();
         Connection con = db.getCon();
         Statement stmt = con.createStatement();
         stmt.executeUpdate("insert into client(firstname,lastname,username,password)values('"+firstname+"','"+lastname+"','"+username+"','"+password+"') ");
         //out.println("welcome : "+fname);
          String redirectedPage = "/parentPage";
          response.sendRedirect("regsuccess.jsp");
      
       }catch(Exception e){
       out.println(e);
       }
        
        %>
    </body>
</html>
