-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2026 at 02:55 PM
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
-- Database: `db_logistik_barang_azkaa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_logs_azka`
--

CREATE TABLE `tbl_activity_logs_azka` (
  `id_azka` int(11) NOT NULL,
  `user_id_azka` int(11) NOT NULL,
  `shipment_id_azka` int(11) DEFAULT NULL,
  `actions_azka` varchar(255) NOT NULL,
  `reference_azka` varchar(100) NOT NULL,
  `created_at_azka` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_activity_logs_azka`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_scans_azka`
--

CREATE TABLE `tbl_courier_scans_azka` (
  `id_azka` int(11) NOT NULL,
  `courier_id_azka` int(11) NOT NULL,
  `shipment_id_azka` int(11) DEFAULT NULL,
  `warehouse_id_azka` int(11) DEFAULT NULL,
  `scan_type_azka` enum('IN','OUT') NOT NULL,
  `scan_time_azka` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_courier_scans_azka`
--

INSERT INTO `tbl_courier_scans_azka` (`id_azka`, `courier_id_azka`, `shipment_id_azka`, `warehouse_id_azka`, `scan_type_azka`, `scan_time_azka`) VALUES
(92, 14, 79, 14, 'OUT', '2026-03-02 20:19:19'),
(93, 14, 79, NULL, '', '2026-03-02 20:20:45'),
(94, 14, NULL, 14, '', '2026-03-02 20:21:12'),
(95, 14, NULL, 14, '', '2026-03-02 20:21:12'),
(96, 7, 80, 14, 'OUT', '2026-04-05 21:26:30'),
(97, 7, 85, 14, 'OUT', '2026-04-05 21:26:30'),
(98, 7, 80, NULL, '', '2026-04-05 21:27:10'),
(99, 7, 85, NULL, '', '2026-04-05 21:27:38'),
(100, 7, NULL, 14, '', '2026-04-05 21:27:58'),
(101, 13, 78, 14, 'OUT', '2026-04-05 21:34:00'),
(102, 13, 93, 14, 'OUT', '2026-04-05 21:34:00'),
(103, 13, 78, NULL, '', '2026-04-05 21:34:20'),
(104, 13, 93, NULL, '', '2026-04-05 21:34:44'),
(105, 13, NULL, 14, '', '2026-04-05 21:35:03'),
(106, 15, 74, 14, 'OUT', '2026-04-05 21:41:29'),
(107, 15, 82, 14, 'OUT', '2026-04-05 21:41:29'),
(108, 15, 83, 14, 'OUT', '2026-04-05 21:41:29'),
(109, 15, 84, 14, 'OUT', '2026-04-05 21:41:29'),
(110, 15, 86, 14, 'OUT', '2026-04-05 21:41:29'),
(111, 15, 74, NULL, '', '2026-04-05 21:41:43'),
(112, 15, 82, NULL, '', '2026-04-05 21:41:56'),
(113, 15, 83, NULL, '', '2026-04-05 21:42:23'),
(114, 15, 84, NULL, '', '2026-04-05 21:42:49'),
(115, 15, 86, NULL, '', '2026-04-05 21:43:16'),
(116, 11, 77, 14, 'OUT', '2026-04-05 21:43:57'),
(117, 11, 81, 14, 'OUT', '2026-04-05 21:43:57'),
(118, 11, 77, NULL, '', '2026-04-05 21:44:27'),
(119, 11, 81, NULL, '', '2026-04-05 21:44:44'),
(120, 11, NULL, 14, '', '2026-04-05 21:45:06'),
(121, 11, 88, 14, 'OUT', '2026-04-06 14:41:59'),
(122, 11, 91, 14, 'OUT', '2026-04-06 14:41:59'),
(123, 11, 88, NULL, '', '2026-04-06 14:42:23'),
(124, 11, 91, NULL, '', '2026-04-06 14:42:37'),
(125, 11, NULL, 14, '', '2026-04-06 14:43:01'),
(126, 7, 90, 14, 'OUT', '2026-04-06 14:43:39'),
(127, 7, 90, NULL, '', '2026-04-06 14:44:00'),
(128, 7, NULL, 14, '', '2026-04-06 14:44:18'),
(129, 12, 87, 14, 'OUT', '2026-04-06 15:32:34'),
(130, 12, 94, 14, 'OUT', '2026-04-06 15:32:34'),
(131, 12, 97, 14, 'OUT', '2026-04-06 15:32:34'),
(132, 12, 87, NULL, '', '2026-04-06 15:32:58'),
(133, 12, 94, NULL, '', '2026-04-06 15:33:19'),
(134, 12, 97, NULL, '', '2026-04-06 15:33:56'),
(135, 12, NULL, 14, '', '2026-04-06 15:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver_scans_azka`
--

CREATE TABLE `tbl_driver_scans_azka` (
  `id_azka` int(11) NOT NULL,
  `driver_id_azka` int(11) DEFAULT NULL,
  `warehouse_id_azka` int(11) DEFAULT NULL,
  `scan_type_azka` enum('IN','OUT') DEFAULT NULL,
  `scan_time_azka` datetime DEFAULT NULL,
  `latitude_azka` decimal(10,7) DEFAULT NULL,
  `longitude_azka` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_driver_scans_azka`
--

INSERT INTO `tbl_driver_scans_azka` (`id_azka`, `driver_id_azka`, `warehouse_id_azka`, `scan_type_azka`, `scan_time_azka`, `latitude_azka`, `longitude_azka`) VALUES
(56, 17, 16, 'IN', '2026-03-01 21:30:19', -7.2489076, 112.7502949),
(57, 17, 16, 'OUT', '2026-03-01 21:33:25', -7.2489076, 112.7502949),
(58, 10, 15, 'IN', '2026-03-02 19:57:19', -6.1924323, 106.7648468),
(59, 10, 15, 'OUT', '2026-03-02 19:57:40', -6.1924323, 106.7648468),
(60, 17, 14, 'IN', '2026-03-02 20:00:12', -6.9088790, 107.6106028),
(61, 17, 14, 'OUT', '2026-03-02 20:00:23', -6.9088790, 107.6106028),
(62, 10, 14, 'IN', '2026-03-02 20:01:05', -6.9088790, 107.6106028),
(63, 10, 14, 'OUT', '2026-03-02 20:01:13', -6.9088790, 107.6106028),
(66, 17, 15, 'IN', '2026-04-06 19:24:18', -6.1924323, 106.7648468),
(67, 17, 15, 'OUT', '2026-04-06 19:46:11', -6.1924323, 106.7648468),
(69, 17, 14, 'IN', '2026-04-06 20:22:13', -6.9088790, 107.6106028),
(70, 17, 14, 'OUT', '2026-04-06 20:22:34', -6.9088790, 107.6106028);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_azka`
--

CREATE TABLE `tbl_products_azka` (
  `id_azka` int(11) NOT NULL,
  `shipment_id_azka` int(11) DEFAULT NULL,
  `nama_barang_azka` varchar(100) DEFAULT NULL,
  `berat_azka` float DEFAULT NULL,
  `qty_azka` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_products_azka`
--

INSERT INTO `tbl_products_azka` (`id_azka`, `shipment_id_azka`, `nama_barang_azka`, `berat_azka`, `qty_azka`) VALUES
(37, 74, 'Jersey Futsall', 0.2, 1),
(40, 77, 'Mouse', 0.1, 1),
(41, 78, 'Mochi', 0.5, 3),
(42, 79, 'Magnum 1 bks', 0.2, 1),
(43, 80, 'Remover', 0.6, 1),
(44, 81, 'Alat Olahraga', 0.6, 1),
(45, 82, 'Hnadphone', 0.8, 1),
(46, 83, 'Speaker', 1, 1),
(47, 84, 'Knalpot', 1.5, 1),
(48, 85, 'Headset', 0.4, 1),
(49, 86, 'Custom Shockbreker', 3, 2),
(50, 87, 'Case Tecno', 0.4, 1),
(51, 88, 'Kartu', 0.3, 1),
(53, 90, 'Vape', 0.3, 1),
(54, 91, 'Sarung', 0.3, 1),
(55, 92, 'Jersey Persib', 0.3, 1),
(56, 93, 'Iphone 11', 0.5, 1),
(57, 94, 'Iphone 11', 0.8, 1),
(58, 95, 'Hnadphone', 0.7, 1),
(59, 96, 'Vape', 0.3, 1),
(60, 97, 'Bola Volly ', 0.5, 1),
(61, 98, 'Bola Volly ', 0.5, 2),
(67, 104, 'Iphone', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles_azka`
--

CREATE TABLE `tbl_roles_azka` (
  `id_azka` int(11) NOT NULL,
  `nama_azka` varchar(50) NOT NULL,
  `description_azka` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_roles_azka`
--

INSERT INTO `tbl_roles_azka` (`id_azka`, `nama_azka`, `description_azka`) VALUES
(1, 'admin', 'full acces system\r\n\r\n'),
(2, 'Gudang', 'pengelolaan barang'),
(3, 'Kurir', 'Pengantaran barang'),
(5, 'Driver', 'Membawa Paket');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipment_azka`
--

CREATE TABLE `tbl_shipment_azka` (
  `id_azka` int(11) NOT NULL,
  `tracking_number_azka` varchar(50) DEFAULT NULL,
  `sender_name_azka` varchar(100) DEFAULT NULL,
  `qr_code_data_azka` text NOT NULL,
  `receiver_name_azka` varchar(100) DEFAULT NULL,
  `receiver_address_azka` text DEFAULT NULL,
  `warehouse_id_azka` int(11) DEFAULT NULL,
  `courier_id_azka` int(11) DEFAULT NULL,
  `driver_id_azka` int(11) DEFAULT NULL,
  `status_azka` varchar(30) DEFAULT NULL,
  `is_interisland` tinyint(4) NOT NULL,
  `created_at_azka` datetime DEFAULT current_timestamp(),
  `updated_at_azka` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `origin_lat` decimal(10,7) DEFAULT NULL,
  `origin_lng` decimal(10,7) DEFAULT NULL,
  `last_lat` decimal(10,7) DEFAULT NULL,
  `last_lng` decimal(10,7) DEFAULT NULL,
  `destination_lat` double DEFAULT NULL,
  `destination_lng` double DEFAULT NULL,
  `receiver_city_azka` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_shipment_azka`
--

INSERT INTO `tbl_shipment_azka` (`id_azka`, `tracking_number_azka`, `sender_name_azka`, `qr_code_data_azka`, `receiver_name_azka`, `receiver_address_azka`, `warehouse_id_azka`, `courier_id_azka`, `driver_id_azka`, `status_azka`, `is_interisland`, `created_at_azka`, `updated_at_azka`, `origin_lat`, `origin_lng`, `last_lat`, `last_lng`, `destination_lat`, `destination_lng`, `receiver_city_azka`) VALUES
(74, 'AE-1772368955-600', 'Muhammad Azka', 'PAKET|74|AE-1772368955-600', 'Muhammad Chandra', 'Jl. Cipageran No. 10 - Kota Cimahi', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 19:42:36', '2026-04-05 21:41:43', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.8567613, 107.5436302, 'CIMAHI'),
(77, 'AE-1772369363-112', 'Rafasya', 'PAKET|77|AE-1772369363-112', 'Muhammad Azka ', 'Jl. Galanggang No. 10 - Kec. Batujajar', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 19:49:25', '2026-04-05 21:44:27', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.915641, 107.4943744, 'BATUJAJAR'),
(78, 'AE-1772369612-941', 'Muhammad Azka', 'PAKET|78|AE-1772369612-941', 'Raisya', 'Jl. Sukaresik No.20 - Kab. Tasikmalaya', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 19:53:33', '2026-04-05 21:34:20', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -7.1502103, 108.1806284, 'TASIKMALAYA'),
(79, 'AE-1772369702-231', 'Hafiz', 'PAKET|79|AE-1772369702-231', 'Bara', 'Jl. Raya Soreang No. 30 - Kab. Bandung', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 19:55:04', '2026-03-02 20:20:45', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -7.0246735, 107.528633, 'KABUPATEN BANDUNG'),
(80, 'AE-1772369905-208', 'Ali Firdaus', 'PAKET|80|AE-1772369905-208', 'Rafasya', 'Jl. Raya Batujajar No. 20 - Kab. Bandung Barat', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 19:58:26', '2026-04-05 21:27:10', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.8636059, 107.5032915, 'BANDUNG BARAT'),
(81, 'AE-1772369975-549', 'Athar Sadika', 'PAKET|81|AE-1772369975-549', 'Raihan', 'Jl. Galanggang No. 70  - Kec. Batujajar', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 19:59:36', '2026-04-05 21:44:44', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.915641, 107.4943744, 'BATUJAJAR'),
(82, 'AE-1772370054-376', 'Akbar ', 'PAKET|82|AE-1772370054-376', 'Ramdan', 'Jl. Padasuka No. 10 - Kota Cimahi', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:00:56', '2026-04-05 21:41:56', -6.1924323, 106.7648468, -6.1924323, 106.7648468, -6.8689184, 107.5262085, 'CIMAHI'),
(83, 'AE-1772370097-699', 'Ramdan', 'PAKET|83|AE-1772370097-699', 'Muhammad Azzam ', 'Jl. Ciawitali No.10 - Kota Cimahi', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:01:39', '2026-04-05 21:42:23', -6.1924323, 106.7648468, -6.1924323, 106.7648468, -6.8662101, 107.55237, 'CIMAHI'),
(84, 'AE-1772370151-849', 'Hail Sukma ', 'PAKET|84|AE-1772370151-849', 'Exchel ', 'Jl. Kolonel Masturi No. 10 - Kota Cimahi', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:02:33', '2026-04-05 21:42:49', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.865152, 107.5435767, 'CIMAHI'),
(85, 'AE-1772370242-773', 'Raditya', 'PAKET|85|AE-1772370242-773', 'Ahkam', 'Jl. Cimareme No. 20 - Kab. Bandung Barat', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:04:04', '2026-04-05 21:27:38', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.8636368, 107.5040682, 'BANDUNG BARAT'),
(86, 'AE-1772370326-974', 'Zidan ', 'PAKET|86|AE-1772370326-974', 'Raihan', 'Jl. Kamarung No.10 - Kota Cimahi', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:05:28', '2026-04-05 21:43:16', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.8589773, 107.5491048, 'CIMAHI'),
(87, 'AE-1772370387-221', 'Hafiz', 'PAKET|87|AE-1772370387-221', 'Muhammad Azka ', 'Jl. Raya Ciwidey No. 20 - Kab. Bandung', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:06:29', '2026-04-06 15:32:58', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -7.1032329, 107.4683574, 'CIWIDEY'),
(88, 'AE-1772370446-186', 'Bara', 'PAKET|88|AE-1772370446-186', 'Rizal ', 'Jl. Raya Batujajar No.45 - Kec. Batujajar', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:07:28', '2026-04-06 14:42:23', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.9145444, 107.4967993, 'BATUJAJAR'),
(90, 'AE-1772370656-519', 'Muhammad Ezra', 'PAKET|90|AE-1772370656-519', 'Rafasya', 'Jl. Raya Padalarang Np. 20 - Kab. Bandung Barat', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:10:58', '2026-04-06 14:44:00', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.8421007, 107.4831684, 'BANDUNG BARAT'),
(91, 'AE-1772370717-772', 'Rizal', 'PAKET|91|AE-1772370717-772', 'Taufik', 'Jl. Raya Batujajar No.10 - Kec. Batujajar', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:11:59', '2026-04-06 14:42:37', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.9145444, 107.4967993, 'BATUJAJAR'),
(92, 'AE-1772370819-583', 'Rizky', 'PAKET|92|AE-1772370819-583', 'Ghaza', 'Jl. Ciawi No. 25 - Kab. Tasikmalaya', 14, 13, NULL, 'READY_FOR_DELIVERY', 0, '2026-03-01 20:13:41', '2026-04-06 14:56:41', -6.1924323, 106.7648468, -6.1924323, 106.7648468, -7.156806, 108.1520776, 'TASIKMALAYA'),
(93, 'AE-1772370895-308', 'Muhammad Azka', 'PAKET|93|AE-1772370895-308', 'Raisya', 'Jl. Sukaresik No. 3 - Kab. Tasikmalaya', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:14:57', '2026-04-05 21:34:44', -6.1924323, 106.7648468, -6.1924323, 106.7648468, -7.1502103, 108.1806284, 'TASIKMALAYA'),
(94, 'AE-1772370947-199', 'Ghaza', 'PAKET|94|AE-1772370947-199', 'Muhammad Azka ', 'Jl. Raya Ciwidey No. 45 - Kab. Bandung', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:15:49', '2026-04-06 15:33:19', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -7.1032329, 107.4683574, 'CIWIDEY'),
(95, 'AE-1772370997-851', 'Rafasya', 'PAKET|95|AE-1772370997-851', 'Muhammad Chandra', 'Jl. Raya Soreang No. 28 - Kab. Bandung', 14, 14, NULL, 'READY_FOR_DELIVERY', 0, '2026-03-01 20:16:38', '2026-04-06 14:57:28', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -7.0275919, 107.5181668, 'KABUPATEN BANDUNG'),
(96, 'AE-1772371059-998', 'Muhammad Ezra', 'PAKET|96|AE-1772371059-998', 'Muhammad Azka ', 'Jl. Raya Soreang No. 55 - Kab. Bandung', 14, 14, NULL, 'READY_FOR_DELIVERY', 0, '2026-03-01 20:17:41', '2026-04-06 14:57:59', -6.1924323, 106.7648468, -6.1924323, 106.7648468, -7.0275919, 107.5181668, 'KABUPATEN BANDUNG'),
(97, 'AE-1772371128-161', 'Yoga Setiawan ', 'PAKET|97|AE-1772371128-161', 'Muhammad Chandra', 'Jl. Raya Ciwidey No. 90 - Kab. Bandung', 14, NULL, NULL, 'DELIVERED', 0, '2026-03-01 20:18:50', '2026-04-06 15:33:56', -6.1924323, 106.7648468, -6.1924323, 106.7648468, -7.1032329, 107.4683574, 'CIWIDEY'),
(98, 'AE-1775476186-747', 'Yoga Setiawan ', 'PAKET|98|AE-1775476186-747', 'Muhammad Chandra', 'Jl. Soekarno Hatta No.20 - Kota Bandung', 14, 24, NULL, 'READY_FOR_DELIVERY', 0, '2026-04-06 18:49:50', '2026-04-06 21:05:09', -6.1924323, 106.7648468, -6.1924323, 106.7648468, -6.9314961, 107.576251, 'KOTA BANDUNG'),
(104, 'AE-1776254090-121', 'Azka', 'PAKET|104|AE-1776254090-121', 'Azzam', 'Jl. Pangauban, Kp. Pangauban, Perumahan Pangauban Silih Asih Blok M No.58, Kec. Batujajar, Kab. Bandung Barat, Jawa Barat, 40561', 16, NULL, NULL, 'CREATED', 0, '2026-04-15 18:55:05', '2026-04-15 18:55:05', -7.2489076, 112.7502949, -7.2489076, 112.7502949, -6.915253, 107.4948945, 'BANDUNG BARAT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_azka`
--

CREATE TABLE `tbl_users_azka` (
  `id_azka` int(11) NOT NULL,
  `username_azka` varchar(100) NOT NULL,
  `email_azka` varchar(100) NOT NULL,
  `password_hash_azka` varchar(255) NOT NULL,
  `role_id_azka` int(11) NOT NULL,
  `warehouse_id_azka` int(11) DEFAULT NULL,
  `created_at_azka` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at_azka` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active_azka` tinyint(1) DEFAULT 1,
  `last_activity` datetime DEFAULT NULL,
  `wilayah_azka` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users_azka`
--

INSERT INTO `tbl_users_azka` (`id_azka`, `username_azka`, `email_azka`, `password_hash_azka`, `role_id_azka`, `warehouse_id_azka`, `created_at_azka`, `update_at_azka`, `is_active_azka`, `last_activity`, `wilayah_azka`) VALUES
(1, 'Admin', 'm.azkanabhan07@gmail.com', 'pbkdf2:sha256:1000000$sJt8RlYDDklN6ZGq$08f5b01cc2feff97c75b8b826bd003091a81a6d015566e101afbaa40222b2431', 1, NULL, '2025-11-28 07:57:41', '2026-04-15 12:55:06', 1, '2026-04-15 19:55:06', NULL),
(7, 'fadlan', 'fadlan@gmail.com', 'pbkdf2:sha256:1000000$Br5EBARsNCgxSxfe$ccb32c800f4c64e3c1625ce015da2bab6b8a60bbfc006428256e8378a028ad19', 3, NULL, '2025-12-07 09:56:30', '2026-04-06 14:08:00', 1, '2026-04-06 21:08:00', 'BANDUNG BARAT'),
(8, 'Alif', 'alif1@gmail.com', 'pbkdf2:sha256:1000000$HB9QcY1IwvWyFGcx$3a03f3911a259b4fdd984f02c13de79660a766c4e392500b051b6c7b3e071cf5', 2, 14, '2026-01-19 12:37:03', '2026-04-15 12:39:44', 1, '2026-04-15 19:39:44', NULL),
(10, 'Fauzan', 'fauzan@gmail.com', 'pbkdf2:sha256:1000000$ZdQpvhRfyKrSihMT$2ed568da37120197f87a0e80cf788ab17ce0dc10eb9db6d15df15425cb8be0b5', 5, 16, '2026-02-12 12:35:17', '2026-04-15 12:28:59', 1, '2026-04-15 19:28:59', NULL),
(11, 'Andi Santoso', 'andi@gmail.com', 'pbkdf2:sha256:1000000$stNFXFgEs8qlPUaQ$6c6dd3e30e645b57994e06759c925f4de2dcb27609e73fc452c540d0faea7ebb', 3, NULL, '2026-03-01 13:21:11', '2026-04-06 07:43:04', 1, '2026-04-06 14:43:04', 'BATUJAJAR'),
(12, 'Suryana', 'surya@gmail.com', 'pbkdf2:sha256:1000000$Pd80MVIhyG7YyHOS$9549135a597aef8efb6cbe96c9c64c8a05f14df7e43ccf01e0d8e5ccd7a0d884', 3, NULL, '2026-03-01 13:25:11', '2026-04-06 08:34:13', 1, '2026-04-06 15:34:13', 'CIWIDEY'),
(13, 'Gilang Sugilang', 'gilang@gmail.com', 'pbkdf2:sha256:1000000$LvZqcxlf1YloE1xc$152676312fb7b29fb767969a37ddf7a4215a9aaa85f36c16bad9c1eba3266e01', 3, NULL, '2026-03-01 13:58:33', '2026-04-05 14:35:06', 1, '2026-04-05 21:35:06', 'TASIKMALAYA'),
(14, 'budi suparlan', 'budi@gmail.com', 'pbkdf2:sha256:1000000$jtDpXlglsD509Kjy$84d19a07c14b159d266ae7fad185407ea8d41ab2740791fd3fd6d7c504ccc738', 3, NULL, '2026-03-01 14:00:01', '2026-03-02 13:21:17', 1, '2026-03-02 20:21:17', 'KABUPATEN BANDUNG'),
(15, 'Sandi', 'sandi@gmail.com', 'pbkdf2:sha256:1000000$r9E3Bf6hPojO4va0$a094108f0e3743c5482bdaae3525840781de6b645ebbd0703032a77589ef2a70', 3, NULL, '2026-03-01 14:00:42', '2026-04-05 14:43:19', 1, '2026-04-05 21:43:19', 'CIMAHI'),
(17, 'Yusuf Ismail', 'Yusuf@gmail.com', 'pbkdf2:sha256:1000000$zfvfcyAOMjvSCAr0$b39dfb3e6dc3b82ae4bd9abc470bf5496256b21d6dfa4c42cd64f2055ea48869', 5, 15, '2026-03-01 14:21:56', '2026-04-06 13:22:41', 1, '2026-04-06 20:22:41', NULL),
(23, 'irsyad', 'irsyad@gmail.com', 'pbkdf2:sha256:1000000$OGOyV3bv3xBSPPqu$8b5b282667cb04a988abc9406be5c4ca1f0bec77fe1f94187e3ea79e7523aa45', 5, 14, '2026-04-06 14:01:37', '2026-04-06 14:01:37', 1, NULL, NULL),
(24, 'Fatir', 'fatir@gmail.com', 'pbkdf2:sha256:1000000$PhTsWhtwVXu4YFz5$1ef4ee150acc3823e32363fc5f1fa417acbca20e21c362cf39101e4ce02cdf73', 3, NULL, '2026-04-06 14:02:41', '2026-04-06 14:03:59', 1, '2026-04-06 21:03:59', 'KOTA BANDUNG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warehouses_azka`
--

CREATE TABLE `tbl_warehouses_azka` (
  `id_azka` int(11) NOT NULL,
  `nama_azka` varchar(100) NOT NULL,
  `address_azka` varchar(100) NOT NULL,
  `qr_code_data_azka` text NOT NULL,
  `created_at_azka` timestamp NOT NULL DEFAULT current_timestamp(),
  `latitude_azka` decimal(10,7) DEFAULT NULL,
  `longitude_azka` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_warehouses_azka`
--

INSERT INTO `tbl_warehouses_azka` (`id_azka`, `nama_azka`, `address_azka`, `qr_code_data_azka`, `created_at_azka`, `latitude_azka`, `longitude_azka`) VALUES
(14, 'Gudang Bandung Pusat', 'Jl. Merdeka No.5 Babakan Ciamis, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40117', 'GUDANG|14', '2026-02-05 10:08:02', -6.9088790, 107.6106028),
(15, 'Gudang Jakarta Barat', 'Jl. Melati No.90 RT.13/RW.10, Kb. Jeruk, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota J', 'GUDANG|15', '2026-02-05 10:10:52', -6.1924323, 106.7648468),
(16, 'Gudang Surabaya Pusat', 'Jl. Kusuma Bangsa No.21 Ketabang, Kec. Genteng, Surabaya, Jawa Timur 6027', 'GUDANG|16', '2026-02-05 10:11:37', -7.2489076, 112.7502949),
(17, 'Gudang Karawang Hub', 'Jl. Jati Baru No.33, Sukaharja, Telukjambe Timur, Karawang, Jawa Barat 41361', 'GUDANG|17', '2026-04-15 12:01:45', -6.3338018, 107.2667821),
(18, 'Gudang Kota Cimahi', 'Jl. Gandawijaya, Setiamanah, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40524', 'GUDANG|18', '2026-04-15 12:06:01', -6.8786806, 107.5346253),
(19, 'Gudang Kabupaten Bandung', 'Jl. Raya Ciwidey No.3, Ciwidey, Kec. Ciwidey, Kabupaten Bandung, Jawa Barat 40973', 'GUDANG|19', '2026-04-15 12:07:32', -7.1637986, 107.3590193),
(20, 'Gudang Kabupaten Bandung Barat', 'Jl. Babakan Pari, Batujajar Tim., Kec. Batujajar, Kabupaten Bandung Barat, Jawa Barat 40561', 'GUDANG|20', '2026-04-15 12:09:51', -6.9152530, 107.4948945),
(21, 'Gudang Kota Bekasi', 'Jl. Bandeng Raya No.18a, RT.006/RW.009, Kayuringin Jaya, Kec. Bekasi Sel., Kota Bks, Jawa Barat 1714', 'GUDANG|21', '2026-04-15 12:11:07', -6.2570408, 106.9814296),
(22, 'Gudang Kota Bogor', 'Jl. Raya Pajajaran, Babakan, Kecamatan Bogor Tengah, Kota Bogor, Jawa Barat', 'GUDANG|22', '2026-04-15 12:13:55', -6.5963564, 106.7973188),
(23, 'Gudang Kota Tasikmalaya', 'Jl. Noenoeng Tisnasaputra 70-59, Kahuripan, Kec. Tawang, Kab. Tasikmalaya, Jawa Barat 46115', 'GUDANG|23', '2026-04-15 12:15:17', -7.3510275, 108.2239467),
(24, 'Gudang Kabupaten Tasikmalaya', 'Jl. Ps. Ciawi 1-6, Pakemitan, Kec. Ciawi, Kabupaten Tasikmalaya, Jawa Barat 46156', 'GUDANG|24', '2026-04-15 12:18:37', -6.9854515, 107.6404727),
(25, 'Gudang Kota Sukabumi', 'Jl. RH. Didi Sukardi, Gedongpanjang, Kec. Citamiang, Kota Sukabumi, Jawa Barat 43143', 'GUDANG|25', '2026-04-15 12:19:42', -6.9345552, 106.9319309),
(26, 'Gudang Kota Jakarta Selatan', 'Jl. Kencana III 14, RT.14/RW.13, Cilandak Bar., Kec. Cilandak, Kota Jakarta Selatan, Daerah Khusus I', 'GUDANG|26', '2026-04-15 12:45:14', -6.2891398, 106.7985374),
(27, 'Gudang Jakarta Pusat', 'Jl. M.H. Thamrin, RT.9/RW.4, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jak', 'GUDANG|27', '2026-04-15 12:46:07', -6.2368247, 106.9847893),
(28, 'Gudang Kota Jakarta Timur', 'Jl. Kumboyono, RT.14/RW.3, Halim Perdanakusuma, Kec. Makasar, Kota Jakarta Timur, Daerah Khusus Ibuk', 'GUDANG|28', '2026-04-15 12:48:11', -6.2669918, 106.8886181),
(29, 'Gudang Kota Jakarta Utara', 'Jl. Mandor Iren 1-17, RT.2/RW.9, Sunter Jaya, Kec. Tj. Priok, Jakarta Utara, Daerah Khusus Ibukota J', 'GUDANG|29', '2026-04-15 12:49:06', -6.1462496, 106.8848824),
(30, 'Gudang Kota Malang', 'Jl. Trunojoyo, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', 'GUDANG|30', '2026-04-15 12:49:57', -7.9725456, 112.6347393),
(31, 'Gudang Kota Kediri', 'Jl. Sunan Ampel III 102, Rejomulyo, Kec. Kota, Kabupaten Kediri, Jawa Timur 64129', 'GUDANG|31', '2026-04-15 12:50:26', -7.8308366, 112.0207848),
(32, 'Gudang Kota Blitar', 'Jl. Sukun 1-9, Sukorejo, Kec. Sukorejo, Kota Blitar, Jawa Timur 66117', 'GUDANG|32', '2026-04-15 12:53:04', -8.0939054, 112.1633161),
(33, 'Gudang Kota Sidoarjo', 'Jl. Pahlawan I 3-7, Rw6, Sidokumpul, Kec. Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61212', 'GUDANG|33', '2026-04-15 12:53:56', -7.4158342, 112.7213661),
(34, 'Gudang Kabupaten Gresik', 'Jl. Leran, Tomang, Banjarsari, Kec. Manyar, Kabupaten Gresik, Jawa Timur 61151', 'GUDANG|34', '2026-04-15 12:55:06', -7.0988729, 112.5916418);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_activity_logs_azka`
--
ALTER TABLE `tbl_activity_logs_azka`
  ADD PRIMARY KEY (`id_azka`),
  ADD KEY `fk_userr` (`user_id_azka`),
  ADD KEY `fk_logs_shipment` (`shipment_id_azka`);

--
-- Indexes for table `tbl_courier_scans_azka`
--
ALTER TABLE `tbl_courier_scans_azka`
  ADD PRIMARY KEY (`id_azka`),
  ADD KEY `courier_id_azka` (`courier_id_azka`),
  ADD KEY `warehouse_id_azka` (`warehouse_id_azka`),
  ADD KEY `shipment_id_azka` (`shipment_id_azka`);

--
-- Indexes for table `tbl_driver_scans_azka`
--
ALTER TABLE `tbl_driver_scans_azka`
  ADD PRIMARY KEY (`id_azka`),
  ADD KEY `fk_gudang` (`warehouse_id_azka`),
  ADD KEY `fk_shipment` (`driver_id_azka`);

--
-- Indexes for table `tbl_products_azka`
--
ALTER TABLE `tbl_products_azka`
  ADD PRIMARY KEY (`id_azka`),
  ADD KEY `shipment_id_azka` (`shipment_id_azka`);

--
-- Indexes for table `tbl_roles_azka`
--
ALTER TABLE `tbl_roles_azka`
  ADD PRIMARY KEY (`id_azka`);

--
-- Indexes for table `tbl_shipment_azka`
--
ALTER TABLE `tbl_shipment_azka`
  ADD PRIMARY KEY (`id_azka`),
  ADD UNIQUE KEY `tracking_number_azka` (`tracking_number_azka`),
  ADD KEY `warehouse_id_azka` (`warehouse_id_azka`),
  ADD KEY `courier_id_azka` (`courier_id_azka`),
  ADD KEY `driver_id_azka` (`driver_id_azka`);

--
-- Indexes for table `tbl_users_azka`
--
ALTER TABLE `tbl_users_azka`
  ADD PRIMARY KEY (`id_azka`),
  ADD UNIQUE KEY `email_azka` (`email_azka`),
  ADD KEY `fk_role_id` (`role_id_azka`),
  ADD KEY `fk_user_warehouse` (`warehouse_id_azka`);

--
-- Indexes for table `tbl_warehouses_azka`
--
ALTER TABLE `tbl_warehouses_azka`
  ADD PRIMARY KEY (`id_azka`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_activity_logs_azka`
--
ALTER TABLE `tbl_activity_logs_azka`
  MODIFY `id_azka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1351;

--
-- AUTO_INCREMENT for table `tbl_courier_scans_azka`
--
ALTER TABLE `tbl_courier_scans_azka`
  MODIFY `id_azka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `tbl_driver_scans_azka`
--
ALTER TABLE `tbl_driver_scans_azka`
  MODIFY `id_azka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_products_azka`
--
ALTER TABLE `tbl_products_azka`
  MODIFY `id_azka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_roles_azka`
--
ALTER TABLE `tbl_roles_azka`
  MODIFY `id_azka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_shipment_azka`
--
ALTER TABLE `tbl_shipment_azka`
  MODIFY `id_azka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_users_azka`
--
ALTER TABLE `tbl_users_azka`
  MODIFY `id_azka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_warehouses_azka`
--
ALTER TABLE `tbl_warehouses_azka`
  MODIFY `id_azka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_activity_logs_azka`
--
ALTER TABLE `tbl_activity_logs_azka`
  ADD CONSTRAINT `fk_logs_shipment` FOREIGN KEY (`shipment_id_azka`) REFERENCES `tbl_shipment_azka` (`id_azka`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_userr` FOREIGN KEY (`user_id_azka`) REFERENCES `tbl_users_azka` (`id_azka`);

--
-- Constraints for table `tbl_courier_scans_azka`
--
ALTER TABLE `tbl_courier_scans_azka`
  ADD CONSTRAINT `tbl_courier_scans_azka_ibfk_1` FOREIGN KEY (`courier_id_azka`) REFERENCES `tbl_users_azka` (`id_azka`),
  ADD CONSTRAINT `tbl_courier_scans_azka_ibfk_2` FOREIGN KEY (`warehouse_id_azka`) REFERENCES `tbl_warehouses_azka` (`id_azka`),
  ADD CONSTRAINT `tbl_courier_scans_azka_ibfk_3` FOREIGN KEY (`shipment_id_azka`) REFERENCES `tbl_shipment_azka` (`id_azka`);

--
-- Constraints for table `tbl_driver_scans_azka`
--
ALTER TABLE `tbl_driver_scans_azka`
  ADD CONSTRAINT `fk_driver` FOREIGN KEY (`driver_id_azka`) REFERENCES `tbl_users_azka` (`id_azka`),
  ADD CONSTRAINT `fk_gudang` FOREIGN KEY (`warehouse_id_azka`) REFERENCES `tbl_warehouses_azka` (`id_azka`);

--
-- Constraints for table `tbl_products_azka`
--
ALTER TABLE `tbl_products_azka`
  ADD CONSTRAINT `tbl_products_azka_ibfk_1` FOREIGN KEY (`shipment_id_azka`) REFERENCES `tbl_shipment_azka` (`id_azka`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_shipment_azka`
--
ALTER TABLE `tbl_shipment_azka`
  ADD CONSTRAINT `tbl_shipment_azka_ibfk_1` FOREIGN KEY (`warehouse_id_azka`) REFERENCES `tbl_warehouses_azka` (`id_azka`),
  ADD CONSTRAINT `tbl_shipment_azka_ibfk_2` FOREIGN KEY (`courier_id_azka`) REFERENCES `tbl_users_azka` (`id_azka`),
  ADD CONSTRAINT `tbl_shipment_azka_ibfk_3` FOREIGN KEY (`driver_id_azka`) REFERENCES `tbl_users_azka` (`id_azka`);

--
-- Constraints for table `tbl_users_azka`
--
ALTER TABLE `tbl_users_azka`
  ADD CONSTRAINT `fk_user_warehouse` FOREIGN KEY (`warehouse_id_azka`) REFERENCES `tbl_warehouses_azka` (`id_azka`),
  ADD CONSTRAINT `tbl_users_azka_ibfk_1` FOREIGN KEY (`role_id_azka`) REFERENCES `tbl_roles_azka` (`id_azka`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
