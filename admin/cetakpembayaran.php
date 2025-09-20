<?php
include '../koneksi.php';
// Require composer autoload
require_once '../vendor/autoload.php';
// Create an instance of the class:
$mpdf = new \Mpdf\Mpdf();

	$id_pemesanan = $_GET["id"];

	$ambil = $koneksi->query("SELECT * FROM tb_pembayaran 
    LEFT JOIN tb_pemesanan ON tb_pembayaran.id_pemesanan=tb_pemesanan.id_pemesanan 
    WHERE tb_pemesanan.id_pemesanan='$id_pemesanan'");


$content = '<!DOCTYPE html>
<html>
<head>
	<title>Lihat Pembayaran</title>
</head>
<body>
<style>
  table, th, td {
    font-size: 12px;
    border: 1px solid black;
    border-collapse:collapse;
    padding: 8px;
  }
  </style>

  <img src="../images/ntlogo.png" style="float: left; height: 90px">

  <div style="margin-left: 20px">
    <div style="font-size:18px"> Data Pembayaran </div>
    <div style="font-size:20px"> PO. Natsepa</div>
    <div style="font-size:18px"> Alamat: JL. Natsepa No. 84 Ambon</div>
    <div style="font-size:14px">
      Telepon : (0274) 618080 / 586742
      Handphone : 0811 250 136
      Email : po.natsepa.tour@rocketmail.com
    </div>
  </div> 

  <hr style="border: 0.5px solid black; margin: 10px 5px 10px 5px;">

  <div style="font-size: 12px; margin-left: 10px;">&nbsp; Tanggal CETAK: '.date("d-m-Y").'</div> ';
  while ($pecah = $ambil->fetch_assoc()) { 
	$content .= '<table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<th>Nama</th>
			<td>'. $pecah["nama"] .'</td>
		</tr>
		<tr>
			<th>Jumlah</th>
			<td>Rp. '. number_format($pecah["jumlah_bayar"]) .'</td>
		</tr>
		<tr>
			<th>Tanggal</th>
			<td>'. date('d F Y', strtotime($pecah["tanggal"])) .'</td>
		</tr>

		<tr>
			<th>Bukti Transfer</th>
			<td><img src="../bukti_pembayaran/'. $pecah["bukti_transfer"] .'" alt="" width="450" height="500"></td>
		</tr>';
	}

$content .= '</table>

</body>
</html>';

// Write some HTML code:
$mpdf->WriteHTML($content);

// Output a PDF file directly to the browser
$mpdf->Output("cetakpaket.pdf","I");
?>
