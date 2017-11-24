<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>MenuBox</title>
	<script src="js/jquery-3.2.1.js"></script>
	<script src="js/list.js"> </script>
	<style type="text/css">
            body{
                
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
		    <li> <a href="compose.jsp" target="listContent" id="COMPOSE"><button id="btnCompose"> COMPOSE</button></a></li>
			<li> <a href="inbox.jsp" target="listContent" id="INBOX"><button> INBOX </button></a></li>
			<li> <a href="outbox.jsp" target="listContent" id="OUTBOX"><button> OUTBOX </button></a></li>
			<li> <a href="sent.jsp" target="listContent" id="SENT"><button> SENT</button></a></li>
			<li><a id="more"><button id="less">+ More Options</button></a> 
				<ul id="more" class="other">
					<li> <a href="draft.jsp" target="listContent" id="DRAFT"><button id="setMin"> DRAFT </button></a></li>
					<li> <a href="spam.jsp" target="listContent" id="SPAM"><button id="setMin"> SPAM</button></a></li>
					<li> <a href="important.jsp" target="listContent" id="IMPORTANT"><button id="setMin"> IMPORTANT </button></a></li>
					<li> <a href="trash.jsp" target="listContent" id="TRASH"><button id="setMin"> TRASH </button></a></li>
					<li> <a href="profile.jsp" target="listContent" id="PROFILE"><button id="setMin"> PROFILE</button></a></li>
				</ul>
			</li>
			<li> <a href="logout.jsp" id="LOGOUT"><button> LOGOUT </button></a></li>
		</ul>
	</div>
</body>
</html>