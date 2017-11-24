<%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		table,td,th,tr{
			border: 1px solid black;
		}

		table{
			border: 5px inset black;
			width: 70%;
			margin-left: 15%;
		}
		
		tr,td,th{
			padding-left: 15px;
		}
		
		#enquire{
			margin-left:30%;
                }


		input{
			margin-top: 2%;
			width: 400px;
			height: 20px;
		}
		hr{
			margin-bottom: 2%;		
			margin-top: 2%;
		}

		button{
			font-weight: bold;
			min-height: 25px;
		}
	</style>

</head>
<body>
    <div id="enquire">
		<input type="text" name="spamText"/>
                <button onclick="addspam.jsp">Add</button>
	</div>
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

	<%// String msg=(String)request.getAttribute("message");%>
    <%    
          Connection con=connect.Dbcon.getdb();
          PreparedStatement p=con.prepareStatement("select * from spam;");
          ResultSet rs=p.executeQuery();
    %>
          <hr>
	<div id="viewList">
	<table>
            		<tr>
                            <th>Key</th>
                            <th>Spam Word's </th>
                            <th>Wanna Delete??</th>
			</tr>
                        
            <%
          while(rs.next())
          {
    %>
		
			<tr>
                            <td><%= rs.getInt(1)%></td>
				<td><%= rs.getString(2)%></td>
				<td><a href='deletespam.jsp?x2=<%= rs.getString(2)%>'>delete</a></td>
                        </tr>
                        <%}%>
			
		</table>
	</div>
</body>
</html>