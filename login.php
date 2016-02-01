<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Log In</title>
</head>
<body>

	<!-- container -->
	<div id="container">
		<form action="aksi_login.php" method="POST">
			<p>
				<label>Username</label><input type="text" name="username" required>
			</p>
			<p>
				<label>Password</label><input type="password" name="password" required>
			</p>
			<input type="submit" name="login" value="login">
		</form>
	</div>
</body>
</html>