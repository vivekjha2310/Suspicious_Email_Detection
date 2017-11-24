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
        try{
         String msg1="welcome";
         String n=(String)session.getAttribute("n");
         out.println(msg1+"  "+n);
         if(n!=null)
                  {
                 response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate,"
	         + "max-age=0, proxy-revalidate, no-transform, pre-check=0, post-check=0, private");      
	 
                  }
	           else{  
	            out.print("Please login first");  
	            request.getRequestDispatcher("adminlogin.jsp").forward(request, response);  
	        }  

         Connection con=connect.Dbcon.getdb();
         Connection con1=connect.Dbcon.getdb();
         PreparedStatement p=con.prepareStatement("select * from admin where userid=?;");
         p.setString(1, n);
         ResultSet rs=p.executeQuery();
         if(rs.next())
         {
             String sql1="select * from admindb where trash IS NOT NULL;";
             PreparedStatement p1=con1.prepareStatement(sql1);
             ResultSet rs1=p1.executeQuery();%>
             <table border="1">
	<tr>
		<th id="date" style="min-width: 10%">Date&&Time</th>
		
		<th id="from">From</th>
                <th id="from">To</th>
		<th id="content">Content</th>
        </tr><%
             while(rs1.next())
             {%>
                
        <tr><td><%=rs1.getString(1) %></td><td><%=rs1.getString(8) %></td><td><%=rs1.getString(7) %></td><td><%=rs1.getString(6) %></td>
	               
             <%}
             con.close();
         }
        }
        catch(Exception e){out.print(e);}
         %>
         </table>
</body>
</html>