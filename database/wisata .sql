-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2025 at 08:55 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `id_alternatif` int NOT NULL,
  `id_paketwisata` int NOT NULL,
  `harga` varchar(100) NOT NULL,
  `jumlah_wisata` int NOT NULL,
  `lama_tour` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`id_alternatif`, `id_paketwisata`, `harga`, `jumlah_wisata`, `lama_tour`) VALUES
(1, 1, '1500000', 3, '2 hari'),
(2, 2, '2500000', 3, '3 hari'),
(3, 3, '500000', 2, '1 hari'),
(4, 4, '1800000', 2, '2 hari'),
(5, 5, '3000000', 3, '3 hari'),
(6, 6, '750000', 2, '1 hari'),
(7, 7, '2000000', 2, '2 hari'),
(8, 8, '800000', 2, '1 hari'),
(9, 9, '3500000', 2, '3 hari'),
(10, 10, '1500000', 2, '2 hari');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bus`
--

CREATE TABLE `tb_bus` (
  `id_bus` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `fasilitas_bus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bus`
--

INSERT INTO `tb_bus` (`id_bus`, `nama`, `fasilitas_bus`) VALUES
(1, 'Big Bus Pariwisata', 'AC, LCD TV, Audio Karaoke, Recleaning Seat.'),
(2, 'Medium Bus', 'AC, TV, Reclining Seat, Charger USB.'),
(3, 'Mini Bus', 'AC, Reclining Seat, Air Mineral Gratis.'),
(4, 'Bus Luxury', 'AC, TV LED, WiFi, Snack, Reclining Seat.'),
(5, 'Bus Ekonomi', 'AC, Reclining Seat.'),
(6, 'Bus Pariwisata 2 Lantai', 'AC, Toilet, TV LED, Reclining Seat.'),
(7, 'Elf Long', 'AC, Charger USB, Reclining Seat.'),
(8, 'Hiace Premium', 'AC, Reclining Seat, WiFi.'),
(9, 'Bus VIP', 'AC, TV LED, Karaoke, WiFi, Snack.'),
(10, 'Bus Standard', 'AC, Reclining Seat.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id_kriteria` int NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `atribut` enum('Cost','Benefit') NOT NULL,
  `bobot` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id_kriteria`, `nama_kriteria`, `atribut`, `bobot`) VALUES
(1, 'Harga Paket Wisata (C1)', 'Cost', 50),
(3, 'Jumlah Wisata (C2)', 'Benefit', 30),
(4, 'Lama Tour (C3)', 'Benefit', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tb_normalisasi`
--

