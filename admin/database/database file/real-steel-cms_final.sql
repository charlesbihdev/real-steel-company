-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Mar 06, 2024 at 04:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real-steel-cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Excavator', '2024-02-18 06:57:37', '2024-02-24 19:45:44'),
(2, 'Wheel loader', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(3, 'Bulldozer', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(4, 'Dumpers and trucks', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(5, 'Backhoe', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(6, 'Skid loader', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(7, 'Rollers', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(8, 'Concrete mixers', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(9, 'Concrete pumps', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(10, 'Light construction machine', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(11, 'Transet mixer and baching plant', '2024-02-25 21:53:53', '2024-03-06 11:58:09'),
(12, 'Motor Grader', '2024-02-28 12:16:23', '2024-03-06 11:58:14'),
(13, 'Cold Recycling Machine', '2024-02-28 12:39:24', '2024-03-06 11:58:20'),
(14, 'Asphalt Paver', '2024-02-28 12:45:14', '2024-03-06 11:58:24'),
(15, 'Cold Milling Machine', '2024-02-28 12:48:59', '2024-03-06 11:58:29'),
(16, 'Generators and Solar solution', '2024-02-28 13:55:41', '2024-03-06 11:58:34'),
(17, 'Power Tools', '2024-02-28 16:15:49', '2024-03-06 11:58:46'),
(18, 'Scaffolding and Form Work', '2024-03-01 03:56:38', '2024-03-06 11:58:52'),
(19, 'Air conditions', '2024-03-06 12:09:38', '2024-03-06 12:09:38'),
(20, 'Block Machines', '2024-03-06 12:11:57', '2024-03-06 12:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `src`, `productId`, `created_at`, `updated_at`) VALUES
(1, 'Self load concrete mixer_18hp.jpg', 2, '2024-02-18 02:57:39', '2024-02-18 02:57:39'),
(2, 'TITAN Cement mixer.jpg', 9, '2024-02-18 02:57:39', '2024-02-18 02:57:39'),
(3, 'Hydraulic concrete mixer.jpg', 3, '2024-02-18 02:57:39', '2024-02-18 02:57:39'),
(4, 'RS 3.5.jpg', 4, '2024-02-18 02:57:39', '2024-02-18 02:57:39'),
(5, 'Esquire manual load mixer-300 drum.jpg', 6, '2024-02-18 02:57:39', '2024-02-18 02:57:39'),
(6, 'Manual load concrete mixer.jpg', 7, '2024-02-18 03:14:00', '2024-02-18 03:14:00'),
(7, 'Megfin concrete mixer.jpg', 8, '2024-02-18 03:14:00', '2024-02-18 03:14:00'),
(8, 'Self load concrete mixer.jpg', 1, '2024-02-18 03:14:00', '2024-02-18 03:14:00'),
(9, 'Esquire manual load mixer.jpg', 5, '2024-02-18 03:14:00', '2024-02-18 03:14:00'),
(11, 'Ride_on_roller_compactor11hp.jpg', 14, '2024-02-19 02:21:08', '2024-02-19 02:21:08'),
(12, 'Ride_on_roller_compactor10hp.jpg', 15, '2024-02-19 02:25:59', '2024-02-19 02:25:59'),
(13, 'MF_600_roller_compactor.jpg', 16, '2024-02-19 02:46:09', '2024-02-19 02:46:09'),
(14, 'FLY_800c_double_drum_roller_compactor.jpg', 17, '2024-02-19 02:48:46', '2024-02-19 02:48:46'),
(15, 'DVR600H_double_drum_roller.jpg', 18, '2024-02-19 02:50:19', '2024-02-19 02:50:19'),
(16, 'SVR600H_single_drum_roller.jpg', 19, '2024-02-19 02:52:29', '2024-02-19 02:52:29'),
(17, 'MF300_single_drum_roller.jpg', 20, '2024-02-19 02:54:21', '2024-02-19 02:54:21'),
(18, 'SC-330B_plate_compactor.jpg', 21, '2024-02-19 03:00:59', '2024-02-19 03:00:59'),
(20, 'SC-160B_plate_compactor.jpg', 22, '2024-02-19 03:03:00', '2024-02-19 03:03:00'),
(21, 'SC90_plate_compactor.jpg', 23, '2024-02-19 03:14:40', '2024-02-19 03:14:40'),
(22, 'tamping_rammer.jpg', 24, '2024-02-19 03:16:24', '2024-02-19 03:16:24'),
(23, 'tamping_rammer_honda_5hp.jpg', 25, '2024-02-19 03:17:34', '2024-02-19 03:17:34'),
(24, 'double_power_trowel.jpg', 26, '2024-02-19 03:19:10', '2024-02-19 03:19:10'),
(25, 'ST48_power_trowel.jpg', 27, '2024-02-19 03:20:46', '2024-02-19 03:20:46'),
(26, 'ST36_power_trowel.jpg', 28, '2024-02-19 03:22:06', '2024-02-19 03:22:06'),
(27, 'power_trowel_loncin_5hp.jpg', 29, '2024-02-19 03:25:11', '2024-02-19 03:25:11'),
(28, 'sfs1_screeding_machine.jpg', 30, '2024-02-19 03:26:24', '2024-02-19 03:26:24'),
(29, '6212E_double_drum_roller.jpg', 10, '2024-02-20 22:52:11', '2024-02-20 22:52:11'),
(30, '6114E_single_drum_roller.jpg', 11, '2024-02-21 00:47:50', '2024-02-21 00:47:50'),
(31, '6114E_single_drum_roller_155kw_19tons.jpg', 12, '2024-02-21 00:53:04', '2024-02-21 00:53:04'),
(32, '6526E_pneumatic_roller_132kw_26tons.jpg', 13, '2024-02-21 00:54:34', '2024-02-21 00:54:34'),
(33, '920E_excavator_112kw_1m3_600mm.jpg', 31, '2024-02-22 02:32:53', '2024-02-22 02:32:53'),
(34, '922E_excavator_113kw_1.3m3_600mm.jpg', 32, '2024-02-22 02:35:15', '2024-02-22 02:35:15'),
(35, '925E_excavator_142kw_1.3m3_600mm.jpg', 33, '2024-02-22 02:36:28', '2024-02-22 02:36:28'),
(36, '933E_excavator_169kw_1.6m3_600mm.jpg', 34, '2024-02-22 02:38:52', '2024-02-22 02:38:52'),
(37, '950E_excavator_282kw_3.2m3_600mm.jpg', 35, '2024-02-22 02:40:08', '2024-02-22 02:40:08'),
(38, '952EHD_excavator_280kw_3.2m3_600mm.jpg', 36, '2024-02-22 02:41:17', '2024-02-22 02:41:17'),
(39, '970E_excavator_373kw_4.3m3_650mm.jpg', 37, '2024-02-22 02:42:37', '2024-02-22 02:42:37'),
(40, 'SY215C-9LC_SPARK_excavator_104kw_1.1m3_600mm.jpg', 39, '2024-02-22 02:44:09', '2024-02-22 02:44:09'),
(41, '990F_excavator_447.5kw_5.6m3_650mm.jpg', 38, '2024-02-22 02:48:05', '2024-02-22 02:48:05'),
(42, 'SY350C-9HD_excavator_256hp_2m3_800mm.jpg', 40, '2024-02-22 02:50:14', '2024-02-22 02:50:14'),
(43, 'B230_bulldozer_179KW_7.8m3_560mm.jpg', 41, '2024-02-23 20:59:44', '2024-02-23 20:59:44'),
(44, 'B320_bulldozer_257kw_10.4m3_560mm.jpg', 42, '2024-02-23 23:07:58', '2024-02-23 23:07:58'),
(45, 'SD22_bulldozer_176kw_7.5m3_610mm.jpg', 43, '2024-02-23 23:12:12', '2024-02-23 23:12:12'),
(46, 'QT4-15_block_machine.jpg', 44, '2024-02-23 23:16:54', '2024-02-23 23:16:54'),
(47, 'QT4-25_block_machine.jpg', 45, '2024-02-23 23:19:09', '2024-02-23 23:19:09'),
(48, 'QTJ4-26_block_machine.jpg', 46, '2024-02-23 23:31:11', '2024-02-23 23:31:11'),
(49, '48block_machine.jpg', 48, '2024-02-23 23:34:31', '2024-02-23 23:34:31'),
(50, 'block_machine_electrical_motor.jpg', 49, '2024-02-23 23:35:26', '2024-02-23 23:35:26'),
(51, '5967675759088746244_121.jpg', 50, '2024-02-25 21:20:42', '2024-02-25 21:23:29'),
(57, 'SD90-C5_bulldozer.jpg', 51, '2024-02-25 21:48:02', '2024-02-25 21:48:02'),
(58, 'SDX5312GJBZ02_bulldozer.jpg', 52, '2024-02-25 21:57:06', '2024-02-25 21:57:06'),
(59, 'SDX5250GJBZ02_transit_mixer.jpg', 53, '2024-02-25 22:00:46', '2024-02-25 22:00:46'),
(60, 'HZS075-2H_batching_plant.jpg', 54, '2024-02-25 23:15:09', '2024-02-25 23:15:09'),
(61, 'LB2000_asphalt_mixing_plant.jpg', 55, '2024-02-25 23:20:54', '2024-02-25 23:20:54'),
(62, 'SE210_excavator.jpg', 56, '2024-02-27 06:52:27', '2024-02-27 06:52:27'),
(63, 'SE220LC_excavator.jpg', 57, '2024-02-27 07:32:13', '2024-02-27 07:32:13'),
(64, 'SE245LC_excavator.jpg', 58, '2024-02-27 07:33:23', '2024-02-27 07:33:23'),
(65, 'SE335LC_excavator.jpg', 59, '2024-02-27 07:34:29', '2024-02-27 07:34:29'),
(66, 'SE400LC_excavator.jpg', 60, '2024-02-27 07:35:26', '2024-02-27 07:35:26'),
(67, 'SE650LC_excavator.jpg', 61, '2024-02-27 07:37:47', '2024-02-27 07:37:47'),
(68, 'SE750LC_excavator.jpg', 62, '2024-02-27 07:38:37', '2024-02-27 07:38:37'),
(69, 'SE980LC_excavator.jpg', 63, '2024-02-27 07:48:03', '2024-02-27 07:48:03'),
(70, 'DL300-M_track_loader.jpg', 64, '2024-02-27 07:56:20', '2024-02-27 07:56:20'),
(71, 'SL50WN_wheel_loader.jpg', 65, '2024-02-27 08:07:17', '2024-02-27 08:07:17'),
(72, 'L76_wheel_loader.jpg', 66, '2024-02-27 08:10:18', '2024-02-27 08:10:18'),
(73, 'ZL50CN_wheel_loader.jpg', 67, '2024-02-27 08:19:59', '2024-02-27 08:19:59'),
(74, 'SR_14_MA_roller.jpg', 69, '2024-02-27 08:23:41', '2024-02-27 08:23:41'),
(75, 'SR_20_MA.jpg', 70, '2024-02-27 08:27:39', '2024-02-27 08:27:39'),
(76, 'SRD14-_C6_Roller.jpg', 71, '2024-02-28 12:10:34', '2024-02-28 12:10:34'),
(77, 'SRT_30_H-_C6_Roller.jpg', 72, '2024-02-28 12:12:35', '2024-02-28 12:12:35'),
(78, 'SR_T_16_H_-_B6F_Roller.jpg', 73, '2024-02-28 12:13:26', '2024-02-28 12:13:26'),
(79, 'SG15-B6_motor_grader.jpg', 74, '2024-02-28 12:33:07', '2024-02-28 12:35:01'),
(80, 'SG24-C5_motor_grader.jpg', 75, '2024-02-28 12:36:21', '2024-02-28 12:36:21'),
(81, '4180D_motor_grader.jpg', 76, '2024-02-28 12:40:05', '2024-02-28 12:40:05'),
(82, 'DGL700-C_cold_recycling_machine.jpg', 77, '2024-02-28 12:41:27', '2024-02-28 12:41:27'),
(83, 'DGL550M-C_cold_recycling_machine.jpg', 78, '2024-02-28 12:42:40', '2024-02-28 12:42:40'),
(84, 'DGL480-C_cold_recycling_machine.jpg', 79, '2024-02-28 12:43:31', '2024-02-28 12:43:31'),
(85, 'SRP09-C5_asphalt_paver.jpg', 80, '2024-02-28 12:46:37', '2024-02-28 12:46:37'),
(86, 'SRP12-C5_MA_asphalt_paver.jpg', 81, '2024-02-28 12:48:10', '2024-02-28 12:48:10'),
(88, 'SM200M-C6_Milling_Machine.jpg', 82, '2024-02-28 12:54:04', '2024-02-28 12:54:04'),
(89, 'SMT100M-C6_Cold_Milling_Machine.jpg', 83, '2024-02-28 12:54:48', '2024-02-28 12:54:48'),
(90, 'iron_rod_bender.jpg', 84, '2024-02-28 12:56:32', '2024-02-28 12:56:32'),
(91, 'euro_36_iron_rod_bender.jpg', 85, '2024-02-28 12:59:00', '2024-02-28 12:59:00'),
(92, 'gw_40_iron_rod_bender.jpg', 86, '2024-02-28 13:03:10', '2024-02-28 13:03:10'),
(93, 'c42_iron_rod_cutter.jpg', 87, '2024-02-28 13:09:37', '2024-02-28 13:09:37'),
(94, 'st_38_iron_rod_cutter.jpg', 88, '2024-02-28 13:42:11', '2024-02-28 13:42:11'),
(95, 'cq_40_iron_rod_cutter.jpg', 89, '2024-02-28 13:44:11', '2024-02-28 13:44:11'),
(96, 'steel_pipe_threading_machine.jpg', 90, '2024-02-28 13:55:19', '2024-02-28 13:55:19'),
(98, 'cgm_generators.jpg', 91, '2024-02-28 14:01:38', '2024-02-28 14:01:38'),
(99, 'saccal_generator_set.jpg', 92, '2024-02-28 14:07:34', '2024-02-28 14:07:34'),
(100, 'lees_generators.jpg', 93, '2024-02-28 14:55:18', '2024-02-28 14:55:18'),
(101, 'wpcp_01_20_generators.jpg', 94, '2024-02-28 14:58:41', '2024-02-28 14:58:41'),
(102, 'super_silent_generators.jpg', 95, '2024-02-28 15:00:44', '2024-02-28 15:00:44'),
(103, 'kama_generator.jpg', 96, '2024-02-28 15:05:50', '2024-02-28 15:05:50'),
(104, 'ja_solar_service.jpg', 97, '2024-02-28 15:11:25', '2024-02-28 15:11:25'),
(105, '300w_outdoor_solar_light.jpg', 98, '2024-02-28 15:29:58', '2024-02-28 15:29:58'),
(107, 'zenith_solar_water_heater.jpg', 99, '2024-02-28 16:15:02', '2024-02-28 16:15:02'),
(109, 'bosch_power-tools.jpg', 100, '2024-02-28 16:26:23', '2024-02-28 16:26:23'),
(110, 'MILWAUKEE_power-tools.jpg', 101, '2024-02-28 16:28:39', '2024-02-28 16:28:39'),
(111, 'Ingco_power-tools.jpg', 102, '2024-02-28 16:29:50', '2024-02-28 16:29:50'),
(112, 'high_wall_split-air_conditioner.jpg', 103, '2024-02-28 16:37:45', '2024-02-28 16:37:45'),
(113, 'floor_standing_air_conditioner.jpg', 106, '2024-02-28 16:41:21', '2024-02-28 16:41:21'),
(114, 'cassette_and_ducted_air_conditioner.jpg', 107, '2024-02-28 16:47:48', '2024-02-28 16:47:48'),
(115, 'solar_hybrid_ac.jpg', 109, '2024-02-28 16:52:13', '2024-02-28 16:52:13'),
(116, 'Scaffold set -product-238.jpg', 111, '2024-03-01 03:58:00', '2024-03-01 03:58:00'),
(117, 'Ring lock scaffold-product-239.jpg', 112, '2024-03-01 03:59:09', '2024-03-01 03:59:09'),
(118, 'Adjustable props ( Acro jack )-product-240.jpg', 113, '2024-03-01 04:00:15', '2024-03-01 04:00:15'),
(119, '5981285986463761683_121.jpg', 110, '2024-03-01 04:11:42', '2024-03-01 04:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `brand` varchar(120) DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT 1,
  `poweredBy` varchar(200) DEFAULT NULL,
  `drumCapacity` varchar(50) DEFAULT NULL,
  `operatingWeight` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `category`, `brand`, `isNew`, `poweredBy`, `drumCapacity`, `operatingWeight`, `description`) VALUES
(1, 'Self load concrete mixer', 8, '', 1, 'diesel engine 15hp (Indian)', '510', NULL, 'Hoist system complete'),
(2, 'Self load concrete mixer', 8, '', 1, 'Armystrong diesel engine 18hp', '510', NULL, 'Hoist system complete'),
(3, 'Hydraulic concrete mixer', 8, '', 1, 'Armystrong diesel engine 18 hp', '750', NULL, 'Water tank attached'),
(4, 'RS 3.5', 8, '', 1, 'Perkins diesel engine', '4', NULL, NULL),
(5, 'Esquire manual load mixer', 8, '', 1, 'Kirloskar engine 6 hp', '400', NULL, NULL),
(6, 'Esquire manual load mixer', 8, '', 1, 'Kirloskar engine 6 hp', '300', NULL, NULL),
(7, 'Manual load concrete mixer', 8, '', 1, 'Diesel engine 8hp', '400', NULL, NULL),
(8, 'Megfin concrete mixer', 8, '', 1, 'Electrical motor (380 volt)', '350', NULL, NULL),
(9, 'TITAN Cement mixer', 8, 'TITAN', 1, 'Petrol engine 6hp', '200', NULL, NULL),
(10, '6212E Double Drum Roller', 7, 'LIUGONG', 1, '113kw', NULL, '12500', 'Working width 2130mm'),
(11, '6114E Single Drum Roller', 7, 'LIUGONG', 1, '103 kw', NULL, '14000', 'Working width 2130mm'),
(12, '6114E Single Drum Roller', 7, 'LIUGONG', 1, '155kw', NULL, '19000', NULL),
(13, '6526E Pneumatic Roller', 7, 'LIUGONG', 1, '132 kw', NULL, '26000', 'Working width 2440mm'),
(14, 'Ride on roller compactor', 7, 'MEGFIN', 1, 'Diesel engine 11hp', NULL, '1900', 'Double drum'),
(15, 'Ride on roller compactor', 7, 'MEGFIN', 1, 'Diesel engine 10hp', NULL, '900', 'Double drum'),
(16, 'MF 600 roller compactor', 7, 'MEGFIN', 1, 'Diesel engine 6.5 hp', NULL, '600', 'Double drum'),
(17, 'FLY 800c double drum roller compactor', 7, 'TITAN', 1, 'Diesel engine 8.5hp', NULL, '800', 'Double drum'),
(18, 'DVR600H double drum roller', 7, 'TITAN', 1, 'Honda petrol engine 9hp', NULL, '540', 'Double drum '),
(19, 'SVR600H single drum roller', 7, 'TITAN', 1, 'Honda petrol engine 5.5hp', NULL, '300', 'Single drum'),
(20, 'MF300 single drum roller', 7, 'MEGFIN', 1, 'Diesel engine 5.5 hp', NULL, '300', 'Single drum'),
(21, 'SC-330B plate compactor', 10, 'TITAN', 1, 'Honda petrol engine', NULL, '330', NULL),
(22, 'SC-160B plate compactor', 10, 'TITAN', 1, 'Robin petrol engine 7.5 hp', NULL, '160', NULL),
(23, 'SC90 plate compactor', 10, 'TITAN', 1, 'Titan diesel engine 5hp', NULL, '90', NULL),
(24, 'Tamping Rammer', 10, 'MEGFIN', 1, 'Loncin petrol engine', NULL, '78', NULL),
(25, 'Tamping Rammer', 10, 'MEGFIN', 1, 'Honda petrol engine 5hp', NULL, '78', NULL),
(26, 'Double Power Trowel', 10, 'MEGFIN', 1, 'Diesel engine 24hp', '0', 'NULL', 'Blade dimension 100cm x 2'),
(27, 'ST48 Power Trowel', 10, 'TITAN', 1, 'Robin petrol engine 7.5hp', NULL, NULL, 'Dimension 120cm'),
(28, 'ST36 Power Trowel', 10, 'TITAN', 1, 'Robin petrol engine 5hp', NULL, NULL, 'Dimension 100cm'),
(29, 'Power Trowel', 10, 'MEGFIN', 1, 'Loncin petrol engine 5hp', NULL, NULL, 'Dimension 100cm'),
(30, 'SFS 1 Screeding Machine', 10, 'TITAN', 1, 'Honda petrol engine', NULL, NULL, 'Blade length 1.5 mtr'),
(31, '920E Excavator', 1, 'LIUGONG', 1, '112kw', NULL, NULL, 'Bucket capacity 1.0 m³, Track width 600mm'),
(32, '922E Excavator', 1, 'LIUGONG', 1, '113kw', NULL, NULL, 'Bucket capacity 1.3m³, Track width 600mm'),
(33, '925E Excavator', 1, 'LIUGONG', 1, '142kw', NULL, NULL, 'Bucket capacity 1.3m³, Track width 600mm'),
(34, '933E Excavator', 1, 'LIUGONG', 1, '169kw', NULL, NULL, 'Bucket capacity 1.6m³, Track width 600mm'),
(35, '950E Excavator', 1, 'LIUGONG', 1, '282kw', NULL, NULL, 'Bucket capacity 3.2m³, Track width 600mm'),
(36, '952EHD Excavator', 1, 'LIUGONG', 1, '280kw', NULL, NULL, 'Bucket capacity 3.2m³, Track width 600mm'),
(37, '970E Excavator', 1, 'LIUGONG', 1, '373kw', NULL, NULL, 'Bucket capacity 4.3m³, Track width 650mm'),
(38, '990F Excavator', 1, 'LIUGONG', 1, '447.5kw', NULL, NULL, 'Bucket capacity 5.6m³, Track width 650mm'),
(39, 'SY215C-9LC SPARK Excavator', 1, 'SANY', 1, '104kw', NULL, NULL, 'Bucket capacity 1.1m³, Track width 600mm'),
(40, 'SY350C-9HD Excavator', 1, 'SANY', 1, '256hp', NULL, NULL, 'Bucket capacity 2m³, Track width 800mm'),
(41, 'B230 Bulldozer', 3, 'LIUGONG', 1, '179KW', NULL, NULL, 'Blade capacity 7.8m³, Track width 560mm'),
(42, 'B320 Bulldozer', 3, 'LIUGONG', 1, '257 kw', NULL, NULL, 'Blade capacity 10.4 m³, Track width 560 mm'),
(43, 'SD22 Bulldozer', 3, 'SHANTUI', 1, '176kw', NULL, NULL, 'Blade capacity 7.5 m³, Track width 610mm'),
(44, 'QT4-15 Block Machine', 20, 'MEGFIN', 1, NULL, NULL, NULL, 'Moulding cycle: 15 seconds. Production capacity: 8\" block size - 576 pcs/hour, 6\" block size - 720 pcs/hour, 4\" block size - 1008 pcs/hour'),
(45, 'QT4-25 Block Machine', 20, 'megfin', 1, NULL, NULL, NULL, 'Moulding cycle: 25 seconds. Production capacity: 8\" block size - 576 pcs/hour, 6\" block size - 720 pcs/hour, 4\" block size - 1008 pcs/hour'),
(46, 'QTJ4-26 Block Machine', 20, 'megfin', 1, NULL, NULL, NULL, 'Moulding cycle: 26 seconds. Production capacity: 8\" block size - 400 pcs/hour, 6\" block size - 500 pcs/hour, 4\" block size - 700 pcs/hour'),
(48, 'Block Machine (Powered by Diesel Engine)', 20, 'Lebanon Manufacturer', 1, '6 hp Indian Diesel Engine', NULL, NULL, 'One mold free. Extra molds available. Made in Lebanon'),
(49, 'Block Machine (Powered by Electrical Motor)', 20, 'STAUNCH', 1, '380 volt/3 phase Electrical Motor', NULL, NULL, 'One solid mold free. Extra molds available. Made in Lebanon'),
(50, 'SD60-C5 Bulldozer', 3, 'SHANTUI', 1, '450 Kw', '0', NULL, 'Blade capacity 18.9m³ \r\nTrack width 610 mm'),
(51, 'SD90-C5 Bulldozer', 3, 'SHANTU', 1, '708 kw', '', NULL, 'Blade capacity: 28m³, Track width: 710 mm'),
(52, 'SDX5312GJBZ02 Bulldozer', 11, 'SHANTUI', 1, '', '', NULL, 'Loading capacity: 14m³, Max feeding speed: 8m³/minute, Head: HOWO'),
(53, 'SDX5250GJBZ02 Transit Mixer', 11, 'SHANTUI', 1, NULL, NULL, NULL, 'Loading capacity: 10m³, Max feeding speed: 8m³/min, Head: HOWO'),
(54, 'Concrete Batching Plant 1 (HZS075-2H)', 11, '', 1, '130 kw', '', NULL, 'Production capacity: 75 Ton/h, Mixing capacity: 1500 kg/unit'),
(55, 'Asphalt Mixing Plant 2 (LB2000)', 11, NULL, 1, '420 kw', NULL, NULL, 'Production capacity: 160t/h, Mixing capacity: 2000 kg/unit'),
(56, 'SE210 21 Ton Class Excavator', 1, 'SHANTUI', 1, '116/2000 (kw/rpm)', '', NULL, 'Operating weight: 21100 kg, Bucket capacity: 0.9m³, '),
(57, 'SE220LC 22 Tons Class Excavator', 1, 'SHANTUI', 1, '112/1950 (kw/rpm)', '', '22800 kg', '22-ton class excavator with 112/1950 (kw/rpm) power. Bucket capacity 1.05m³'),
(58, 'SE245LC 24 Ton Class Excavator', 1, 'SHANTUI', 1, '133/2000 (kw/rpm)', '', '24800 kg', '24-ton class excavator with 133/2000 (kw/rpm) power. Bucket capacity 1.2m³'),
(59, 'SE335LC 33 Tons Class Excavator', 1, 'SHANTUI', 1, '241/2000 (kw/rpm)', '', '34500 kg', '33-ton class excavator with 241/2000 (kw/rpm) power. Bucket capacity 1.6 m³'),
(60, 'SE400LC 40 Tons Class Excavator', 1, 'SHANTUI', 1, '247/2000 (kw/rpm)', '', '38700 kg', '40-ton class excavator with 247/2000 (kw/rpm) power. Bucket capacity 1.95 m³'),
(61, 'SE650LC 65 Tons Class Excavator', 1, 'SHANTUI', 1, '377/1800 (kw/rpm)', '', '64500 kg', '65-ton class excavator with 377/1800 (kw/rpm) power. Bucket capacity 3.6m³'),
(62, 'SE750LC 75 Tons Class Excavator', 1, 'SHANTUI', 1, '377/1800 (kw/rpm)', '', '72500 kg', '75-ton class excavator with 377/1800 (kw/rpm) power. Bucket capacity 6.5m³'),
(63, 'SE980LC 98 Tons Class Excavator', 1, 'SHANTUI', 1, '571/1800 (kw/rpm)', NULL, '97800 kg', '98-ton class excavator with 571/1800 (kw/rpm) power.'),
(64, 'DL300-M Track Loader', 2, 'SHANTUI', 1, '231/2100 (kw/rpm)', NULL, '29700 kg', 'Track loader with 3.2m³ bucket capacity and tipper type three tooth.'),
(65, 'SL50WN Loader', 2, 'SHANTUI', 1, '162 kw', '', '17,100 kg', 'Wheel loader with 3.0 m³ bucket capacity.'),
(66, 'L76 Loader', 2, 'SHANTUI', 1, '209 kw', '', '24,800 kg', 'Wheel loader with 5.0 m³ bucket capacity.'),
(67, 'ZL50CN Loader', 2, 'LIUGONG', 1, '162 kw', NULL, '16,800 kg', 'Wheel loader with 3.0 m³ bucket capacity.'),
(69, 'SR 14 MA Roller', 7, 'SHANTUI', 1, '105 kw', '', '14000', 'Roller with an operating weight of 14 Tons.'),
(70, 'SR 20 MA Roller', 7, 'SHANTUI', 1, '128/1800 (kw/rpm)', NULL, '20000', 'Roller with an operating weight of 20000 kg and external dimensions of 6229*2315*3180 mm.'),
(71, 'SRD14- C6 Roller', 7, 'Shantui', 1, '119/2200 (kw/rpm)', NULL, '14000 kg', 'External dimensions (mm) 5100*2280*3260'),
(72, 'SRT 30 H- C6 Roller', 7, 'SHANTUI', 1, '147/2000 (kw/rpm)', NULL, '30000 kg', 'External dimensions (mm) 4920*2915*3410'),
(73, 'SR T 16 H - B6F Roller', 7, 'SHANTUI', 1, '103/2000 (kw/rpm)', NULL, '16000 kg', 'External dimensions (mm) 4960*2320*3400'),
(74, 'SG15-B6 Motor Grader', 12, 'SHANTUI', 1, '115 kw', NULL, NULL, 'Overall weight: 13 Tons, Blade width: 3660 mm, Blade cutting angle: 22°~73°'),
(75, 'SG24-C5 Motor Grader', 12, 'SHANTUI', 1, '176 kw', NULL, NULL, 'Overall weight: 18.5 Tons, Blade width: 3965 mm, Blade cutting angle: 27°~73°'),
(76, '4180D Motor Grader', 12, 'LIUGONG', 1, '142 kw', NULL, NULL, 'Blade width: 3960 mm, Blade cutting angle: 28°~74°'),
(77, 'DGL700-C Recycling Machine', 13, 'SHANTUI', 1, '566 kw', NULL, NULL, 'Milling and mixing width: 2300 mm, Milling and mixing depth: 400 mm'),
(78, 'DGL550M-C Recycling Machine', 13, 'SHANTUI', 1, '390 kw', '', NULL, 'Milling and mixing width: 2000 mm, Milling and mixing depth: 400 mm'),
(79, 'DGL480-C Recycling Machine', 13, 'SHANTUI', 1, '353 kw', '', NULL, 'Milling and mixing width: 2310 mm, Milling and mixing depth: 400 mm'),
(80, 'SRP09-C5 Asphalt Paver', 14, 'SHANTUI', 1, '213 kw', NULL, NULL, 'Paving width: 9.5 m, Paving thickness: 500 mm'),
(81, 'SRP12-C5 MA Asphalt Paver', 14, 'SHANTUI', 1, '243 kw', NULL, NULL, 'Paving width: 12.5 m, Paving thickness: 500 mm'),
(82, 'SM200M-C6 Milling Machine', 15, NULL, 1, '485 kw', NULL, NULL, 'Max Milling width: 2000 mm, Max Milling depth: 330 mm'),
(83, 'SMT100M-C6', 15, 'SHANTUI', 1, '160 kw', '', NULL, 'Max milling width: 1000 mm, Max milling depth: 500 mm'),
(84, 'Iron Rod Bender', 10, 'SIMPEDIL', 1, 'Electrical motor 400 V / 4 hp', '', NULL, 'Max bending capacity: 36 mm, Made in Italy'),
(85, 'EURO 36 Iron Rod Bender', 10, 'STAUNCH', 1, 'Electrical motor 400V / 4hp', '', NULL, 'Max bending capacity: 36 mm, MADE IN Lebanon'),
(86, 'GW 40 Iron Rod Bender', 10, 'MEGFIN', 1, 'Electrical motor 380V / 2.2kW', '', NULL, 'Max bending capacity: 40 mm, Made in China'),
(87, 'C42 Iron Rod Cutter', 10, 'SIMPEDIL', 1, 'Electrical motor 380V / 4hp', '', NULL, 'Max cutting capacity: 34 mm, Made in Italy'),
(88, 'ST 38 Iron rod cutter', 10, 'STAUNCH', 1, 'Electrical motor, 380 v / 4 hp', NULL, NULL, 'Max cutting capacity 38 mm. Made in Lebanon.'),
(89, 'CQ 40 Iron rod cutter', 10, 'MEGFIN', 1, 'Electrical motor, 380 v / 3 kw', '', NULL, 'Max cutting capacity 40 mm. Made in China.'),
(90, 'Steel pipe threading machine (complete set)', 16, 'TWT', 1, '220 v / 0.75 kw', '', NULL, 'Capacity from 1/2\" up to 2\"'),
(91, 'CGM Generators', 16, 'CGM', 1, 'Perkins diesel engine UK', '', NULL, 'Capacity available 9kva up to 100kva. Alternator UK. Control board UK. Silent. Built-in diesel tank. \r\n2 years warranty. After-sales service available. Spare parts available. \r\nGenset made in Italy.'),
(92, 'Generator Set', 10, 'SACCAL', 1, 'Perkins diesel engine UK', NULL, NULL, 'Capacity available: 20kva up to 400kva, Alternator: UK, Control board: UK, Silent, Built-in diesel tank, 2 years warranty, After-sales service available, Spare parts available, Genset made in Lebanon'),
(93, 'LEES Generators', 16, 'LEES', 1, 'Yangdong diesel engine (China)', NULL, NULL, 'Capacity available from 14kva up to 400kva. Alternator (China). Control board (China). Silent. Built-in diesel tank. 2 years warranty. After-sales service available. Spare parts available. Genset made in China.'),
(94, 'WPCP-01-20 generators', 16, 'STAUNCH', 1, 'Perkins diesel engine (UK)', NULL, NULL, 'Capacity available 20 kva. Alternator UK. Control board UK. Sound proof. Built-in diesel tank. 2 years warranty. After-sales service available. Spare parts available. Genset made in Lebanon.'),
(95, 'SUPER SILENT Generators', 16, 'STAUNCH', 1, 'Perkins diesel engine (UK)', '', NULL, 'Capacity available 20kva and 30 kva. Alternator UK. Control board UK. SUPER Silent. 1000 LTR DIESEL TANK attached. 2 years warranty. After-sales service available. Spare parts available. Genset made in Lebanon.'),
(96, 'KAMA generator', 16, 'KAMA', 1, 'KAMA diesel engine', NULL, NULL, 'Capacity available 5.5 and 7.5 kva. Powered by KAMA diesel engine. Key start system. Low noise level. Available in single and 3 phase. After-sales service available. Spare parts available. Made in China.'),
(97, 'JA solar', 16, NULL, 1, NULL, NULL, NULL, 'A complete system of solar solution. We support all capacities. Pro instalation and maintanance team. Real warranty.'),
(98, '300W Outdoor Solar Light', 16, NULL, 1, NULL, NULL, NULL, 'Best quality. 300 watts.'),
(99, 'ZENITH Solar Water Heater', 16, 'ZENITH, ARISTO', 1, NULL, NULL, NULL, 'Different capacities available.'),
(100, 'Bosch Power Tools', 17, 'Bosch', 1, NULL, NULL, NULL, 'Wide collection For your home or sites. Light and heavy duty machines. Aftersales service'),
(101, 'MILWAUKEE Power Tools', 17, 'MILWAUKEE', 1, NULL, NULL, NULL, 'Best choice for your work. Big collection available. Aftersales service available'),
(102, 'Ingco Power Tools', 17, 'INGCO', 1, NULL, NULL, NULL, 'The biggest collection in Ghana \r\nGood choice for you tools '),
(103, 'High wall split Air conditioner', 19, 'CARRIER', 1, '1hp, 1.5hp, 2.0hp, 2.5hp', NULL, NULL, 'Inverter and normal type available\nSizes 1hp, 1.5hp, 2.0hp, 2.5hp\n5 years warranty for the compressor\nInstallaion and maintenance available'),
(106, 'Floor standing Air conditioner', 19, 'CARRIER', 1, '2hp, 2.5hp, 4hp, 5hp, 6hp', '', NULL, 'Sizes 2hp, 2.5hp, 5hp, 6hp\r\n5 years warranty for the compressor\r\nInstallaion and maintenance available'),
(107, 'Cassette and Ducted Air Conditioner', 19, 'CARRIER', 1, '2hp, 2.5hp, 4hp, 5hp, 6hp', NULL, NULL, 'Sizes 2hp, 2.5hp, 4hp, 5hp, 6hp\n5 years warranty for the compressor\nInstallaion and maintenance available'),
(109, 'Solar Hybrid Air condition', 19, 'COOL', 1, '1.5hp, 2.0hp, 2.5hp, 3hp, 5hp', NULL, NULL, 'Sizes 1.5hp, 2.0hp, 2.5hp, 3hp, 5hp\nInstallation and maintenance available'),
(110, 'Scaffold set ', 18, '', 1, '', '', NULL, '1.7mtr height\r\n1.83 mtr length\r\n2mm thickness\r\nPainted steel\r\nOne H frame\r\nOne ladder frame\r\nCross bracers x 2\r\n\r\nExtra accessories\r\nPlatform is \r\nHorizontal bracers \r\nAdjustable jack base \r\nGalvanized ladder'),
(111, 'Ring lock scaffold', 18, '', 1, '', '', NULL, '2.5m height\r\n2.5mm Thickness \r\nGalvanized'),
(112, 'Adjustable props ( Acro jack )', 18, '', 1, '', '', NULL, 'Max height 4 mtr\r\nPainted steel'),
(113, 'Marine plywood', 18, '', 1, '', '', NULL, 'Heavy duty , and light duty\r\n18mm thickness');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_slug` varchar(255) NOT NULL,
  `blog_content` mediumtext NOT NULL,
  `blog_content_short` text NOT NULL,
  `blog_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`blog_id`, `blog_title`, `blog_slug`, `blog_content`, `blog_content_short`, `blog_date`, `photo`, `category_id`, `publisher`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'The challanges of being a writter', 'the-challanges-of-being-a-writter', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat ', '29-06-2023', 'blog-1.png', 6, 'Abdul', 0, '', '', ''),
(2, 'Benefits of attending events', 'benefits-of-attending-events', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident,', '29-06-2023', 'blog-2.png', 6, 'Abdul', 0, '', '', ''),
(3, 'Talk It Out With Radio', 'talk-it-out-with-radio', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident,</span></p><p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\"><br></span><br></p>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident,', '29-06-2023', 'blog-3.png', 6, 'Abdul', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(6, 'Events', 'events', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_photo`
--

CREATE TABLE `tbl_category_photo` (
  `p_category_id` int(11) NOT NULL,
  `p_category_name` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category_photo`
--

INSERT INTO `tbl_category_photo` (`p_category_id`, `p_category_name`, `status`) VALUES
(4, 'Event', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `code_body` mediumtext NOT NULL,
  `code_main` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contacts`
--

CREATE TABLE `tbl_contacts` (
  `id` int(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `email` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`designation_id`, `designation_name`) VALUES
(2, 'CEO'),
(5, 'Founder'),
(6, 'Technical Lead');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(255) NOT NULL,
  `event_slug` varchar(255) NOT NULL,
  `event_content` mediumtext NOT NULL,
  `event_content_short` text NOT NULL,
  `event_venue` varchar(255) DEFAULT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_link` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `event_category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`event_id`, `event_title`, `event_slug`, `event_content`, `event_content_short`, `event_venue`, `event_date`, `event_link`, `photo`, `event_category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'John weds Mariam', 'john-weds', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident,</span><br></p>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident,', 'School Auditorium', '29-06-2023', 'http://localhost/streetlife-africa/admin/event-add.php', 'event-1.png', 7, 0, '', '', ''),
(2, 'Abu weds Ama', 'abu-weds-ama', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident,</span><br></p>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident,', 'National Cathedral ', '29-06-2023', 'https://www.eventbrite.com/e/unleash-your-minds-potential-transform-your-negative-thought-process-tickets-655972059087?aff=ehometext', 'event-2.png', 7, 0, '', '', ''),
(3, 'John weds Mary', 'mary-weds', '<p><span style=\"color: rgba(12, 11, 11, 0.95); font-family: \"Source Sans Pro\", sans-serif; font-size: 16px; background-color: rgb(254, 254, 254);\">Lorem ipsum diolor emet atet lorem ipsum dilore amet lorem iosum dilor amet lorem ipsum diilor amet ncdnd dnjsdkkdls jdslkdsp;mkldkmmckmm lksdls slddsl l</span></p><p><span style=\"color: rgba(12, 11, 11, 0.95); font-family: \"Source Sans Pro\", sans-serif; font-size: 16px; background-color: rgb(254, 254, 254);\">Lorem ipsum diolor emet atet lorem ipsum dilore amet lorem iosum dilor amet lorem ipsum diilor amet ncdnd dnjsdkkdls jdslkdsp;mkldkmmckmm lksdls slddsl l</span><span style=\"color: rgba(12, 11, 11, 0.95); font-family: \"Source Sans Pro\", sans-serif; font-size: 16px; background-color: rgb(254, 254, 254);\"><br></span><br></p>', 'Lorem ipsum diolor emet atet lorem ipsum dilore amet lorem iosum dilor amet lorem ipsum diilor amet ncdnd dnjsdkkdls jdslkdsp;mkldkmmckmm lksdls slddsl l', 'School Auditorium', '06-07-2023', 'https://www.eventbrite.com/e/unleash-your-minds-potential-transform-your-negative-thought-process-tickets-655972059087?aff=ehometext', 'event-3.png', 7, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event_category`
--

CREATE TABLE `tbl_event_category` (
  `event_category_id` int(11) NOT NULL,
  `event_category_name` varchar(255) NOT NULL,
  `event_category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_event_category`
--

INSERT INTO `tbl_event_category` (`event_category_id`, `event_category_name`, `event_category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(7, 'Islamic Wedding', 'islamic-wedding', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq_category`
--

CREATE TABLE `tbl_faq_category` (
  `faq_category_id` int(11) NOT NULL,
  `faq_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_faq_category`
--

INSERT INTO `tbl_faq_category` (`faq_category_id`, `faq_category_name`) VALUES
(1, 'General Questions'),
(2, 'Client Query'),
(3, 'Technical Questions');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `file_id` int(11) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`, `value`) VALUES
(1, 'ABOUT_US', 'About Us'),
(2, 'LATEST_NEWS', 'Latest News'),
(3, 'POPULAR_NEWS', 'Popular News'),
(4, 'CONTACT_US', 'Contact Us'),
(5, 'CONTACT_FORM', 'Contact Form'),
(6, 'FULL_NAME', 'Full Name'),
(7, 'EMAIL_ADDRESS', 'Email Address'),
(8, 'PHONE_NUMBER', 'Phone Number'),
(9, 'MESSAGE', 'Message'),
(10, 'SEND_MESSAGE', 'Send Message'),
(11, 'CATEGORY', 'Category'),
(12, 'POSTED_ON', 'Posted on'),
(13, 'READ_MORE', 'Read More'),
(14, 'CATEGORIES', 'Categories'),
(15, 'SEARCH', 'Search'),
(16, 'SEARCH_BY_COLON', 'Search By:'),
(17, 'DATE', 'Date'),
(18, 'SHARE_THIS', 'Share This'),
(19, 'COMMENTS', 'Comments'),
(20, 'ENTER_YOUR_EMAIL', 'Enter Your Email'),
(21, 'SUBMIT', 'Submit'),
(22, 'CATEGORY_COLON', 'Category:'),
(23, 'SERVICE_COLON', 'Service:'),
(24, 'SERVICES', 'Services'),
(26, 'EMAIL_VALID_CHECK', 'Email Address must be valid'),
(27, 'SUBSCRIPTION_SUCCESS_MESSAGE', 'Please check your email and confirm your subscription.'),
(28, 'FULL_NAME_EMPTY_CHECK', 'Name can not be empty'),
(29, 'PHONE_EMPTY_CHECK', 'Phone Number can not be empty'),
(30, 'EMAIL_EMPTY_CHECK', 'Email Address can not be empty'),
(31, 'COMMENT_EMPTY_CHECK', 'Comment can not be empty'),
(33, 'ADDRESS', 'Address'),
(34, 'WEBSITE', 'Website'),
(35, 'ABOUT', 'About'),
(36, 'CONTACT', 'Contact'),
(37, 'SOCIAL_MEDIA_HEADLINE', 'Social Media Activities'),
(38, 'SEE_FULL_PROFILE', 'See Full Profile'),
(39, 'TEAM_MEMBER_COLON', 'Team Member:'),
(40, 'NEWS_EMPTY_CHECK', 'Sorry! No News is found.'),
(41, 'PREVIOUS', 'Previous'),
(42, 'NEXT', 'Next'),
(43, 'EMAIL_EXIST_CHECK', 'Email Address already exists'),
(44, 'CONTACT_FORM_MESSAGE', 'Contact Form Message'),
(45, 'CONTACT_FORM_SUCCESS_MESSAGE', 'Email is sent successfully. '),
(46, 'SUBSCRIPTION_SUBJECT', 'Subscriber Email Confirmation');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_performer`
--

CREATE TABLE `tbl_performer` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `performer_category_id` varchar(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_performer`
--

INSERT INTO `tbl_performer` (`id`, `name`, `performer_category_id`, `photo`, `detail`, `facebook`, `twitter`, `instagram`, `youtube`, `linkedin`, `phone`, `email`) VALUES
(7, ' John Doe', '1', 'performer-7.png', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; background-color: rgb(254, 254, 254);\">John is an experienced guitarist with a passion for creating memorable live performances. With over 10 years of experience in the industry, he has played at numerous events and festivals, showcasing his talent and expertise.</span><br style=\"margin: 0px; padding: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: &quot;Source Sans Pro&quot;, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(51, 51, 51); background-color: rgb(254, 254, 254);\"><br style=\"margin: 0px; padding: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: &quot;Source Sans Pro&quot;, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(51, 51, 51); background-color: rgb(254, 254, 254);\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Source Sans Pro&quot;, sans-serif; font-size: 16px; background-color: rgb(254, 254, 254);\">He has a keen ear for music and an innate ability to read and understand the audience, making sure to deliver an exceptional performance every time.</span><br></p>', '#', '#', '#', '#', '', '0200900000', 'a@b.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_performer_category`
--

CREATE TABLE `tbl_performer_category` (
  `performer_category_id` int(11) NOT NULL,
  `performer_category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_performer_category`
--

INSERT INTO `tbl_performer_category` (`performer_category_id`, `performer_category_name`) VALUES
(1, 'Singer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` varchar(255) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `p_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`photo_id`, `photo_caption`, `photo_name`, `p_category_id`) VALUES
(20, 'g1', 'photo-20.png', 4),
(21, 'g2', 'photo-21.png', 4),
(22, 'g3', 'photo-22.png', 4),
(23, 'g4', 'photo-23.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `programme_id` int(11) NOT NULL,
  `programme_title` varchar(255) NOT NULL,
  `programme_slug` varchar(255) NOT NULL,
  `programme_content` mediumtext NOT NULL,
  `programme_content_short` text NOT NULL,
  `programme_venue` varchar(255) DEFAULT NULL,
  `programme_date` varchar(255) NOT NULL,
  `programme_link` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `programme_category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_category`
--

CREATE TABLE `tbl_products_category` (
  `programme_category_id` int(11) NOT NULL,
  `programme_category_name` varchar(255) NOT NULL,
  `programme_category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_products_category`
--

INSERT INTO `tbl_products_category` (`programme_category_id`, `programme_category_name`, `programme_category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(9, 'Public Health', 'public-health', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotes`
--

CREATE TABLE `tbl_quotes` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `address` varchar(200) NOT NULL,
  `company` varchar(140) NOT NULL,
  `country` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_quotes`
--

INSERT INTO `tbl_quotes` (`id`, `productId`, `productName`, `fullname`, `address`, `company`, `country`, `message`, `phone`, `email`) VALUES
(2, 103, 'High wall split Air conditioner', 'Cruz Olsen', 'Odio aliquam qui omn', 'Stafford Booth Traders', 'Molestiae dolores si', 'Pariatur Molestias ', '+1 (367) 948-4717', 'cajoqyxu@mailinator.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` mediumtext NOT NULL,
  `footer_copyright` mediumtext NOT NULL,
  `contact_address` mediumtext NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` mediumtext NOT NULL,
  `total_recent_news_footer` int(10) NOT NULL,
  `total_popular_news_footer` int(10) NOT NULL,
  `total_recent_news_sidebar` int(11) NOT NULL,
  `total_popular_news_sidebar` int(11) NOT NULL,
  `total_recent_news_home_page` int(11) NOT NULL,
  `meta_title_home` mediumtext NOT NULL,
  `meta_keyword_home` mediumtext NOT NULL,
  `meta_description_home` mediumtext NOT NULL,
  `home_title_service` varchar(255) NOT NULL,
  `home_subtitle_service` varchar(255) NOT NULL,
  `home_status_service` varchar(10) NOT NULL,
  `home_title_team_member` varchar(255) NOT NULL,
  `home_subtitle_team_member` varchar(255) NOT NULL,
  `home_status_team_member` varchar(10) NOT NULL,
  `home_title_testimonial` varchar(255) NOT NULL,
  `home_subtitle_testimonial` varchar(255) NOT NULL,
  `home_status_testimonial` varchar(10) NOT NULL,
  `home_photo_testimonial` varchar(255) NOT NULL,
  `home_title_news` varchar(255) NOT NULL,
  `home_subtitle_news` varchar(255) NOT NULL,
  `home_status_news` varchar(10) NOT NULL,
  `home_title_partner` varchar(255) NOT NULL,
  `home_subtitle_partner` varchar(255) NOT NULL,
  `home_status_partner` varchar(10) NOT NULL,
  `mod_rewrite` varchar(10) NOT NULL,
  `newsletter_title` varchar(255) NOT NULL,
  `newsletter_text` mediumtext NOT NULL,
  `newsletter_photo` varchar(255) NOT NULL,
  `newsletter_status` varchar(10) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_category` varchar(255) NOT NULL,
  `counter_1_title` varchar(255) NOT NULL,
  `counter_1_value` varchar(10) NOT NULL,
  `counter_2_title` varchar(255) NOT NULL,
  `counter_2_value` varchar(10) NOT NULL,
  `counter_3_title` varchar(255) NOT NULL,
  `counter_3_value` varchar(10) NOT NULL,
  `counter_4_title` varchar(255) NOT NULL,
  `counter_4_value` varchar(10) NOT NULL,
  `counter_photo` varchar(255) NOT NULL,
  `counter_status` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  `preloader` varchar(3) NOT NULL,
  `active_editor` varchar(40) NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `home_about_title` varchar(200) NOT NULL,
  `home_about_img` varchar(200) NOT NULL,
  `home_about_content` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `total_recent_news_footer`, `total_popular_news_footer`, `total_recent_news_sidebar`, `total_popular_news_sidebar`, `total_recent_news_home_page`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `home_title_service`, `home_subtitle_service`, `home_status_service`, `home_title_team_member`, `home_subtitle_team_member`, `home_status_team_member`, `home_title_testimonial`, `home_subtitle_testimonial`, `home_status_testimonial`, `home_photo_testimonial`, `home_title_news`, `home_subtitle_news`, `home_status_news`, `home_title_partner`, `home_subtitle_partner`, `home_status_partner`, `mod_rewrite`, `newsletter_title`, `newsletter_text`, `newsletter_photo`, `newsletter_status`, `banner_search`, `banner_category`, `counter_1_title`, `counter_1_value`, `counter_2_title`, `counter_2_value`, `counter_3_title`, `counter_3_value`, `counter_4_title`, `counter_4_value`, `counter_photo`, `counter_status`, `color`, `preloader`, `active_editor`, `website_name`, `home_about_title`, `home_about_img`, `home_about_content`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Creating unforgettable experiences that celebrate African culture and bring people together.</p>\r\n', 'Copyright 2023. All Rights Reserved.', 'ABC Steet, ABC', 'hello@jmstreetlifestudios.com', '+2338096542356', '', '', 3, 3, 4, 4, 7, 'Transforming Africa through entertainment, storytelling, and talent development.', 'transforming, africa, entertainment, storytelling, talent, development.', 'We are a production company dedicated to transforming Africa through exceptional events, storytelling, and talent development, showcasing the beauty and richness of the African culture to the world.', 'Our Services', 'Check Out All Our Consulting Services', 'Show', 'Team Members', 'Meet with All Our Qualified Team Members', 'Show', 'Testimonial', 'Our Happy Clients Tell About Us', 'Show', 'testimonial.jpg', 'Latest News', 'See All Our Updated and Latest News', 'Show', 'Our Partners', 'All Our Company Partners are Listed Below', 'Show', 'On', 'Newsletter', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid fugit expedita, iure ullam cum vero ex sint aperiam maxime.', 'newsletter.jpg', 'Show', 'banner_search.jpg', 'banner_category.jpg', 'Years of Experience', '3', 'Events Organized', '100', 'Team Members', '50', '', '', 'counter.jpg', 'Show', '2795D0', 'Off', 'Summernote', 'Real Steel co. Ltd', 'Who We Are', 'home_about_img.png', '<p><b>JM STREET-LIFE STUDIOS</b> is a leading production company that specializes in producing top-notch entertainment and lifestyle events. We produce a wide range of events including music festivals, art shows, parties, corporate events, weddings, and more. Our team is dedicated to providing unique and memorable experiences for our clients and guests.</p><br>\r\n<p>At <b>JM STREET-LIFE STUDIOS</b>, we have a deep passion for transforming Africa into a better place, and we believe that our productions can play a significant role in achieving this goal. We are committed to using our platform to showcase the beauty, diversity, and richness of African culture to the world.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_email`
--

CREATE TABLE `tbl_setting_email` (
  `id` int(11) NOT NULL,
  `send_email_from` varchar(150) NOT NULL,
  `receive_email_to` varchar(150) NOT NULL,
  `smtp_host` varchar(150) NOT NULL,
  `smtp_port` varchar(10) NOT NULL,
  `smtp_username` varchar(150) NOT NULL,
  `smtp_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_setting_email`
--

INSERT INTO `tbl_setting_email` (`id`, `send_email_from`, `receive_email_to`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`) VALUES
(1, 'ghafcydc@gmail.com', 'abdulgafurshaattir@gmail.com', 'smtp.mailtrap.io', '587', '1d63d91574de8a', 'ec61d080c569b1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', '#', 'fa fa-facebook'),
(2, 'Twitter', '#', 'fa fa-twitter'),
(3, 'LinkedIn', '#', 'fa fa-linkedin'),
(4, 'Google Plus', '#', 'fa fa-google-plus'),
(5, 'Pinterest', '#', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(9, 'test1@gmail.com', '2022-08-23', '2022-08-23 13:47:54', '', 1),
(10, 'test2@gmail.com', '2022-08-23', '2022-08-23 13:48:09', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team_member`
--

CREATE TABLE `tbl_team_member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `google_plus` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `flickr` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `practice_location` mediumtext NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_team_member`
--

INSERT INTO `tbl_team_member` (`id`, `name`, `slug`, `designation_id`, `photo`, `banner`, `degree`, `detail`, `facebook`, `twitter`, `linkedin`, `youtube`, `google_plus`, `instagram`, `flickr`, `address`, `practice_location`, `phone`, `email`, `website`, `status`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(7, 'Abdul', 'abdul', 2, 'team-member-7.png', 'team-member-banner-7.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(8, 'Moses Asamoah', 'moses-asamoah', 5, 'team-member-8.png', 'team-member-banner-8.png', '', '', '#', '#', '', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(9, 'Kelvin Yaboah', 'kelvin', 6, 'team-member-9.png', 'team-member-banner-9.png', '', '', '#', '#', '#', '', '', '', '', '', '', '', '', '', 'Active', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE `tbl_testimonials` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `position` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`id`, `name`, `photo`, `detail`, `position`, `phone`, `email`) VALUES
(7, ' John Doe', 'performer-7.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: \" source=\"\" sans=\"\" pro\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(254,=\"\" 254,=\"\" 254);\"=\"\">John is an experienced guitarist with a passion for creating memorable live performances. With over 10 years of experience.</span><br></p>', 'volunteer', '0200900000', 'a@b.com'),
(11, 'Owusu Karl', 'testimonial-8.jpg', '<p style=\"padding: 0px; margin-bottom: 0px; font-family: &quot;Playfair Display&quot;, serif; list-style: none; border: none; outline: none; font-size: medium;\"><span source=\"\" sans=\"\" pro\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" background-color:=\"\" rgb(254,=\"\" 254,=\"\" 254);\"=\"\" style=\"padding: 0px; margin: 0px; list-style: none; border: none; outline: none; color: rgb(51, 51, 51);\">Spendy is an experienced guitarist with a passion for creating memorable live performances. With over 10 years of experience.</span><br style=\"padding: 0px; margin: 0px; list-style: none; border: none; outline: none;\"></p><div class=\"testimonials-img\" style=\"padding: 1rem 0px 0px; margin: 0px; font-family: &quot;Playfair Display&quot;, serif; list-style: none; border: none; outline: none; display: flex; justify-content: center; align-items: center; gap: 1rem; font-size: medium;\"></div><p style=\"padding: 0px; margin: 0px; box-sizing: border-box; font-family: &quot;Playfair Display&quot;, serif; list-style: none; text-decoration: none; border: none; outline: none; color: rgb(0, 0, 0); font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal;\"></p>', 'Volunteer', '0242155123', 'bihcharles2004@gmail.com'),
(12, 'Namibra Admin', 'testimonial-12.jpg', '<p><span style=\"color: rgb(95, 99, 104); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: 0.3px;\">Google LLC, 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA&nbsp;</span><span style=\"color: rgb(95, 99, 104); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: 0.3px;\">You have received this email because&nbsp;</span><font color=\"rgba(0, 0, 0, 0)\" face=\"Roboto, Arial, Helvetica, sans-serif\"><span style=\"font-size: 12px; letter-spacing: 0.3px; background-color: rgb(255, 255, 255);\">ka.edu</span></font><span style=\"color: rgb(95, 99, 104); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: 0.3px;\">&nbsp;shared a file or folder located in Google Drive with you.&nbsp;</span><span style=\"color: rgb(95, 99, 104); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: 0.3px;\">use&nbsp;</span><font color=\"rgba(0, 0, 0, 0)\" face=\"Roboto, Arial, Helvetica, sans-serif\"><span style=\"background-color: rgb(255, 255, 255); font-size: 12px; letter-spacing: 0.3px;\">ka25.edu</span></font><span style=\"color: rgb(95, 99, 104); font-family: Roboto, Arial, Helvetica, sans-serif; font-size: 12px; letter-spacing: 0.3px;\">&nbsp;shared a file or folder located in Google Drive with you.</span><br></p>', 'Web Dev', '0243559773', 'bih@gmm.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials_category`
--

CREATE TABLE `tbl_testimonials_category` (
  `testimonials_category_id` int(11) NOT NULL,
  `testimonials_category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_testimonials_category`
--

INSERT INTO `tbl_testimonials_category` (`testimonials_category_id`, `testimonials_category_name`) VALUES
(1, 'Singer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `password`, `photo`, `role`, `status`) VALUES
(1, 'charles@gmail.com', '@Charles2004', 'user-1.jpg', 'Admin', 'Active'),
(2, 'Sales@realsteelcoltd.com', '@SamRSC', 'user-1.jpg', 'Admin', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productimages_ibfk_1` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_category_photo`
--
ALTER TABLE `tbl_category_photo`
  ADD PRIMARY KEY (`p_category_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tbl_event_category`
--
ALTER TABLE `tbl_event_category`
  ADD PRIMARY KEY (`event_category_id`);

--
-- Indexes for table `tbl_faq_category`
--
ALTER TABLE `tbl_faq_category`
  ADD PRIMARY KEY (`faq_category_id`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_performer`
--
ALTER TABLE `tbl_performer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_performer_category`
--
ALTER TABLE `tbl_performer_category`
  ADD PRIMARY KEY (`performer_category_id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tbl_quotes`
--
ALTER TABLE `tbl_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting_email`
--
ALTER TABLE `tbl_setting_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category_photo`
--
ALTER TABLE `tbl_category_photo`
  MODIFY `p_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_event_category`
--
ALTER TABLE `tbl_event_category`
  MODIFY `event_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_faq_category`
--
ALTER TABLE `tbl_faq_category`
  MODIFY `faq_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_performer`
--
ALTER TABLE `tbl_performer`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_performer_category`
--
ALTER TABLE `tbl_performer_category`
  MODIFY `performer_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_quotes`
--
ALTER TABLE `tbl_quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_email`
--
ALTER TABLE `tbl_setting_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `productimages`
--
ALTER TABLE `productimages`
  ADD CONSTRAINT `productimages_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_quotes`
--
ALTER TABLE `tbl_quotes`
  ADD CONSTRAINT `tbl_quotes_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
