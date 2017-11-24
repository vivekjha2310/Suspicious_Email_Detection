<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body style="background-image: url('Images/g.jpg');">
<div id="logo" align="center" style="background-color:black">
 </div>
<%
//String n=(String)session.getAttribute("n");
//request.getRequestDispatcher("adminlogin.jsp").include(request, response);
//window.location("https://d1xq83t889f8oi.cloudfront.net/accesssp/brochure/7190p_access-125-mattle_leaflet-low-website.pdf");
HttpSession n=request.getSession();
n.invalidate();
%>


</body>
</html>