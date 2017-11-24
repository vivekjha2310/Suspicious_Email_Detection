<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>MenuBox</title>
	<script src="js/jquery-3.2.1.js"></script>
	<script src="js/list_1.js"> </script>
	<style type="text/css">
                        body{
                            background-color: white;
                        }
			li{
			    list-style: none;
			}

			button{
				font-size: 15px;
				width: 180px;
				margin-top: 15px;
				min-height: 35px;
				text-align: left;
				font-weight: bold;
				border-radius: 5px;
			}

			button#setMin{
				margin-left: -20px;
				width: 160px;
			}


			button:hover{
				border: 2px solid black;
				background-color: grey;
				color: white;
			}

			ul#more{
				display: none;			
			}

			ul#more+button{
				margin-left: 0px;
				color: red;
			}

			a:hover+ul#more{
				display: block;
			}



	</style>

</head>
<body>
	<div>
		<ul>
		    <li> <a href="alertmail.jsp" target="listContent" id="AlertMail"><button id="btnCompose">Alert Mails </button></a></li>
			<li> <a href="blockuser.jsp" target="listContent" id="BlockUser"><button> Blocked User's </button></a></li>
			<li> <a href="userview.jsp" target="listContent" id="UserView"><button> User View </button></a></li>
		
			<li><a id="more"><button id="less">+ Keyword</button></a> 
				<ul id="more" class="other">
					<li> <a href="adminSpamWord.jsp" target="listContent" id="DRAFT"><button id="setMin"> Spam</button></a></li>
					<li> <a href="adminThreatWord.jsp" target="listContent" id="SPAM"><button id="setMin">Threat</button></a></li>
			
				</ul>
			</li>
			<li> <a href="adminlogin.jsp" target="_blank" id="LOGOUT"><button> LOGOUT </button></a></li>
		</ul>
	</div>
</body>
</html>