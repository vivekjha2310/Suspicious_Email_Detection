<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="org.apache.tomcat.*"%>
<%@page import="connect.Dbcon"%>
<%@page import="javax.mail.internet.MimeMessage" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.Random"%>
<%@page import="connect.PlainTextEmailSender"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
alert("You have benn sent a otp at your email do check and enter for restting username or password");
</script>
<% 
String mailfr=request.getParameter("uid");
String pass=request.getParameter("uno");
//System.out.print(id);
Connection con=connect.Dbcon.getdb();
PreparedStatement p1=con.prepareStatement("select* from user where userid=? && mno=?");
p1.setString(1, mailfr);
p1.setString(2, pass);
ResultSet rs=p1.executeQuery();
//String mailo=rs.getString(6);
//System.out.println(mailo);
String s="";
if(rs.next())
{
 String host = "smtp.gmail.com";
String port = "587";
String mailFrom = "vivek.jha96@gmail.com";
String password = "lifeishell1";
//int rand=105420+(int)Math.random()*90000;
Random ran=new Random();
int code= (100000 + ran.nextInt(900000));
request.setAttribute("rand",code);
request.setAttribute("email1",rs.getString(6));
// outgoing message information
String mailTo = rs.getString(6);;
String subject = "Hello my friend";
String message = "Your otp is"+code;
 // Setup mail server
  Properties properties = System.getProperties();
   properties.setProperty("mail.smtp.host", host);

   // Get the default Session object.
   Session mailSession = Session.getDefaultInstance(properties);
   PlainTextEmailSender mailer = new PlainTextEmailSender();

try {
    mailer.sendPlainTextEmail(host, port, mailFrom, password, mailTo,
         subject, message);
   System.out.println("Email sent.");
} catch (Exception ex) {
  System.out.println("Failed to sent email.");
 ex.printStackTrace();
}
request.getRequestDispatcher("resetpass.jsp").forward(request, response);
}

else
{
	 s="Invalid Email or no";
	request.setAttribute("s", s);
	request.getRequestDispatcher("forget.jsp").forward(request, response);
}

  
%>
</body>
</html>