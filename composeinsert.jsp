                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     <%@page import="javax.websocket.Session"%>
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
{//try block start
String n=(String)session.getAttribute("n");
System.out.println(""+n);
String msg="";
String to=request.getParameter("to").toString();
request.setAttribute("to", to);
System.out.println(""+to);
String bcc=request.getParameter("bcc").toString();
System.out.println(""+bcc);
String subject=request.getParameter("sub").toString();
System.out.println(""+subject);
String text=request.getParameter("textarea").toString();
request.setAttribute("text", text);
System.out.println(""+text);
String delimiter = " ";
String maill[] = text.split(delimiter);
Connection c=connect.Dbcon.getdb();//text matching
Connection ad=connect.Dbcon.getdb();
Connection sp=connect.Dbcon.getdb();
Connection trd=connect.Dbcon.getdb();
Connection con=connect.Dbcon.getdb();
Connection con1=connect.Dbcon.getdb();
Connection cp1=connect.Dbcon.getdb();
Connection cp2=connect.Dbcon.getdb();
Connection con2=connect.Dbcon.getdb();
Connection con3=connect.Dbcon.getdb();
Connection con4=connect.Dbcon.getdb();
PreparedStatement p=con.prepareStatement("select * from user where userid=?;");
PreparedStatement p2=con1.prepareStatement("select * from user where userid=?;");
PreparedStatement pc=null;
System.out.println("first");
p2.setString(1, n);
p.setString(1, to);
ResultSet rs2=p2.executeQuery();
ResultSet rs=p.executeQuery();
            int j=0,k=0;
          //  StringBuffer b=new StringBuffer();
            for(int i=0;i<maill.length;i++)
            {
                pc=c.prepareStatement("select * from keyword where word like '"+maill[i]+"';");
                ResultSet rpc=pc.executeQuery();
                if(rpc.next()){out.println("\nsuspitious detected at position "+(i+1)+" word is :"+maill[i]);
                j++;
                }
               //out.println(" i is :"+i);
               
            //    b.append(maill[i]+" ");
            }
                //String ss =b.substring(0, (b.length()-1));
                if(j>0)
                {
                    if(rs.next()&& rs2.next())
                        {//next if open
                String sql2="insert into " +rs2.getString(1)+ "(sent,too,frm) values(?,?,?);";   
                String sql1="insert into admindb (message,too,frm) values(?,?,?);";
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
else 
           {//else
        msg="Userid not match";
	request.setAttribute("message",msg);
	request.getRequestDispatcher("compose.jsp").forward(request, response);
        con.close();
          }//else cl
                                  }
                else
                {
                    String t="%"+text+"%";
                    PreparedStatement pc4=con.prepareStatement("select * from spam;");
                    ResultSet rpc4=pc4.executeQuery();
                    int h=0;
                    while(rpc4.next())
                    {
                    System.out.println("yoyoyoyoyoyoyoyoyo");
                    String pat=rpc4.getString(2);
                    if(text.indexOf(pat)>=0)
                    {
                    System.out.println("chlaa");
                        h++;
                        request.getRequestDispatcher("spamsend.jsp").forward(request, response);       
                        break;          
              }
                    }
                    if(h==0)
                    {request.getRequestDispatcher("composecheck.jsp").forward(request, response);}
                    }
}
catch(Exception e){out.print(e);}
%>
</body>
</html>