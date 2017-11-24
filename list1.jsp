<%-- 
    Document   : list
    Created on : Oct 10, 2017, 3:26:48 AM
    Author     : deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>MenuBox</title>
	<style type="text/css">
		body
		{
			background-color: lightblue;
                       
		}
		#one
		{
			background-color: lightsteelblue;
		}
		#mod_name{
  font-size: 25px;
  text-decoration: underline;
  margin-left: 0px;
}

ul#sub_module{
	list-style-type: none;
	padding-left:10px;
}

#sub_module a{
	font-size: 20px;
}

ul{
	line-height: 40px;
	padding-left:25px;
}

button{
	font-size: 15px;
	width: 270px;
	text-align: left;
}

	</style>
        <script type="text/javascript">
        function brochure()
       {
           window.location("http://localhost:8084/Mail/adminlogin.jsp");
          }
</head>
<body>
	<div id="one"><h3>Contents</h3>
	</div>
	<div>
	<table>
	       	<tr>
			<td> <li> <a href="Keyword.jsp" target="listContent" id="INBOX"><button> COMPOSE </button></a></li></td>
		</tr>
		
		<tr>
			<td><li> <a href="AlertMail.jsp" target="listContent" id="INBOX"><button> INBOX </button></a></li></td>
		</tr>
		<tr>
			<td><li> <a href="ViewProfile.jsp" target="listContent" id="OUTBOX"><button> OUTBOX </button></a></li></td>
		</tr>
		<tr>
			<td><li> <a href="Logout.jsp" target="listContent" id="SENT"><button> SENT</button></a></li></td>
		</tr>

                <tr>
			<td><li> <a href="mainadmin.jsp" target="listContent" id="MAINADMIN"><button> ADMIN AREA</button></a></li></td>
		</tr>
	</table>
	</div>
</body>
</html>