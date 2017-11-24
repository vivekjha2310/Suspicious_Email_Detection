<%-- 
    Document   : addthread
    Created on : Nov 22, 2017, 1:03:09 AM
    Author     : vicky
--%>
<%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Date.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
        String msg1="welcome";
String n=(String)session.getAttribute("n");
session.setAttribute("yoyoy", "n");
//System.out.print(id_token);
out.println(msg1+"  ");
if(n!=null)
{
	
	response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate,"
	         + "max-age=0, proxy-revalidate, no-transform, pre-check=0, post-check=0, private");
        %><%      
	           }
	           else{  
	            out.print("Please login first");  
	            request.getRequestDispatcher("adminlogin.jsp").forward(request, response);  
	        }  
%>

        <%
try
{
Connection con=connect.Dbcon.getdb();
PreparedStatement p=con.prepareStatement("select * from block ;");
ResultSet rs=p.executeQuery();
while(rs.next())
{
%>
<tr><td><%= rs.getString(1)%></td>
<td><%= rs.getString(2)%></td> 
<td><%= rs.getString(3)%></td> 
<td><%= rs.getString(4)%></td> 
<td><%= rs.getString(5)%></td> 
<td><%= rs.getString(6)%></td> 
<td><%= rs.getLong(7)%></td>
 <td><a href='unblock.jsp?x2=<%= rs.getString(6)%>'>unblock</a></td>
<%	
}
}
 catch(Exception e){out.print(e);}
%>
    </body>
</html>
