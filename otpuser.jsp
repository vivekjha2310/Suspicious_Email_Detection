<%-- 
    Document   : otpuser
    Created on : Oct 9, 2017, 1:25:58 PM
    Author     : vicky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Confirmation</title>
	<script src="../JSP/jquery-3.2.1.js"> </script>
	<script>
		function matchPwd()
			{
				var pass1 = document.getElementByID("pass").value;
				var pass2 = document.getElementByID("cPass").value;

				 if(pass1 == pass2) 
				 	{ return true; }
  			     else 
  			     	{ alert("Warning!! passcodes must match!!!");
    				}	
			}

	</script>
</head>
<body>
	<form method="post">
		<label for="otp">OTP: </label>
		<input type="text" name="otp"/><br/>

		<label for="pass">Password: </label>
		<input type="password" id="pass" name="pass"/><br/>

		<label for="confirmPass">Confirm Password:</label>
		<input type="password" name="confirmPass" id="cPass"/><br/>

		
		<button onclick="matchPwd()">Let's Go...</button>
	</form>
</body>
</html>