<%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Date.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%
try
{
String msg="";
//String startDateStr = request.getParameter("date");
String f1name=request.getParameter("ufname").toString();
System.out.println("fname");
String m1name=request.getParameter("umname").toString();
System.out.println("mname");
String l1name=request.getParameter("ulname").toString();
//String gender1=request.getParameter("ugen");
String startDateStr = request.getParameter("dob").toString();
System.out.println(""+startDateStr);
//Date date=sdf.parse(startDataStr);
String remail=request.getParameter("uemail").toString();
System.out.println(""+remail);
String userid=request.getParameter("uid").toString();
System.out.println(""+userid);
String no=request.getParameter("uno").toString();
String pass=request.getParameter("pwd").toString();
String cpass=request.getParameter("pwdc").toString();
if(pass.equals(cpass))
{
//long mno=Long.valueOf(no).longValue();
//System.out.println("value"+mno);
Connection con=connect.Dbcon.getdb();
Connection con1=connect.Dbcon.getdb();
Connection con2=connect.Dbcon.getdb();
PreparedStatement p=con1.prepareStatement("select * from user;");
ResultSet rs=p.executeQuery();
if(rs.next())
	{
            con1.close();
PreparedStatement p1=con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?);");
p1.setString(1, f1name);
p1.setString(2, m1name);
p1.setString(3, l1name);
//p1.setString(4, "n");
//p1.setString(4, gender1);
p1.setString(4, startDateStr);
p1.setString(5, remail);
p1.setString(6, userid);
p1.setString(7, no);
p1.setString(8, pass);
p1.setString(9, null);
int x=p1.executeUpdate();
if(x>0)
		{
                            msg="Successfully registered";
			    request.setAttribute("message",msg);
			    request.getRequestDispatcher("login.jsp").forward(request, response);
			    System.out.println("Registered");
			    String sql2="create table " + f1name + "(dateandtime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,"
                                + "inbox varchar(100),"
                                + "outbox varchar(100),"
                                + "sent varchar(100),"
                                + "draft varchar(100),"
                                + "spam varchar(100),"
                                + "important varchar(100),"
                                + "trash varchar(100),"
                                + "t00 varchar(50),"    
                                + "frm varchar(50));";
                        Statement p2=con2.createStatement();
                        int x2=p2.executeUpdate(sql2);
                        System.out.println("chal gye");
                        if(x2>0){
                            System.out.println("chal gyeLLLLLLL");
                        con.close();
                        con2.close();}
                        
		}
		
        }
  else{
	msg="Duplicate id";
	request.setAttribute("message",msg);
	request.getRequestDispatcher("registeruser.jsp").forward(request, response);
	System.out.print("Duplicate");
	
   }

}
else{
        msg="Password not match";
	request.setAttribute("message",msg);
	request.getRequestDispatcher("registeruser.jsp").forward(request, response);
	System.out.print("Password");
	
}
}

catch(Exception e){out.print(e);}

%>
</body>
</html>