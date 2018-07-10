<?php 
$host = 'localhost';
    $user = 'root';
	$pass = '';
	$db = 'project';
	$koneksi = new mysqli ("localhost","root","","project");
echo $koneksi-> connect_errno?'koneksi gagal : '.
    $koneksi->connect_error:'';

?>