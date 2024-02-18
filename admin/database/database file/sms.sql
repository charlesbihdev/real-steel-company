-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Jan 10, 2024 at 06:39 PM
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
-- Database: `dangafdb`
--

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
(1, 'The challanges of being a writter', 'the-challanges-of-being-a-writter', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua.', '29-06-2023', 'blog-1.png', 6, 'Abdul', 0, '', '', ''),
(2, 'Benefits of attending events', 'benefits-of-attending-events', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br></p>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua.', '29-06-2023', 'blog-2.png', 6, 'Abdul', 0, '', '', ''),
(3, 'Talk It Out With Radio', 'talk-it-out-with-radio', '<p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident.</span></p><p><br></p><p><span style=\"color: inherit; font-family: \"Source Sans Pro\", sans-serif; font-size: 36px;\">Intro</span></p><p><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 12.855px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\">proident,</span><span style=\"color: rgb(33, 37, 41); font-family: Poppins, sans-serif; font-size: 0.857em;\"><br></span><br></p>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua.', '29-06-2023', 'blog-3.png', 6, 'Abdul', 0, '', '', '');

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
(6, 'Technical Lead'),
(7, 'Organizer');

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
(3, 'John weds Mary', 'mary-weds', '<p><span style=\"color: rgba(12, 11, 11, 0.95); font-family: \"Source Sans Pro\", sans-serif; font-size: 16px; background-color: rgb(254, 254, 254);\">Lorem ipsum diolor emet atet lorem ipsum dilore amet lorem iosum dilor amet lorem ipsum diilor amet ncdnd dnjsdkkdls jdslkdsp;mkldkmmckmm lksdls slddsl l</span></p><p><span style=\"color: rgba(12, 11, 11, 0.95); font-family: \"Source Sans Pro\", sans-serif; font-size: 16px; background-color: rgb(254, 254, 254);\">Lorem ipsum diolor emet atet lorem ipsum dilore amet lorem iosum dilor amet lorem ipsum diilor amet ncdnd dnjsdkkdls jdslkdsp;mkldkmmckmm lksdls slddsl l</span><span style=\"color: rgba(12, 11, 11, 0.95); font-family: \"Source Sans Pro\", sans-serif; font-size: 16px; background-color: rgb(254, 254, 254);\"><br></span><br></p>', 'Lorem ipsum diolor emet atet lorem ipsum dilore amet lorem iosum dilor amet lorem ipsum diilor amet ncdnd dnjsdkkdls jdslkdsp;mkldkmmckmm lksdls slddsl l', 'School Auditorium', '06-07-2023', 'https://www.eventbrite.com/e/unleash-your-minds-potential-transform-your-negative-thought-process-tickets-655972059087?aff=ehometext', 'event-3.png', 7, 0, '', '', ''),
(4, 'Umat event', 'umat-event', '<p><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">y combining these three superglobals into </span><code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0.875em; color: var(--tw-prose-code); font-weight: 600; white-space-collapse: preserve; background-color: rgb(247, 247, 248); font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">$_REQUEST</code><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">, PHP provides a convenient way to access data regardless of the method used to send it (GET, POST, or cookies). However, it\'s important to note that using </span><code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0.875em; color: var(--tw-prose-code); font-weight: 600; white-space-collapse: preserve; background-color: rgb(247, 247, 248); font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">$_REQUEST</code><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\"> may introduce security risks, as it can make your code susceptible to certain types of attacks. It is generally recommended to use the specific superglobal (</span><code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0.875em; color: var(--tw-prose-code); font-weight: 600; white-space-collapse: preserve; background-color: rgb(247, 247, 248); font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">$_GET</code><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">, </span><code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0.875em; color: var(--tw-prose-code); font-weight: 600; white-space-collapse: preserve; background-color: rgb(247, 247, 248); font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">$_POST</code><span style=\"color: rgb(55, 65, 81); font-family: Söhne, ui-sans-serif, system-ui, -apple-system, &quot;Segoe UI&quot;, Roboto, Ubuntu, Cantarell, &quot;Noto Sans&quot;, sans-serif, &quot;Helvetica Neue&quot;, Arial, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">, or </span><code style=\"border: 0px solid rgb(217, 217, 227); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; font-size: 0.875em; color: var(--tw-prose-code); font-weight: 600; white-space-collapse: preserve; background-color: rgb(247, 247, 248); font-family: &quot;Söhne Mono&quot;, Monaco, &quot;Andale Mono&quot;, &quot;Ubuntu Mono&quot;, monospace !important;\">$_COOKI</code><br></p>', 'y combining these three superglobals into $_REQUEST, PHP provides a convenient way to ', 'umat park', '05-07-2023', 'www.umat.com', 'event-4.jpg', 7, 0, '', '', '');

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
(1, 'Girls Education', 'girl-education', '', '', ''),
(2, 'Public Education', 'public-education', '', '', ''),
(7, 'Islamic Wedding', 'islamic-wedding', '', '', ''),
(8, 'uMAT EVENT', 'umat-event', '', '', '');

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
-- Table structure for table `tbl_programme`
--

CREATE TABLE `tbl_programme` (
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

--
-- Dumping data for table `tbl_programme`
--

INSERT INTO `tbl_programme` (`programme_id`, `programme_title`, `programme_slug`, `programme_content`, `programme_content_short`, `programme_venue`, `programme_date`, `programme_link`, `photo`, `programme_category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(5, 'Girls\' Education Program', 'girl-education-program', '<div><font color=\"#6a9955\">The Girls\' Education Program aims to provide access to education</font><span style=\"color: rgb(106, 153, 85); font-family: var(--source-sans);\"> for girls in underprivileged communities, with a particular focus</span><span style=\"color: rgb(106, 153, 85); font-family: var(--source-sans);\"> on ensuring that girls have access to quality education, remain in</span><span style=\"color: rgb(106, 153, 85); font-family: var(--source-sans);\"> school, and complete their education.</span></div>', 'The Girls\' Education Program aims to provide access to education for girls in underprivileged communities, with a particular focus on ensuring that girls have access to quality education, remain in school, and complete their education.', 'Virtual', '13-07-2023', 'https://mail.google.com/mail/u/0/#inbox', 'programme-5.jpg', 9, 0, '', '', ''),
(6, 'Girls\' Education Program', 'girl-education-program', '<div><font color=\"#6a9955\">The Girls\' Education Program aims to provide access to education</font><span style=\"color: rgb(106, 153, 85); font-family: var(--source-sans);\"> for girls in underprivileged communities, with a particular focus</span><span style=\"color: rgb(106, 153, 85); font-family: var(--source-sans);\"> on ensuring that girls have access to quality education, remain in</span><span style=\"color: rgb(106, 153, 85); font-family: var(--source-sans);\"> school, and complete their education.</span></div>', 'The Girls\' Education Program aims to provide access to education for girls in underprivileged communities, with a particular focus on ensuring that girls have access to quality education, remain in school, and complete their education.', 'Virtual', '13-07-2023', 'https://mail.google.com/mail/u/0/#inbox', 'programme-5.jpg', 9, 0, '', '', ''),
(7, 'Sex Education', 'sex-education', '<p style=\"padding: 0px; margin-bottom: 0px; font-family: &quot;Playfair Display&quot;, serif; list-style: none; border: none; outline: none; width: 40vw; text-align: justify; font-size: medium;\">Spendy’s Bulwark was formed on the 5th of January, 2022 by Miss Spendilove Konadu; a BSc. Biochemistry student of the University for Development Studies to educate the girl child on the awareness of Reproductive Health Issues both in the university and its surroundings through social media and in-kind face-to-face interactions. </p><p style=\"padding: 0px; margin-bottom: 0px; font-family: &quot;Playfair Display&quot;, serif; list-style: none; border: none; outline: none; width: 40vw; text-align: justify; font-size: medium;\"><br></p><p style=\"padding: 0px; margin-bottom: 0px; font-family: &quot;Playfair Display&quot;, serif; list-style: none; border: none; outline: none; width: 40vw; text-align: justify; font-size: medium;\">Our name Spendy’s Bulwark stands for breaking of female boundaries by creating a wall of confidence of multi-specialty in Women Reproductive Health. </p><p style=\"padding: 0px; margin-bottom: 0px; font-family: &quot;Playfair Display&quot;, serif; list-style: none; border: none; outline: none; width: 40vw; text-align: justify; font-size: medium;\"><br></p><p style=\"padding: 0px; margin-bottom: 0px; font-family: &quot;Playfair Display&quot;, serif; list-style: none; border: none; outline: none; width: 40vw; text-align: justify; font-size: medium;\">The first activity undertaken was on 10th May, 2022 at the Bible Church Academy in Navrongo, Upper East Region where the Junior High School girls were educated on Vaginal Yeast Infection, its effect and preventive measures to undertake with a team of three young undergraduate students of the University for Development Studies, Navrongo Campus.</p><p><button class=\"btn\" style=\"padding: 23px 32px; margin: 1.5rem auto; font-family: &quot;Playfair Display&quot;, serif; list-style: none; border-width: initial; border-style: none; border-color: initial; outline: none; width: 162px; height: 47px; background-color: rgb(243, 98, 142); border-radius: 5px; display: flex; flex-direction: row; align-items: center; justify-content: center; text-wrap: wrap;\"></button></p>', 'Spendy’s Bulwark was formed on the 5th of January, 2022 by Miss Spendilove Konadu; a BSc. Biochemistry student of the University for Development Studies to educate the girl child on the awareness of Reproductive Health.', 'Virtual', '14-07-2023', 'https://twitter.com/BarcaUniversal/status/1676364203580334081', 'programme-7.jpg', 9, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_programme_category`
--

CREATE TABLE `tbl_programme_category` (
  `programme_category_id` int(11) NOT NULL,
  `programme_category_name` varchar(255) NOT NULL,
  `programme_category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_programme_category`
--

INSERT INTO `tbl_programme_category` (`programme_category_id`, `programme_category_name`, `programme_category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(9, 'Public Health', 'public-health', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quote`
--

CREATE TABLE `tbl_quote` (
  `id` int(250) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `details` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_quote`
--

INSERT INTO `tbl_quote` (`id`, `firstname`, `details`, `type`, `phone`, `email`) VALUES
(1, 'Charles Bih', 'kumasi, ghana', '', '0242155123', 'charlesbih@gmail.com'),
(14, 'Nana Kwame Boakye', 'Takoradi, y road', 'BTA Group of Companies', '0556558655', 'nana@ymail.com'),
(17, 'Charles Asare', 'karl@gg.com', '', '03456786789', 'bih@gg.com'),
(18, 'Rashad', 'Culpa animi non il', '...', '+1 (145) 897-7456', 'qycipyluh@mailinator.com'),
(19, 'Hermione', 'Laboriosam vel quas', '...', '+1 (432) 243-9275', 'jesokepaky@mailinator.com'),
(20, 'Winter', 'Aperiam id fugiat m', 'Architectural Design', '+1 (711) 778-3211', 'kymyx@mailinator.com'),
(21, 'Yaw ', 'project details for contact php', 'Structural Design', '0554676723', 'yaw@gmail.ka');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quote_category`
--

CREATE TABLE `tbl_quote_category` (
  `quote_category_id` int(11) NOT NULL,
  `quote_category_name` varchar(255) NOT NULL,
  `quote_category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_quote_category`
--

INSERT INTO `tbl_quote_category` (`quote_category_id`, `quote_category_name`, `quote_category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Architectural Design', 'architectural-design', '', '', ''),
(4, 'Structural Design', 'structural-design', '', '', '');

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
  `home_about_content` varchar(2000) NOT NULL,
  `our_vision` varchar(2000) DEFAULT NULL,
  `our_mission` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `total_recent_news_footer`, `total_popular_news_footer`, `total_recent_news_sidebar`, `total_popular_news_sidebar`, `total_recent_news_home_page`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `home_title_service`, `home_subtitle_service`, `home_status_service`, `home_title_team_member`, `home_subtitle_team_member`, `home_status_team_member`, `home_title_testimonial`, `home_subtitle_testimonial`, `home_status_testimonial`, `home_photo_testimonial`, `home_title_news`, `home_subtitle_news`, `home_status_news`, `home_title_partner`, `home_subtitle_partner`, `home_status_partner`, `mod_rewrite`, `newsletter_title`, `newsletter_text`, `newsletter_photo`, `newsletter_status`, `banner_search`, `banner_category`, `counter_1_title`, `counter_1_value`, `counter_2_title`, `counter_2_value`, `counter_3_title`, `counter_3_value`, `counter_4_title`, `counter_4_value`, `counter_photo`, `counter_status`, `color`, `preloader`, `active_editor`, `website_name`, `home_about_title`, `home_about_img`, `home_about_content`, `our_vision`, `our_mission`) VALUES
(1, 'logo.png', 'favicon.png', '<p><span style=\"color: rgb(33, 37, 41); font-family: Inter, sans-serif; font-size: 16px;\">At DANGAF CONSTRUCTION LTD, we build more than structures; we construct legacies. Our journey is woven with a rich history, a steadfast mission to redefine excellence, a vision to innovate, and values that guide every brick we lay. </span><br></p>\r\n', 'Copyright 2024. All Rights Reserved.', 'Block 16, Tamale Street, Ghana', 'info@dangafconstructions.co', '+234303857203', '09:00 AM - 05:00 PM', '', 3, 3, 4, 4, 7, 'Transforming Africa through entertainment, storytelling, and talent development.', 'transforming, africa, entertainment, storytelling, talent, development.', 'We are a production company dedicated to transforming Africa through exceptional events, storytelling, and talent development, showcasing the beauty and richness of the African culture to the world.', 'Our Services', 'Check Out All Our Consulting Services', 'Show', 'Team Members', 'Meet with All Our Qualified Team Members', 'Show', 'Testimonial', 'Our Happy Clients Tell About Us', 'Show', 'testimonial.jpg', 'Latest News', 'See All Our Updated and Latest News', 'Show', 'Our Partners', 'All Our Company Partners are Listed Below', 'Show', 'On', 'Newsletter', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid fugit expedita, iure ullam cum vero ex sint aperiam maxime.', 'newsletter.jpg', 'Show', 'banner_search.jpg', 'banner_category.jpg', 'Years of Experience', '3', 'Events Organized', '100', 'Team Members', '50', '', '', 'counter.jpg', 'Show', '2795D0', 'Off', 'Summernote', 'DANGAF', 'Who We Are', 'home_about_img.png', 'At DANGAF CONSTRUCTION LTD, we build more than structures; we construct legacies. Our journey is woven with a rich history, a steadfast mission to redefine excellence, a vision to innovate, and values that guide every brick we lay yes. ', 'our vission Lorem ipsum diolor emet atet lorem ipsum dilore amet lorem iosum dilor amet lorem ipsum diilor amet ncdnd dnjsdkkdls jdslkdsp;mkldkmmckmm lksdls slddslkksd lLorem ipsum diolor emet atet', 'our mission Lorem ipsum diolor emet atet lorem ipsum dilore amet lorem iosum dilor amet lorem ipsum diilor amet ncdnd dnjsdkkdls jdslkdsp;mkldkmmckmm lksdls slddslkksd lLorem ipsum diolor emet atet');

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
(1, 'Facebook', 'https://www.facebook.com/dangaf', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/dangaf', 'fa fa-twitter'),
(3, 'LinkedIn', 'https://www.linkedin.com/dangaf', 'fa fa-linkedin'),
(4, 'Google Plus', '#', 'fa fa-google-plus'),
(5, 'Pinterest', '#', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/dangaf', 'fa fa-instagram'),
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
  `subs_name` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_name`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(9, 'test1@gmail.com', 'kofi', '2022-08-23', '2022-08-23 13:47:54', '', 1),
(10, 'test2@gmail.com', 'yaw', '2022-08-23', '2022-08-23 13:48:09', '', 1),
(25, 'karl@gg.com', 'Karl', '', '', '', 1);

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
(7, 'Abdul', 'abdul', 2, 'team-member-7.png', 'team-member-banner-7.png', '', '<div><span style=\"font-family: var(--source-sans);\">Abdul, as a company organizer, plays a crucial role in coordinating various aspects of the organization. His strategic planning ensures efficient workflow and effective communication within the team. With a keen eye for detail, Kelvin optimizes processes, contributing to the overall success of the company. His organizational skills and leadership qualities make him an integral part of the team, driving productivity and fostering a collaborative work environment. As a key figure, Kelvin\'s dedication and expertise contribute significantly to the company\'s success.</span><br></div>', '', '', '', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(8, 'Moses Asamoah', 'moses-asamoah', 5, 'team-member-8.png', 'team-member-banner-8.png', '', '<div><span style=\"font-family: var(--source-sans);\">Moses Asamoah, as a company organizer, plays a crucial role in coordinating various aspects of the organization. His strategic planning ensures efficient workflow and effective communication within the team. With a keen eye for detail, Kelvin optimizes processes, contributing to the overall success of the company. His organizational skills and leadership qualities make him an integral part of the team, driving productivity and fostering a collaborative work environment. As a key figure, Kelvin\'s dedication and expertise contribute significantly to the company\'s success.</span><br></div>', '#', '#', '', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(12, 'Kelvin Yeboah', 'k-yeboah', 7, 'team-member-12.jpg', 'team-member-banner-12.jpg', '', '<div><span style=\"font-family: var(--source-sans);\">Kelvin Yeboah, as a company organizer, plays a crucial role in coordinating various aspects of the organization. His strategic planning ensures efficient workflow and effective communication within the team. With a keen eye for detail, Kelvin optimizes processes, contributing to the overall success of the company. His organizational skills and leadership qualities make him an integral part of the team, driving productivity and fostering a collaborative work environment. As a key figure, Kelvin\'s dedication and expertise contribute significantly to the company\'s success.</span><br></div>', '', '', '', '', '', '', '', '', '', '', '', '', 'Active', '', '', '');

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
(12, 'Asamoah Mensah', 'performer-12.jpg', '<p><font color=\"#5f6368\" face=\"Roboto, Arial, Helvetica, sans-serif\"><span style=\"font-size: 12px; letter-spacing: 0.3px;\"> My name is Charles o.Spendy is an experienced guitarist with a passion for creating memorable live performances. With over 10 years of experience. </span></font><br></p>', 'Web Dev', '0243559773', 'bih@gmm.com'),
(13, 'Namibra Admin', 'testimonial-12.jpg', '<p><font color=\"#5f6368\" face=\"Roboto, Arial, Helvetica, sans-serif\"><span style=\"font-size: 12px; letter-spacing: 0.3px;\">&nbsp;My name is Charles o.Spendy is an experienced guitarist with a passion for creating memorable live performances. With over 10 years of experience.&nbsp;</span></font><br></p>', 'Secretary\r\n', '0243559773', 'bih@gmm.com');

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
(1, 'admin@gmail.com', 'charlesbih', 'user-1.jpg', 'Admin', 'Active'),
(3, 'charles@gmail.com', '$2y$10$VNuTBD18rQgtmZo9ZaeeO.xZLSGchMrTL/ry8TZ3UqVgJRH4ONhhe', 'user-1.jpg', 'Admin', 'Active');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tbl_programme`
--
ALTER TABLE `tbl_programme`
  ADD PRIMARY KEY (`programme_id`);

--
-- Indexes for table `tbl_programme_category`
--
ALTER TABLE `tbl_programme_category`
  ADD PRIMARY KEY (`programme_category_id`);

--
-- Indexes for table `tbl_quote`
--
ALTER TABLE `tbl_quote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_quote_category`
--
ALTER TABLE `tbl_quote_category`
  ADD PRIMARY KEY (`quote_category_id`);

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
-- Indexes for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonials_category`
--
ALTER TABLE `tbl_testimonials_category`
  ADD PRIMARY KEY (`testimonials_category_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_event_category`
--
ALTER TABLE `tbl_event_category`
  MODIFY `event_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_programme`
--
ALTER TABLE `tbl_programme`
  MODIFY `programme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_programme_category`
--
ALTER TABLE `tbl_programme_category`
  MODIFY `programme_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_quote`
--
ALTER TABLE `tbl_quote`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_quote_category`
--
ALTER TABLE `tbl_quote_category`
  MODIFY `quote_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_team_member`
--
ALTER TABLE `tbl_team_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_testimonials_category`
--
ALTER TABLE `tbl_testimonials_category`
  MODIFY `testimonials_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
