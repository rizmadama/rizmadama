<!DOCTYPE html>
<html>
<head>
	<title> Tugas CP-2</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="judul">		
		<h1> Toko Buku</h1>
	</div>
	
	<br/>

	<a href="index.php">Lihat Semua Data</a>

	<br/>
	<h3>Input data baru</h3>
	<form  method="post">		
		<table>
			<tr>
				<td>Id petugas</td>
				<td><input type="text" name="petugas"></td>					
			</tr>	
			<tr>
				<td>Nama Petugas</td>
				<td><input type="text" name="petugas"></td>					
			</tr>	
			<tr>
				<td>Ttl Petugas</td>
				<td><input type="text" name="petugas"></td>					
			</tr>	
			<tr>
				<td>Email</td>
				<td><input type="text" name="Email"></td>					
			</tr>
			<tr>
				<td>Alamat</td>
				<td><input type="text" name="alamat"></td>					
			</tr>	
			<tr>
				<td>No Tlp</td>
				<td><input type="text" name="Tlp"></td>					
			</tr>	
				<td></td>
				<td><input type="submit" value="Simpan"></td>					
			</tr>				
		</table>
	</form>
</body>
</html>
<?php
                  include 'koneksi.php';
                  if(isset($_POST['submit'])){
                  	$input_Idpetugas = $_POST['petugas'];
                  	$input_NamaPetugas = $_POST['Nama'];
                  	$input_TtlPetugas = $_POST['Ttl'];
                  	$input_Email= $_POST['Email'];
                  	$input_Alamat= $_POST['Alamat'];
                  	$input_NoTlp= $_POST['NoTlp'];
                  	$add = $mysqli->query("INSERT INTO `Anggota` (``, `ID_petugas`, `namapetugas`, `TtlPetugas`, `Email`, `Alamat`, `NoTlp`,) VALUES ('".$input_idanggota."', '".$input_idpetugas."', '".$input_namapetugas."', '".$input_TtlPetugas."', '".$input_email."', '".$input_Alamat."', '".$input_NoTlp."', '1', '0');");
                  	if($add){
                  		echo "<br><div class='alert alert-success'>Berhasil menambah list film</div>";
                  	} else {
                  		echo "<br><div class='alert alert-warning'>Gagal menambah list film</div>";
                  	}
                  }
                  ?>