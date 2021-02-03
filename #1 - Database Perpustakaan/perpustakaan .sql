-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 03:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `KodeBuku` varchar(13) NOT NULL DEFAULT '',
  `JudulBuku` varchar(60) NOT NULL DEFAULT '',
  `ISBN` varchar(17) NOT NULL DEFAULT '',
  `JmlHal` int(4) NOT NULL DEFAULT 0,
  `KodePenerbit` varchar(5) NOT NULL DEFAULT '',
  `ThnTerbit` year(4) NOT NULL DEFAULT 1999
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`KodeBuku`, `JudulBuku`, `ISBN`, `JmlHal`, `KodePenerbit`, `ThnTerbit`) VALUES
('BK200301001', 'Ahlusunnah waljamaah', '111-111-1111-1-11', 651, 'ER586', 2001),
('BK200402001', 'Oxford English Dictionary', '111-111-1111-1-12', 100, 'EK649', 2010),
('BK200405001', 'Aku sama seperti dirimu', '111-111-1111-1-13', 97, 'AO573', 2017),
('BK200407001', 'Het Achterhuis', '111-111-1111-1-14', 165, 'TP472', 2009),
('BK200411001', 'DSLR untuk pemula', '111-111-1111-1-15', 200, 'EP025', 2007),
('BK200512001', 'Islam yang kulihat', '111-111-1111-1-16', 234, 'ER586', 2005),
('BK200602001', 'Singa dan Tikus', '111-111-1111-1-17', 278, 'TP472', 2002),
('BK200615001', 'Ayat-ayat cinta', '111-111-1111-1-18', 300, 'EP025', 2000),
('BK200629001', 'Ensiklopedia antariksa', '111-111-1111-1-19', 336, 'ER586', 2018),
('BK200709001', 'Steve Jobs', '111-111-1111-1-20', 656, 'ER586', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `KodeKategori` varchar(5) NOT NULL DEFAULT '',
  `NamaKategori` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`KodeKategori`, `NamaKategori`) VALUES
('KT001', 'Novel'),
('KT002', 'Agama'),
('KT003', 'Komik'),
('KT004', 'Ensiklopedia'),
('KT005', 'Dongeng'),
('KT006', 'Biografi'),
('KT007', 'Fotografi'),
('KT008', 'Catatan harian'),
('KT009', 'Antologi'),
('KT010', 'Kamus');

-- --------------------------------------------------------

--
-- Table structure for table `kategoribuku`
--

