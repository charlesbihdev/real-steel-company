-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Feb 18, 2024 at 08:48 AM
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
(1, 'Self load concrete mixer_18hp.jpg', 1, '2024-02-18 02:57:39', '2024-02-18 02:57:39'),
(2, 'TITAN Cement mixer.jpg', 2, '2024-02-18 02:57:39', '2024-02-18 02:57:39'),
(3, 'Hydraulic concrete mixer.jpg', 3, '2024-02-18 02:57:39', '2024-02-18 02:57:39'),
(4, 'RS 3.5.jpg', 4, '2024-02-18 02:57:39', '2024-02-18 02:57:39'),
(5, 'Esquire manual load mixer-300 drum.jpg', 5, '2024-02-18 02:57:39', '2024-02-18 02:57:39'),
(6, 'Manual load concrete mixer.jpg', 6, '2024-02-18 03:14:00', '2024-02-18 03:14:00'),
(7, 'Megfin concrete mixer.jpg', 7, '2024-02-18 03:14:00', '2024-02-18 03:14:00'),
(8, 'Self load concrete mixer.jpg', 8, '2024-02-18 03:14:00', '2024-02-18 03:14:00'),
(9, 'Esquire manual load mixer.jpg', 9, '2024-02-18 03:14:00', '2024-02-18 03:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `isNew` tinyint(1) DEFAULT 1,
  `poweredBy` varchar(100) DEFAULT NULL,
  `drumCapacity` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `category`, `isNew`, `poweredBy`, `drumCapacity`, `description`) VALUES
(1, 'Self load concrete mixer', 'Light construction machines', 1, 'Armystrong diesel engine 18hp', 510, 'Hoist system complete'),
(2, 'TITAN Cement mixer', 'Light construction machines', 1, 'Petrol engine 6hp', 200, NULL),
(3, 'Hydraulic concrete mixer', 'Light construction machines', 1, 'Armystrong diesel engine 18 hp', 750, 'Water tank attached'),
(4, 'RS 3.5', 'Light construction machines', 1, 'Perkins diesel engine', 4, NULL),
(5, 'Esquire manual load mixer', 'Light construction machines', 1, 'Kirloskar engine 6 hp', 300, NULL),
(6, 'Manual load concrete mixer', 'Light construction machines', 1, 'Diesel engine 8hp', 400, NULL),
(7, 'Megfin concrete mixer', 'Light construction machines', 1, 'Electrical motor (380 volt)', 350, NULL),
(8, 'Self load concrete mixer', 'Light construction machines', 1, 'diesel engine 15hp (Indian)', 510, 'Hoist system complete'),
(9, 'Esquire manual load mixer', 'Light construction machines', 1, 'Kirloskar engine 6 hp', 400, NULL);

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
  ADD KEY `productId` (`productId`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `productimages`
--
ALTER TABLE `productimages`
  ADD CONSTRAINT `productimages_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
