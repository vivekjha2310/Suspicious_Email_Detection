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
 </div><br><br><br><br><br><br><br><br>
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
//String n=request.getParameter("x1");
Connection con=connect.Dbcon.getdb();
PreparedStatement p=con.prepareStatement("select * from user where userid=?");
p.setString(1, n);
ResultSet rs=p.executeQuery();
if(rs.next())
{
	%>
	<form action="" method="post">
  <center>
                       <form action="insertuser.jsp" method="post">
                            <% String msg=(String)request.getAttribute("message");%>
                        <table>
                        	<tr>
                        		<img src="Images/inbg.jpg"/></td>
                        		<td id="heading"><h1>Your Info...</h1></td>
                        	</tr>
                            
                            <tr>
                            	<td id="left">First Name:&nbsp;</td>
                            	<td><input type="text" name="ufname" size="25"  required="required"/></td>
                            </tr>

                            <tr>
                            <td id="left">Middle Name:&nbsp;</td>
                            	<td><input type="text" name="umname" placeholder="if any" size="25"/></td>
                            </tr>

                            <tr>
                            	<td id="left">Last Name:&nbsp;</td>
                            	<td><input type="text" name="ulname" size="25" required="required"/></td>
                            </tr>
                            <tr>
                            	<td id="left">D.O.B:&nbsp;</td>
                            	<td><input type="date" name="dob" required="required"/></td>
                            </tr>
                                                                                
                            <tr>
                            	<td id="left">Recovery Email:&nbsp;</td>
                            	<td><input type="email" name="uemail" size="25" required="required"/></td>
                            </tr>
                            
                            <tr>
                            	<td id="left">User-Id:&nbsp;&nbsp;&nbsp;      eg:xyz@mspvr.com</td>
                            	<td><input type="email" name="uid" size="25"  required="required" title="unique"/></td>
                            </tr>
                            
                            <tr>
                            	<td id="left">Mobile No:&nbsp;</td>
                            	<td><input type="tel" pattern="[7-9]{1}[0-9]{9}" maxlength="10" name="uno" size="25" required="required"/></td>
                            </tr>
                            <tr>
                            	<td id="left">Password;</td>
                            	<td><input type="password" name="pwd" size="25"  required="required" title="unique"/></td>
                            </tr>0
                            <tr>
                            	<td id="left">Confirmed Password;</td>
                            	<td><input type="password" name="pwdc" size="25"  required="required" title="unique"/></td>
                            </tr>
                            
                            <tr>
                            	<td colspan="2"><button>Submit</button></td>
                            </tr>
                        </table>  
                             <%
        if(msg!=null)
        out.println(msg);
        %>
				</form>
		</div>
</form>
	
	<%	
}
%>
</body>
</html>