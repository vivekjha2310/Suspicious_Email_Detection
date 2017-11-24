<%-- 
    Document   : home.jsp
    Created on : Oct 10, 2017, 3:16:35 AM
    Author     : deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		#topPane{
			margin-bottom: 0px;
                        z-index: 1;
			}

		#leftPane{
			min-width: 200px;
			background-color: lightgoldenrodyellow; 
			}
                        
                        #listContent{
                            z-index: 0;
                        }
	</style>
</head>
<frameset rows ="12%,*">
		<frame src="upper.jsp" noresize="noresize" scrolling="no" id="topPane"></frame>
		<frameset cols ="20%,*">
			<frame src="list.jsp" noresize="noresize" name="list" id="leftPane"></frame>
			<frame src="inbox.jsp" noresize="noresize" name="listContent" id="listContent"></frame>
		</frameset>
<body>
    <%    String msg1="welcome";
          
          String n=(String)session.getAttribute("n");
          out.println(msg1+"   "+n);
//System.out.print(id_token);

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
        
</body>	
</html>