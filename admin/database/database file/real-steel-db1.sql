-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Feb 21, 2024 at 02:09 AM
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
-- Database: `real-steel-db`
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
(1, 'Excavator', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(2, 'Wheel loader', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(3, 'Bulldozer', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(4, 'Dumpers and trucks', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(5, 'Backhoe', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(6, 'Skid loader', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(7, 'Rollers', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(8, 'Concrete mixers', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(9, 'Concrete pumps', '2024-02-18 06:57:37', '2024-02-18 06:57:37'),
(10, 'Light construction machine', '2024-02-18 06:57:37', '2024-02-18 06:57:37');

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
(11, 'Ride_on_roller_compactor11hp.jpg', 10, '2024-02-19 02:21:08', '2024-02-19 02:21:08'),
(12, 'Ride_on_roller_compactor10hp.jpg', 11, '2024-02-19 02:25:59', '2024-02-19 02:25:59'),
(13, 'MF_600_roller_compactor.jpg', 12, '2024-02-19 02:46:09', '2024-02-19 02:46:09'),
(14, 'FLY_800c_double_drum_roller_compactor.jpg', 13, '2024-02-19 02:48:46', '2024-02-19 02:48:46'),
(15, 'DVR600H_double_drum_roller.jpg', 14, '2024-02-19 02:50:19', '2024-02-19 02:50:19'),
(16, 'SVR600H_single_drum_roller.jpg', 15, '2024-02-19 02:52:29', '2024-02-19 02:52:29'),
(17, 'MF300_single_drum_roller.jpg', 16, '2024-02-19 02:54:21', '2024-02-19 02:54:21'),
(18, 'SC-330B_plate_compactor.jpg', 17, '2024-02-19 03:00:59', '2024-02-19 03:00:59'),
(20, 'SC-160B_plate_compactor.jpg', 18, '2024-02-19 03:03:00', '2024-02-19 03:03:00'),
(21, 'SC90_plate_compactor.jpg', 19, '2024-02-19 03:14:40', '2024-02-19 03:14:40'),
(22, 'tamping_rammer.jpg', 20, '2024-02-19 03:16:24', '2024-02-19 03:16:24'),
(23, 'tamping_rammer_honda_5hp.jpg', 21, '2024-02-19 03:17:34', '2024-02-19 03:17:34'),
(24, 'double_power_trowel.jpg', 22, '2024-02-19 03:19:10', '2024-02-19 03:19:10'),
(25, 'ST48_power_trowel.jpg', 23, '2024-02-19 03:20:46', '2024-02-19 03:20:46'),
(26, 'ST36_power_trowel.jpg', 24, '2024-02-19 03:22:06', '2024-02-19 03:22:06'),
(27, 'power_trowel_loncin_5hp.jpg', 25, '2024-02-19 03:25:11', '2024-02-19 03:25:11'),
(28, 'sfs1_screeding_machine.jpg', 26, '2024-02-19 03:26:24', '2024-02-19 03:26:24'),
(29, '6212E_double_drum_roller.jpg', 27, '2024-02-20 22:52:11', '2024-02-20 22:52:11'),
(30, '6114E_single_drum_roller.jpg', 28, '2024-02-21 00:47:50', '2024-02-21 00:47:50'),
(31, '6114E_single_drum_roller_155kw_19tons.jpg', 29, '2024-02-21 00:53:04', '2024-02-21 00:53:04'),
(32, '6526E_pneumatic_roller_132kw_26tons.jpg', 30, '2024-02-21 00:54:34', '2024-02-21 00:54:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `brand` varchar(120) DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT 1,
  `poweredBy` varchar(200) DEFAULT NULL,
  `drumCapacity` int(11) DEFAULT NULL,
  `operatingWeight` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `category`, `brand`, `isNew`, `poweredBy`, `drumCapacity`, `operatingWeight`, `description`) VALUES
(1, 'Self load concrete mixer', 'Concrete mixers', '', 1, 'diesel engine 15hp (Indian)', 510, NULL, 'Hoist system complete'),
(2, 'Self load concrete mixer', 'Concrete mixers', '', 1, 'Armystrong diesel engine 18hp', 510, NULL, 'Hoist system complete'),
(3, 'Hydraulic concrete mixer', 'Concrete mixers', '', 1, 'Armystrong diesel engine 18 hp', 750, NULL, 'Water tank attached'),
(4, 'RS 3.5', 'Concrete mixers', '', 1, 'Perkins diesel engine', 4, NULL, NULL),
(5, 'Esquire manual load mixer', 'Concrete mixers', '', 1, 'Kirloskar engine 6 hp', 400, NULL, NULL),
(6, 'Esquire manual load mixer', 'Concrete mixers', '', 1, 'Kirloskar engine 6 hp', 300, NULL, NULL),
(7, 'Manual load concrete mixer', 'Concrete mixers', '', 1, 'Diesel engine 8hp', 400, NULL, NULL),
(8, 'Megfin concrete mixer', 'Concrete mixers', '', 1, 'Electrical motor (380 volt)', 350, NULL, NULL),
(9, 'TITAN Cement mixer', 'Concrete mixers', 'TITAN', 1, 'Petrol engine 6hp', 200, NULL, NULL),
(10, 'Ride on roller compactor', 'Rollers', 'MEGFIN', 1, 'Diesel engine 11hp', NULL, '1900', 'Double drum'),
(11, 'Ride on roller compactor', 'Rollers', 'MEGFIN', 1, 'Diesel engine 10hp', NULL, '900', 'Double drum'),
(12, 'MF 600 roller compactor', 'Rollers', 'MEGFIN', 1, 'Diesel engine 6.5 hp', NULL, '600', 'Double drum'),
(13, 'FLY 800c double drum roller compactor', 'Rollers', 'TITAN', 1, 'Diesel engine 8.5hp', NULL, '800', 'Double drum'),
(14, 'DVR600H double drum roller', 'Rollers', 'TITAN', 1, 'Honda petrol engine 9hp', NULL, '540', 'Double drum '),
(15, 'SVR600H single drum roller', 'Rollers', 'TITAN', 1, 'Honda petrol engine 5.5hp', NULL, '300', 'Single drum'),
(16, 'MF300 single drum roller', 'Rollers', 'MEGFIN', 1, 'Diesel engine 5.5 hp', NULL, '300', 'Single drum'),
(17, 'SC-330B plate compactor', 'light construction machines', 'TITAN', 1, 'Honda petrol engine', NULL, '330', NULL),
(18, 'SC-160B plate compactor', 'light construction machines', 'TITAN', 1, 'Robin petrol engine 7.5 hp', NULL, '160', NULL),
(19, 'SC90 plate compactor', 'light construction machines', 'TITAN', 1, 'Titan diesel engine 5hp', NULL, '90', NULL),
(20, 'Tamping Rammer', 'light construction machines', 'MEGFIN', 1, 'Loncin petrol engine', NULL, '78', NULL),
(21, 'Tamping Rammer', 'light construction machines', 'MEGFIN', 1, 'Honda petrol engine 5hp', NULL, '78', NULL),
(22, 'Double Power Trowel', 'light construction machines', 'MEGFIN', 1, 'Diesel engine 24hp', 0, 'NULL', 'Blade dimension 100cm x 2'),
(23, 'ST48 Power Trowel', 'light construction machines', 'TITAN', 1, 'Robin petrol engine 7.5hp', NULL, NULL, 'Dimension 120cm'),
(24, 'ST36 Power Trowel', 'light construction machines', 'TITAN', 1, 'Robin petrol engine 5hp', NULL, NULL, 'Dimension 100cm'),
(25, 'Power Trowel', 'light construction machines', 'MEGFIN', 1, 'Loncin petrol engine 5hp', NULL, NULL, 'Dimension 100cm'),
(26, 'SFS 1 Screeding Machine', 'light construction machines', 'TITAN', 1, 'Honda petrol engine', NULL, NULL, 'Blade length 1.5 mtr'),
(27, '6212E Double Drum Roller', 'Rollers', 'LIUGONG', 1, '113kw', NULL, '12500', 'Working width 2130mm'),
(28, '6114E Single Drum Roller', 'Rollers', 'LIUGONG', 1, '103 kw', NULL, '14000', 'Working width 2130mm'),
(29, '6114E Single Drum Roller', 'Rollers', 'LIUGONG', 1, '155kw', NULL, '19000', NULL),
(30, '6526E Pneumatic Roller', 'Rollers', 'LIUGONG', 1, '132 kw', NULL, '26000', 'Working width 2440mm');

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `productimages`
--
ALTER TABLE `productimages`
  ADD CONSTRAINT `productimages_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
