<?php

  session_start();

  //koneksi ke database
  include 'koneksi.php';


?>

<!doctype html>
<html lang="en">
  <head>
    <!-- favicon -->
    <link rel="shortcut icon" href="images/ntlogo.png" />
    <title>Natsepa - Rekomendasi</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Rubik:300,400,700" rel="stylesheet">

    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
    <?php include 'menu.php'; ?>

     <section class="site-hero overlay site-hero-innerpage overlay" data-stellar-background-ratio="0.5" style= "background-image: url(images/bg.jpg);">
      <div class="container">
        <div class="row align-items-center site-hero-inner justify-content-center">
          <div class="col-md-12 text-center">
            <div class="mb-5 element-animate">
              <h1>Welcome To Natsepa Website</h1>
              <p>We Love To Trip With You.</p>
              <p><a href="about.php" class="btn btn-primary">About</a></p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- END section -->

<section class="site-section bg-light">
  <div class="container">
    <div class="grid fluid">
      <div class="border padding50">
        <div class="row mb-5 mt-3">
          <div class="col-md-12 heading-wrap text-center">
            <h4 class="sub-heading">Package Recommendations</h4>
            <h2 class="heading">Rekomendasi Paket</h2>
          </div>
        </div>

        <div class="card-body">
          <form method="post" action="rekomendasi_2_result.php" enctype="multipart/form-data" onsubmit="return check()">
            
            <!-- Paket Wisata -->
            <div class="form-group">
              <label>Paket Wisata Tujuan</label>
              <small class="text-danger paket-wisata-kosong"> *Paket Wisata Tujuan harap diisi.</small>
              <select class="form-control" name="wisata_grup">
                <option value=""> -- Pilih Paket Wisata -- </option>
                <option value="1">Paket 1: Natsepa, Sopapei, Liang (Rp 300.000)</option>
                <option value="2">Paket 2: Batu Kapal, Puncak Cinta, Huluwa Beach (Rp 450.000)</option>
                <option value="3">Paket 3: Batu Layer, Bendungan Waela (Rp 350.000)</option>
                <option value="4">Paket 4: Benteng, Pantai Moki, Lubang Buaya, Air Panas (Rp 500.000)</option>
                <option value="5">Paket 5: Airlouw Beach, Paralayang, Seri Beach, Pintu Kota, Hukurila Beach (Rp 750.000)</option>
                <option value="6">Paket 6: Wairuhung Beach, Namalatu Beach, Air Terjun Ureng, Lubang Lima (Rp 1.000.000)</option>
              </select>
            </div>

            <!-- Opsi Harga -->
            <div class="form-group">
              <label>Opsi Harga</label>
              <small class="text-danger harga-kosong"> *Harga harap diisi.</small>
              <select class="form-control" name="opsi_harga">
                <option value=""> -- Pilih Harga -- </option>
                <option value="1|Harga <= 500000">Harga <= Rp 500.000</option>
                <option value="2|Harga 500000-800000">Harga Rp 500.000 - Rp 800.000</option>
                <option value="3|Harga >=800000">Harga >= Rp 800.000</option>
              </select>
            </div>

            <!-- Opsi Jumlah Wisata -->
            <div class="form-group">
              <label>Opsi Jumlah Wisata</label>
              <small class="text-danger jumlah-wisata-kosong"> *Jumlah Wisata harap diisi.</small>
              <select class="form-control" name="opsi_jml_wisata">
                <option value=""> -- Pilih Jumlah Wisata -- </option>
                <option value="1|2-3">2-3</option>
                <option value="2|3-4">3-4</option>
                <option value="3|5 atau lebih">5 atau lebih</option>
              </select>
            </div>

            <!-- Opsi Lama Tour -->
            <div class="form-group">
              <label>Opsi Lama Tour</label>
              <small class="text-danger lama-tour-kosong"> *Lama Tour harap diisi.</small>
              <select class="form-control" name="opsi_lama_tour">
                <option value=""> -- Pilih Lama Tour -- </option>
                <option value="1|<=1 hari"><= 1 hari</option>
                <option value="2|2-3 hari">2-3 hari</option>
                <option value="3|>=4 hari">>= 4 hari</option>
              </select>
            </div>

            <!-- Tombol Submit -->
            <div class="form-group">
              <button type="submit" class="btn btn-primary">Cari Paket</button>
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</section>

    <!-- END section -->

    <section class="site-section bg-light">
      <div class="container">
        <div class="grid fluid">
            <div class="border padding50">
              <div class="row mb-5 mt-3">
                  <div class="col-md-12 heading-wrap text-center">
                    <h4 class="sub-heading">Package Recommendations</h4>
                    <h2 class="heading">Rekomendasi Paket</h2>
                  </div>
              </div>


              <div class="card-body">
                <form method="post" action="rekomendasi_hasil2.php" enctype="multipart/form-data">
                  <!--<div class="form-group">
                    <label>Harga (C1)</label>
                    <input type="number" class="form-control" name="bobot_hrg" required>
                  </div>

                  <div class="form-group">
                    <label>Jumlah Wisata (C2)</label>
                    <input type="number" class="form-control" name="bobot_jmlwisata" required>
                  </div>

                  <div class="form-group">
                    <label>Lama Tour(C3)</label>
                    <input type="number" class="form-control" name="bobot_lmtour" required>
                  </div>

                  <div class="text-right">
                     <button class="btn btn-primary" name="cari" value="Proses">Cari</button>
                  </div>-->


                  <div class="form-group">
                    <label>Harga (C1)</label>
                    <select class="form-control" name="hrg">
                      <option value="">--Pilih Harga--</option>
                      <?php $ambil2 = $koneksi->query("SELECT * FROM tb_subkriteria where id_kriteria='1' order by id_subkriteria asc;");
                        while ($setiap = $ambil2->fetch_assoc()) { 
                      ?>
                      <option value="<?php echo $setiap["bobot_subkriteria"] ?>"><?php echo $setiap["nama"]; ?></option>
                      <?php } ?>
                    </select>
                  </div>

                  <div class="form-group">
                    <label>Jumlah Wisata (C2)</label>
                    <select class="form-control" name="jml_wisata">
                      <option value="">--Pilih Jumlah Wisata--</option>
                      <?php $ambil2 = $koneksi->query("SELECT * FROM tb_subkriteria where id_kriteria='3' order by id_subkriteria asc;");
                        while ($setiap = $ambil2->fetch_assoc()) { 
                      ?>
                      <option value="<?php echo $setiap["bobot_subkriteria"] ?>"><?php echo $setiap["nama"]; ?></option>
                      <?php } ?>
                    </select>
                  </div>

                  <div class="form-group">
                    <label>Lama Tour (C3)</label>
                    <select class="form-control" name="lm_tour">
                      <option value="">--Pilih Lama Tour --</option>
                      <?php $ambil2 = $koneksi->query("SELECT * FROM tb_subkriteria where id_kriteria='4' order by id_subkriteria asc;");
                        while ($setiap = $ambil2->fetch_assoc()) { 
                      ?>
                      <option value="<?php echo $setiap["bobot_subkriteria"] ?>"><?php echo $setiap["nama"]; ?></option>
                      <?php } ?>
                    </select>
                  </div>

                  <div class="text-right">
                     <button class="btn btn-primary" name="cari" value="Proses">Cari</button>
                  </div>

                </form>
              </div>
            </div>
        </div>
      </div>
    </section>
    <!-- END section -->

    <?php include 'footer.php'; ?>
    
    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.0.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>

    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/magnific-popup-options.js"></script>

    <script src="js/main.js"></script>
  </body>
</html>