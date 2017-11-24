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
    try{
        String msg="";
//String n=(String)session.getAttribute("n");
System.out.println(""+n);
Connection con=connect.Dbcon.getdb();
Connection con1=connect.Dbcon.getdb();
String n1=request.getParameter("x2").toString();
System.out.println(""+n1);
PreparedStatement p=con.prepareStatement("select * from user where userid=?;");
p.setString(1, n1);
ResultSet rs=p.executeQuery();
if(rs.next())
{
    System.out.println("phla chl gya");
    System.out.println("yoyoyoyoy"  +rs.getString(1)); 
String q="insert into " +rs.getString(1)+ "(inbox,too,frm) values(?,?,?);";
PreparedStatement ps=con1.prepareStatement(q);
ps.setString(1,"We have discovered a message that violates the policy of our company and contain a word that is considered as a threat to person/organization. if ever found again u will be blocked for ever");
ps.setString(2,n1);
ps.setString(3,n);
int x=ps.executeUpdate();
if(x>0)
{
       System.out.println("dusri chl gyi");
        request.getRequestDispatcher("alertmail.jsp").forward(request, response);
	System.out.print("Message delete");
        con1.close();
        con.close();
        	
}
}
else{
        msg="Userid not match";
	request.setAttribute("message",msg);
	request.getRequestDispatcher("admin.jsp").forward(request, response);
        con.close();
        con1.close();
}
    }
    catch(Exception e){out.print(e);}
%>

    </body>
</html>
