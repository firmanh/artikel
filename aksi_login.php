<?php 
session_start();
if (isset($_POST["login"])) {
	//Variabel dari login.php
	$username = $_POST['username'];
	$password = $_POST['password'];

	//include koneksi.php
	include "includes/koneksi.php";
	if (empty($username) || empty($password)) {
		echo "Data Harus Diisi !!";
	}else{
		$username = strip_tags($username);
		$username = $db->real_escape_string($username);
		$password = strip_tags($password);
		$password = $db->real_escape_string($password);
		$password =md5($password);

		$query = $db->query("SELECT id_user, username FROM user WHERE username='$username' AND password ='$password'");
		
		if ($query->num_rows ===1) {
			while ($row = $query->fetch_object()) {
				$_SESSION['id_user'] = $row->id_user;
			}
			header('location:index.php');
			exit();
		}else{
			echo "Gagal Login";
		}
	}
}


 ?>