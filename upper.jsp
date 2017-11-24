<!DOCTYPE html>
<html>
	<head>
		<title>top frame</title>
		<script src="js/jquery-3.2.1.js"></script>
		<script src="js/upper.js"> </script>
		<script type="text/javascript"> 
				function initCount() {
					var count=0;
				}
		</script>
		<style type="text/css">


			body {
                                background-image: url("images/logo_1_1.JPG");
				background-repeat: no-repeat;
				background-size: 70px 69px;	
				margin-left: 2%;
				margin-right: 10%;
				width: 100%;
			}

			input{
				margin-top: 8px;
				margin-left: 30%;
				width: 40%;
				margin-right: 20%;	
				font-size: 19px;
				background-color: rgb(255,255,255);
				color: rgb(0,0,0);
				float: left;
			}

			input:hover{
				border-color: blue;
			}

			button{
				min-width: 150px;
				height: 40px;
				text-align: left;
				background: linear-gradient(to bottom right, #ffffff 0%, #99ffcc 100%);
				border-radius: 10px;
			}

			button:hover{
				border:2px solid green;
			}
		

			ul{
				margin-top: 0px;
				list-style: none;
				margin-left: 80%;
				min-width: 200px;
				padding-right: 10%;
				display: none;
				z-index: 2;
			}



		</style>
	</head>
	<body>
		<input type="text" name="searchBox" id="searchBox" onkeyup="searchFunction()" placeholder="Search here..." />

					<div>	
						<img src="images/user.png" alt="user" height="60px" width="60px" id="user" onclick="initCount()" />
						<ul id="userList">
							<li><button id="profileView">Profile View</button></li>				
							<li><button id="changePass">Change Password</button></li>
							<li><button id="help">Help </button></li>
							<li><button id="signOut">Sign Out</button></li>
						</ul>
					</div>
		
	</body>
</html>