CREATE TABLE `tb_normalisasi` (
  `id_normalisasi` int NOT NULL,
  `id_paketwisata` int NOT NULL,
  `harga` int NOT NULL,
  `jumlah_wisata` int NOT NULL,
  `lama_tour` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_paketwisata`
--

CREATE TABLE `tb_paketwisata` (
  `id_paketwisata` int NOT NULL,
  `nama_paketwisata` varchar(50) DEFAULT NULL,
  `lama_paket` varchar(30) NOT NULL,
  `fasilitas` text,
  `id_bus` int DEFAULT NULL,
  `harga_paket` varchar(25) DEFAULT NULL,
  `id_paketwisata_grup` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_paketwisata`
--

INSERT INTO `tb_paketwisata` (`id_paketwisata`, `nama_paketwisata`, `lama_paket`, `fasilitas`, `id_bus`, `harga_paket`, `id_paketwisata_grup`) VALUES
(1, 'Paket A', '2 hari', 'Natsepa, Liang Beach, makan siang, air mineral, foto', 1, '1500000', 1),
(2, 'Paket B', '3 hari', 'Batu Kapal, Puncak Cinta, makan siang, video', 2, '2500000', 2),
(3, 'Paket C', '1 hari', 'Benteng, Pantai Moki, snack, foto', 3, '500000', 3),
(4, 'Paket D', '2 hari', 'Air Panas, Batu Layer, makan siang, foto', 4, '1800000', 4),
(5, 'Paket E', '3 hari', 'Lubang Buaya, Seri Beach, paralayang, foto', 5, '3000000', 5),
(6, 'Paket F', '1 hari', 'Pintu Kota, Hukurila Beach, snack', 6, '750000', 6),
(7, 'Paket G', '2 hari', 'Airlouw Beach, Huluwa Beach, makan siang', 7, '2000000', 7),
(8, 'Paket H', '1 hari', 'Air Terjun Ureng, Namalatu Beach, snack', 8, '800000', 8),
(9, 'Paket I', '3 hari', 'Pantai Ora, Tebing Batu, makan siang', 9, '3500000', 9),
(10, 'Paket J', '2 hari', 'Pantai Santai, Liang Beach, makan siang', 10, '1500000', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_paketwisata_grup`
--

CREATE TABLE `tb_paketwisata_grup` (
  `id_paketwisata_grup` int NOT NULL,
  `nama_paketwisata` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_paketwisata_grup`
--

INSERT INTO `tb_paketwisata_grup` (`id_paketwisata_grup`, `nama_paketwisata`) VALUES
(1, 'Paket A'),
(2, 'Paket B'),
(3, 'Paket C'),
(4, 'Paket D'),
(5, 'Paket E'),
(6, 'Paket F'),
(7, 'Paket G'),
(8, 'Paket H'),
(9, 'Paket I'),
(10, 'Paket J');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telepon` varchar(13) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama`, `alamat`, `telepon`, `email`, `username`, `password`) VALUES
(1, 'Budi Santoso', 'Bandung', '0811111111', 'budi@gmail.com', 'budi', '1234'),
(2, 'Siti Aisyah', 'Jakarta', '0822222222', 'siti@gmail.com', 'siti', '1234'),
(3, 'Andi Wijaya', 'Surabaya', '0833333333', 'andi@gmail.com', 'andi', '1234'),
(4, 'Rina Marlina', 'Yogyakarta', '0844444444', 'rina@gmail.com', 'rina', '1234'),
(5, 'Dewi Lestari', 'Semarang', '0855555555', 'dewi@gmail.com', 'dewi', '1234'),
(6, 'Ahmad Fauzi', 'Medan', '0866666666', 'ahmad@gmail.com', 'ahmad', '1234'),
(7, 'Putri Ayu', 'Denpasar', '0877777777', 'putri@gmail.com', 'putri', '1234'),
(8, 'Rudi Hartono', 'Makassar', '0888888888', 'rudi@gmail.com', 'rudi', '1234'),
(9, 'Eka Saputra', 'Palembang', '0899999999', 'eka@gmail.com', 'eka', '1234'),
(10, 'Lina Oktaviani', 'Pontianak', '0810000000', 'lina@gmail.com', 'lina', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembatalan`
--

CREATE TABLE `tb_pembatalan` (
  `id_pembatalan` int NOT NULL,
  `id_pemesanan` int DEFAULT NULL,
  `tanggal_pembatalan` date DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` int NOT NULL,
  `id_pemesanan` int DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah_bayar` varchar(20) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `bukti_transfer` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `id_pemesanan`, `nama`, `jumlah_bayar`, `tanggal`, `bukti_transfer`) VALUES
(1, 1, 'Budi Santoso', '1500000', '2025-08-05', 'bukti1.jpg'),
(2, 2, 'Siti Aisyah', '2500000', '2025-08-06', 'bukti2.jpg'),
(3, 3, 'Andi Wijaya', '500000', '2025-08-07', 'bukti3.jpg'),
(4, 4, 'Rina Marlina', '1800000', '2025-08-08', 'bukti4.jpg'),
(5, 5, 'Dewi Lestari', '3000000', '2025-08-09', 'bukti5.jpg'),
(6, 6, 'Ahmad Fauzi', '750000', '2025-08-10', 'bukti6.jpg'),
(7, 7, 'Putri Ayu', '2000000', '2025-08-11', 'bukti7.jpg'),
(8, 8, 'Rudi Hartono', '800000', '2025-08-12', 'bukti8.jpg'),
(9, 9, 'Eka Saputra', '3500000', '2025-08-13', 'bukti9.jpg'),
(10, 10, 'Lina Oktaviani', '1500000', '2025-08-14', 'bukti10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` int NOT NULL,
  `id_pelanggan` int DEFAULT NULL,
  `id_paketwisata` int DEFAULT NULL,
  `tanggal_pesan` date DEFAULT NULL,
  `tanggal_tour` date NOT NULL,
  `tanggal_selesai_tour` date NOT NULL,
  `total_pemesanan` int NOT NULL,
  `status_pemesanan` varchar(30) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemesanan`
--

INSERT INTO `tb_pemesanan` (`id_pemesanan`, `id_pelanggan`, `id_paketwisata`, `tanggal_pesan`, `tanggal_tour`, `tanggal_selesai_tour`, `total_pemesanan`, `status_pemesanan`) VALUES
(1, 1, 1, '2025-08-01', '2025-08-10', '2025-08-11', 1500000, 'pending'),
(2, 2, 2, '2025-08-01', '2025-08-12', '2025-08-14', 2500000, 'confirmed'),
(3, 3, 3, '2025-08-02', '2025-08-15', '2025-08-15', 500000, 'confirmed'),
(4, 4, 4, '2025-08-03', '2025-08-16', '2025-08-17', 1800000, 'pending'),
(5, 5, 5, '2025-08-04', '2025-08-18', '2025-08-20', 3000000, 'confirmed'),
(6, 6, 6, '2025-08-05', '2025-08-21', '2025-08-21', 750000, 'pending'),
(7, 7, 7, '2025-08-06', '2025-08-22', '2025-08-23', 2000000, 'pending'),
(8, 8, 8, '2025-08-07', '2025-08-24', '2025-08-24', 800000, 'confirmed'),
(9, 9, 9, '2025-08-08', '2025-08-25', '2025-08-27', 3500000, 'pending'),
(10, 10, 10, '2025-08-09', '2025-08-28', '2025-08-29', 1500000, 'confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan_paket`
--

CREATE TABLE `tb_pemesanan_paket` (
  `id_pemesanan_paket` int NOT NULL,
  `id_pemesanan` int NOT NULL,
  `id_paketwisata` int NOT NULL,
  `jumlah` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemesanan_paket`
--

INSERT INTO `tb_pemesanan_paket` (`id_pemesanan_paket`, `id_pemesanan`, `id_paketwisata`, `jumlah`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 4),
(3, 3, 3, 1),
(4, 4, 4, 3),
(5, 5, 5, 2),
(6, 6, 6, 2),
(7, 7, 7, 5),
(8, 8, 8, 1),
(9, 9, 9, 3),
(10, 10, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_print_hasil`
--

CREATE TABLE `tb_print_hasil` (
  `id` int NOT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_subkriteria`
--

CREATE TABLE `tb_subkriteria` (
  `id_subkriteria` int NOT NULL,
  `id_kriteria` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bobot_subkriteria` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_subkriteria`
--

INSERT INTO `tb_subkriteria` (`id_subkriteria`, `id_kriteria`, `nama`, `bobot_subkriteria`) VALUES
(1, 1, 'Harga <= 500000', 3),
(2, 1, 'Harga 1500000 - 2000000', 4),
(3, 1, 'Harga >=1500000', 5),
(4, 3, '2-3', 1),
(5, 3, '3-4', 3),
(6, 3, '4-5', 5),
(7, 4, '<=1 hari', 1),
(8, 4, '2 hari', 3),
(9, 4, '>=3 hari', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisata`
--

CREATE TABLE `tb_wisata` (
  `id_wisata` int NOT NULL,
  `id_paketwisata` int DEFAULT NULL,
  `nama` text,
  `foto` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wisata`
--

INSERT INTO `tb_wisata` (`id_wisata`, `id_paketwisata`, `nama`, `foto`) VALUES
(1, 1, 'Pantai Natsepa', 'natsepa.jpg'),
(2, 1, 'Pantai Liang', 'liang.jpg'),
(3, 2, 'Batu Kapal', 'batu kapal.jpg'),
(4, 2, 'Puncak Cinta', 'puncak cinta.jpg'),
(5, 3, 'Benteng Amsterdam', 'benteng.jpg'),
(6, 4, 'Batu Layar', 'batu layar.jpg'),
(7, 5, 'Seri Beach', 'seri.jpg'),
(8, 6, 'Pintu Kota', 'pintu kota.jpg'),
(9, 7, 'Airlouw Beach', 'airlouw.jpg'),
(10, 8, 'Air Terjun Ureng', 'air terjun ureng.jpg'),
(11, 8, 'Air Panas', 'air panas.jpg'),
(12, 8, 'Bendungan Waela', 'bendungan waela.jpg'),
(13, 8, 'Hukurila', 'hukurila.jpg'),
(14, 8, 'Huluwa', 'huluwa.jpg'),
(15, 8, 'Lubang Buaya', 'lubang buaya.jpg'),
(16, 8, 'Lubang Lima', 'lubang lima.jpg'),
(17, 8, 'Moki', 'moki.jpg'),
(18, 8, 'Namalatu', 'namalatu.jpg'),
(19, 8, 'Paralayang', 'paralayang.jpg'),
(20, 8, 'Sopapei', 'sopapei.jpg'),
(21, 8, 'Wairuhung', 'wairuhung.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`id_alternatif`),
  ADD KEY `FK_tb_alternatif` (`id_paketwisata`),
  ADD KEY `FK_tb_alternatif_2` (`harga`),
  ADD KEY `FK_tb_alternatif_3` (`jumlah_wisata`);

--
-- Indexes for table `tb_bus`
--
ALTER TABLE `tb_bus`
  ADD PRIMARY KEY (`id_bus`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tb_normalisasi`
--
ALTER TABLE `tb_normalisasi`
  ADD PRIMARY KEY (`id_normalisasi`);

--
-- Indexes for table `tb_paketwisata`
--
ALTER TABLE `tb_paketwisata`
  ADD PRIMARY KEY (`id_paketwisata`),
  ADD KEY `FK_tb_paketwisata` (`id_bus`);

--
-- Indexes for table `tb_paketwisata_grup`
--
ALTER TABLE `tb_paketwisata_grup`
  ADD PRIMARY KEY (`id_paketwisata_grup`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_pembatalan`
--
ALTER TABLE `tb_pembatalan`
  ADD PRIMARY KEY (`id_pembatalan`),
  ADD KEY `FK_tb_pembatalan` (`id_pemesanan`);

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `FK_tb_pembayaran` (`id_pemesanan`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `FK_tb_pemesanan` (`id_pelanggan`),
  ADD KEY `FK_tb_pemesanan_2` (`id_paketwisata`);

--
-- Indexes for table `tb_pemesanan_paket`
--
ALTER TABLE `tb_pemesanan_paket`
  ADD PRIMARY KEY (`id_pemesanan_paket`),
  ADD KEY `FK_tb_pemesanan_paket` (`id_paketwisata`),
  ADD KEY `FK_tb_pemesanan_paket_3` (`id_pemesanan`);

--
-- Indexes for table `tb_print_hasil`
--
ALTER TABLE `tb_print_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_subkriteria`
--
ALTER TABLE `tb_subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`),
  ADD KEY `FK_tb_nilai` (`id_kriteria`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_wisata`
--
ALTER TABLE `tb_wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `FK_tb_wisata` (`id_paketwisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  MODIFY `id_alternatif` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_bus`
--
ALTER TABLE `tb_bus`
  MODIFY `id_bus` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `id_kriteria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_normalisasi`
--
ALTER TABLE `tb_normalisasi`
  MODIFY `id_normalisasi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_paketwisata`
--
ALTER TABLE `tb_paketwisata`
  MODIFY `id_paketwisata` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `tb_paketwisata_grup`
--
ALTER TABLE `tb_paketwisata_grup`
  MODIFY `id_paketwisata_grup` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_pelanggan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_pembatalan`
--
ALTER TABLE `tb_pembatalan`
  MODIFY `id_pembatalan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id_pembayaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  MODIFY `id_pemesanan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_pemesanan_paket`
--
ALTER TABLE `tb_pemesanan_paket`
  MODIFY `id_pemesanan_paket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_print_hasil`
--
ALTER TABLE `tb_print_hasil`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_subkriteria`
--
ALTER TABLE `tb_subkriteria`
  MODIFY `id_subkriteria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_wisata`
--
ALTER TABLE `tb_wisata`
  MODIFY `id_wisata` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD CONSTRAINT `FK_tb_alternatif` FOREIGN KEY (`id_paketwisata`) REFERENCES `tb_paketwisata` (`id_paketwisata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_paketwisata`
--
ALTER TABLE `tb_paketwisata`
  ADD CONSTRAINT `FK_tb_paketwisata` FOREIGN KEY (`id_bus`) REFERENCES `tb_bus` (`id_bus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pembatalan`
--
ALTER TABLE `tb_pembatalan`
  ADD CONSTRAINT `FK_tb_pembatalan` FOREIGN KEY (`id_pemesanan`) REFERENCES `tb_pemesanan` (`id_pemesanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD CONSTRAINT `FK_tb_pembayaran` FOREIGN KEY (`id_pemesanan`) REFERENCES `tb_pemesanan` (`id_pemesanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD CONSTRAINT `FK_tb_pemesanan` FOREIGN KEY (`id_pelanggan`) REFERENCES `tb_pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_pemesanan_2` FOREIGN KEY (`id_paketwisata`) REFERENCES `tb_paketwisata` (`id_paketwisata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pemesanan_paket`
--
ALTER TABLE `tb_pemesanan_paket`
  ADD CONSTRAINT `FK_tb_pemesanan_paket` FOREIGN KEY (`id_paketwisata`) REFERENCES `tb_paketwisata` (`id_paketwisata`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_pemesanan_paket_3` FOREIGN KEY (`id_pemesanan`) REFERENCES `tb_pemesanan` (`id_pemesanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_subkriteria`
--
ALTER TABLE `tb_subkriteria`
  ADD CONSTRAINT `FK_tb_nilai` FOREIGN KEY (`id_kriteria`) REFERENCES `tb_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_wisata`
--
ALTER TABLE `tb_wisata`
  ADD CONSTRAINT `FK_tb_wisata` FOREIGN KEY (`id_paketwisata`) REFERENCES `tb_paketwisata` (`id_paketwisata`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
