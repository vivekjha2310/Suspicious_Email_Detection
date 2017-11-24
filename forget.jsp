<%@page import="java.sql.PreparedStatement"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>forget</title>
</head>
<body style="background-color: lightblue;">
<center>
 <form action="otp.jsp" method="post">
 <table>
                           <!--  <tr><td><h1><br>User-Id:</h1>&nbsp;</td><td><br><input type="text" name="ufid" size="25"  required="required" placeholder="Enter your user id"/></td></tr> -->
   <tr><td><h1><br>Userid:</h1>&nbsp;&nbsp;</td><td><br>
   <input type="email" name="uid" size="25" required="required" placeholder="Enter your email id"/></td></tr>
   <tr><td><h1><br>Mobile No:</h1>&nbsp;&nbsp;</td><td><br>
    <input type="tel" pattern="[7-9]{1}[0-9]{9}" maxlength="13" name="uno" size="25" required="required" placeholder="Enter your registered mobile no" pattern=/></td></tr>
</table>
 <input type="submit" value="LETS GO" name="fsub">
</form>
</center>
<center>
<br><!--
<%
   //       String msg=(String)request.getAttribute("s");
     //     String msg1=(String)request.getAttribute("x2");
    //if(msg!=null)
      //   out.println(msg);
%>
<br>
<%
//if(msg1!=null)
//{out.println(msg1);
//	}
//String x4=(String)request.getAttribute("x4");
//if(x4!=null)
//{ out.println(x4);
//}
        %>-->
 </center>
</body>
</html>