CREATE TABLE `kategoribuku` (
  `KodeBuku` varchar(13) NOT NULL DEFAULT '',
  `KodeKategori` varchar(5) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategoribuku`
--

INSERT INTO `kategoribuku` (`KodeBuku`, `KodeKategori`) VALUES
('BK200301001', 'KT002'),
('BK200402001', 'KT010'),
('BK200405001', 'KT009'),
('BK200405001', 'KT001'),
('BK200407001', 'KT001'),
('BK200407001', 'KT008'),
('BK200411001', 'KT007'),
('BK200512001', 'KT003'),
('BK200602001', 'KB009'),
('BK200602001', 'KT005'),
('BK200615001', 'KT001'),
('BK200615001', 'KT002'),
('BK200629001', 'KT004'),
('BK200629001', 'KT007'),
('BK200709001', 'KT006');

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `NIK` varchar(16) NOT NULL DEFAULT '',
  `Nama` varchar(25) NOT NULL DEFAULT '',
  `TempatLahir` varchar(30) NOT NULL DEFAULT '',
  `TglLahir` datetime NOT NULL DEFAULT current_timestamp(),
  `Alamat` varchar(100) NOT NULL DEFAULT '',
  `JenKel` varchar(1) NOT NULL DEFAULT 'L',
  `NoHP` varchar(14) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`NIK`, `Nama`, `TempatLahir`, `TglLahir`, `Alamat`, `JenKel`, `NoHP`) VALUES
('1203020704980001', 'Andi Rahman', 'Sayur Matinggi', '1998-04-07 00:00:00', 'Sayur Matinggi', 'L', ''),
('1203021710970001', 'Aditya Kusnadi', 'Sihepeng', '1997-10-17 00:00:00', 'Sihepeng', 'L', ''),
('1203022007000001', 'Maman Suraman', 'Aek Badak julu', '2000-07-20 00:00:00', 'Aek Badak Julu', 'L', ''),
('1203044102030001', 'Lulu', 'Batang Toru', '2003-02-01 00:00:00', 'Batang Toru', 'P', ''),
('1203044805010001', 'Ema', 'Huta Tonga', '2001-05-08 00:00:00', 'Huta Tonga', 'P', ''),
('1203050301030002', 'Dadang Sukmara', 'Aek Badak Jae', '2003-01-03 00:00:00', 'Aek Badak Jae', 'L', ''),
('1203051708980001', 'Denis', 'Tolang Julu', '1998-08-17 00:00:00', 'Tolang julu', 'L', ''),
('1203054404000001', 'Lilis', 'Simangambat', '2000-04-04 00:00:00', 'Simangambat', 'P', ''),
('1203062203010001', 'Endang Kusmara', 'Silaiya', '2001-04-22 00:00:00', 'Silaiya', 'L', ''),
('1273013004990001', 'Putra', 'Sibolga', '1999-04-30 00:00:00', 'Sibolga', 'L', '');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `KodePeminjaman` varchar(10) NOT NULL DEFAULT '',
  `NIK` varchar(16) NOT NULL DEFAULT '',
  `TglPinjam` datetime NOT NULL DEFAULT current_timestamp(),
  `TglKembali` datetime NOT NULL DEFAULT current_timestamp(),
  `TglKembaliReal` datetime NOT NULL DEFAULT current_timestamp(),
  `Denda` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`KodePeminjaman`, `NIK`, `TglPinjam`, `TglKembali`, `TglKembaliReal`, `Denda`) VALUES
('PJ20060501', '1203022007000001', '2020-06-05 00:00:00', '2020-06-08 00:00:00', '2020-06-09 00:00:00', '3000.00'),
('PJ20060502', '1203050301030002', '2020-06-05 00:00:00', '2020-06-08 00:00:00', '2020-06-10 00:00:00', '6000.00'),
('PJ20060601', '1203021710970001', '2020-06-06 00:00:00', '2020-06-09 00:00:00', '2020-06-11 00:00:00', '6000.00'),
('PJ20061001', '1203044805010001', '2020-06-10 00:00:00', '2020-06-13 00:00:00', '2020-06-13 00:00:00', '0.00'),
('PJ20061201', '1203054404000001', '2020-06-12 00:00:00', '2020-06-15 00:00:00', '2020-06-18 00:00:00', '9000.00'),
('PJ20061501', '1203051708980001', '2020-06-15 00:00:00', '2020-06-18 00:00:00', '2020-06-20 00:00:00', '6000.00');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `KodePenerbit` varchar(5) NOT NULL DEFAULT '',
  `NamaPenerbit` varchar(30) NOT NULL DEFAULT '',
  `Alamat` varchar(50) NOT NULL DEFAULT '',
  `ContactPerson` varchar(30) NOT NULL DEFAULT '',
  `ContactNumber` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`KodePenerbit`, `NamaPenerbit`, `Alamat`, `ContactPerson`, `ContactNumber`) VALUES
('AO573', 'Andi Offset', 'Jln.Merdeka', 'Sutriono', '082273131146'),
('EK649', 'Elekmedia Komputindo', 'Jln.Melati', 'Marwan', '085724016625'),
('EP025', 'Eksekutif Press', 'Jln.Teuku Umar', 'Dian Prawiro', '085876218824'),
('ER586', 'Erlangga', 'Jln.Merdeka - Sibolga', 'Ahmad', '081311880569'),
('TP472', 'Toha Putra', 'Jln.Raya Mangkang', 'Suparjo', '081277686623');

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `KodePenulis` varchar(5) NOT NULL DEFAULT '',
  `NamaPenulis` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`KodePenulis`, `NamaPenulis`) VALUES
('APK09', 'Anne Prank'),
('ASP07', 'Aesop'),
('FIL03', 'Fajar Istiqlal'),
('HEY05', 'Habiburrahman El-Shirazy'),
('HKN04', 'Handoyo Kurniawan'),
('JSN01', 'John Simpson'),
('JTL10', 'James Trefil'),
('KAA02', 'Kamal Agusta'),
('UYA08', 'Ustadz Yazid Bin Abdul Qadir J'),
('WIN06', 'Walter Isaacson');

-- --------------------------------------------------------

--
-- Table structure for table `penulisbuku`
--

CREATE TABLE `penulisbuku` (
  `KodeBuku` varchar(13) NOT NULL DEFAULT '',
  `KodePenulis` varchar(5) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penulisbuku`
--

INSERT INTO `penulisbuku` (`KodeBuku`, `KodePenulis`) VALUES
('BK200301001', 'UYA08'),
('BK200301001', 'HEY05'),
('BK200402001', 'JSN01'),
('BK200405001', 'KAA02'),
('BK200407001', 'APK09'),
('BK200411001', 'HKN04'),
('BK200512001', 'FIL03'),
('BK200602001', 'ASP07'),
('BK200602001', 'HKN04'),
('BK200615001', 'HEY05'),
('BK200629001', 'JTL10'),
('BK200709001', 'WIN06');

-- --------------------------------------------------------

--
-- Table structure for table `pinjambuku`
--

CREATE TABLE `pinjambuku` (
  `KodePeminjaman` varchar(10) NOT NULL DEFAULT '',
  `KodeBuku` varchar(12) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjambuku`
--

INSERT INTO `pinjambuku` (`KodePeminjaman`, `KodeBuku`) VALUES
('PJ20060501', 'BK200301001'),
('PJ20060501', 'BK200405001'),
('PJ20060601', 'BK200405001'),
('PJ20060601', 'BK200602001'),
('PJ20061001', 'BK200407001'),
('PJ20061201', 'BK200301001'),
('PJ20061501', 'BK200402001'),
('PJ20061501', 'BK200411001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`KodeBuku`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`KodeKategori`);

--
-- Indexes for table `kategoribuku`
--
ALTER TABLE `kategoribuku`
  ADD KEY `KodeBuku` (`KodeBuku`),
  ADD KEY `KodeKategori` (`KodeKategori`);

--
-- Indexes for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`KodePeminjaman`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`KodePenerbit`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`KodePenulis`);

--
-- Indexes for table `penulisbuku`
--
ALTER TABLE `penulisbuku`
  ADD KEY `KodeBuku` (`KodeBuku`),
  ADD KEY `KodePenulis` (`KodePenulis`);

--
-- Indexes for table `pinjambuku`
--
ALTER TABLE `pinjambuku`
  ADD PRIMARY KEY (`KodePeminjaman`,`KodeBuku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
