-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 11, 2018 at 02:10 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.2.4-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paladox`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@a.c', '$2y$10$fyTGLHHfquWnPV/S./MFhutiPjF2i0DAKBxt6ExqOqqF8KiZgNk0C', '', NULL, '2017-12-18 16:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `cash_ins`
--

CREATE TABLE `cash_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `transferedby` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_outs`
--

CREATE TABLE `cash_outs` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `transferedby` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `catName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `catName`, `created_at`, `updated_at`) VALUES
(1, 'HTC', '2017-12-17 20:44:23', '2017-12-17 20:44:23'),
(2, 'Phonesd', '2017-12-17 20:44:37', '2017-12-18 16:36:11'),
(3, 'Mobile', '2017-12-17 20:44:53', '2017-12-17 20:44:53'),
(4, 'Laptops', '2017-12-17 20:45:05', '2017-12-17 20:45:05'),
(5, 'aaaaa', '2017-12-18 16:21:19', '2017-12-18 16:21:19'),
(6, 'fffffffffffff', '2017-12-22 06:12:51', '2017-12-22 06:13:06'),
(7, 'gggg', '2017-12-25 08:53:47', '2017-12-25 08:53:47'),
(8, 'cxf', '2017-12-26 23:08:10', '2017-12-26 23:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `commessions`
--

CREATE TABLE `commessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commession` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commessions`
--

INSERT INTO `commessions` (`id`, `user_id`, `commession`, `created_at`, `updated_at`) VALUES
(1, 25, '178.02', '2017-12-18 17:46:31', '2017-12-18 22:38:21'),
(2, 2, '123.02', '2017-12-18 19:45:11', '2017-12-19 17:05:33'),
(3, 1, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(4, 4, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(5, 6, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(6, 7, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(7, 8, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(8, 9, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(9, 10, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(10, 11, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(11, 12, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(12, 13, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(13, 14, '0.00', '2017-12-18 19:45:11', '2017-12-18 19:45:11'),
(14, 15, '136.00', '2017-12-18 19:45:12', '2017-12-18 22:38:22'),
(15, 16, '0.00', '2017-12-18 19:45:12', '2017-12-18 19:45:12'),
(16, 17, '0.00', '2017-12-18 19:45:12', '2017-12-18 19:45:12'),
(17, 18, '0.00', '2017-12-18 19:45:12', '2017-12-18 19:45:12'),
(18, 19, '0.00', '2017-12-18 19:45:12', '2017-12-18 19:45:12'),
(19, 20, '0.00', '2017-12-18 19:45:12', '2017-12-18 19:45:12'),
(20, 21, '0.00', '2017-12-18 19:45:12', '2017-12-18 19:45:12'),
(21, 22, '0.00', '2017-12-18 19:45:12', '2017-12-18 19:45:12'),
(22, 23, '0.00', '2017-12-18 19:45:12', '2017-12-18 19:45:12'),
(23, 24, '0.00', '2017-12-18 19:45:12', '2017-12-18 19:45:12'),
(25, 5, '12900.00', '2017-12-18 19:45:12', '2017-12-18 22:29:38'),
(26, 26, '4650.00', '2017-12-18 20:32:01', '2017-12-18 22:11:17'),
(27, 27, '0.00', '2017-12-19 21:00:26', '2017-12-19 21:00:26'),
(28, 31, '0.00', '2017-12-25 22:33:31', '2017-12-25 22:33:31'),
(29, 32, '0.00', '2017-12-26 23:03:39', '2017-12-26 23:03:39'),
(30, 33, '0.00', '2017-12-26 23:31:43', '2017-12-26 23:31:43'),
(31, 34, '0.00', '2017-12-27 10:36:06', '2017-12-27 10:36:06'),
(32, 35, '0.00', '2017-12-27 16:07:51', '2017-12-27 16:07:51'),
(33, 36, '0.00', '2017-12-28 04:43:49', '2017-12-28 04:43:49'),
(34, 37, '0.00', '2017-12-28 04:47:14', '2017-12-28 04:47:14'),
(35, 38, '0.00', '2018-04-10 21:09:50', '2018-04-10 21:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'mena_1513550812.PNG | 0_1513550812.PNG | 1_1513550812.jpg | 2_1513550812.jpg', '2017-12-17 20:46:52', '2017-12-17 20:46:52'),
(2, 2, 'mena_1513550812.PNG | 0_1513550812.PNG | 1_1513550812.jpg | 2_1513550812.jpg', '2017-12-17 20:46:52', '2017-12-17 20:46:52'),
(3, 3, 'mena_1513550812.PNG | 0_1513550812.PNG | 1_1513550812.jpg | 2_1513550812.jpg', '2017-12-17 20:46:52', '2017-12-17 20:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `in_directs`
--

CREATE TABLE `in_directs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `inDirect_user` int(10) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_directs`
--

INSERT INTO `in_directs` (`id`, `user_id`, `inDirect_user`, `level`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 2, '2017-12-17 01:28:10', '2017-12-17 01:28:10'),
(2, 5, 1, 2, '2017-12-17 01:29:22', '2017-12-17 01:29:22'),
(3, 6, 1, 2, '2017-12-17 01:29:57', '2017-12-17 01:29:57'),
(4, 7, 2, 2, '2017-12-17 01:30:56', '2017-12-17 01:30:56'),
(5, 7, 1, 3, '2017-12-17 01:30:56', '2017-12-17 01:30:56'),
(6, 8, 1, 2, '2017-12-17 15:36:28', '2017-12-17 15:36:28'),
(7, 9, 1, 2, '2017-12-17 15:37:03', '2017-12-17 15:37:03'),
(8, 10, 2, 2, '2017-12-17 15:38:45', '2017-12-17 15:38:45'),
(9, 10, 1, 3, '2017-12-17 15:38:45', '2017-12-17 15:38:45'),
(10, 11, 9, 2, '2017-12-17 15:40:02', '2017-12-17 15:40:02'),
(11, 11, 2, 3, '2017-12-17 15:40:02', '2017-12-17 15:40:02'),
(12, 11, 1, 4, '2017-12-17 15:40:02', '2017-12-17 15:40:02'),
(13, 13, 10, 2, '2017-12-17 16:19:29', '2017-12-17 16:19:29'),
(14, 13, 9, 3, '2017-12-17 16:19:29', '2017-12-17 16:19:29'),
(15, 13, 2, 4, '2017-12-17 16:19:29', '2017-12-17 16:19:29'),
(16, 13, 1, 5, '2017-12-17 16:19:29', '2017-12-17 16:19:29'),
(17, 14, 6, 2, '2017-12-17 17:44:29', '2017-12-17 17:44:29'),
(18, 14, 2, 3, '2017-12-17 17:44:29', '2017-12-17 17:44:29'),
(19, 14, 1, 4, '2017-12-17 17:44:29', '2017-12-17 17:44:29'),
(20, 15, 6, 2, '2017-12-17 17:45:25', '2017-12-17 17:45:25'),
(21, 15, 2, 3, '2017-12-17 17:45:25', '2017-12-17 17:45:25'),
(22, 15, 1, 4, '2017-12-17 17:45:25', '2017-12-17 17:45:25'),
(23, 16, 6, 2, '2017-12-17 17:45:56', '2017-12-17 17:45:56'),
(24, 16, 2, 3, '2017-12-17 17:45:56', '2017-12-17 17:45:56'),
(25, 16, 1, 4, '2017-12-17 17:45:56', '2017-12-17 17:45:56'),
(26, 17, 7, 2, '2017-12-17 17:48:32', '2017-12-17 17:48:32'),
(27, 17, 6, 3, '2017-12-17 17:48:32', '2017-12-17 17:48:32'),
(28, 17, 2, 4, '2017-12-17 17:48:32', '2017-12-17 17:48:32'),
(29, 17, 1, 5, '2017-12-17 17:48:32', '2017-12-17 17:48:32'),
(30, 18, 7, 2, '2017-12-17 17:49:29', '2017-12-17 17:49:29'),
(31, 18, 6, 3, '2017-12-17 17:49:29', '2017-12-17 17:49:29'),
(32, 18, 2, 4, '2017-12-17 17:49:29', '2017-12-17 17:49:29'),
(33, 18, 1, 5, '2017-12-17 17:49:30', '2017-12-17 17:49:30'),
(34, 19, 7, 2, '2017-12-17 17:50:07', '2017-12-17 17:50:07'),
(35, 19, 6, 3, '2017-12-17 17:50:07', '2017-12-17 17:50:07'),
(36, 19, 2, 4, '2017-12-17 17:50:07', '2017-12-17 17:50:07'),
(37, 19, 1, 5, '2017-12-17 17:50:07', '2017-12-17 17:50:07'),
(38, 20, 7, 2, '2017-12-17 17:51:55', '2017-12-17 17:51:55'),
(39, 20, 6, 3, '2017-12-17 17:51:55', '2017-12-17 17:51:55'),
(40, 20, 2, 4, '2017-12-17 17:51:55', '2017-12-17 17:51:55'),
(41, 20, 1, 5, '2017-12-17 17:51:55', '2017-12-17 17:51:55'),
(42, 21, 7, 2, '2017-12-17 17:52:31', '2017-12-17 17:52:31'),
(43, 21, 6, 3, '2017-12-17 17:52:31', '2017-12-17 17:52:31'),
(44, 21, 2, 4, '2017-12-17 17:52:32', '2017-12-17 17:52:32'),
(45, 21, 1, 5, '2017-12-17 17:52:32', '2017-12-17 17:52:32'),
(46, 22, 10, 2, '2017-12-17 17:54:43', '2017-12-17 17:54:43'),
(47, 22, 9, 3, '2017-12-17 17:54:43', '2017-12-17 17:54:43'),
(48, 22, 2, 4, '2017-12-17 17:54:43', '2017-12-17 17:54:43'),
(49, 22, 1, 5, '2017-12-17 17:54:43', '2017-12-17 17:54:43'),
(50, 23, 10, 2, '2017-12-17 17:55:35', '2017-12-17 17:55:35'),
(51, 23, 9, 3, '2017-12-17 17:55:35', '2017-12-17 17:55:35'),
(52, 23, 2, 4, '2017-12-17 17:55:35', '2017-12-17 17:55:35'),
(53, 23, 1, 5, '2017-12-17 17:55:35', '2017-12-17 17:55:35'),
(54, 24, 11, 2, '2017-12-18 15:30:33', '2017-12-18 15:30:33'),
(55, 24, 10, 3, '2017-12-18 15:30:33', '2017-12-18 15:30:33'),
(56, 24, 9, 4, '2017-12-18 15:30:33', '2017-12-18 15:30:33'),
(57, 24, 2, 5, '2017-12-18 15:30:33', '2017-12-18 15:30:33'),
(58, 24, 1, 6, '2017-12-18 15:30:33', '2017-12-18 15:30:33'),
(59, 25, 7, 2, '2017-12-18 17:46:32', '2017-12-18 17:46:32'),
(60, 25, 6, 3, '2017-12-18 17:46:32', '2017-12-18 17:46:32'),
(61, 25, 2, 4, '2017-12-18 17:46:32', '2017-12-18 17:46:32'),
(62, 25, 1, 5, '2017-12-18 17:46:32', '2017-12-18 17:46:32'),
(63, 26, 15, 2, '2017-12-18 20:32:01', '2017-12-18 20:32:01'),
(64, 26, 7, 3, '2017-12-18 20:32:02', '2017-12-18 20:32:02'),
(65, 26, 6, 4, '2017-12-18 20:32:02', '2017-12-18 20:32:02'),
(66, 26, 2, 5, '2017-12-18 20:32:02', '2017-12-18 20:32:02'),
(67, 26, 1, 6, '2017-12-18 20:32:02', '2017-12-18 20:32:02'),
(68, 27, 25, 2, '2017-12-19 21:00:27', '2017-12-19 21:00:27'),
(69, 27, 15, 3, '2017-12-19 21:00:27', '2017-12-19 21:00:27'),
(70, 27, 7, 4, '2017-12-19 21:00:27', '2017-12-19 21:00:27'),
(71, 27, 6, 5, '2017-12-19 21:00:27', '2017-12-19 21:00:27'),
(72, 27, 2, 6, '2017-12-19 21:00:27', '2017-12-19 21:00:27'),
(73, 27, 1, 7, '2017-12-19 21:00:27', '2017-12-19 21:00:27'),
(74, 31, 15, 2, '2017-12-25 22:33:31', '2017-12-25 22:33:31'),
(75, 31, 7, 3, '2017-12-25 22:33:31', '2017-12-25 22:33:31'),
(76, 31, 6, 4, '2017-12-25 22:33:31', '2017-12-25 22:33:31'),
(77, 31, 2, 5, '2017-12-25 22:33:31', '2017-12-25 22:33:31'),
(78, 31, 1, 6, '2017-12-25 22:33:32', '2017-12-25 22:33:32'),
(79, 37, 16, 2, '2017-12-28 04:47:14', '2017-12-28 04:47:14'),
(80, 37, 7, 3, '2017-12-28 04:47:14', '2017-12-28 04:47:14'),
(81, 37, 6, 4, '2017-12-28 04:47:14', '2017-12-28 04:47:14'),
(82, 37, 2, 5, '2017-12-28 04:47:14', '2017-12-28 04:47:14'),
(83, 37, 1, 6, '2017-12-28 04:47:14', '2017-12-28 04:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `usersCount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_11_12_000000_create_users_table', 1),
(2, '2014_11_12_100000_create_password_resets_table', 1),
(3, '2017_12_11_223305_create_categories_table', 1),
(4, '2017_12_11_223441_create_products_table', 1),
(5, '2017_12_11_223615_create_images_table', 1),
(6, '2017_12_11_223720_create_orders_table', 1),
(7, '2017_12_11_224028_create_in_directs_table', 1),
(8, '2017_12_12_011447_create_stasuses_table', 1),
(9, '2017_12_13_144904_user_status', 1),
(10, '2017_12_13_195004_create_admins_table', 1),
(11, '2017_12_15_195534_create_levels_table', 1),
(15, '2017_12_17_231559_create_cash_ins_table', 2),
(16, '2017_12_17_231707_create_cash_outs_table', 2),
(17, '2017_12_18_192312_create_commessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `transferedby` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Commessions',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `amount`, `transferedby`, `created_at`, `updated_at`) VALUES
(96, 5, 1, '150.00', 'Commessions', '2017-12-18 22:26:28', '2017-12-18 22:26:28'),
(97, 5, 1, '150.00', 'Commessions', '2017-12-18 22:27:39', '2017-12-18 22:27:39'),
(98, 5, 1, '150.00', 'Commessions', '2017-12-18 22:27:49', '2017-12-18 22:27:49'),
(99, 5, 1, '150.00', 'Commessions', '2017-12-18 22:29:05', '2017-12-18 22:29:05'),
(100, 5, 1, '150.00', 'Commessions', '2017-12-18 22:29:20', '2017-12-18 22:29:20'),
(101, 5, 1, '150.00', 'Commessions', '2017-12-18 22:29:38', '2017-12-18 22:29:38'),
(102, 25, 2, '135.99', 'Commessions', '2017-12-18 22:38:06', '2017-12-18 22:38:06'),
(103, 25, 2, '135.99', 'Commessions', '2017-12-18 22:38:21', '2017-12-18 22:38:21'),
(104, 2, 3, '115.99', 'Commessions', '2017-12-19 15:46:44', '2017-12-19 15:46:44'),
(105, 2, 2, '135.99', 'Commessions', '2017-12-19 17:05:33', '2017-12-19 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `offer` decimal(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `offer`, `description`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 'HTC', '170.00', '150.00', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Hmm.. try to find the cached view file&nbsp;<code>app/storage/views</code>. If there are many files. Delete all and reload the browser so only the views rendered will be regenerated&nbsp;&ndash;&nbsp;<a href=\"https://stackoverflow.com/users/1903366/lukasgeiter\">lukasgeiter</a>&nbsp;<a href=\"https://stackoverflow.com/questions/28497538/blade-ifisset-is-not-working-laravel#comment45315153_28497538\">Feb 13 &#39;15 at 10:52</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2017-12-17 20:46:52', '2017-12-17 20:46:52'),
(2, 'HTC', '160.00', '135.99', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Hmm.. try to find the cached view file&nbsp;<code>app/storage/views</code>. If there are many files. Delete all and reload the browser so only the views rendered will be regenerated&nbsp;&ndash;&nbsp;<a href=\"https://stackoverflow.com/users/1903366/lukasgeiter\">lukasgeiter</a>&nbsp;<a href=\"https://stackoverflow.com/questions/28497538/blade-ifisset-is-not-working-laravel#comment45315153_28497538\">Feb 13 &#39;15 at 10:52</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2017-12-17 20:46:52', '2017-12-17 20:46:52'),
(3, 'HTC', '155.00', '115.99', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Hmm.. try to find the cached view file&nbsp;<code>app/storage/views</code>. If there are many files. Delete all and reload the browser so only the views rendered will be regenerated&nbsp;&ndash;&nbsp;<a href=\"https://stackoverflow.com/users/1903366/lukasgeiter\">lukasgeiter</a>&nbsp;<a href=\"https://stackoverflow.com/questions/28497538/blade-ifisset-is-not-working-laravel#comment45315153_28497538\">Feb 13 &#39;15 at 10:52</a></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 1, '2017-12-17 20:46:52', '2017-12-17 20:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `stasuses`
--

CREATE TABLE `stasuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `statusName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stasuses`
--

INSERT INTO `stasuses` (`id`, `statusName`, `color`) VALUES
(1, 'active', 'primary'),
(2, 'pending', 'warning'),
(3, 'blocked', 'danger'),
(4, 'level complet', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `govid` bigint(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `refeler_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `password`, `govid`, `mobile`, `refeler_id`, `remember_token`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 'First user', 'a1@a.com', 'adasdasd', '$2y$10$XMV3t4FjSN/E9j.jt2kYseq569gqstyFYVWaN3KH41pYNXVK5LDa.', 1234567895665, 456564, NULL, 'ojl20ohkoEUEIoqvJcqRINOtBR4dzKxQcd7qEx3hH9XEwNvdSHLEFJmGo97I', '2017-12-17 01:21:35', '2017-12-17 01:21:35', 2),
(2, 'second life', 'a2@a.com', 'second life second life', '$2y$10$Q1SvkNbKiHSWt4tfG26UBOXF86zjQjCAt52lRu4XRYLRTFQpWzhhm', 8946512845612, 145645645, 1, 't7mcKnxmIjtXv5VtozhxrLNOOyLzSjNAJQrALSfOx4XNnVhA6rjq9VSRmxzm', '2017-12-17 01:23:40', '2017-12-17 21:29:23', 1),
(4, 'third life', 'a3@a.co', 'dfsdf 4', '$2y$10$PaEHwPjWguOZm3lX4mM5i.9Cdc2l3464gWtZOBW5wsody0bE5kmFe', 4651378465, 784651, 2, 'BSD7ZVFJGxswuIIg7OWMr16dJaQkK8SBBXEGeyfkJ5FMSvRsnT59K5RDKONr', '2017-12-17 01:28:10', '2017-12-17 01:28:10', 2),
(5, 'Marwan Ahmed', 'a5@a.c', 'asdasd', '$2y$10$X.JU7.HVH4.izmDYpGigKOeGtzG.CxgfK9R1Cz9fMaIwJ/l5mCnG2', 65239562, 956295623956, 2, 'As32WVWBuDHzIv5COiBtNHizpg7vfb0yDDEqBKILINuHSMvz9CPd9rzYcoHL', '2017-12-17 01:29:22', '2017-12-17 21:29:35', 4),
(6, 'ahmed', 'a6@a.com', 'adsad', '$2y$10$3eiuj96PH4DR3B2W90ynuusZxGTC5LUhhEEzRtzDEg.hO0MCyoOs.', 645123465, 48651564, 2, 'GoQh0zFYneADoaCufvGQVzBRgfpezMKudsZ2pk6ZpEQc10kafSlAL5aXO3sY', '2017-12-17 01:29:57', '2017-12-17 01:29:57', 2),
(7, 'ahmed', 'a5@a.com', 'dcfsdfsd', '$2y$10$vFwGAtdoK7NVO4lnA9bShuls47UqY25BfBGCfRcb.egcHlnqJlHF.', 645123, 84651324865, 6, NULL, '2017-12-17 01:30:56', '2017-12-17 01:30:56', 2),
(8, 'aa', 'a7@a.com', 'asdasd', '$2y$10$c1UgyrPTFHM4DL5xmwgMSuS54.hQPDKX5jr7OzK7RFLkVcceZtaFy', 566545123, 5965656, 2, 'MDaIAhY5p7elvJc7iE6qS1i7O7uSkVclBNm9ZyHN7mz3R53XviFteicyMXMC', '2017-12-17 15:36:28', '2017-12-17 15:36:28', 2),
(9, 'ddddd', 'a8@a.com', 'asdasd', '$2y$10$PLhvqEV46aWfpNMptg/1R.8JCR4gowfK5SjjxBIGXLj4ttI6ZcJnq', 48651328465132, 56236523, 2, 'qLimNL5enC9NpFqtOI44qdsybtmYuuVOTCHlywhwGgRS8OOE2GBkTdB2DYWO', '2017-12-17 15:37:03', '2017-12-17 15:37:03', 2),
(10, 'dfsdf', 'a9@a.com', 'adasdas', '$2y$10$Kilaf9qQfWExV3WwD87t.uSlMhrroowgU.JIxDyNXoSJdIbH.fhb2', 1234584561, 965246512, 9, 'slVhQwByls9wGDupjI1GidQ829QSiqsZZEmTpGjlESDdkbIDt29yb9cYut9V', '2017-12-17 15:38:45', '2017-12-17 15:38:45', 2),
(11, 'dfsdf', 'a10@a.com', 'dfsfsdf', '$2y$10$LB4Sbkh1Z7.Pw2Gd3T6kl.mLYq7MM6S3uPyUXbAdZ5hmPbJyWcFAC', 4561235623, 5234856123, 10, 'GZAojT3CR680SgaybeODLPv4bkN4AX2S8yX3oo2xqsyyWTlHDKe2zAH9Fm9l', '2017-12-17 15:40:02', '2017-12-17 15:40:02', 2),
(12, 'hjn', 'a11@a.c', 'ddddddd', '$2y$10$1vxm7j5oXfVdrOum1Cahrup2rush.NcpkzOCDsVQMmgYicC5sKJQq', 8456965956, 956256, 1, 'kZtCfwM1uYkzxrQ6c1vTRD8QvHduhjYMJtyW6YPLMSaY4zkGPwdDoAc7ZqKh', '2017-12-17 15:43:47', '2017-12-17 15:43:47', 2),
(13, 'sfss', 'as@s.c', 'sdfsdafs', '$2y$10$HCY6vZeTm..9jbCwrW4hGub06HwkH43p75K1ZZYPtaUmj8mA0BDL.', 5644656455, 56456, 11, 'FuztyplFZqrRhxkotjHTGUTgwOsGMTtm8Zu6WmjcoLmNiLu2PJE3oFnE5fur', '2017-12-17 16:19:29', '2017-12-17 16:19:29', 2),
(14, 'fsdfsd', 'ahmed@mm.com', 'asdad', '$2y$10$pK0XIvptfq9KtwBVvsVlyemyayyjPpbrzzLHeb8KAuFzjEIZGAXbm', 456645564645, 456456, 7, 'T2lvtbDvK2M8ldw6oJNoMGkt67XRNb4wq5SRmEiNGwMerth8tQAfMlbXhFzE', '2017-12-17 17:44:29', '2017-12-17 17:44:29', 2),
(15, 'deeee', 'a5hmed@mm.com', 'dfsdf', '$2y$10$5DcMWAoBkyUQh9zUv6AViODb2IR7BGBIgz7Ld58zVhSPZalqGWKRu', 445645645654, 56566556, 7, 'Xc7FExcrPqzQESv7HLa7wO6wo0HmIKHDJLr42Gx3oB2uUfMWnDTSJfUTDPtZ', '2017-12-17 17:45:25', '2017-12-17 17:45:25', 2),
(16, 'fsdsd', 'ah4med@mm.com', 'asdfdasfs', '$2y$10$9wuoR7oG.qw2Vm4fMT7DXeXPyT98bYPuwEuWJJNewqPdcWiZZ0s0m', 56565656, 56565656, 7, 'h2cm56KaIF0eK11hRwl6fPpEnKYfwYun0XsKAn2NXJ8edjCGZyI8SEDQLk0B', '2017-12-17 17:45:56', '2017-12-17 17:45:56', 2),
(17, 'fsdfsdf', 'as@ss.c', 'asdad', '$2y$10$rePtA9It5rtnbHLfJTsNp.4oPL67FHrF0Ik1eeMGrXfz61gMmSQTO', 456645456456, 456564, 16, 'tV6Rjs3CvrpsFPN6IW48wVGQA3bTz8hkMzVXsr2Cf4V4xyLMVtNM46KUuZk7', '2017-12-17 17:48:32', '2017-12-17 17:48:32', 2),
(18, 'ddddd', 'a@ad.com', 'dsfsdf', '$2y$10$ZP45AGVgGICljbytPLAFzu3BtH3..oaWREhbPlJyJjrbghHq60Ore', 45546564, 45454554, 16, 'hAMQKwJETLYC4eMasTHHcNKhacOn39OTbQGaVqaM7uzAbbPX9egR33b7CltI', '2017-12-17 17:49:29', '2017-12-17 17:49:29', 2),
(19, 'sdfsdfsd', 'a@a16.com', 'adfsdf', '$2y$10$ajANUWhaB1O8qi.QPlxxR.Fb7RUl7zkT5KyLEQCejRoetHt7JuawG', 456456456456, 45456456, 16, 'waGx2YBDGzCtf6yhO9S1v9sHaCY2dFZqkNT7E9IhwyrLu4RkqVYFGa8gk3OU', '2017-12-17 17:50:06', '2017-12-17 17:50:06', 2),
(20, 'dfsd', 'a4@f.c', 'daa54', '$2y$10$W4rLl7H4bwqZZWY5ndhCueymdzIzD7T2KRl9slO54UHcvr82QOPnC', 4564565644, 45645546, 16, 'E2Tl1R4wFBOw444TUqOdTRKwgAE7NkSlAqMXJ5UyOQrLVYJfCO5CpjY533Lh', '2017-12-17 17:51:55', '2017-12-17 17:51:55', 2),
(21, 'sfgfgdfg', 'dasa@a.com', 'sdfsdf', '$2y$10$y1iOPkEUMfuFhxqqiREk4ezqq/yitvvsTYMV4so6NZ87eR/949D1S', 45645564, 455654612, 16, '1HjGXmFy4EzHQUncnvQG33qVPNBOQeScjo2gJr1YAJU7qyTOfxiuvE4j74Ex', '2017-12-17 17:52:31', '2017-12-17 17:52:31', 2),
(22, 'dfsdfsd', 'asaa@a.com', 'asdasd', '$2y$10$UNC/Fx16xz8BfC8pwGbTv.RxdWE7RNSjMzJhgV2fPCIKd1AuMgS8q', 54645, 546465, 11, 'DsVwGzZHblqzJBjWX3XCBu219XjaUvOGlnvCuxZoOZnJguAEzogZJUnfobmY', '2017-12-17 17:54:43', '2017-12-17 17:54:43', 2),
(23, 'dsfsdf', 'a1111@a.com', 'adads', '$2y$10$VyZGsTzslb5BhQe/XcATDOqgaSxtte.4V8mlYIZW21lIPZhLKlZye', 456465564, 456564456, 11, 'lf4oUc5sQSRaj5GLWeA5cYhOZmFrZ6z1P7X6epPQsMKcZtZrLdInSid8Bzm0', '2017-12-17 17:55:35', '2017-12-17 17:55:35', 2),
(24, 'ahmed', 'a@a.com', 'adasd', '$2y$10$nFLFxGJMniPTPwrbpC7t8enV./HIKsQenhnRYrkcGYT3.fkbjbt0i', 465146512346512, 123456789, 23, 'PlAjdmUCS8sPd2A00of12YbSg8XaT2ilatXSAEmBUaor32scvnWv53qAhwMx', '2017-12-18 15:30:33', '2017-12-18 16:57:07', 2),
(25, 'cococo', 'co@co.co', 'dfsdfsdf', '$2y$10$Ytv.2UqQmqBWa6Rh8otAm./EzfGv8T7Qz7pkTWDAP8mDUOXEas7we', 45612645, 456645123564, 15, NULL, '2017-12-18 17:46:31', '2017-12-18 17:46:31', 2),
(26, 'dddddd', 'a25@a2.c', 'dcdsd', '$2y$10$ruAF9/w4itYwFYfHAvQVC.KHMQRya2eG7jBqPFU/ho7OvaOaGkOHO', 546564564456, 456456, 25, NULL, '2017-12-18 20:32:01', '2017-12-18 20:32:01', 2),
(27, 'sdfsdf', 'a22@2.c', 'fdsfsdfsd', '$2y$10$7cmeaojVbEMeMzxNxi0AxOEdMSzXT2/MhEd6OUnTf04ri43zt8jle', 545564132, 5482134564, 26, NULL, '2017-12-19 21:00:26', '2017-12-19 21:00:26', 2),
(31, 'dfgsfg', 't@t.t', 'dsfsdf', '$2y$10$ZYoHkp0/TFuCAoYZgO6anemd/hd3SGXg4HhSFURJOVpkX.uiGuFF2', 45665, 4564565, 25, NULL, '2017-12-25 22:33:31', '2017-12-25 22:58:46', 2),
(32, 'Mustafa Alaa', 'mustafa3la2@gmail.com', 'Shubra, 27', '$2y$10$lEjAYYJTKdDShlucUSFe0uvcQuSJkd8Yyb7tvSEed9Tiq8gXLiRX6', 54645645, 1008441470, NULL, NULL, '2017-12-26 23:03:39', '2017-12-26 23:03:39', 2),
(33, 'Marwan Ahmed', 'a8989@a.com', 'ahmed', '$2y$10$ldFgBFDDwa527sxFPOuAceLH.K8LWkBGrJgpi3kG.N/rSAU8fy6PG', 456456456, 4545456, NULL, NULL, '2017-12-26 23:31:43', '2017-12-26 23:31:43', 2),
(34, 'test', 'txttoo@msn.com', 'Shubra, 27', '$2y$10$J5uekWIGlfQvYjxwZwmHMu3Ga/BvFqwMBZOq3nsrGAOHXVQGRFySO', 456546, 1008441414, NULL, NULL, '2017-12-27 10:36:06', '2017-12-27 10:36:06', 2),
(35, 'aa', 'a456@a.com', 'aaaaa', '$2y$10$zPfT/GLk0xq.A6OodtTMseZXehkpACJSdhE.oSLxjOwAZl3uH1oRa', 45456456, 11111111111, NULL, 'BpdcF9c2xxpgeoL1iJ9coyupetKZLYmN410oLdtUGNGk1vHjVWivgkIfmOnI', '2017-12-27 16:07:51', '2017-12-27 16:09:44', 2),
(36, 'cf', 'aa45a@a.c', 'dasas456', '$2y$10$IN3IGa/LdylewwPUKkwde.VYXKDEKx.Z5/s8lKrpHlg6cuzWpFd.W', 54456654, 465456, NULL, 'sa2DhCZWk0nngvkaMBMGNBWpw7brGUjcfICayUdTyNUSYvjRyd5rlNsXpi7S', '2017-12-28 04:43:49', '2017-12-28 04:43:49', 2),
(37, 'sfdfsd', '5645@d.com', 'adasdss', '$2y$10$QpZyV2w/4PNQgDGP9UTPu.89Jy0rUnDxRKAAb4dFkla/Axp15MUxS', 456456, 4654563, 21, NULL, '2017-12-28 04:47:14', '2017-12-28 04:47:14', 2),
(38, 'ahmed', 'a@a.cd', 'sssssssssss', '$2y$10$EFImaspc0FG.pszBjU9vt.cC2.klmg8ydy6rnFBwGG9TJJNn.8nge', 11111111111, 11111111, NULL, NULL, '2018-04-10 21:09:50', '2018-04-10 21:09:50', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_ins`
--
ALTER TABLE `cash_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_ins_user_id_foreign` (`user_id`);

--
-- Indexes for table `cash_outs`
--
ALTER TABLE `cash_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_outs_user_id_foreign` (`user_id`),
  ADD KEY `cash_outs_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commessions`
--
ALTER TABLE `commessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commessions_user_id_foreign` (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `in_directs`
--
ALTER TABLE `in_directs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_directs_user_id_foreign` (`user_id`),
  ADD KEY `in_directs_indirect_user_foreign` (`inDirect_user`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `levels_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `stasuses`
--
ALTER TABLE `stasuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_govid_unique` (`govid`),
  ADD KEY `users_refeler_id_foreign` (`refeler_id`),
  ADD KEY `users_status_id_foreign` (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cash_ins`
--
ALTER TABLE `cash_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_outs`
--
ALTER TABLE `cash_outs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `commessions`
--
ALTER TABLE `commessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `in_directs`
--
ALTER TABLE `in_directs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stasuses`
--
ALTER TABLE `stasuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cash_ins`
--
ALTER TABLE `cash_ins`
  ADD CONSTRAINT `cash_ins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cash_outs`
--
ALTER TABLE `cash_outs`
  ADD CONSTRAINT `cash_outs_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cash_outs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `commessions`
--
ALTER TABLE `commessions`
  ADD CONSTRAINT `commessions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `in_directs`
--
ALTER TABLE `in_directs`
  ADD CONSTRAINT `in_directs_indirect_user_foreign` FOREIGN KEY (`inDirect_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `in_directs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `levels`
--
ALTER TABLE `levels`
  ADD CONSTRAINT `levels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_refeler_id_foreign` FOREIGN KEY (`refeler_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `stasuses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
