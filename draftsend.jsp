
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="javax.websocket.Session"%>
<%@page import="connect.Dbcon"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.Date.*" %>
<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>	
</head>
<body>
    <%  
        try{
            String msg="";
            String n=(String)session.getAttribute("n");
            System.out.println(""+n);
            String to = request.getParameter("to").toString();
            //request.setAttribute("to", to);
            System.out.println(""+to);
            String text = request.getParameter("textarea").toString();
            //request.setAttribute("text", text);
            System.out.println(""+text);

         if(n!=null)
                  {
                 response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate,"
	         + "max-age=0, proxy-revalidate, no-transform, pre-check=0, post-check=0, private");      
	 
                  }
	           else{  
	            out.print("Please login first");  
	            request.getRequestDispatcher("login.jsp").forward(request, response);  
	        }  

         Connection con=connect.Dbcon.getdb();
         Connection con1=connect.Dbcon.getdb();
         PreparedStatement p1=con.prepareStatement("selete * from user where userid  like '"+ n +"';");
         ResultSet r1=p1.executeQuery();
         if(r1.next())
         {
          String sql2="insert into " +r1.getString(1)+ "(draft,too,frm) values(?,?,?);";
          PreparedStatement p2=con1.prepareStatement(sql2);
          p2.setString(1, text);
          p2.setString(2, to);
          p2.setString(3, n);
          int x=p2.executeUpdate();
          if(x>0)
          {
              msg="draft enter";
	      request.setAttribute("message",msg);
	      request.getRequestDispatcher("inbox.jsp").forward(request, response);
       
          }
         }
        }
        catch(Exception e){out.print(e);}
         %>
         </table>
</body>
</html>