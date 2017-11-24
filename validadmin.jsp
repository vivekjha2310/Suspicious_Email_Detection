<%@page import="java.sql.PreparedStatement"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<title>Login</title>
</head>
<body>
<%
try
{
String msg="";
String id=request.getParameter("uid");
String pwd=request.getParameter("upass");
Connection con=connect.Dbcon.getdb();
PreparedStatement p=con.prepareStatement("Select * from admin where userid=? && password=?");
p.setString(1,id);
p.setString(2,pwd);
ResultSet rs=p.executeQuery();
if(rs.next())
{
    session.setAttribute("n",id); 
    request.getRequestDispatcher("admin.jsp").forward(request, response);
    System.out.println("welcome");
}    
else{  
   
    msg="Sorry,Username or Password Error!";
    request.setAttribute("message",msg);
    System.out.println("sorry name pass");
    request.getRequestDispatcher("adminlogin.jsp").include(request, response);  
    }  
}
catch(Exception e)
{
 System.out.println(e);
}

%>
</body>
</html>