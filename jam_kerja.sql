-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20260429.663cbe73d8
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 24, 2026 at 03:33 PM
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
  `tanggal` datetime NOT NULL,
  `id_pekerja` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `absen`, `tanggal`, `id_pekerja`) VALUES
(1, 'hadir', '2026-05-12 06:00:15', 1),
(2, 'sakit', '2026-05-12 08:15:00', 2),
(3, 'izin', '2026-05-01 07:30:00', 3),
(4, 'sakit', '2026-05-01 06:45:00', 4),
(5, 'hadir', '2026-05-01 08:10:00', 5),
(6, 'alpha', '2026-05-01 00:00:00', 6),
(7, 'hadir', '2026-05-02 08:00:00', 7),
(8, 'hadir', '2026-05-02 08:03:00', 8),
(9, 'izin', '2026-05-02 07:20:00', 9),
(10, 'hadir', '2026-05-02 08:01:00', 10),
(11, 'sakit', '2026-05-03 06:30:00', 11),
(12, 'hadir', '2026-05-03 08:15:00', 12),
(13, 'hadir', '2026-05-03 08:00:00', 13),
(14, 'alpha', '2026-05-03 00:00:00', 14),
(15, 'hadir', '2026-05-04 08:07:00', 15),
(16, 'izin', '2026-05-04 07:00:00', 16),
(17, 'hadir', '2026-05-04 08:05:00', 17),
(18, 'sakit', '2026-05-04 06:50:00', 18),
(19, 'hadir', '2026-05-05 08:00:00', 19),
(20, 'hadir', '2026-05-05 08:02:00', 20),
(21, 'alpha', '2026-05-05 00:00:00', 21),
(22, 'hadir', '2026-05-05 08:12:00', 22),
(23, 'izin', '2026-05-06 07:15:00', 23),
(24, 'hadir', '2026-05-06 08:00:00', 24),
(25, 'sakit', '2026-05-06 06:40:00', 25),
(26, 'hadir', '2026-05-06 08:09:00', 26),
(27, 'hadir', '2026-05-07 08:00:00', 27),
(28, 'alpha', '2026-05-07 00:00:00', 28),
(29, 'hadir', '2026-05-07 08:06:00', 29),
(30, 'izin', '2026-05-07 07:10:00', 30),
(31, 'hadir', '2026-05-08 08:00:00', 31),
(32, 'sakit', '2026-05-08 06:35:00', 32),
(33, 'hadir', '2026-05-08 08:04:00', 33),
(34, 'hadir', '2026-05-08 08:08:00', 34),
(35, 'alpha', '2026-05-09 00:00:00', 35),
(36, 'hadir', '2026-05-09 08:00:00', 36),
(37, 'izin', '2026-05-09 07:25:00', 37),
(38, 'hadir', '2026-05-09 08:11:00', 38),
(39, 'sakit', '2026-05-10 06:55:00', 39),
(40, 'hadir', '2026-05-10 08:00:00', 40);

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
(3, '2026-06-03', '2026-06-05', 3),
(4, '2026-06-04', '2026-06-06', 4),
(5, '2026-06-05', '2026-06-07', 5),
(6, '2026-06-06', '2026-06-08', 6),
(7, '2026-06-07', '2026-06-09', 7),
(8, '2026-06-08', '2026-06-10', 8),
(9, '2026-06-09', '2026-06-11', 9),
(10, '2026-06-10', '2026-06-12', 10),
(11, '2026-06-11', '2026-06-13', 11),
(12, '2026-06-12', '2026-06-14', 12),
(13, '2026-06-13', '2026-06-15', 13),
(14, '2026-06-14', '2026-06-16', 14),
(15, '2026-06-15', '2026-06-17', 15),
(16, '2026-06-16', '2026-06-18', 16),
(17, '2026-06-17', '2026-06-19', 17),
(18, '2026-06-18', '2026-06-20', 18),
(19, '2026-06-19', '2026-06-21', 19),
(20, '2026-06-20', '2026-06-22', 20),
(21, '2026-06-21', '2026-06-23', 21),
(22, '2026-06-22', '2026-06-24', 22),
(23, '2026-06-23', '2026-06-25', 23),
(24, '2026-06-24', '2026-06-26', 24),
(25, '2026-06-25', '2026-06-27', 25),
(26, '2026-06-26', '2026-06-28', 26),
(27, '2026-06-27', '2026-06-29', 27),
(28, '2026-06-28', '2026-06-30', 28),
(29, '2026-06-29', '2026-07-01', 29),
(30, '2026-06-30', '2026-07-02', 30),
(31, '2026-07-01', '2026-07-03', 31),
(32, '2026-07-02', '2026-07-04', 32),
(33, '2026-07-03', '2026-07-05', 33),
(34, '2026-07-04', '2026-07-06', 34),
(35, '2026-07-05', '2026-07-07', 35),
(36, '2026-07-06', '2026-07-08', 36),
(37, '2026-07-07', '2026-07-09', 37),
(38, '2026-07-08', '2026-07-10', 38),
(39, '2026-07-09', '2026-07-11', 39),
(40, '2026-07-10', '2026-07-12', 40);

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
(3, '08:30:00', '17:30:00', 3),
(4, '09:00:00', '18:00:00', 4),
(5, '08:00:00', '17:00:00', 5),
(6, '07:30:00', '16:30:00', 6),
(7, '08:00:00', '17:00:00', 7),
(8, '09:00:00', '18:00:00', 8),
(9, '08:30:00', '17:30:00', 9),
(10, '08:00:00', '17:00:00', 10),
(11, '07:00:00', '16:00:00', 11),
(12, '08:00:00', '17:00:00', 12),
(13, '09:00:00', '18:00:00', 13),
(14, '08:30:00', '17:30:00', 14),
(15, '08:00:00', '17:00:00', 15),
(16, '07:30:00', '16:30:00', 16),
(17, '08:00:00', '17:00:00', 17),
(18, '09:00:00', '18:00:00', 18),
(19, '08:30:00', '17:30:00', 19),
(20, '08:00:00', '17:00:00', 20),
(21, '07:00:00', '16:00:00', 21),
(22, '08:00:00', '17:00:00', 22),
(23, '09:00:00', '18:00:00', 23),
(24, '08:30:00', '17:30:00', 24),
(25, '08:00:00', '17:00:00', 25),
(26, '07:30:00', '16:30:00', 26),
(27, '08:00:00', '17:00:00', 27),
(28, '09:00:00', '18:00:00', 28),
(29, '08:30:00', '17:30:00', 29),
(30, '08:00:00', '17:00:00', 30),
(31, '07:00:00', '16:00:00', 31),
(32, '08:00:00', '17:00:00', 32),
(33, '09:00:00', '18:00:00', 33),
(34, '08:30:00', '17:30:00', 34),
(35, '08:00:00', '17:00:00', 35),
(36, '07:30:00', '16:30:00', 36),
(37, '08:00:00', '17:00:00', 37),
(38, '09:00:00', '18:00:00', 38),
(39, '08:30:00', '17:30:00', 39),
(40, '08:00:00', '17:00:00', 40);

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
(3, '03:00:00', '2026-05-02', 3),
(4, '02:15:00', '2026-05-02', 4),
(5, '01:00:00', '2026-05-03', 5),
(6, '04:00:00', '2026-05-03', 6),
(7, '02:30:00', '2026-05-04', 7),
(8, '01:45:00', '2026-05-04', 8),
(9, '03:15:00', '2026-05-05', 9),
(10, '02:00:00', '2026-05-05', 10),
(11, '01:30:00', '2026-05-06', 11),
(12, '02:45:00', '2026-05-06', 12),
(13, '03:00:00', '2026-05-07', 13),
(14, '01:15:00', '2026-05-07', 14),
(15, '02:30:00', '2026-05-08', 15),
(16, '04:00:00', '2026-05-08', 16),
(17, '01:00:00', '2026-05-09', 17),
(18, '02:00:00', '2026-05-09', 18),
(19, '03:30:00', '2026-05-10', 19),
(20, '02:15:00', '2026-05-10', 20),
(21, '01:45:00', '2026-05-11', 21),
(22, '03:00:00', '2026-05-11', 22),
(23, '02:30:00', '2026-05-12', 23),
(24, '01:00:00', '2026-05-12', 24),
(25, '04:00:00', '2026-05-13', 25),
(26, '02:15:00', '2026-05-13', 26),
(27, '03:00:00', '2026-05-14', 27),
(28, '01:30:00', '2026-05-14', 28),
(29, '02:45:00', '2026-05-15', 29),
(30, '03:15:00', '2026-05-15', 30),
(31, '01:00:00', '2026-05-16', 31),
(32, '02:30:00', '2026-05-16', 32),
(33, '04:00:00', '2026-05-17', 33),
(34, '01:45:00', '2026-05-17', 34),
(35, '03:00:00', '2026-05-18', 35),
(36, '02:00:00', '2026-05-18', 36),
(37, '01:30:00', '2026-05-19', 37),
(38, '02:15:00', '2026-05-19', 38),
(39, '03:30:00', '2026-05-20', 39),
(40, '04:00:00', '2026-05-20', 40);

