<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Welcome...</title>
	<link rel="stylesheet" type="text/css" href="login.css">
	<style type="text/css">
		.reglink{
			margin-left: 15px;
			padding-right: 45px;
			height: 100px;
		}

		a{
			color: white;
		}

		a:hover,a:active{
			color: gold;
			font-size: 30px;
		}

		.passReset{
			padding-top: 0px;
			font-size: 20px;
			text-decoration: bold underline;
			height: 100px;
			color: white;
			text-align: right;
			margin-right: 65px;
		}		
		
	</style>
</head>
<body>
	<center>
	<div id="whole">
		<div id="register">
			<img src="images/mail2.jpg">
		</div>
		
		<div id="login">
			<form action="validate.jsp" method="post">
			<% String msg=(String)request.getAttribute("message"); %>
				<input type="email" name="uname" placeholder="Username" /><br/>

				<input type="Password" name="upass" placeholder="Password" /><br/><br/>

	           <button class="nav" id="submit">Let's Go</button><br/>
	        </form>
        </div>

        <div id="register" class="reglink">
			<a href="registeruser.jsp"><button id="regBtn">Register Now</button></a>
		</div>

		<div id="login" class="passReset">
            <a href="forget.jsp">Forgot Password</a>

		</div>		
			           <%
        if(msg!=null)
        out.println(msg);
        %>
	</div>
	</center>
</body>
</html>