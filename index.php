<?php 
session_start();
if (!isset($_SESSION['id_user'])) {
	header('location:login.php');
	exit();
}

include ('includes/koneksi.php');

//total artikel
$total_artikel = $db->query("SELECT * FROM artikel");

//total komentar
$total_komentar = $db->query("SELECT * FROM komentar")
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<style type="text/css">
	#container{
		margin: 0 auto;
		width: 90%;
	}
	#menu,ul,li{
		list-style:none;
		display:inline-block;
		margin-left: 5px;
	}
</style>
<body>
	<div id="container">
		<div id="menu">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Tulis artikel</a></li>
				<li><a href="#">Hapus Artikel</a></li>
				<li><a href="logout.php">Log Out</a></li>
				<li><a href="#">Blog Home Page</a></li>
			</ul>
		</div>
		<div id="mainContent">
			<table>
				<tr>
					<td>Total Artikel</td>
					<td><?php echo $total_artikel->num_rows ?></td>
				</tr>
				<tr>
					<td>Total Komentar</td>
					<td><?php echo  $total_komentar->num_rows ?></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>