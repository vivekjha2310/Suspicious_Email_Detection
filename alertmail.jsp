<%-- 
    Document   : alertmail
    Created on : Nov 21, 2017, 7:19:34 PM
    Author     : vicky
--%>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     <%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Date.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                border: 2px groove black;
                width: 80%;
            }
            
            td,th,tr{
                border:1px solid black;
                padding-left: 3px;
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

        <%
try
{//try block start
//String n=(String)session.getAttribute("n");
System.out.println(""+n);
String msg="";
Connection c=connect.Dbcon.getdb();//text matching
String sql1="select * from admindb ;";
             PreparedStatement p1=c.prepareStatement(sql1);
             ResultSet rs1=p1.executeQuery();%>
             <center>
             <table></br>
	<tr></br>
		<th id="date" style="width: 25% ;">Date & Time</th>
		<th id="content">Content</th>
		<th id="content" style="width: 18%">To</th>
                <th id="content" style="width: 18%">From</th>                
                <th id="content" style="width: 9%">send</th>
        </tr><%
             while(rs1.next())
             {%>
                
        <tr><td><%=rs1.getString(1) %></td><td><%=rs1.getString(2) %></td>
            <td><%=rs1.getString(4) %></td><td><%=rs1.getString(3) %></td>
            <td><a href='adminsend.jsp?x2=<%= rs1.getString(3)%>'>Send</a></td>
	               
             <%}
             c.close();
         
        }
        catch(Exception e){out.print(e);}
         %>
             </table>
             </center>
    </body>
</html>
