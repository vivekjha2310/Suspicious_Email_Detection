<%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('Images/wd1.jpg'); background-size: inherit; background-repeat: repeat;">
<div id="logo" align="center" style="background-color:silver;">
<img alt="logo" src="Images/d.png" height="80px" width="250px"/>
<%
    try{
        String msg="";
String n=(String)session.getAttribute("n");
System.out.println(""+n);
Connection con=connect.Dbcon.getdb();
Connection con1=connect.Dbcon.getdb();
String n1=request.getParameter("x2").toString();
System.out.println(""+n1);
PreparedStatement p=con.prepareStatement("select * from user where userid=?;");
p.setString(1, n);
ResultSet rs=p.executeQuery();
if(rs.next())
{
    System.out.println("phla chl gya");

String q="Delete from "+ rs.getString(1) + " where inbox like '"+n1+"';";
PreparedStatement ps=con1.prepareStatement(q); 
int x=ps.executeUpdate();
if(x>0)
{
       System.out.println("dusri chl gyi");
        request.getRequestDispatcher("inbox.jsp").forward(request, response);
	System.out.print("Massege delete");
        con1.close();
        con.close();
        	
}
}
else{
        msg="Userid not match";
	request.setAttribute("message",msg);
	request.getRequestDispatcher("login.jsp").forward(request, response);
        con.close();
}
    }
    catch(Exception e){out.print(e);}
%>
</body>
</html>