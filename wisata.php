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
  <title>Natsepa - Daftar Wisata</title>
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
            <h1>Welcome To Destinasi Wisata Ambon Website</h1>
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
    <div class="row mb-5">
      <div class="col-md-12 heading-wrap text-center">
        <h4 class="sub-heading">Our Destination</h4>
        <h2 class="heading">Obyek Wisata</h2>
      </div>
    </div>
    <div class="row">
      
      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/air panas.jpg" alt="Air Panas" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Air Panas</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/air terjun ureng.jpg" alt="Air Terjun Ureng" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Air Terjun Ureng</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/airlouw.jpg" alt="Airlouw" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Airlouw</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/batu kapal.jpg" alt="Batu Kapal" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Batu Kapal</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/bendungan waela.jpg" alt="Bendungan Waela" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Bendungan Waela</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/benteng.jpg" alt="Benteng" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Benteng</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/hukurila.jpg" alt="Hukurila" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Hukurila</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/huluwa.jpg" alt="Huluwa" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Huluwa</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/liang.jpg" alt="Liang" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Liang</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/puncak cinta.jpeg" alt="Puncak Cinta" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Puncak Cinta</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/sopapei.jpg" alt="Sopapei" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Sopapei</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/natsepa.jpg" alt="Natsepa" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Natsepa</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/moki.jpg" alt="Moki" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Moki</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/lubang lima.jpg" alt="Lubang Lima" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Lubang Lima</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/lubang buaya.jpg" alt="Lubang Buaya" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Lubang Buaya</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/namalatu.jpg" alt="Namalatu" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Namalatu</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/paralayang.jpg" alt="Paralayang" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Paralayang</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/pintu kota.jpg" alt="Pintu Kota" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Pintu Kota</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/seri.jpg" alt="Seri" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Seri</h3>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="post-entry">
          <img src="foto_wisata/wairuhung.jpg" alt="Wairuhung" class="img-fluid" width="500px" height="50px">
          <div class="body-text">
            <div class="category">Ambon - Maluku</div>
            <h3 class="mb-3 text-primary text-uppercase">Wairuhung</h3>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>

  <!-- END section -->

  <?php include 'footer.php'; ?>

  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214" />
    </svg></div>

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