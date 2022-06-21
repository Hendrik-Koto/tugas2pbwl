-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 04:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas2pbwl_kosma`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_golongan`
--

CREATE TABLE `tb_golongan` (
  `gol_id` tinyint(3) NOT NULL,
  `gol_kode` varchar(10) NOT NULL,
  `gol_nama` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_golongan`
--

INSERT INTO `tb_golongan` (`gol_id`, `gol_kode`, `gol_nama`, `created_at`, `update_at`) VALUES
(1, '1', 'KWH', '2022-06-21 14:23:24', '2022-06-21 21:23:24'),
(2, '2', 'Watt', '2022-06-21 14:23:37', '2022-06-21 21:23:37'),
(3, '3', 'Megawatt', '2022-06-21 14:25:29', NULL),
(4, '4', 'Token', '2022-06-21 14:25:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `pel_id` int(11) NOT NULL,
  `pel_id_gol` tinyint(3) DEFAULT NULL,
  `pel_no` varchar(20) NOT NULL,
  `pel_nama` varchar(50) DEFAULT NULL,
  `pel_alamat` text DEFAULT NULL,
  `pel_hp` varchar(20) DEFAULT NULL,
  `pel_ktp` varchar(50) DEFAULT NULL,
  `pel_seri` varchar(50) DEFAULT NULL,
  `pel_meteran` int(11) DEFAULT NULL,
  `pel_aktif` enum('Y','N') DEFAULT NULL,
  `pel_id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`pel_id`, `pel_id_gol`, `pel_no`, `pel_nama`, `pel_alamat`, `pel_hp`, `pel_ktp`, `pel_seri`, `pel_meteran`, `pel_aktif`, `pel_id_user`, `created_at`, `update_at`) VALUES
(1, 1, '08742', 'Hendrik', 'Padang Bulan', 'Xiaomi', '12356', '679XV', 8990077, 'Y', 1, '2022-06-21 14:02:55', NULL),
(2, 2, '', 'Koto', 'Padang Panjang', '08159520824', '0987544', NULL, NULL, NULL, NULL, '2022-06-21 14:24:50', NULL),
(3, 3, '', 'Hendrikati', 'Pasaman', '086547889901', '1234234', NULL, NULL, NULL, NULL, '2022-06-21 14:25:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_nama` varchar(100) DEFAULT NULL,
  `user_alamat` text DEFAULT NULL,
  `user_hp` varchar(25) DEFAULT NULL,
  `user_pos` varchar(5) DEFAULT NULL,
  `user_role` tinyint(2) DEFAULT NULL,
  `user_aktif` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`user_id`, `user_email`, `user_password`, `user_nama`, `user_alamat`, `user_hp`, `user_pos`, `user_role`, `user_aktif`, `created_at`, `update_at`) VALUES
(1, 'hendrixkoto123@gmail.com', '123', 'Hendrik', 'Padang Bulan', '085261231554', '20131', 1, 1, '2022-06-20 14:22:02', '2022-06-21 21:22:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
