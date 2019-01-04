	<!DOCTYPE html>
<html>
<head>
	<title>LOGIN</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body id="loginbody" background="./src/bg8.jpg" >
	<img id="imglogo" alt="ImageName" src="./src/logo.png">
	<form name="form1" action="xulylogin.php" method="POST">
		<table name="LOGIN" align="center" border="3" bgcolor="#08244f">
			<tr>
				<td> Username </td>
				<td>
					<input type="text" name="t1">
				</td>
			</tr>
			<tr>
				<td> Password </td>
				<td>
					<input type="Password" name="t2">
				</td>
			</tr>
		</table>	
		<p align="center">
			<input id="btn1" type="submit" name="btn1" value="OK">
			<input class="btn" type="reset" name="btn2">
			<input class="btn" type="button" name="btn3" value="EXIT">
		</p>
	</form>
</body>
</html>