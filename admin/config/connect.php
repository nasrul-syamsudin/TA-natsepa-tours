<?php
	$host = "localhost";
	$user = "root";
	$pass = "";
	$db   = "wisata";
	
	$pdo = new PDO("mysql:host=$host; dbname=$db", $user, $pass);
	//Hanya TES
	/*if($pdo){
		echo "Koneksi ke DB Berhasil";
	}else{
		echo "Koneksi GAGAL";
	}*/
?>