-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 10:56 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aa_ctmt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `black_list`
--

CREATE TABLE `black_list` (
  `blist_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `mac_address` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dictionaries`
--

CREATE TABLE `dictionaries` (
  `dict_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `location` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `location`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'saolao', 'AWS', '2020-09-23 07:57:42', '2020-09-23 07:57:42', NULL),
(2, 'saolao2', 'AWS', '2020-09-23 08:06:47', '2020-09-23 08:06:47', NULL),
(3, 'saolao3', 'AWS', '2020-09-23 08:06:51', '2020-09-23 08:06:51', NULL),
(4, 'saolao4', 'AWS', '2020-09-23 08:06:53', '2020-09-23 08:06:53', NULL),
(5, 'saolao5', 'AWS', '2020-09-23 08:06:56', '2020-09-23 08:06:56', NULL),
(6, 'saolao6', 'AWS', '2020-09-23 08:06:58', '2020-09-23 08:06:58', NULL),
(7, 'saolao7', 'AWS', '2020-09-23 08:07:01', '2020-09-23 08:07:01', NULL),
(8, 'saolao8', 'AWS', '2020-09-23 08:07:03', '2020-09-23 08:07:03', NULL),
(9, 'saolao9', 'AWS', '2020-09-23 08:07:06', '2020-09-23 08:07:06', NULL),
(10, 'saolao10', 'AWS', '2020-09-23 08:07:09', '2020-09-23 08:07:09', NULL),
(11, 'saolao11', 'AWS', '2020-09-23 08:44:16', '2020-09-23 08:44:16', NULL),
(12, 'saolao12', 'AWS', '2020-09-23 08:44:20', '2020-09-23 08:44:20', NULL),
(13, 'saolao13', 'AWS', '2020-09-23 08:44:23', '2020-09-23 08:44:23', NULL),
(14, 'saolao14', 'AWS', '2020-09-23 08:44:26', '2020-09-23 08:44:26', NULL),
(15, 'saolao15', 'AWS', '2020-09-23 08:44:28', '2020-09-23 08:44:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `project_id`, `service_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 1, 'sale', '2020-09-24 06:14:35', '2020-09-24 06:14:35', NULL),
(7, 1, 'checkout', '2020-09-24 06:15:25', '2020-09-24 06:15:25', NULL),
(8, 1, 'random', '2020-09-24 06:15:33', '2020-09-24 06:15:33', NULL),
(9, 1, 'Buy', '2020-09-24 06:15:57', '2020-09-24 06:15:57', NULL),
(10, 2, 'sell', '2020-09-24 06:16:16', '2020-09-24 06:16:16', NULL),
(11, 2, 'add', '2020-09-24 06:16:20', '2020-09-24 06:16:20', NULL),
(12, 2, 'update', '2020-09-24 06:16:25', '2020-09-24 06:16:25', NULL),
(13, 2, 'post', '2020-09-24 06:16:34', '2020-09-24 06:16:34', NULL),
(14, 3, 'post', '2020-09-24 09:54:15', '2020-09-24 09:54:15', NULL),
(15, 4, 'post', '2020-09-24 09:54:18', '2020-09-24 09:54:18', NULL),
(16, 5, 'post', '2020-09-24 09:54:21', '2020-09-24 09:54:21', NULL),
(17, 6, 'post', '2020-09-24 09:54:27', '2020-09-24 09:54:27', NULL),
(18, 7, 'post', '2020-09-24 09:54:29', '2020-09-24 09:54:29', NULL),
(19, 8, 'post', '2020-09-24 09:54:32', '2020-09-24 09:54:32', NULL),
(20, 9, 'post', '2020-09-24 09:54:35', '2020-09-24 09:54:35', NULL),
(21, 10, 'post', '2020-09-24 09:54:38', '2020-09-24 09:54:38', NULL),
(22, 11, 'post', '2020-09-24 09:54:41', '2020-09-24 09:54:41', NULL),
(23, 12, 'post', '2020-09-24 09:54:43', '2020-09-24 09:54:43', NULL),
(24, 13, 'post', '2020-09-24 09:54:46', '2020-09-24 09:54:46', NULL),
(25, 14, 'post', '2020-09-24 09:54:49', '2020-09-24 09:54:49', NULL),
(26, 15, 'post', '2020-09-24 09:54:51', '2020-09-24 09:54:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_status` int(11) NOT NULL,
  `db_connect_status` int(11) NOT NULL,
  `cpu_load` decimal(10,0) DEFAULT NULL,
  `ram_use` decimal(10,0) DEFAULT NULL,
  `bandwidth` decimal(10,0) DEFAULT NULL,
  `send_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `service_id`, `service_status`, `db_connect_status`, `cpu_load`, `ram_use`, `bandwidth`, `send_time`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 6, 1, 1, '50', '50', '50', '2020-09-24 06:17:44', '2020-09-24 06:17:44', '2020-09-24 06:17:44', NULL),
(4, 7, 1, 1, '50', '50', '50', '2020-09-24 06:18:00', '2020-09-24 06:18:00', '2020-09-24 09:33:02', NULL),
(5, 8, 1, 1, '50', '50', '50', '2020-09-24 06:18:14', '2020-09-24 06:18:14', '2020-09-24 06:18:14', NULL),
(6, 9, 1, 0, '50', '50', '50', '2020-09-24 06:18:20', '2020-09-24 06:18:20', '2020-09-24 09:58:56', NULL),
(7, 10, 1, 0, '50', '60', '50', '2020-09-24 06:19:25', '2020-09-24 06:19:25', '2020-09-24 06:19:25', NULL),
(8, 11, 1, 1, '50', '60', '50', '2020-09-24 06:19:33', '2020-09-24 06:19:33', '2020-09-24 06:19:33', NULL),
(9, 11, 1, 1, '50', '60', '600', '2020-09-24 06:19:44', '2020-09-24 06:19:44', '2020-09-24 06:19:44', NULL),
(10, 12, 0, 1, '50', '60', '600', '2020-09-24 06:19:50', '2020-09-24 06:19:50', '2020-09-24 06:19:50', NULL),
(11, 13, 1, 1, '50', '60', '600', '2020-09-24 06:20:09', '2020-09-24 06:20:09', '2020-09-24 06:20:09', NULL),
(12, 14, 1, 0, '50', '60', '600', '2020-09-24 09:56:41', '2020-09-24 09:56:41', '2020-09-25 03:16:04', NULL),
(13, 15, 1, 1, '50', '60', '600', '2020-09-24 09:56:43', '2020-09-24 09:56:43', '2020-09-24 09:56:43', NULL),
(14, 16, 1, 1, '50', '60', '600', '2020-09-24 09:56:46', '2020-09-24 09:56:46', '2020-09-24 09:56:46', NULL),
(15, 17, 1, 1, '50', '60', '600', '2020-09-24 09:56:49', '2020-09-24 09:56:49', '2020-09-24 09:56:49', NULL),
(16, 18, 1, 1, '50', '60', '600', '2020-09-24 09:56:51', '2020-09-24 09:56:51', '2020-09-24 09:56:51', NULL),
(17, 19, 1, 1, '50', '60', '600', '2020-09-24 09:56:54', '2020-09-24 09:56:54', '2020-09-24 09:56:54', NULL),
(18, 20, 1, 1, '50', '60', '600', '2020-09-24 09:57:08', '2020-09-24 09:57:08', '2020-09-24 09:57:08', NULL),
(19, 21, 1, 1, '50', '60', '600', '2020-09-24 09:57:10', '2020-09-24 09:57:10', '2020-09-24 09:57:10', NULL),
(20, 22, 1, 1, '50', '60', '600', '2020-09-24 09:57:12', '2020-09-24 09:57:12', '2020-09-24 09:57:12', NULL),
(21, 23, 1, 1, '50', '60', '600', '2020-09-24 09:57:15', '2020-09-24 09:57:15', '2020-09-24 09:57:15', NULL),
(22, 24, 1, 1, '50', '60', '600', '2020-09-24 09:57:17', '2020-09-24 09:57:17', '2020-09-24 09:57:17', NULL),
(23, 25, 1, 1, '50', '60', '600', '2020-09-24 09:57:19', '2020-09-24 09:57:19', '2020-09-24 09:57:19', NULL),
(24, 26, 1, 1, '50', '60', '600', '2020-09-24 09:57:23', '2020-09-24 09:57:23', '2020-09-24 09:57:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `white_list`
--

CREATE TABLE `white_list` (
  `wlist_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `mac_address` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `black_list`
--
ALTER TABLE `black_list`
  ADD PRIMARY KEY (`blist_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `dictionaries`
--
ALTER TABLE `dictionaries`
  ADD PRIMARY KEY (`dict_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `white_list`
--
ALTER TABLE `white_list`
  ADD PRIMARY KEY (`wlist_id`),
  ADD KEY `project_id` (`project_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `black_list`
--
ALTER TABLE `black_list`
  MODIFY `blist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dictionaries`
--
ALTER TABLE `dictionaries`
  MODIFY `dict_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `white_list`
--
ALTER TABLE `white_list`
  MODIFY `wlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `black_list`
--
ALTER TABLE `black_list`
  ADD CONSTRAINT `black_list_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);

--
-- Constraints for table `dictionaries`
--
ALTER TABLE `dictionaries`
  ADD CONSTRAINT `dictionaries_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`service_id`);

--
-- Constraints for table `white_list`
--
ALTER TABLE `white_list`
  ADD CONSTRAINT `white_list_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`project_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