-- --------------------------------------------------------

--
-- Table structure for table `pekerja`
--

CREATE TABLE `pekerja` (
  `id_pekerja` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` enum('karyawan','manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pekerja`
--

INSERT INTO `pekerja` (`id_pekerja`, `nama`, `jabatan`) VALUES
(1, 'adi', 'karyawan'),
(2, 'dada', 'manager'),
(3, 'Citra Lestari', 'karyawan'),
(4, 'Dewi Anggraini', 'karyawan'),
(5, 'Eko Prasetyo', 'manager'),
(6, 'Farhan Maulana', 'karyawan'),
(7, 'Gina Oktavia', 'karyawan'),
(8, 'Hendra Saputra', 'karyawan'),
(9, 'Indah Permata', 'manager'),
(10, 'Joko Susilo', 'karyawan'),
(11, 'Kartika Dewi', 'karyawan'),
(12, 'Lukman Hakim', 'karyawan'),
(13, 'Mega Sari', 'manager'),
(14, 'Nanda Putra', 'karyawan'),
(15, 'Oki Setiawan', 'karyawan'),
(16, 'Putri Amelia', 'karyawan'),
(17, 'Qori Rahman', 'manager'),
(18, 'Rina Marlina', 'karyawan'),
(19, 'Sandi Wijaya', 'karyawan'),
(20, 'Tari Kusuma', 'karyawan'),
(21, 'Umar Faruq', 'manager'),
(22, 'Vina Melati', 'karyawan'),
(23, 'Wahyudi', 'karyawan'),
(24, 'Xavier Adrian', 'karyawan'),
(25, 'Yani Fitri', 'manager'),
(26, 'Zaki Ramadhan', 'karyawan'),
(27, 'Alif Nugraha', 'karyawan'),
(28, 'Bella Safitri', 'karyawan'),
(29, 'Cahyo Nugroho', 'manager'),
(30, 'Dina Maharani', 'karyawan'),
(31, 'Erwin Saputra', 'karyawan'),
(32, 'Fajar Hidayat', 'karyawan'),
(33, 'Galih Pratama', 'manager'),
(34, 'Hanifah Zahra', 'karyawan'),
(35, 'Iqbal Maulana', 'karyawan'),
(36, 'Jihan Aulia', 'karyawan'),
(37, 'Kevin Saputra', 'manager'),
(38, 'Laila Nuraini', 'karyawan'),
(39, 'M Rizky', 'karyawan'),
(40, 'Nisa Rahma', 'karyawan');

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
(6, 'Farhan Maulana', 'farhan6@gmail.com', '123456'),
(7, 'Gina Oktavia', 'gina7@gmail.com', '123456'),
(8, 'Hendra Saputra', 'hendra8@gmail.com', '123456'),
(9, 'Indah Permata', 'indah9@gmail.com', '123456'),
(10, 'Joko Susilo', 'joko10@gmail.com', '123456'),
(11, 'Kartika Dewi', 'kartika11@gmail.com', '123456'),
(12, 'Lukman Hakim', 'lukman12@gmail.com', '123456'),
(13, 'Mega Sari', 'mega13@gmail.com', '123456'),
(14, 'Nanda Putra', 'nanda14@gmail.com', '123456'),
(15, 'Oki Setiawan', 'oki15@gmail.com', '123456'),
(16, 'Putri Amelia', 'putri16@gmail.com', '123456'),
(17, 'Qori Rahman', 'qori17@gmail.com', '123456'),
(18, 'Rina Marlina', 'rina18@gmail.com', '123456'),
(19, 'Sandi Wijaya', 'sandi19@gmail.com', '123456'),
(20, 'Tari Kusuma', 'tari20@gmail.com', '123456'),
(21, 'Umar Faruq', 'umar21@gmail.com', '123456'),
(22, 'Vina Melati', 'vina22@gmail.com', '123456'),
(23, 'Wahyudi', 'wahyu23@gmail.com', '123456'),
(24, 'Xavier Adrian', 'xavier24@gmail.com', '123456'),
(25, 'Yani Fitri', 'yani25@gmail.com', '123456'),
(26, 'Zaki Ramadhan', 'zaki26@gmail.com', '123456'),
(27, 'Alif Nugraha', 'alif27@gmail.com', '123456'),
(28, 'Bella Safitri', 'bella28@gmail.com', '123456'),
(29, 'Cahyo Nugroho', 'cahyo29@gmail.com', '123456'),
(30, 'Dina Maharani', 'dina30@gmail.com', '123456'),
(31, 'Erwin Saputra', 'erwin31@gmail.com', '123456'),
(32, 'Fajar Hidayat', 'fajar32@gmail.com', '123456'),
(33, 'Galih Pratama', 'galih33@gmail.com', '123456'),
(34, 'Hanifah Zahra', 'hanifah34@gmail.com', '123456'),
(35, 'Iqbal Maulana', 'iqbal35@gmail.com', '123456'),
(36, 'Jihan Aulia', 'jihan36@gmail.com', '123456'),
(37, 'Kevin Saputra', 'kevin37@gmail.com', '123456'),
(38, 'Laila Nuraini', 'laila38@gmail.com', '123456'),
(39, 'M Rizky', 'rizky39@gmail.com', '123456'),
(40, 'Nisa Rahma', 'nisa40@gmail.com', '123456');

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
  ADD PRIMARY KEY (`id_pekerja`);

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
  MODIFY `id_absen` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id_cuti` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jam_kerja`
--
ALTER TABLE `jam_kerja`
  MODIFY `id_jam_kerja` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `lembur`
--
ALTER TABLE `lembur`
  MODIFY `id_lembur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pekerja`
--
ALTER TABLE `pekerja`
  MODIFY `id_pekerja` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
