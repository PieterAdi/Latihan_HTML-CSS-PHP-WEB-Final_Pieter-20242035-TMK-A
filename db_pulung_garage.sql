-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2026 at 07:59 AM
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
-- Database: `db_pulung_garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `insights`
--

CREATE TABLE `insights` (
  `id` int(11) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `jumlah_kendaraan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insights`
--

INSERT INTO `insights` (`id`, `bulan`, `jumlah_kendaraan`) VALUES
(1, 'Jan', 18),
(2, 'Feb', 24),
(3, 'Mar', 21),
(4, 'Apr', 30),
(5, 'Mei', 27),
(6, 'Jun', 35),
(7, 'Jul', 32),
(8, 'Agu', 40),
(9, 'Sep', 36),
(10, 'Okt', 45),
(11, 'Nov', 42),
(12, 'Des', 50);

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `ikon` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `judul`, `deskripsi`, `foto`, `ikon`) VALUES
(1, 'Service Rutin', 'Pemeriksaan rutin meliputi pengecekan oli mesin, rem, ban, aki, dan komponen kendaraan lainnya untuk menjaga keamanan serta performa kendaraan tetap optimal.', 'https://i.ibb.co.com/0yybKFhg/Whats-App-Image-2026-10-02-at-10-12-04.jpg', '🔧'),
(2, 'Perbaikan Mesin', 'Menangani berbagai kerusakan mesin, mulai dari mesin sulit dihidupkan, suara tidak normal, hingga perbaikan komponen mesin agar kendaraan kembali bekerja dengan baik.', 'https://i.ibb.co.com/CpVjL7Lq/Whats-App-Image-2026-10-02-at-10-12-04-1.jpg', '⚙️'),
(3, 'Kelistrikan AC & DC', 'Pemeriksaan dan perbaikan sistem kelistrikan kendaraan, termasuk aki, kabel, sekring, lampu, starter, dan sistem pengisian untuk memastikan semua komponen listrik berfungsi dengan baik.', 'https://i.ibb.co.com/w3kzcSB/Whats-App-Image-2026-10-20-at-14-29-47.jpg', '⚡');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `insights`
--
ALTER TABLE `insights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `insights`
--
ALTER TABLE `insights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
