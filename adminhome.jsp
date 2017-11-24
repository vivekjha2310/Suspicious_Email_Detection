
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Date.*" %>
<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head >
	<title></title>
	<style type="text/css">
		body{
			
			min-width: 100%;
			max-width: 100%;
			 background-image: url("Images/inbg.jpg");
		}
		table
		{
			min-width: 100%;
			min-height: 100%;
		}
		#date
		{
			background-color: red;
			width:10%;
		}
		#time{
			width:10%;
			background-color: red;
		}
		#from
		{
			width:20%;
			background-color: red;
		}
		#content{
			width:60%;
			background-color: red;
		}
	</style>
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
    
</body>
</html>