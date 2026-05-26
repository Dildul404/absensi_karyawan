-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20260429.663cbe73d8
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 26, 2026 at 04:30 AM
-- Server version: 8.4.3
-- PHP Version: 8.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jam_kerja`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int NOT NULL,
  `absen` enum('izin','sakit','alpha','hadir') NOT NULL,
  `tanggal_waktu` datetime NOT NULL,
  `id_pekerja` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `absen`, `tanggal_waktu`, `id_pekerja`) VALUES
(1, 'hadir', '2026-05-12 06:00:15', 1),
(2, 'sakit', '2026-05-12 08:15:00', 2),
(3, 'sakit', '2026-05-25 01:04:00', 3),
(4, 'alpha', '2026-05-25 07:00:00', 4),
(5, 'hadir', '2026-06-01 08:10:00', 5),
(6, 'alpha', '2026-06-01 00:00:00', 6),
(7, 'hadir', '2026-06-01 08:02:00', 7),
(8, 'hadir', '2026-06-01 08:00:00', 8),
(9, 'izin', '2026-06-01 07:50:00', 9),
(10, 'hadir', '2026-06-01 08:15:00', 10),
(11, 'sakit', '2026-06-02 06:30:00', 11),
(12, 'hadir', '2026-06-02 08:00:00', 12),
(13, 'hadir', '2026-06-02 08:05:00', 13),
(14, 'alpha', '2026-06-02 00:00:00', 14),
(15, 'hadir', '2026-06-02 08:01:00', 15),
(16, 'izin', '2026-06-02 07:40:00', 16),
(17, 'hadir', '2026-06-02 08:03:00', 17),
(18, 'sakit', '2026-06-02 06:50:00', 18),
(19, 'hadir', '2026-06-02 08:08:00', 19),
(20, 'hadir', '2026-06-02 08:00:00', 20),
(21, 'alpha', '2026-06-03 00:00:00', 21),
(22, 'hadir', '2026-06-03 08:05:00', 22),
(23, 'izin', '2026-06-03 07:35:00', 23),
(24, 'hadir', '2026-06-03 08:10:00', 24),
(25, 'sakit', '2026-06-03 06:20:00', 25),
(26, 'hadir', '2026-06-03 08:00:00', 26),
(27, 'hadir', '2026-06-03 08:07:00', 27),
(28, 'alpha', '2026-06-03 00:00:00', 28),
(29, 'hadir', '2026-06-03 08:02:00', 29),
(30, 'izin', '2026-06-03 07:45:00', 30),
(31, 'hadir', '2026-06-04 08:00:00', 31),
(32, 'sakit', '2026-06-04 06:55:00', 32),
(33, 'hadir', '2026-06-04 08:03:00', 33),
(34, 'hadir', '2026-06-04 08:06:00', 34),
(35, 'alpha', '2026-06-04 00:00:00', 35),
(36, 'izin', '2026-06-04 07:20:00', 36),
(37, 'hadir', '2026-06-04 08:04:00', 37),
(38, 'hadir', '2026-06-04 08:09:00', 38),
(39, 'sakit', '2026-06-04 06:40:00', 39),
(40, 'hadir', '2026-06-04 08:00:00', 40),
(41, 'izin', '2026-06-05 07:25:00', 41),
(42, 'hadir', '2026-06-05 08:01:00', 42),
(43, 'alpha', '2026-06-05 00:00:00', 43),
(44, 'hadir', '2026-06-05 08:05:00', 44),
(45, 'sakit', '2026-06-05 06:35:00', 45),
(46, 'hadir', '2026-06-05 08:00:00', 46),
(47, 'hadir', '2026-06-05 08:06:00', 47),
(48, 'izin', '2026-06-05 07:55:00', 48),
(49, 'hadir', '2026-06-05 08:02:00', 49),
(50, 'hadir', '2026-06-05 08:00:00', 50);

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` int NOT NULL,
  `awal_cuti` date NOT NULL,
  `akhir_cuti` date NOT NULL,
  `id_pekerja` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `awal_cuti`, `akhir_cuti`, `id_pekerja`) VALUES
