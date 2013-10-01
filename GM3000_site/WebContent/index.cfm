<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Gilles Michel</title>
		<script type="text/javascript" src="_js/main.js"></script>
		<link rel="stylesheet" type="text/css" href="_css/main.css"/>
		<link href='http://fonts.googleapis.com/css?family=Quicksand:400,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Play:400,700' rel='stylesheet' type='text/css'>
	</head>
	<body>
		<div id="container">
			<div id="menu">
				<cfinclude template="view/menu.cfm" />
			</div>
			<div id="content">
				<cftry>
					<cfinclude template="view/c_#url.p#.cfm">
					<cfcatch type="MissingInclude">
						Page inexistante
					</cfcatch>
				</cftry>
			</div>
		</div>
	</body>
</html>

