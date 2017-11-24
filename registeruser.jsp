<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="indiRegPg.css" />
		<title>User Registration</title>
	</head>
	<body>
            <div style="color: white">
                <form id="form" action="insertuser.jsp" method="post" style="background-image: url(images/img4.jpg)">
                            <% String msg=(String)request.getAttribute("message");%>
                            <table>
                        	<tr>
                        		<td id="logo left"><img src="images/logo_1_1.JPG"/></td>
                        		<td id="heading"><h1>Your Info...</h1></td>
                        	</tr>
                            
                            <tr>
                                <td id="left"><h3>First Name:&nbsp;</h3></td>
                            	<td><input type="text" name="ufname" size="25"  required="required"/></td>
                            </tr>

                            <tr>
                                <td id="left"><h3>Middle Name:&nbsp;</h3></td>
                            	<td><input type="text" name="umname" placeholder="if any" size="25"/></td>
                            </tr>

                            <tr>
                                <td id="left"><h3>Last Name:&nbsp;</h3></td>
                            	<td><input type="text" name="ulname" size="25" required="required"/></td>
                            </tr>
                            <tr>
                                <td id="left"><h3>D.O.B:&nbsp;</h3></td>
                            	<td><input type="date" name="dob" required="required"/></td>
                            </tr>
                                                                                
                            <tr>
                            	<td id="left"><h3>Recovery Email:&nbsp;</h3></td>
                            	<td><input type="email" name="uemail" size="25" required="required"/></td>
                            </tr>
                            
                            <tr>
                                <td id="left"><h3>User-Id:</h3></td>
                            	<td><input type="email" name="uid" size="25" placeholder="xyz@mspvr.com" required="required" title="unique"/></td>
                            </tr>
                            
                            <tr>
                                <td id="left"><h3>Mobile No:&nbsp;</h3></td>
                            	<td><input type="tel" pattern="[7-9]{1}[0-9]{9}" maxlength="10" name="uno" size="25" required="required"/></td>
                            </tr>
                            <tr>
                                <td id="left"><h3>Password;</h3></td>
                            	<td><input type="password" name="pwd" size="25"  required="required" title="unique"/></td>
                            </tr>
                            <tr>
                                <td id="left"><h3>Confirmed Password;</h3></td>
                            	<td><input type="password" name="pwdc" size="25"  required="required" title="unique"/></td>
                            </tr>
                            
                            <tr>
                            	<td colspan="2"><button><h3>Submit</h3></button></td>
                            </tr>
                        </table>  
                             <%
        if(msg!=null)
        out.println(msg);
        %>
				</form>
		</div>
</body>
</html>