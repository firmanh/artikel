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
$total_komentar = $db->query("SELECT * FROM komentar");

if (isset($_POST['submit'])) {
	$tambah_kategori = $_POST['tambah_kategori'];
	if (!empty($tambah_kategori)) {
		$sql = "INSERT INTO kategori (kategori) VALUES ('$tambah_kategori')";
		$query = $db->query($sql);
		if ($query) {
			echo "Kategori Ditambahkan ";
		}else{
			echo "error";
		}
	}else{
		echo "Gagal menambahkan kategori";
	}
}
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
				<li><a href="tambah_artikel.php">Tulis artikel</a></li>
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
		<div id="kategori">
			<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="POST">
				<label for="kategori">Tambah Kategori</label><input type="text" name="tambah_kategori"><input type="submit" name="submit" value="submit">
			</form>
		</div>
	</div>
</body>
</html>