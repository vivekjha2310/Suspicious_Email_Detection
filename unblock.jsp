<%-- 
    Document   : adminblock
    Created on : Nov 21, 2017, 9:24:10 PM
    Author     : vicky
--%>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     <%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Date.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    try{
        String msg="";
String n=(String)session.getAttribute("n");
System.out.println(""+n);
Connection con=connect.Dbcon.getdb();
Connection c=connect.Dbcon.getdb();
Connection c1=connect.Dbcon.getdb();
String n1=request.getParameter("x2").toString();
System.out.println(""+n1);
PreparedStatement p=con.prepareStatement("select * from block where userid=?;");
p.setString(1, n1);
ResultSet r=p.executeQuery();
if(r.next())
{
 String fname=r.getString(1);
 String mname=r.getString(2);
 String lname=r.getString(3);
 String dob=r.getString(4);
 String rmail=r.getString(5);
 String uid=r.getString(6);
 String mn=r.getString(7);
 String pass=r.getString(8);
 System.out.println("a"+fname+"b"+mname+"c"+lname);
 String q="Delete from block where userid like '"+n1+"';";
 PreparedStatement pc=c.prepareStatement(q);
 int rr=pc.executeUpdate();
 if(rr>0)
 {
 PreparedStatement pc1=c1.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?);");
 pc1.setString(1, fname);
 pc1.setString(2, mname);
 pc1.setString(3, lname);
 pc1.setString(4, dob);
 pc1.setString(5, rmail);
 pc1.setString(6, uid);
 pc1.setString(7, mn);
 pc1.setString(8, pass);
 pc1.setString(9, null);
 int rpc1=pc1.executeUpdate();
 if(rpc1>0)
 {
        System.out.println("dusri chl gyi");
        request.getRequestDispatcher("blockuser.jsp").forward(request, response);
	System.out.print("Massege delete");
        con.close();
 }
 }
 }
   }
    catch(Exception e){out.print(e);}
%>

    </body>
</html>
