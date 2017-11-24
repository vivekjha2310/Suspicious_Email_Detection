<%-- 
    Document   : composecheck
    Created on : Nov 21, 2017, 1:31:29 PM
    Author     : vicky
--%>
<%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Date.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
try
{//try block start
String n=(String)session.getAttribute("n");
System.out.println(""+n);
String msg="";
String to=request.getParameter("to").toString();
System.out.println("tooo"+to);
String bcc=request.getParameter("bcc").toString();
System.out.println(""+bcc);
String subject=request.getParameter("sub").toString();
System.out.println(""+subject);
String text=request.getParameter("textarea").toString();
System.out.println(""+text);
Connection c=connect.Dbcon.getdb();//text matching
Connection ad=connect.Dbcon.getdb();
Connection sp=connect.Dbcon.getdb();
Connection trd=connect.Dbcon.getdb();
Connection con=connect.Dbcon.getdb();
Connection con1=connect.Dbcon.getdb();
Connection con2=connect.Dbcon.getdb();
Connection con3=connect.Dbcon.getdb();
PreparedStatement p=con.prepareStatement("select * from user where userid=?;");
PreparedStatement p2=con1.prepareStatement("select * from user where userid=?;");
PreparedStatement pc=null;
System.out.println("first");
p2.setString(1, n);
p.setString(1, to);
ResultSet rs2=p2.executeQuery();
ResultSet rs=p.executeQuery();                          
                //String ss =b.substring(0, (b.length()-1));
                    if(rs.next()&&rs2.next())
                        {//next if open
                String sql2="insert into " +rs2.getString(1)+ "(sent,too,frm) values(?,?,?);";   
                String sql1="insert into " +rs.getString(1)+ "(inbox,too,frm) values(?,?,?);";
                PreparedStatement p1=con1.prepareStatement(sql1);
                PreparedStatement p3=con3.prepareStatement(sql2);
                p1.setString(1, text);
                p1.setString(3,n);
                p1.setString(2,to);
                p3.setString(1, text);
                p3.setString(3,n);
                p3.setString(2,to);
                int rs1=p1.executeUpdate();
                int rs3=p3.executeUpdate();
                if(rs1>0&&rs3>0)
                                                      {//3rd if open
                msg="Message will sent";
                request.setAttribute("message",msg);
                request.getRequestDispatcher("inbox.jsp").forward(request, response);
                System.out.print("Password");
                              }//3rd close
                         }//next if close
        
    
          
                }
            
//ResultSet rc=pc.executeQuery();
//System.out.println("second");
                
           


catch(Exception e){out.print(e);}
%>

        <h1>Hello World!</h1>
    </body>
</html>
