-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 01:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--
CREATE DATABASE IF NOT EXISTS `dbpegawai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbpegawai`;

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id`, `nama`) VALUES
(5, 'Divisi'),
(4, 'IT'),
(2, 'Keuangan'),
(3, 'Marketing'),
(1, 'SDM');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama`) VALUES
(3, 'Asisten Manajer'),
(1, 'Direktur'),
(5, 'Manager'),
(2, 'Manajer'),
(7, 'Staf'),
(4, 'Staff'),
(6, 'Supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `idjabatan` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `berat_badan` float NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `jenis_kelamin`, `tmp_lahir`, `tgl_lahir`, `iddivisi`, `idjabatan`, `alamat`, `berat_badan`, `umur`) VALUES
(1, '74904', 'Zalfa Khoirunnisa', 'Perempuan', 'Kota 9314454f', '2006-12-24', 5, 5, 'jl jambu III', 73.53, 31),
(2, '26081', 'anisa', 'Perempuan', 'jakarta', '1986-10-06', 2, 5, 'jl jambu 2', 92.52, 22),
(3, '81803', 'Nama Baru 3', 'Laki-Laki', 'Kota 2dfe65ad', '1990-05-15', 2, 5, 'Alamat 69f2af89', 92.03, 38),
(4, '83593', 'Pegawai 34f399b4', 'Perempuan', 'Kota 3340c8fd', '2006-11-11', 3, 2, 'Alamat b823c0c6', 82.58, 25),
(6, '93713', 'Pegawai 7cdaa71f', 'Laki-Laki', 'Kota 061bdefd', '1977-10-27', 1, 6, 'Alamat c4a0668e', 86.8, 31),
(7, '58375', 'Pegawai e08d14c0', 'Perempuan', 'Kota 9335abe0', '2005-06-12', 5, 3, 'Alamat f5500066', 86.28, 21),
(8, '09217', 'Pegawai 4863dbc2', 'Perempuan', 'Kota bf482f53', '1979-07-20', 5, 3, 'Alamat 55ec881d', 71, 31),
(9, '99195', 'Pegawai 7aa7a840', 'Laki-Laki', 'Kota d6824449', '2009-05-27', 1, 2, 'Alamat c8ec7eb0', 96.14, 35),
(10, '22237', 'Pegawai 265afe9f', 'Laki-Laki', 'Kota 76f65f4f', '1997-06-08', 4, 1, 'Alamat 8e06d597', 67.69, 20),
(11, '60155', 'Pegawai 1896eabf', 'Perempuan', 'Kota ebb8453e', '2002-10-15', 1, 5, 'Alamat 6c1df8a0', 50.05, 58),
(12, '83749', 'Pegawai 2078d815', 'Perempuan', 'Kota c9c38e78', '2018-04-23', 4, 3, 'Alamat d11915f2', 97.16, 48),
(13, '52170', 'Pegawai a5e5141b', 'Laki-Laki', 'Kota e506197c', '1994-04-27', 4, 6, 'Alamat 45991fdd', 85.68, 47),
(14, '53419', 'Pegawai a58ffb47', 'Laki-Laki', 'Kota ffefab0f', '1978-10-09', 4, 1, 'Alamat 1b2ee208', 86.9, 33),
(15, '42249', 'Pegawai 9f00dd74', 'Perempuan', 'Kota 64f40d15', '1982-11-14', 1, 1, 'Alamat ae3dd793', 77.46, 43),
(16, '82438', 'Pegawai 51bc0b68', 'Laki-Laki', 'Kota 7c3542cc', '1992-07-10', 2, 6, 'Alamat 61d4a4e3', 76.6, 57),
(17, '92656', 'Pegawai c152f62d', 'Laki-Laki', 'Kota 7d3f02a7', '2022-02-22', 3, 7, 'Alamat e2b23d2b', 50.62, 56),
(18, '17520', 'Pegawai 0bf97377', 'Perempuan', 'Kota 1d0c554a', '2007-04-22', 4, 5, 'Alamat 5bfc9929', 73.31, 51);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `iddivisi` (`iddivisi`),
  ADD KEY `idjabatan` (`idjabatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`iddivisi`) REFERENCES `divisi` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`idjabatan`) REFERENCES `jabatan` (`id`);
--
-- Database: `dbpegawaii`
--
CREATE DATABASE IF NOT EXISTS `dbpegawaii` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbpegawaii`;

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `divisi` varchar(30) NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `idjabatan` int(11) NOT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `iddivisi` (`iddivisi`),
  ADD KEY `idjabatan` (`idjabatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`iddivisi`) REFERENCES `divisi` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`idjabatan`) REFERENCES `jabatan` (`id`);
--
-- Database: `dbposti09`
--
CREATE DATABASE IF NOT EXISTS `dbposti09` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbposti09`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_produk`
--

CREATE TABLE `jenis_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jenis_produk`
--

INSERT INTO `jenis_produk` (`id`, `nama`) VALUES
(1, 'elektroniks'),
(2, 'furniture'),
(3, 'makanan'),
(4, 'minuman'),
(5, 'komputer'),
(6, 'Makanan Ringan'),
(7, 'Minuman soda'),
(8, 'Makanan Berat');

-- --------------------------------------------------------

--
-- Table structure for table `kartu`
--

CREATE TABLE `kartu` (
  `id` int(11) NOT NULL,
  `kode` varchar(6) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `diskon` double DEFAULT NULL,
  `iuran` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kartu`
--

INSERT INTO `kartu` (`id`, `kode`, `nama`, `diskon`, `iuran`) VALUES
(1, 'GOLD', 'Gold Utama', 0.05, 100000),
(2, 'PLAT', 'Platinum Jaya', 0.1, 150000),
(3, 'SLV', 'Silver', 0.025, 50000),
(4, 'NO', 'Non Member', 0, 0),
(7, 'PGU', 'Perunggu', 0.5, 2000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `lihat_vendor`
-- (See below for the actual view)
--
CREATE TABLE `lihat_vendor` (
`nomor` varchar(4)
,`nama` varchar(40)
,`kota` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role` enum('admin','manager','staff') NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `fullname`, `username`, `password`, `role`, `foto`) VALUES
(1, 'Siti', 'siti', 'siti', 'staff', 'siti.jpg'),
(2, 'Test', 'test', 'test', 'staff', 'test.jpg'),
(3, 'Admin', 'admin', '967a9f8fa757dfb5fdda6e5e08579869fb9b2ae3', 'admin', 'admin.jpg'),
(4, 'Staff', 'staff', 'ae186d20e1a1b46737a98ef69fc0896ba7cca385', 'staff', 'staff.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_03_014141_create_staff_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jk` char(1) NOT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `kartu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `kode`, `nama`, `jk`, `tmp_lahir`, `tgl_lahir`, `email`, `kartu_id`) VALUES
(1, 'C001', 'Agung Sedayu Group', 'L', 'Solo', '2010-01-01', 'sedayu@gmail.com', 1),
(2, 'C002', 'Pandan Wangi', 'P', 'Yogyakarta', '1950-01-01', 'wangi@gmail.com', 2),
(3, 'C003', 'Sekar Mirah', 'P', 'Kediri', '1983-02-20', 'mirah@yahoo.com', 1),
(4, 'C004', 'Swandaru Geni', 'L', 'Kediri', '1981-01-04', 'swandaru@yahoo.com', 4),
(5, 'C005', 'Pradabashu', 'L', 'Pati', '1985-04-02', 'prada85@gmail.com', 2),
(6, 'C006', 'Gayatri Dwi', 'P', 'Jakarta', '1987-11-28', 'gaya87@gmail.com', 1),
(7, 'C007', 'Dewi Gyat', 'P', 'Jakarta', '1988-12-01', 'giyat@gmail.com', 1),
(8, 'C008', 'Andre Haru', 'L', 'Surabaya', '1990-07-15', 'andre.haru@gmail.com', 4),
(9, 'C009', 'Ahmad Hasan', 'L', 'Surabaya', '1992-10-15', 'ahasan@gmail.com', 4),
(10, 'C010', 'Cassanndra', 'P', 'Belfast', '1990-11-20', 'casa90@gmail.com', 1),
(11, 'K0010', 'Andi Wijaya', 'L', 'Tangerang', '2023-11-07', 'andi@gmail.com', 2),
(12, 'K0011', 'Ira', 'P', 'Jakarta', '2023-11-07', 'ira@gmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `nokuitansi` varchar(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `ke` int(11) DEFAULT NULL,
  `pesanan_id` int(11) NOT NULL,
  `status_pembayaran` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `nokuitansi`, `tanggal`, `jumlah`, `ke`, `pesanan_id`, `status_pembayaran`) VALUES
(1, 'MD001', '0000-00-00', 30000, 1, 11, 'Lunas'),
(2, 'MD002', '2023-10-10', 30000, 2, 11, 'Lunas'),
(3, 'MD003', '2023-10-10', 30000, 1, 11, 'Lunas'),
(4, 'MD004', '2023-10-10', 15000, 1, 2, ''),
(5, 'MD005', '2023-10-10', 18000, 2, 2, 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(45) DEFAULT NULL,
  `nomor` varchar(10) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `tanggal`, `nomor`, `produk_id`, `jumlah`, `harga`, `vendor_id`) VALUES
(1, '2019-10-10', 'P001', 1, 2, 3500000, 1),
(2, '2019-11-20', 'P002', 2, 5, 5500000, 2),
(3, '2019-12-12', 'P003', 2, 5, 5400000, 1),
(4, '2020-01-20', 'P004', 7, 200, 1800, 3),
(5, '2020-01-20', 'P005', 5, 100, 2300, 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 9, 'token', 'f3aa341b43ce08e885ede4e6131a2c6c929045d90c244e30a479bdff6e88a7ba', '[\"*\"]', '2023-12-07 19:17:52', NULL, '2023-12-07 19:16:55', '2023-12-07 19:17:52'),
(2, 'App\\Models\\User', 7, 'token', 'eb93b37bfd01e688d57efc50bd7b93e1ee1de2cc2c2a2487ad3fcda006c13ce8', '[\"*\"]', '2023-12-10 20:36:42', NULL, '2023-12-10 20:36:04', '2023-12-10 20:36:42'),
(3, 'App\\Models\\User', 7, 'token', '3d50a4f50c3564ba98b07c42f699277e2c811875b40949e30c7237b3fa42a598', '[\"*\"]', NULL, NULL, '2023-12-10 22:36:55', '2023-12-10 22:36:55'),
(4, 'App\\Models\\User', 7, 'token', 'f0bd20b0ed18a2925352b324f29a3810eaa5884c8c3a1a5621c7f18eeb1ba4e7', '[\"*\"]', '2023-12-10 22:44:54', NULL, '2023-12-10 22:42:55', '2023-12-10 22:44:54'),
(5, 'App\\Models\\User', 1, 'token', '39053abd3fe0d98710bb64b03669adc182667896e6542edc04e014424bf94b0e', '[\"*\"]', NULL, NULL, '2023-12-20 18:11:12', '2023-12-20 18:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `total` double DEFAULT NULL,
  `pelanggan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `total`, `pelanggan_id`) VALUES
(1, '2015-11-04', 9720000, 1),
(2, '2015-11-04', 17500, 3),
(3, '2015-11-04', 0, 6),
(4, '2015-11-04', 0, 7),
(5, '2015-11-04', 0, 10),
(6, '2015-11-04', 0, 2),
(7, '2015-11-04', 0, 5),
(8, '2015-11-04', 0, 4),
(9, '2015-11-04', 0, 8),
(10, '2015-11-04', 0, 9),
(11, '2015-11-04', 30000, 9);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_items`
--

CREATE TABLE `pesanan_items` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pesanan_items`
--

INSERT INTO `pesanan_items` (`id`, `produk_id`, `pesanan_id`, `qty`, `harga`) VALUES
(1, 1, 1, 1, 5040000),
(2, 3, 1, 1, 4680000),
(3, 5, 2, 5, 3500),
(6, 5, 3, 10, 3500),
(7, 1, 3, 1, 5040000),
(9, 5, 5, 10, 3500),
(10, 5, 6, 20, 3500);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pesanan_pelanggan_kartu`
-- (See below for the actual view)
--
CREATE TABLE `pesanan_pelanggan_kartu` (
`id` int(11)
,`tanggal` date
,`total` double
,`kode` varchar(10)
,`nama` varchar(45)
,`nama_kartu` varchar(45)
,`diskon` double
);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `harga_beli` double NOT NULL,
  `harga_jual` double NOT NULL,
  `stok` int(11) NOT NULL,
  `min_stok` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `jenis_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode`, `nama`, `harga_beli`, `harga_jual`, `stok`, `min_stok`, `foto`, `deskripsi`, `jenis_produk_id`) VALUES
(1, 'TV01', 'Televisi 21 inchs', 3500000, 50500000, 5, 2, '', NULL, 1),
(2, 'TV02', 'Televisi 40 inch', 5500000, 7440000, 4, 2, NULL, NULL, 1),
(3, 'K001', 'Kulkas 2 pintu', 3500000, 4680000, 6, 2, '', NULL, 1),
(4, 'M001', 'Meja Makan', 500000, 600000, 4, 3, NULL, NULL, 2),
(5, 'TK01', 'Teh Kotak', 3000, 3500, 6, 10, 'foto-5.png', NULL, 4),
(6, 'PC01', 'PC Desktop HP', 7000000, 9984000, 9, 2, NULL, NULL, 5),
(7, 'TB01', 'Teh Botol', 2000, 2500, 53, 10, 'foto-7.jpg', NULL, 4),
(8, 'AC01', 'Notebook Acer S', 8000000, 11232000, 7, 2, NULL, NULL, 5),
(9, 'LN01', 'Notebook Lenovo', 9000000, 12480000, 9, 2, NULL, NULL, 5),
(11, 'L005', 'Laptop Lenovo', 13000000, 16000000, 5, 2, '', NULL, 1),
(15, 'L112', 'Kopi', 20000, 30000, 10, 15, 'foto-15.png', 'Luwak White Coffee merupakan bubuk biji kopi luwak yang dikombinasikan dengan gurihnya krimer serta manisnya gula. Keharuman kopi serta rasa manisnya yang pas juga membuat popularitas Luwak White Coffee melejit.', 4),
(16, 'L113', 'Teh Sosro 2', 10000, 15000, 10, 12, '.png', NULL, 1),
(18, 'L0015', 'Laptop Asus', 3000000, 5000000, 10, 20, 'foto-65542ffa66604.jpg', NULL, 1),
(19, 'TV0115', 'Televisi 22 inc`', 3500000, 50500000, 5, 2, NULL, NULL, 1),
(20, 'TV0116', 'Televisi 23 inc', 3500000, 50500000, 5, 2, NULL, NULL, 1),
(21, 'TV0117', 'Televisi 24 inc', 3500000, 50500000, 5, 2, NULL, NULL, 1),
(22, 'TV0118', 'Televisi 25 inc', 3500000, 50500000, 5, 2, NULL, NULL, 1),
(24, 'TV0120', 'Televisi 27 inc', 3500000, 50500000, 5, 2, NULL, NULL, 1),
(25, 'TV0121', 'Televisi 28 inc', 3500000, 50500000, 5, 2, NULL, NULL, 1),
(26, 'TV0122', 'Televisi 29 inc', 3500000, 50500000, 5, 2, NULL, NULL, 1),
(27, 'THP001', 'Teh Pucuk', 4000, 5000, 10, 2, 'pucuk.jpg', 'Teh pucuk adalah', 4),
(28, 'THP002', 'Teh Pucuk2', 4000, 5000, 10, 2, 'pucuk.jpg', 'Teh pucuk adalah', 4);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` char(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` enum('admin','manager','staff','pelanggan') NOT NULL DEFAULT 'pelanggan',
  `foto` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$b17tDHyYBc7.6b7hx.Nu9uXW6DBPH/DU8QIgvzrKpMs98pRo9apiG', NULL, 'admin', NULL, '2023-11-22 18:56:50', '2023-11-22 18:56:50'),
(2, 'manager', 'manager@gmail.com', NULL, '$2y$10$pyR12F61/cj5YwYHzy8VvOC7OtjTmL/YsRdCkY5QqHuor1aIHDLLy', NULL, 'manager', NULL, '2023-11-26 19:02:58', '2023-11-26 19:02:58'),
(3, 'Pelanggan', 'pelanggan@gmail.com', NULL, '$2y$10$CUIG1jWkBQuJV6ufY6L2cuTArsphJt0yTLB/TTM3OlReo1v/pRkxS', NULL, 'pelanggan', NULL, '2023-11-26 19:03:41', '2023-11-26 19:03:41'),
(4, 'Staff1', 'staff1@gmail.com', NULL, '$2y$10$8e0vIo8ZMTrmv8iI3SUHhOKSGxwFpBt7IDtuSpX2IhZbc7DqH7oDK', NULL, 'manager', 'gCdOXXYV5FPhAWtTqO4vJAyfU9icPJhsfE68h9Qf.jpg.jpg', '2023-11-26 20:48:29', '2023-11-29 21:13:55'),
(5, 'Pelanggan2', 'pelanggan2@gmail.com', NULL, '$2y$10$8i8YZlXfYrwQdChuF/zLZeEIpGE.peA0uwwn7pHaOBeYYwn9lE8ye', NULL, 'pelanggan', NULL, '2023-11-26 21:04:46', '2023-11-26 21:04:46'),
(6, 'Pelanggan 3', 'pelanggan3@gmail.com', NULL, '$2y$10$fjkT4wW5ddzwyzWH2dmeG.t/12WuyHQNih.kzKb1HTn4bmafdQ5xu', NULL, 'pelanggan', NULL, '2023-11-26 21:18:15', '2023-11-26 21:18:15'),
(7, 'Pelanggan 4', 'pelanggan4@gmail.com', NULL, '$2y$10$y3JSDB3qjBWWfBsFGnQ37.RpBUAFFBELXqmE9CvT319NfSHS9eX86', NULL, 'staff', NULL, '2023-11-27 21:25:17', '2023-11-27 21:25:17'),
(9, 'pelanggan5', 'pelanggan5@gmail.com', NULL, '$2y$10$uGBXu5BiJZsiIH8NDA8Fw.o9hdlLcF6ry0jFA1Fjs8W1BnQZ8jf0K', NULL, 'pelanggan', NULL, '2023-12-07 18:59:56', '2023-12-07 18:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `nomor` varchar(4) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `kontak` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `nomor`, `nama`, `kota`, `kontak`) VALUES
(1, 'V001', 'PT Guna Samudra', 'Surabaya', 'Ali Nurdin'),
(2, 'V002', 'PT Pondok C9', 'Depok', 'Putri Ramadhani'),
(3, 'V003', 'CV Jaya Raya Semesta', 'Jakarta', 'Dwi Rahayu'),
(4, 'V004', 'PT Lekulo X', 'Kebumen', 'Mbambang G'),
(5, 'V005', 'PT IT Prima', 'Jakarta', 'David W');

-- --------------------------------------------------------

--
-- Structure for view `lihat_vendor`
--
DROP TABLE IF EXISTS `lihat_vendor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lihat_vendor`  AS SELECT `vendor`.`nomor` AS `nomor`, `vendor`.`nama` AS `nama`, `vendor`.`kota` AS `kota` FROM `vendor` ;

-- --------------------------------------------------------

--
-- Structure for view `pesanan_pelanggan_kartu`
--
DROP TABLE IF EXISTS `pesanan_pelanggan_kartu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pesanan_pelanggan_kartu`  AS SELECT `pesanan`.`id` AS `id`, `pesanan`.`tanggal` AS `tanggal`, `pesanan`.`total` AS `total`, `pelanggan`.`kode` AS `kode`, `pelanggan`.`nama` AS `nama`, `kartu`.`nama` AS `nama_kartu`, `kartu`.`diskon` AS `diskon` FROM ((`pesanan` join `pelanggan` on(`pesanan`.`pelanggan_id` = `pelanggan`.`id`)) join `kartu` on(`pelanggan`.`kartu_id` = `kartu`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jenis_produk`
--
ALTER TABLE `jenis_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kartu`
--
ALTER TABLE `kartu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`kode`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`),
  ADD KEY `fk_pelanggan_kartu1_idx` (`kartu_id`),
  ADD KEY `idx_nama_pelanggan` (`nama`),
  ADD KEY `idx_tgllahir_pelanggan` (`tgl_lahir`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nokuitansi_UNIQUE` (`nokuitansi`),
  ADD KEY `fk_pembayaran_pesanan1_idx` (`pesanan_id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_UNIQUE` (`nomor`),
  ADD KEY `produk_id` (`produk_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pesanan_customer_idx` (`pelanggan_id`);

--
-- Indexes for table `pesanan_items`
--
ALTER TABLE `pesanan_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pesanan_items_pesanan1_idx` (`pesanan_id`),
  ADD KEY `fk_pesanan_items_produk1_idx` (`produk_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`kode`),
  ADD KEY `fk_produk_jenis_produk1_idx` (`jenis_produk_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_nip_unique` (`nip`),
  ADD UNIQUE KEY `staff_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor` (`nomor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_produk`
--
ALTER TABLE `jenis_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kartu`
--
ALTER TABLE `kartu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pesanan_items`
--
ALTER TABLE `pesanan_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `fk_pelanggan_kartu1` FOREIGN KEY (`kartu_id`) REFERENCES `kartu` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `fk_pembayaran_pesanan1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_customer` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pesanan_items`
--
ALTER TABLE `pesanan_items`
  ADD CONSTRAINT `fk_pesanan_items_pesanan1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pesanan_items_produk1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_jenis_produk1` FOREIGN KEY (`jenis_produk_id`) REFERENCES `jenis_produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `db_puskesmas`
--
CREATE DATABASE IF NOT EXISTS `db_puskesmas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_puskesmas`;

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id_kelurahan` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kecamatan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id_kelurahan`, `nama`, `kecamatan`) VALUES
(1, 'Beji', 'Beji'),
(2, 'Bojongsari Lama', 'Bojongsari'),
(3, 'Cilodong', 'Cilodong'),
(4, 'Cisalak Pasar', 'Cimanggis'),
(5, 'Cinere', 'Cinere');

-- --------------------------------------------------------

--
-- Table structure for table `paramedik`
--

CREATE TABLE `paramedik` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `kategori` enum('A','B','C') DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `unit_kerja_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paramedik`
--

INSERT INTO `paramedik` (`id`, `nama`, `gender`, `tmp_lahir`, `tgl_lahir`, `kategori`, `telpon`, `alamat`, `unit_kerja_id`) VALUES
(1, '', 'L', '', '0000-00-00', '', '', '', 1),
(2, 'zalfa khoirunnisa', 'L', 'Jakarta', '2004-10-27', '', '089523341724', 'jl jambu', 1),
(3, 'zalfa khoirunnisa', 'P', 'Jakarta', '1111-11-11', '', '111111111', 'jl jambu', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kelurahan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `kode`, `nama`, `tmp_lahir`, `tgl_lahir`, `gender`, `email`, `alamat`, `kelurahan_id`) VALUES
(1, 'P001', 'Adam Yusron', 'Jakarta', '2005-12-15', 'L', 'adam@gmail.com', 'Jl. Mawar', 4),
(2, 'P002', 'Maulina ', 'Depok', '2007-10-26', 'P', 'maulina@gmail.com', 'Jl. Raflesia', 3),
(3, 'P003', 'Aprilia', 'Bekasi', '1999-02-10', 'P', 'aprilia@gmail.com', 'Jl. Arnoldi', 1),
(4, 'P004', 'Nuril', 'Tangerang', '2009-05-15', 'P', 'nuril@gmail.com', 'Jl. Apel', 5),
(22, 'P005', 'zalfa khoirunnisa', 'Jakarta', '1233-11-11', 'L', 'zkhn223@gmail.com', 'jl jambu', 4),
(23, 'P005', 'zalfa khoirunnisa', 'Jakarta', '0000-00-00', 'L', 'zkhn2223@gmail.com', 'jl jambu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `berat` double DEFAULT NULL,
  `tinggi` double DEFAULT NULL,
  `tensi` varchar(20) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `pasien_id` int(11) DEFAULT NULL,
  `dokter_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`id`, `tanggal`, `berat`, `tinggi`, `tensi`, `keterangan`, `pasien_id`, `dokter_id`) VALUES
(1, '0000-00-00', 65, 160, '125/60', 'Tensi darah tinggi', 0, 0),
(2, '0000-00-00', 45, 157, '130/5', 'Tensi darah menunjukan normal', 0, 0),
(3, '2024-02-10', 45, 160, '125/60', 'Tensi darah tinggi', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `nama`) VALUES
(1, 'zalfa khoirunnisa'),
(2, 'loista amanda noviar'),
(3, 'Agung setyo adityono');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`) VALUES
(1, 'zalfa123', '1234567', 'Zalfa Khoirunnisa'),
(2, 'anisa', '1234567', 'Anisa zulfa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id_kelurahan`);

--
-- Indexes for table `paramedik`
--
ALTER TABLE `paramedik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `kelurahan_id` (`kelurahan_id`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id_kelurahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paramedik`
--
ALTER TABLE `paramedik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pasien`
--
ALTER TABLE `pasien`
  ADD CONSTRAINT `pasien_ibfk_1` FOREIGN KEY (`kelurahan_id`) REFERENCES `kelurahan` (`id_kelurahan`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `e-voting`
--
CREATE DATABASE IF NOT EXISTS `e-voting` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `e-voting`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calon`
--

CREATE TABLE `calon` (
  `id_calon` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nis_calon` varchar(20) NOT NULL,
  `nama_calon` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `suara` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemilih`
--

CREATE TABLE `pemilih` (
  `id_pemilih` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nis_pemilih` varchar(30) NOT NULL,
  `nama_pemilih` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status_login` enum('T','Y') NOT NULL,
  `status_pilih` enum('T','Y') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `calon`
--
ALTER TABLE `calon`
  ADD PRIMARY KEY (`id_calon`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pemilih`
--
ALTER TABLE `pemilih`
  ADD PRIMARY KEY (`id_pemilih`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calon`
--
ALTER TABLE `calon`
  MODIFY `id_calon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemilih`
--
ALTER TABLE `pemilih`
  MODIFY `id_pemilih` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_puskesmas\",\"table\":\"periksa\"},{\"db\":\"db_puskesmas\",\"table\":\"users\"},{\"db\":\"db_puskesmas\",\"table\":\"paramedik\"},{\"db\":\"db_puskesmas\",\"table\":\"kelurahan\"},{\"db\":\"db_puskesmas\",\"table\":\"pasien\"},{\"db\":\"db_puskesmas\",\"table\":\"unit_kerja\"},{\"db\":\"dbposti09\",\"table\":\"failed_jobs\"},{\"db\":\"e-voting\",\"table\":\"profil\"},{\"db\":\"e-voting\",\"table\":\"calon\"},{\"db\":\"e-voting\",\"table\":\"pemilih\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-10 11:06:49', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `ti09`
--
CREATE DATABASE IF NOT EXISTS `ti09` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ti09`;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai1`
--

CREATE TABLE `pegawai1` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `no_hp` varchar(30) DEFAULT NULL,
  `Jabatan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indexes for table `pegawai1`
--
ALTER TABLE `pegawai1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai1`
--
ALTER TABLE `pegawai1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
