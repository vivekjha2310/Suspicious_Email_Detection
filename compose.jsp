<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compose Mail</title>
<link rel="stylesheet" type="text/css" href="style/stylecompose.css" />
<style>
    input{
        padding-left: 2px;
    }
    
</style>
</head>
<body>
    <%
        String msg1="welcome";
String n=(String)session.getAttribute("n");
session.setAttribute("yoyoy", "n");
//System.out.print(id_token);
out.println(msg1+"  ");
if(n!=null)
{
	
	response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate,"
	         + "max-age=0, proxy-revalidate, no-transform, pre-check=0, post-check=0, private");
        %><%      
	           }
	           else{  
	            out.print("Please login first");  
	            request.getRequestDispatcher("login.jsp").forward(request, response);  
	        }  
%>


	
<form class="compose" action="composeinsert.jsp" >
            <% String msg=(String)request.getAttribute("message");%>
		
            </br>
            <p>
			<label>To:</label> <input type="email" class="sendtoid" name="to" placeholder="example@mspvr.com"/>
		</p>
		<p>
			<label>Bcc:</label> <input type="text" class="bcc" name="bcc" />
		</p>
		<p>
			<label>Subject:</label> <input type="text" class="subject" name="sub" />
		</p>
		<p>
			<label class="message-label">Message:</label>
			<textarea name="textarea" cols="10" rows="10" class="message">
                        </textarea>
		</p>
		<div>
			<button type="submit" class="send">Send &raquo;</button>
		</div>
		<div>
			<input type="file" class="AttachFile">
		</div>
                <div>
                    <label> <a href="draftsend.jsp">Cancel &raquo;</a></label>
		</div>
		
		</button>
		</div>
	 <%
        if(msg!=null)
        out.println(msg);
        %>
        </form>

</body>
</html>