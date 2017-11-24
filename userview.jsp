<%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                width: 90%;
                margin-top: 4%;
                border: 4px inset black;
            }
            td{
                padding-left: 5px;
            }
            
        </style>
    </head>
    <body>
        <center>
<table border='1' align='center' style="background-image: Images/inbg.jpg";> <tr>  
        <th style="width: 10%;"> First Name </th> 
        <th style="width: 13%;"> Middle Name </th>
        <th style="width: 10%;"> Last Name </th> 
        <th style="width: 13%;"> Date of Birth </th>
        <th style="width: 16%;"> Recovery Email </th> 
        <th style="width: 16%;"> Userid </th>
        <th style="width: 15%;"> Mobile number </th>
        <th style="width: 10%;"> BLOCK </th></tr>
<%
try
{
Connection con=connect.Dbcon.getdb();
PreparedStatement p=con.prepareStatement("select * from user ;");
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
 <td><a href='adminblock.jsp?x2=<%= rs.getString(6)%>'>block</a></td>
<%	
}
}
 catch(Exception e){out.print(e);}
%>
</div>
</table>
    </body>
</html>