(1, '2026-05-29', '2026-07-01', 1),
(2, '2026-05-15', '2026-05-28', 2),
(3, '2026-05-25', '2026-05-30', 3),
(4, '2026-06-15', '2026-06-17', 4),
(5, '2026-06-20', '2026-06-22', 5),
(6, '2026-06-02', '2026-06-04', 6),
(7, '2026-06-06', '2026-06-08', 7),
(8, '2026-06-11', '2026-06-13', 8),
(9, '2026-06-16', '2026-06-18', 9),
(10, '2026-06-21', '2026-06-23', 10),
(11, '2026-06-03', '2026-06-05', 11),
(12, '2026-06-07', '2026-06-09', 12),
(13, '2026-06-12', '2026-06-14', 13),
(14, '2026-06-17', '2026-06-19', 14),
(15, '2026-06-22', '2026-06-24', 15),
(16, '2026-06-04', '2026-06-06', 16),
(17, '2026-06-08', '2026-06-10', 17),
(18, '2026-06-13', '2026-06-15', 18),
(19, '2026-06-18', '2026-06-20', 19),
(20, '2026-06-23', '2026-06-25', 20),
(21, '2026-06-01', '2026-06-02', 21),
(22, '2026-06-05', '2026-06-06', 22),
(23, '2026-06-09', '2026-06-10', 23),
(24, '2026-06-14', '2026-06-15', 24),
(25, '2026-06-19', '2026-06-20', 25),
(26, '2026-06-24', '2026-06-26', 26),
(27, '2026-06-02', '2026-06-03', 27),
(28, '2026-06-06', '2026-06-07', 28),
(29, '2026-06-10', '2026-06-11', 29),
(30, '2026-06-15', '2026-06-16', 30),
(31, '2026-06-20', '2026-06-21', 31),
(32, '2026-06-25', '2026-06-27', 32),
(33, '2026-06-03', '2026-06-04', 33),
(34, '2026-06-07', '2026-06-08', 34),
(35, '2026-06-11', '2026-06-12', 35),
(36, '2026-06-16', '2026-06-17', 36),
(37, '2026-06-21', '2026-06-22', 37),
(38, '2026-06-26', '2026-06-28', 38),
(39, '2026-06-04', '2026-06-05', 39),
(40, '2026-06-08', '2026-06-09', 40),
(41, '2026-06-12', '2026-06-13', 41),
(42, '2026-06-17', '2026-06-18', 42),
(43, '2026-06-22', '2026-06-23', 43),
(44, '2026-06-27', '2026-06-29', 44),
(45, '2026-06-05', '2026-06-06', 45),
(46, '2026-06-09', '2026-06-10', 46),
(47, '2026-06-13', '2026-06-14', 47),
(48, '2026-06-18', '2026-06-19', 48),
(49, '2026-06-23', '2026-06-24', 49),
(50, '2026-06-28', '2026-06-30', 50);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` varchar(10) NOT NULL,
  `jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `jabatan`) VALUES
