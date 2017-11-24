<%-- 
    Document   : profile
    Created on : Oct 10, 2017, 3:46:12 AM
    Author     : deepak
--%>
<%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Date.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title> User's Profile </title>
		<link rel="stylesheet" type="text/css" href="profileView.css"/>
	</head>
	<body>
            <%
            
                try
{
                   String n=(String)session.getAttribute("n");
                   System.out.println(""+n);
                   String msg="";
                   Connection con=connect.Dbcon.getdb();
                   PreparedStatement p1=con.prepareStatement("select * from user where userid=?;");
                   p1.setString(1, n);
                   ResultSet rs=p1.executeQuery();
                   if(rs.next())
                   {
                   %>
            <div>
				<div id="left">
                                    <img src="../Images/dp.jpg" alt="Profile Picture" title= <% rs.getString(1);%>>
					<ul>
						<li><a href="">Change Image</a></li>
						<li><a href="editDetail.jsp">Edit Details</a></li>
					</ul>
				</div>
				<div id="right">
					<fieldset>
						<legend>My Info</legend>
						<table>
							<tr>
								<td>Name:</td>
								<td><input type="text" name="uFname" title="First Name" value="<%= rs.getString(1)%>" readonly></td>
								<td><input type="text" name="uMname" title="Middle Name" value="<%= rs.getString(2)%>" readonly></td>
								<td><input type="text" name="uLname"  title="Last Name"value="<%= rs.getString(3)%>" readonly></td>
							</tr>
							<tr>
								<td>D.O.B: </td>
								<td><input type="date" name="dob"  value="<%= rs.getString(4)%>" readonly></td>
							</tr>
							<tr>
								<td>Recovery Mail:</td>
								<td><input type="mail" name="uemail"  value="<%= rs.getString(5)%>"></td>
							</tr>
							<tr>
								<td>User Id: </td>
								<td><input type="text" name="uid"  value="<%= rs.getString(6)%>" readonly></td>
							</tr>
							<tr>
								<td>Mobile No.:</td>
								<td><input type="tel" name="uno"  value="<%= rs.getLong(7)%>"></td>
							</tr>
							<tr>
								<td>About:</td>
								<td><input type="text" name="about" title="About User" value="<%= rs.getString(9)%>"></td>
							</tr>
                                                        <tr>
                            	                                                   <td><button><a href=".html">Update</a></button></td>
                            	                                                   <td><button><a href="profileView.html">Discard Changes</a></button></td>
                                                        </tr>
						</table>
					</fieldset>
				</div>
			</div>
            <%
                con.close();
                   }
}                  
                catch(Exception e){out.print(e);}
            %>
			
	</body>
</html>