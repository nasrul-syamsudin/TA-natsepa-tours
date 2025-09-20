<?php  
include '../koneksi.php';
// Require composer autoload
require_once '../vendor/autoload.php';
// Create an instance of the class:
$mpdf = new \Mpdf\Mpdf();

$content = '<!DOCTYPE html>
<html>
<head>
  <title>Daftar Bus</title>
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
    <strong>Daftar Bus</strong><br>
    PO. Natsepa<br>
    Alamat: JL. RE. Natsepa No. 84 Ambon <br>
    <div style="font-size:12px">
      Telepon: (0274) 618080 / 586742
      Handphone: 0811 250 136
      Email: po.natsepa.tour@rocketmail.com
    </div>
  </div> 

  <hr style="border: 0.5px solid black; margin: 10px 5px 10px 5px;">

  <div style="font-size: 12px; margin-left: 10px;">&nbsp; Tanggal CETAK: '.date("d-m-Y").'</div><br>

  <table border="1" cellpadding="10" cellspacing="0">
      <tr>
        <th>No</th>
        <th>Nama Bus</th>
        <th>Fasilitas</th>
      </tr>';

  $no = 1;
  $ambil=$koneksi->query("SELECT * FROM tb_bus");
  while($pecah = $ambil->fetch_assoc()){
    $content .= '<tr>
      <td>'. $no++ .'</td>
      <td>'. $pecah['nama'] .'</td>
      <td>'. $pecah['fasilitas_bus'] .'</td>
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
