<?php 
session_start();
include "includes/koneksi.php";

if (!isset($_SESSION['id_user'])) {
	header ('location:login.php');
	exit();
}

if (isset($_POST['submit'])) {
	//ambil data
	$judul = $_POST['judul'];
	$isi_artikel = $_POST['isi_artikel'];
	$kategori = $_POST['kategori'];

	$judul = $db->real_escape_string($judul);
	$isi_artikel = $db->real_escape_string($isi_artikel);
	$id_user = $_SESSION['id_user'];
	$date = date('Y-m-d G:i:s');
	$isi_artikel = htmlentities($isi_artikel);

	if ($judul && $isi_artikel && $kategori) {
		$query= $db->query("INSERT INTO artikel (id_user,judul, isi_artikel, id_kategori, tanggal) VALUES ('$id_user', '$judul', '$isi_artikel', '$kategori', '$date')");
		if ($query){
			echo "artikel ditambahkan";
		}else{
			echo "gagal tambah artikel";
		}
	}else{
		echo "Gagal tambah artikel";
	}
}
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tambah artikel</title>
</head>
<body>
	<div id="wrapper">
		<div id="content">
			<form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
				<label>Judul:</label><input type="text" name="judul" required><br>
				<label for="isi_artikel">Isi_artikel:</label><br>
				<textarea name="isi_artikel" cols="50" rows="10"></textarea><br>
				<label>Kategori</label>
				<select name="kategori">
					<?php 
						$query = $db->query("SELECT * FROM kategori");
						while($row = $query->fetch_object()){
							echo "<option value='".$row->id_kategori."'>".$row->kategori."</option>";
						}
					 ?>
				</select>
				<br>
				<input type="submit" name="submit" value="submit">
			</form>
		</div>
	</div>
</body>
</html>