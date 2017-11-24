<%-- 
    Document   : home.jsp
    Created on : Oct 10, 2017, 3:16:35 AM
    Author     : Vivek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		#topPane{
			margin-bottom: 0px;
			}

		#leftPane{
			min-width: 300px;
			background-color: lightgoldenrodyellow; 
			}

	</style>
</head>
<frameset rows ="10%,*">
		<frame src="upper.jsp" noresize="noresize" scrolling="no" id="topPane"></frame>
		<frameset cols ="22%,*">
			<frame src="listadmin.jsp" noresize="noresize" name="list" id="leftPane"></frame>
			<frame src="adminhome.jsp" noresize="noresize" name="listContent"></frame>
		</frameset>
<body>     
</body>	
</html>