('J001', 'karyawan'),
('J002', 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `jam_kerja`
--

CREATE TABLE `jam_kerja` (
  `id_jam_kerja` int NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `id_pekerja` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jam_kerja`
--

INSERT INTO `jam_kerja` (`id_jam_kerja`, `waktu_mulai`, `waktu_selesai`, `id_pekerja`) VALUES
(1, '06:00:30', '15:00:40', 1),
(2, '18:00:00', '04:00:00', 2),
(3, '08:00:00', '17:00:00', 3),
(4, '08:00:00', '17:00:00', 4),
(5, '09:00:00', '18:00:00', 5),
(6, '08:00:00', '17:00:00', 6),
(7, '08:00:00', '17:00:00', 7),
(8, '08:00:00', '17:00:00', 8),
(9, '09:00:00', '18:00:00', 9),
(10, '08:00:00', '17:00:00', 10),
(11, '08:00:00', '17:00:00', 11),
(12, '08:00:00', '17:00:00', 12),
(13, '09:00:00', '18:00:00', 13),
(14, '08:00:00', '17:00:00', 14),
(15, '08:00:00', '17:00:00', 15),
(16, '08:00:00', '17:00:00', 16),
(17, '09:00:00', '18:00:00', 17),
(18, '08:00:00', '17:00:00', 18),
(19, '08:00:00', '17:00:00', 19),
(20, '08:00:00', '17:00:00', 20),
(21, '09:00:00', '18:00:00', 21),
(22, '08:00:00', '17:00:00', 22),
(23, '08:00:00', '17:00:00', 23),
(24, '08:00:00', '17:00:00', 24),
(25, '09:00:00', '18:00:00', 25),
(26, '08:00:00', '17:00:00', 26),
(27, '08:00:00', '17:00:00', 27),
(28, '08:00:00', '17:00:00', 28),
(29, '09:00:00', '18:00:00', 29),
(30, '08:00:00', '17:00:00', 30),
(31, '08:00:00', '17:00:00', 31),
(32, '08:00:00', '17:00:00', 32),
(33, '09:00:00', '18:00:00', 33),
(34, '08:00:00', '17:00:00', 34),
(35, '08:00:00', '17:00:00', 35),
(36, '08:00:00', '17:00:00', 36),
(37, '09:00:00', '18:00:00', 37),
(38, '08:00:00', '17:00:00', 38),
(39, '08:00:00', '17:00:00', 39),
(40, '08:00:00', '17:00:00', 40),
(41, '09:00:00', '18:00:00', 41),
(42, '08:00:00', '17:00:00', 42),
(43, '08:00:00', '17:00:00', 43),
(44, '08:00:00', '17:00:00', 44),
(45, '09:00:00', '18:00:00', 45),
(46, '08:00:00', '17:00:00', 46),
(47, '08:00:00', '17:00:00', 47),
(48, '08:00:00', '17:00:00', 48),
(49, '09:00:00', '18:00:00', 49),
(50, '08:00:00', '17:00:00', 50);

-- --------------------------------------------------------

--
-- Table structure for table `lembur`
--

CREATE TABLE `lembur` (
  `id_lembur` int NOT NULL,
  `durasi_lembur` time NOT NULL,
  `tanggal_lembur` date NOT NULL,
  `id_pekerja` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lembur`
--

INSERT INTO `lembur` (`id_lembur`, `durasi_lembur`, `tanggal_lembur`, `id_pekerja`) VALUES
(1, '02:13:09', '2026-05-02', 1),
(2, '03:20:15', '2026-06-02', 2),
(3, '03:00:00', '2026-05-03', 3),
(4, '02:15:00', '2026-05-04', 4),
(5, '01:00:00', '2026-05-05', 5),
(6, '02:45:00', '2026-05-06', 6),
(7, '01:20:00', '2026-05-07', 7),
(8, '03:10:00', '2026-05-08', 8),
(9, '02:30:00', '2026-05-09', 9),
(10, '01:45:00', '2026-05-10', 10),
(11, '02:00:00', '2026-05-11', 11),
(12, '03:30:00', '2026-05-12', 12),
(13, '01:15:00', '2026-05-13', 13),
(14, '02:20:00', '2026-05-14', 14),
(15, '03:00:00', '2026-05-15', 15),
(16, '01:50:00', '2026-05-16', 16),
(17, '02:10:00', '2026-05-17', 17),
(18, '03:15:00', '2026-05-18', 18),
(19, '01:40:00', '2026-05-19', 19),
(20, '02:25:00', '2026-05-20', 20),
(21, '03:00:00', '2026-05-21', 21),
(22, '01:35:00', '2026-05-22', 22),
(23, '02:50:00', '2026-05-23', 23),
(24, '03:20:00', '2026-05-24', 24),
(25, '01:10:00', '2026-05-25', 25),
(26, '02:40:00', '2026-05-26', 26),
(27, '03:05:00', '2026-05-27', 27),
(28, '01:55:00', '2026-05-28', 28),
(29, '02:35:00', '2026-05-29', 29),
(30, '03:25:00', '2026-05-30', 30),
(31, '01:25:00', '2026-05-31', 31),
(32, '02:05:00', '2026-06-01', 32),
(33, '03:40:00', '2026-06-02', 33),
(34, '01:30:00', '2026-06-03', 34),
(35, '02:15:00', '2026-06-04', 35),
(36, '03:00:00', '2026-06-05', 36),
(37, '01:45:00', '2026-06-06', 37),
(38, '02:55:00', '2026-06-07', 38),
(39, '03:10:00', '2026-06-08', 39),
(40, '01:20:00', '2026-06-09', 40),
(41, '02:30:00', '2026-06-10', 41),
(42, '03:35:00', '2026-06-11', 42),
(43, '01:50:00', '2026-06-12', 43),
(44, '02:45:00', '2026-06-13', 44),
(45, '03:00:00', '2026-06-14', 45),
(46, '01:15:00', '2026-06-15', 46),
(47, '02:20:00', '2026-06-16', 47),
(48, '03:30:00', '2026-06-17', 48),
(49, '01:40:00', '2026-06-18', 49),
(50, '02:10:00', '2026-06-19', 50);

-- --------------------------------------------------------

--
-- Table structure for table `pekerja`
--

CREATE TABLE `pekerja` (
  `id_pekerja` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_jabatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pekerja`
--

INSERT INTO `pekerja` (`id_pekerja`, `nama`, `id_jabatan`) VALUES
(1, 'adi', 'J001'),
(2, 'dada', 'J002'),
(3, 'coba coba', 'J001'),
(4, 'rafi', 'J002'),
(5, 'Eko Prasetyo', 'J001'),
(6, 'Fajar Hidayat', 'J002'),
(7, 'Gilang Ramadhan', 'J002'),
(8, 'Hendra Wijaya', 'J002'),
(9, 'Indah Sari', 'J001'),
(10, 'Joko Susilo', 'J002'),
(11, 'Kevin Saputra', 'J002'),
(12, 'Lukman Hakim', 'J002'),
(13, 'Maya Putri', 'J001'),
(14, 'Nanda Pratama', 'J002'),
(15, 'Oki Setiawan', 'J002'),
(16, 'Putri Maharani', 'J002'),
(17, 'Qori Ahmad', 'J001'),
(18, 'Rina Marlina', 'J002'),
(19, 'Sandi Firmansyah', 'J002'),
(20, 'Taufik Hidayat', 'J002'),
(21, 'Umar Dani', 'J001'),
(22, 'Vina Melati', 'J002'),
(23, 'Wahyu Nugraha', 'J002'),
(24, 'Xavier Putra', 'J002'),
(25, 'Yuni Kartika', 'J001'),
(26, 'Zaki Maulana', 'J002'),
(27, 'Andi Saputra', 'J002'),
(28, 'Bella Novita', 'J002'),
(29, 'Cahyo Wibowo', 'J001'),
(30, 'Dian Permata', 'J002'),
(31, 'Erwin Syahputra', 'J002'),
(32, 'Fitri Handayani', 'J002'),
(33, 'Galih Prakoso', 'J001'),
(34, 'Hani Oktavia', 'J002'),
(35, 'Iqbal Ramadhan', 'J002'),
(36, 'Jihan Aulia', 'J002'),
(37, 'Kiki Amelia', 'J001'),
(38, 'Luthfi Ramdani', 'J002'),
(39, 'Mega Puspita', 'J002'),
(40, 'Naufal Rizky', 'J002'),
(41, 'Olivia Ananda', 'J001'),
(42, 'Pandu Wijanarko', 'J002'),
(43, 'Qiana Safitri', 'J002'),
(44, 'Rendy Kurniawan', 'J002'),
(45, 'Salsa Billa', 'J001'),
(46, 'Teguh Pranata', 'J002'),
(47, 'Ulfah Zahra', 'J002'),
(48, 'Vicky Fernando', 'J002'),
(49, 'Widya Lestari', 'J001'),
(50, 'Yoga Saputro', 'J002');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`) VALUES
(1, 'saya', 'saya@gmail.com', '1234'),
(2, 'eda', 'eda@example.com', 'eda4321'),
(3, 'Citra Lestari', 'citra3@gmail.com', '123456'),
(4, 'Dewi Anggraini', 'dewi4@gmail.com', '123456'),
(5, 'Eko Prasetyo', 'eko5@gmail.com', '123456'),
(6, 'Fajar Hidayat', 'fajar6@gmail.com', '123456'),
(7, 'Gilang Ramadhan', 'gilang7@gmail.com', '123456'),
(8, 'Hendra Wijaya', 'hendra8@gmail.com', '123456'),
(9, 'Indah Sari', 'indah9@gmail.com', '123456'),
(10, 'Joko Susilo', 'joko10@gmail.com', '123456'),
(11, 'Kevin Saputra', 'kevin11@gmail.com', '123456'),
(12, 'Lukman Hakim', 'lukman12@gmail.com', '123456'),
(13, 'Maya Putri', 'maya13@gmail.com', '123456'),
(14, 'Nanda Pratama', 'nanda14@gmail.com', '123456'),
(15, 'Oki Setiawan', 'oki15@gmail.com', '123456'),
(16, 'Putri Maharani', 'putri16@gmail.com', '123456'),
(17, 'Qori Ahmad', 'qori17@gmail.com', '123456'),
(18, 'Rina Marlina', 'rina18@gmail.com', '123456'),
(19, 'Sandi Firmansyah', 'sandi19@gmail.com', '123456'),
(20, 'Taufik Hidayat', 'taufik20@gmail.com', '123456'),
(21, 'Umar Dani', 'umar21@gmail.com', '123456'),
(22, 'Vina Melati', 'vina22@gmail.com', '123456'),
(23, 'Wahyu Nugraha', 'wahyu23@gmail.com', '123456'),
(24, 'Xavier Putra', 'xavier24@gmail.com', '123456'),
(25, 'Yuni Kartika', 'yuni25@gmail.com', '123456'),
(26, 'Zaki Maulana', 'zaki26@gmail.com', '123456'),
(27, 'Andi Saputra', 'andi27@gmail.com', '123456'),
(28, 'Bella Novita', 'bella28@gmail.com', '123456'),
(29, 'Cahyo Wibowo', 'cahyo29@gmail.com', '123456'),
(30, 'Dian Permata', 'dian30@gmail.com', '123456'),
(31, 'Erwin Syahputra', 'erwin31@gmail.com', '123456'),
(32, 'Fitri Handayani', 'fitri32@gmail.com', '123456'),
(33, 'Galih Prakoso', 'galih33@gmail.com', '123456'),
(34, 'Hani Oktavia', 'hani34@gmail.com', '123456'),
(35, 'Iqbal Ramadhan', 'iqbal35@gmail.com', '123456'),
(36, 'Jihan Aulia', 'jihan36@gmail.com', '123456'),
(37, 'Kiki Amelia', 'kiki37@gmail.com', '123456'),
(38, 'Luthfi Ramdani', 'luthfi38@gmail.com', '123456'),
(39, 'Mega Puspita', 'mega39@gmail.com', '123456'),
(40, 'Naufal Rizky', 'naufal40@gmail.com', '123456'),
(41, 'Olivia Ananda', 'olivia41@gmail.com', '123456'),
(42, 'Pandu Wijanarko', 'pandu42@gmail.com', '123456'),
(43, 'Qiana Safitri', 'qiana43@gmail.com', '123456'),
(44, 'Rendy Kurniawan', 'rendy44@gmail.com', '123456'),
(45, 'Salsa Billa', 'salsa45@gmail.com', '123456'),
(46, 'Teguh Pranata', 'teguh46@gmail.com', '123456'),
(47, 'Ulfah Zahra', 'ulfah47@gmail.com', '123456'),
(48, 'Vicky Fernando', 'vicky48@gmail.com', '123456'),
(49, 'Widya Lestari', 'widya49@gmail.com', '123456'),
(50, 'Yoga Saputro', 'yoga50@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`),
  ADD KEY `id_pekerja` (`id_pekerja`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`),
  ADD KEY `id_pekerja` (`id_pekerja`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `jam_kerja`
--
ALTER TABLE `jam_kerja`
  ADD PRIMARY KEY (`id_jam_kerja`),
  ADD KEY `id_pekerja` (`id_pekerja`);

--
-- Indexes for table `lembur`
--
ALTER TABLE `lembur`
  ADD PRIMARY KEY (`id_lembur`),
  ADD KEY `id_pekerja` (`id_pekerja`);

--
-- Indexes for table `pekerja`
--
ALTER TABLE `pekerja`
  ADD PRIMARY KEY (`id_pekerja`),
  ADD KEY `id_jabatan` (`id_jabatan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id_cuti` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `jam_kerja`
--
ALTER TABLE `jam_kerja`
  MODIFY `id_jam_kerja` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `lembur`
--
ALTER TABLE `lembur`
  MODIFY `id_lembur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `pekerja`
--
ALTER TABLE `pekerja`
  MODIFY `id_pekerja` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen`
--
ALTER TABLE `absen`
  ADD CONSTRAINT `absen_ibfk_1` FOREIGN KEY (`id_pekerja`) REFERENCES `pekerja` (`id_pekerja`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `cuti`
--
ALTER TABLE `cuti`
  ADD CONSTRAINT `cuti_ibfk_1` FOREIGN KEY (`id_pekerja`) REFERENCES `pekerja` (`id_pekerja`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `jam_kerja`
--
ALTER TABLE `jam_kerja`
  ADD CONSTRAINT `jam_kerja_ibfk_1` FOREIGN KEY (`id_pekerja`) REFERENCES `pekerja` (`id_pekerja`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `lembur`
--
ALTER TABLE `lembur`
  ADD CONSTRAINT `lembur_ibfk_1` FOREIGN KEY (`id_pekerja`) REFERENCES `pekerja` (`id_pekerja`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `pekerja`
--
ALTER TABLE `pekerja`
  ADD CONSTRAINT `pekerja_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `jabatan` (`id_jabatan`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
