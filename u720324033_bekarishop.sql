-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 30, 2025 at 06:49 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u720324033_bekarishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `user_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` varchar(191) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `income_balance` double(20,3) NOT NULL DEFAULT 0.000,
  `role_id` bigint(20) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `password_str` varchar(255) NOT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_id`, `name`, `user_name`, `email`, `phone`, `address`, `image`, `income_balance`, `role_id`, `password`, `password_str`, `email_status`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'IKD', 'Admin', 'admin@gmail.com', '01717796360', 'Rajshahi', 'https://bekari.matchlessgiftshopikd.com/uploads/2025/07/1752837616-pngtree-blind-people-touching-elephant-png-image_7060596.png', 0.000, 1, '$2y$10$M7cOKdKWpVqFEBT9Bfulz.zLE3/T8ekYszxGc3XDL3Jp4ewjn0iWS', '34028', 0, 1, NULL, '2022-11-04 23:01:13', '2025-07-18 20:07:20'),
(5, NULL, 'Chondon Kumar Bug', 'ckb', 'bikrombug@gmail.com', '01721242195', 'Palashbari, Manda, Naogaon', 'https://bekari.matchlessgiftshopikd.com/uploads/2025/07/1752820579-6fedb56337ef982658257e20178b7ff6.jpg', 0.000, 2, '$2y$10$hIuthF2wse3GnvIMAp6O7eWE1qLHvF2zLRr6c2ouMD1tCUJq/2wi6', 'CKB.123', 0, 1, NULL, '2024-02-21 12:12:17', '2025-07-18 12:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `subject` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `problem_in_detail` longtext NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `postcode` varchar(191) NOT NULL,
  `shipping_charge` varchar(191) NOT NULL,
  `urgent_charge` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `country_id`, `city_id`, `name`, `slug`, `postcode`, `shipping_charge`, `urgent_charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Godagari', 'godagari', '6290', '0', 0, 1, '2025-07-18 07:16:10', '2025-07-18 07:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `subscribe_title` text DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `description` longtext DEFAULT NULL,
  `btn_txt` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `fname` varchar(191) DEFAULT NULL,
  `lname` varchar(191) DEFAULT NULL,
  `billing_address` varchar(191) DEFAULT NULL,
  `billing_address2` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `zipcode` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_date` varchar(191) NOT NULL,
  `start_time` varchar(191) NOT NULL,
  `end_time` varchar(191) NOT NULL,
  `duration` varchar(191) NOT NULL,
  `people` varchar(191) NOT NULL,
  `full_name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `telephone` varchar(191) NOT NULL,
  `address` varchar(191) DEFAULT NULL,
  `opt_message` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_des` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `meta_image` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_des` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `meta_image` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `meta_title`, `meta_des`, `meta_keywords`, `meta_image`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bekary', 'bekary', 0, NULL, NULL, NULL, NULL, NULL, 'Prabhupada Bekary , IKD, Rajshahi.', 1, '2025-07-17 15:28:26', '2025-07-17 15:28:26'),
(2, 'Sattvik Food', 'sattvik-food', 0, NULL, NULL, NULL, NULL, NULL, 'Health Foods & Products  Made in ISKCON KHETURI DHAM', 1, '2025-07-17 18:52:36', '2025-07-17 18:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Rajshahi', 'rajshahi', 1, '2025-07-18 07:14:58', '2025-07-18 07:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `message` longtext NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 'bangladesh', 1, NULL, '2025-07-18 07:14:43', '2025-07-18 07:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `percentage` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveryman_to_orders`
--

CREATE TABLE `deliveryman_to_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveryman_to_orders`
--

INSERT INTO `deliveryman_to_orders` (`id`, `order_id`, `employee_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 228, 1, 2, '2025-07-27 18:10:50', '2025-07-27 18:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `nid` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resturant_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_des` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_packages`
--

CREATE TABLE `item_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resturant_id` int(11) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marquees`
--

CREATE TABLE `marquees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `invoice_id` varchar(191) NOT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL DEFAULT 1,
  `total_qty` decimal(10,2) NOT NULL,
  `total_cost` decimal(15,2) NOT NULL,
  `pay_amount` decimal(10,2) NOT NULL,
  `return_amount` decimal(10,2) NOT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `coupone_code` varchar(191) DEFAULT NULL,
  `shipping_charge` varchar(191) DEFAULT NULL,
  `isUrgent` varchar(255) NOT NULL DEFAULT 'no',
  `urgent_charge` int(11) NOT NULL DEFAULT 0,
  `payment_method` varchar(191) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `admin_id`, `customer_id`, `invoice_id`, `shipping_address_id`, `billing_address_id`, `payment_method_id`, `total_qty`, `total_cost`, `pay_amount`, `return_amount`, `discount`, `coupone_code`, `shipping_charge`, `isUrgent`, `urgent_charge`, `payment_method`, `transaction_id`, `status`, `created_at`, `updated_at`) VALUES
(45, 1, NULL, '68824', 0, 0, 1, 2.00, 120.00, 120.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-23 19:17:32', '2025-07-23 19:17:32'),
(46, 1, NULL, '60191', 0, 0, 1, 3.00, 110.00, 110.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-23 19:19:13', '2025-07-23 19:19:13'),
(47, 1, NULL, '60018', 0, 0, 1, 6.00, 270.00, 270.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-23 19:21:06', '2025-07-23 19:21:06'),
(48, 1, NULL, '33428', 0, 0, 1, 4.00, 230.00, 230.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-23 19:22:30', '2025-07-23 19:22:30'),
(49, 1, NULL, '80665', 0, 0, 1, 1.00, 100.00, 10.00, 90.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-23 19:23:04', '2025-07-23 19:23:04'),
(50, 1, NULL, '79201', 0, 0, 1, 3.00, 110.00, 110.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-23 19:23:52', '2025-07-23 19:23:52'),
(51, 1, NULL, '60545', 0, 0, 1, 4.00, 200.00, 200.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-23 19:24:44', '2025-07-23 19:24:44'),
(52, 1, NULL, '90133', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-23 19:25:09', '2025-07-23 19:25:09'),
(53, 1, NULL, '31660', 0, 0, 1, 5.00, 250.00, 250.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-23 19:26:04', '2025-07-23 19:26:04'),
(54, 1, NULL, '81234', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 11:16:52', '2025-07-24 11:16:52'),
(55, 1, NULL, '34031', 0, 0, 1, 4.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 11:18:20', '2025-07-24 11:18:20'),
(56, 1, NULL, '79464', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 11:19:01', '2025-07-24 11:19:01'),
(57, 1, NULL, '94885', 0, 0, 1, 5.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 11:24:58', '2025-07-24 11:24:58'),
(58, 1, NULL, '27090', 0, 0, 1, 1.00, 10.00, 10.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 11:31:38', '2025-07-24 11:31:38'),
(59, 1, NULL, '20063', 0, 0, 1, 5.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 12:28:41', '2025-07-24 12:28:41'),
(60, 1, NULL, '79566', 0, 0, 1, 5.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 12:28:53', '2025-07-24 12:28:53'),
(61, 1, NULL, '84266', 0, 0, 1, 5.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 12:29:12', '2025-07-24 12:29:12'),
(62, 1, NULL, '88169', 0, 0, 1, 5.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 12:29:22', '2025-07-24 12:29:22'),
(63, 1, NULL, '88031', 0, 0, 1, 3.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 12:33:12', '2025-07-24 12:33:12'),
(64, 1, NULL, '96102', 0, 0, 1, 3.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 12:40:58', '2025-07-24 12:40:58'),
(65, 1, NULL, '36093', 0, 0, 1, 2.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 13:13:51', '2025-07-24 13:13:51'),
(66, 1, NULL, '57540', 0, 0, 1, 4.00, 110.00, 110.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 13:42:01', '2025-07-24 13:42:01'),
(67, 1, NULL, '75840', 0, 0, 1, 2.00, 30.00, 30.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 16:22:54', '2025-07-24 16:22:54'),
(68, 1, NULL, '94288', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 17:39:37', '2025-07-24 17:39:37'),
(69, 1, NULL, '60090', 0, 0, 1, 2.00, 30.00, 30.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 17:46:19', '2025-07-24 17:46:19'),
(70, 1, NULL, '61382', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 17:53:20', '2025-07-24 17:53:20'),
(71, 1, NULL, '28177', 0, 0, 1, 4.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 18:05:06', '2025-07-24 18:05:06'),
(72, 1, NULL, '49392', 0, 0, 1, 12.00, 240.00, 240.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 18:23:43', '2025-07-24 18:23:43'),
(74, 1, NULL, '82822', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 19:33:45', '2025-07-24 19:33:45'),
(75, 1, NULL, '71756', 0, 0, 3, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-24 21:16:47', '2025-07-24 21:16:47'),
(76, 1, NULL, '70339', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-25 08:57:59', '2025-07-25 08:57:59'),
(77, 1, NULL, '93579', 0, 0, 1, 2.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-25 10:32:36', '2025-07-25 10:32:36'),
(78, 1, NULL, '88367', 0, 0, 1, 4.00, 280.00, 280.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-25 10:35:59', '2025-07-25 10:35:59'),
(79, 1, NULL, '49200', 0, 0, 1, 2.00, 90.00, 90.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-25 10:41:44', '2025-07-25 10:41:44'),
(80, 1, NULL, '26831', 0, 0, 1, 2.00, 175.00, 500.00, -325.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-25 10:45:06', '2025-07-25 10:45:06'),
(81, 1, NULL, '33868', 0, 0, 1, 1.00, 10.00, 10.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 07:57:35', '2025-07-26 07:57:35'),
(82, 1, NULL, '50099', 0, 0, 1, 2.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:00:33', '2025-07-26 08:00:33'),
(83, 1, NULL, '74618', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:03:54', '2025-07-26 08:03:54'),
(84, 1, NULL, '77150', 0, 0, 1, 4.00, 140.00, 140.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:09:32', '2025-07-26 08:09:32'),
(85, 1, NULL, '93736', 0, 0, 1, 3.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:24:57', '2025-07-26 08:24:57'),
(86, 1, NULL, '77958', 0, 0, 1, 2.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:25:47', '2025-07-26 08:25:47'),
(87, 1, NULL, '30461', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:26:26', '2025-07-26 08:26:26'),
(88, 1, NULL, '53946', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:26:58', '2025-07-26 08:26:58'),
(89, 1, NULL, '56112', 0, 0, 1, 6.00, 160.00, 160.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:29:38', '2025-07-26 08:29:38'),
(90, 1, NULL, '45801', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:30:37', '2025-07-26 08:30:37'),
(91, 1, NULL, '40394', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:31:31', '2025-07-26 08:31:31'),
(92, 1, NULL, '55780', 0, 0, 1, 1.00, 10.00, 10.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:36:33', '2025-07-26 08:36:33'),
(93, 1, NULL, '59841', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:39:43', '2025-07-26 08:39:43'),
(94, 1, NULL, '87351', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:41:42', '2025-07-26 08:41:42'),
(95, 1, NULL, '58111', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:42:06', '2025-07-26 08:42:06'),
(96, 1, NULL, '20858', 0, 0, 1, 3.00, 180.00, 180.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:45:22', '2025-07-26 08:45:22'),
(97, 1, NULL, '37320', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:46:31', '2025-07-26 08:46:31'),
(98, 1, NULL, '47844', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 08:47:00', '2025-07-26 08:47:00'),
(99, 1, NULL, '24378', 0, 0, 1, 3.00, 120.00, 120.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:06:26', '2025-07-26 09:06:26'),
(100, 1, NULL, '66159', 0, 0, 1, 1.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:09:42', '2025-07-26 09:09:42'),
(101, 1, NULL, '59478', 0, 0, 1, 1.00, 70.00, 70.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:27:33', '2025-07-26 09:27:33'),
(102, 1, NULL, '77501', 0, 0, 1, 2.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:34:48', '2025-07-26 09:34:48'),
(103, 1, NULL, '95906', 0, 0, 1, 1.00, 70.00, 70.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:36:14', '2025-07-26 09:36:14'),
(104, 1, NULL, '41552', 0, 0, 1, 3.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:37:16', '2025-07-26 09:37:16'),
(105, 1, NULL, '71720', 0, 0, 1, 5.00, 130.00, 130.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:39:32', '2025-07-26 09:39:32'),
(106, 1, NULL, '25696', 0, 0, 1, 5.00, 170.00, 170.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:42:10', '2025-07-26 09:42:10'),
(107, 1, NULL, '89776', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:43:43', '2025-07-26 09:43:43'),
(108, 1, NULL, '17136', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:44:30', '2025-07-26 09:44:30'),
(109, 1, NULL, '33070', 0, 0, 1, 3.00, 90.00, 90.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:45:41', '2025-07-26 09:45:41'),
(110, 1, NULL, '69335', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:46:52', '2025-07-26 09:46:52'),
(111, 1, NULL, '81812', 0, 0, 1, 5.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:47:19', '2025-07-26 09:47:19'),
(112, 1, NULL, '15328', 0, 0, 1, 5.00, 160.00, 160.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:48:22', '2025-07-26 09:48:22'),
(113, 1, NULL, '94251', 0, 0, 1, 7.00, 200.00, 190.00, 10.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 09:49:44', '2025-07-26 09:49:44'),
(114, 1, NULL, '21467', 0, 0, 1, 10.00, 490.00, 490.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 10:10:18', '2025-07-26 10:10:18'),
(115, 1, NULL, '77667', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 11:18:27', '2025-07-26 11:18:27'),
(116, 1, NULL, '49429', 0, 0, 1, 5.00, 140.00, 140.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 11:44:20', '2025-07-26 11:44:20'),
(117, 1, NULL, '16335', 0, 0, 1, 5.00, 340.00, 340.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 12:19:15', '2025-07-26 12:19:15'),
(118, 1, NULL, '89023', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 12:49:23', '2025-07-26 12:49:23'),
(119, 1, NULL, '73396', 0, 0, 1, 1.00, 110.00, 110.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 12:53:59', '2025-07-26 12:53:59'),
(120, 1, NULL, '12181', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 12:54:51', '2025-07-26 12:54:51'),
(121, 1, NULL, '41979', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:25:03', '2025-07-26 13:25:03'),
(122, 1, NULL, '57854', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:26:21', '2025-07-26 13:26:21'),
(123, 1, NULL, '27745', 0, 0, 1, 4.00, 180.00, 180.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:42:52', '2025-07-26 13:42:52'),
(124, 1, NULL, '50925', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:43:56', '2025-07-26 13:43:56'),
(125, 1, NULL, '27806', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:46:34', '2025-07-26 13:46:34'),
(126, 1, NULL, '58394', 0, 0, 1, 7.00, 130.00, 130.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:48:15', '2025-07-26 13:48:15'),
(127, 1, NULL, '93557', 0, 0, 1, 2.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:49:49', '2025-07-26 13:49:49'),
(128, 1, NULL, '62771', 0, 0, 1, 2.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:50:28', '2025-07-26 13:50:28'),
(129, 1, NULL, '20484', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:52:32', '2025-07-26 13:52:32'),
(130, 1, NULL, '66446', 0, 0, 1, 3.00, 90.00, 90.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:57:09', '2025-07-26 13:57:09'),
(131, 1, NULL, '55061', 0, 0, 1, 2.00, 90.00, 90.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:57:45', '2025-07-26 13:57:45'),
(132, 1, NULL, '48480', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 13:59:39', '2025-07-26 13:59:39'),
(133, 1, NULL, '80485', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:00:23', '2025-07-26 14:00:23'),
(134, 1, NULL, '23765', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:06:03', '2025-07-26 14:06:03'),
(135, 1, NULL, '25517', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:27:28', '2025-07-26 14:27:28'),
(136, 1, NULL, '21619', 0, 0, 1, 3.00, 110.00, 110.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:29:42', '2025-07-26 14:29:42'),
(137, 1, NULL, '83547', 0, 0, 1, 6.00, 360.00, 360.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:45:48', '2025-07-26 14:45:48'),
(138, 1, NULL, '93616', 0, 0, 1, 2.00, 70.00, 70.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:48:12', '2025-07-26 14:48:12'),
(139, 1, NULL, '46381', 0, 0, 1, 5.00, 270.00, 270.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:50:37', '2025-07-26 14:50:37'),
(140, 1, NULL, '11424', 0, 0, 1, 2.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:51:51', '2025-07-26 14:51:51'),
(141, 1, NULL, '52864', 0, 0, 1, 3.00, 150.00, 150.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:52:57', '2025-07-26 14:52:57'),
(142, 1, NULL, '27535', 0, 0, 1, 2.00, 220.00, 220.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:53:43', '2025-07-26 14:53:43'),
(143, 1, NULL, '17776', 0, 0, 1, 3.00, 120.00, 120.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:55:27', '2025-07-26 14:55:27'),
(144, 1, NULL, '41008', 0, 0, 1, 2.00, 150.00, 150.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:56:49', '2025-07-26 14:56:49'),
(145, 1, NULL, '69305', 0, 0, 1, 5.00, 220.00, 220.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:58:13', '2025-07-26 14:58:13'),
(146, 1, NULL, '58433', 0, 0, 1, 1.00, 110.00, 110.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:58:45', '2025-07-26 14:58:45'),
(147, 1, NULL, '64300', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:59:30', '2025-07-26 14:59:30'),
(148, 1, NULL, '33871', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 14:59:52', '2025-07-26 14:59:52'),
(149, 1, NULL, '77186', 0, 0, 1, 2.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:00:57', '2025-07-26 15:00:57'),
(150, 1, NULL, '30202', 0, 0, 1, 4.00, 200.00, 200.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:01:56', '2025-07-26 15:01:56'),
(151, 1, NULL, '26277', 0, 0, 1, 2.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:03:52', '2025-07-26 15:03:52'),
(152, 1, NULL, '92993', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:05:36', '2025-07-26 15:05:36'),
(153, 1, NULL, '44969', 0, 0, 1, 5.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:12:06', '2025-07-26 15:12:06'),
(154, 1, NULL, '87697', 0, 0, 1, 5.00, 160.00, 160.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:13:45', '2025-07-26 15:13:45'),
(155, 1, NULL, '76441', 0, 0, 1, 2.00, 130.00, 130.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:15:14', '2025-07-26 15:15:14'),
(156, 1, NULL, '33918', 0, 0, 1, 7.00, 340.00, 340.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:17:06', '2025-07-26 15:17:06'),
(157, 1, NULL, '17302', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:19:19', '2025-07-26 15:19:19'),
(158, 1, NULL, '28357', 0, 0, 1, 2.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:27:12', '2025-07-26 15:27:12'),
(159, 1, NULL, '62342', 0, 0, 1, 2.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:28:53', '2025-07-26 15:28:53'),
(160, 1, NULL, '36556', 0, 0, 1, 4.00, 160.00, 160.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:34:14', '2025-07-26 15:34:14'),
(161, 1, NULL, '24254', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:35:05', '2025-07-26 15:35:05'),
(162, 1, NULL, '10387', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:35:30', '2025-07-26 15:35:30'),
(163, 1, NULL, '75302', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:36:19', '2025-07-26 15:36:19'),
(164, 1, NULL, '57991', 0, 0, 1, 2.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:36:47', '2025-07-26 15:36:47'),
(165, 1, NULL, '93490', 0, 0, 1, 7.00, 240.00, 240.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:38:26', '2025-07-26 15:38:26'),
(166, 1, NULL, '79027', 0, 0, 1, 2.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:39:03', '2025-07-26 15:39:03'),
(167, 1, NULL, '40791', 0, 0, 1, 5.00, 120.00, 120.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:41:54', '2025-07-26 15:41:54'),
(168, 1, NULL, '43845', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:43:31', '2025-07-26 15:43:31'),
(169, 1, NULL, '52893', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:43:58', '2025-07-26 15:43:58'),
(170, 1, NULL, '79670', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:45:16', '2025-07-26 15:45:16'),
(171, 1, NULL, '52879', 0, 0, 1, 10.00, 450.00, 450.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:49:50', '2025-07-26 15:49:50'),
(172, 1, NULL, '51337', 0, 0, 1, 1.00, 110.00, 110.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 15:50:45', '2025-07-26 15:50:45'),
(173, 1, NULL, '11336', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:01:48', '2025-07-26 16:01:48'),
(174, 1, NULL, '34491', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:02:33', '2025-07-26 16:02:33'),
(175, 1, NULL, '85165', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:06:39', '2025-07-26 16:06:39'),
(176, 1, NULL, '42301', 0, 0, 1, 9.00, 300.00, 300.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:07:35', '2025-07-26 16:07:35'),
(177, 1, NULL, '41222', 0, 0, 1, 2.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:08:41', '2025-07-26 16:08:41'),
(178, 1, NULL, '36284', 0, 0, 1, 3.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:09:37', '2025-07-26 16:09:37'),
(179, 1, NULL, '97709', 0, 0, 1, 2.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:10:27', '2025-07-26 16:10:27'),
(180, 1, NULL, '94578', 0, 0, 1, 5.00, 70.00, 70.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:13:20', '2025-07-26 16:13:20'),
(181, 1, NULL, '55880', 0, 0, 1, 3.00, 70.00, 70.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:14:37', '2025-07-26 16:14:37'),
(182, 1, NULL, '83477', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:24:03', '2025-07-26 16:24:03'),
(183, 1, NULL, '35799', 0, 0, 1, 4.00, 200.00, 200.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:28:07', '2025-07-26 16:28:07'),
(184, 1, NULL, '31058', 0, 0, 1, 6.00, 260.00, 260.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:29:11', '2025-07-26 16:29:11'),
(185, 1, NULL, '66007', 0, 0, 1, 15.00, 620.00, 620.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:35:38', '2025-07-26 16:35:38'),
(186, 1, NULL, '50174', 0, 0, 1, 7.00, 200.00, 200.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 16:57:46', '2025-07-26 16:57:46'),
(187, 1, NULL, '74545', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 17:26:32', '2025-07-26 17:26:32'),
(188, 1, NULL, '33945', 0, 0, 1, 2.00, 150.00, 150.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 17:29:21', '2025-07-26 17:29:21'),
(189, 1, NULL, '25150', 0, 0, 1, 5.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 17:30:30', '2025-07-26 17:30:30'),
(190, 1, NULL, '10790', 0, 0, 1, 5.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 17:34:50', '2025-07-26 17:34:50'),
(191, 1, NULL, '71786', 0, 0, 1, 3.00, 170.00, 170.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 17:46:31', '2025-07-26 17:46:31'),
(192, 1, NULL, '71361', 0, 0, 1, 4.00, 200.00, 200.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 17:51:27', '2025-07-26 17:51:27'),
(193, 1, NULL, '66518', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 17:51:59', '2025-07-26 17:51:59'),
(194, 1, NULL, '69598', 0, 0, 1, 1.00, 110.00, 110.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:08:54', '2025-07-26 18:08:54'),
(195, 1, NULL, '54458', 0, 0, 1, 2.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:09:39', '2025-07-26 18:09:39'),
(196, 1, NULL, '12322', 0, 0, 1, 2.00, 90.00, 90.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:10:17', '2025-07-26 18:10:17'),
(197, 1, NULL, '60529', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:10:50', '2025-07-26 18:10:50'),
(198, 1, NULL, '67244', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:11:18', '2025-07-26 18:11:18'),
(199, 1, NULL, '16472', 0, 0, 1, 4.00, 120.00, 120.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:12:44', '2025-07-26 18:12:44'),
(200, 1, NULL, '63028', 0, 0, 1, 1.00, 70.00, 70.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:13:46', '2025-07-26 18:13:46'),
(201, 1, NULL, '19859', 0, 0, 1, 10.00, 470.00, 470.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:14:48', '2025-07-26 18:14:48'),
(202, 1, NULL, '55422', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:15:02', '2025-07-26 18:15:02'),
(203, 1, NULL, '92198', 0, 0, 1, 4.00, 130.00, 130.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:15:33', '2025-07-26 18:15:33'),
(204, 1, NULL, '50132', 0, 0, 1, 3.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:16:26', '2025-07-26 18:16:26'),
(205, 1, NULL, '76655', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:16:52', '2025-07-26 18:16:52'),
(206, 1, NULL, '99210', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:17:15', '2025-07-26 18:17:15'),
(207, 1, NULL, '31362', 0, 0, 1, 4.00, 200.00, 200.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:17:56', '2025-07-26 18:17:56'),
(208, 1, NULL, '10970', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:18:28', '2025-07-26 18:18:28'),
(209, 1, NULL, '47804', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:18:45', '2025-07-26 18:18:45'),
(210, 1, NULL, '75489', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:19:06', '2025-07-26 18:19:06'),
(211, 1, NULL, '35642', 0, 0, 1, 2.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:19:41', '2025-07-26 18:19:41'),
(212, 1, NULL, '36661', 0, 0, 1, 2.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:20:27', '2025-07-26 18:20:27'),
(213, 1, NULL, '51695', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:20:58', '2025-07-26 18:20:58'),
(214, 1, NULL, '68672', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:21:18', '2025-07-26 18:21:18'),
(215, 1, NULL, '39736', 0, 0, 1, 1.00, 10.00, 10.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:21:50', '2025-07-26 18:21:50'),
(216, 1, NULL, '30601', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:22:13', '2025-07-26 18:22:13'),
(217, 1, NULL, '41570', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 18:22:39', '2025-07-26 18:22:39'),
(218, 1, NULL, '10701', 0, 0, 1, 3.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 19:06:01', '2025-07-26 19:06:01'),
(219, 1, NULL, '14240', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-26 19:17:05', '2025-07-26 19:17:05'),
(220, 1, NULL, '39098', 0, 0, 1, 1.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 12:15:44', '2025-07-27 12:15:44'),
(221, 1, NULL, '11204', 0, 0, 1, 1.00, 110.00, 110.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 13:09:48', '2025-07-27 13:09:48'),
(222, 1, NULL, '55376', 0, 0, 1, 3.00, 190.00, 190.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 13:22:31', '2025-07-27 13:22:31'),
(223, 1, NULL, '76562', 0, 0, 1, 2.00, 90.00, 90.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 13:25:36', '2025-07-27 13:25:36'),
(224, 1, NULL, '47660', 0, 0, 1, 2.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 13:33:23', '2025-07-27 13:33:23'),
(225, 1, NULL, '26113', 0, 0, 1, 2.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 16:14:10', '2025-07-27 16:14:10'),
(226, 1, NULL, '54497', 0, 0, 1, 2.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 16:30:35', '2025-07-27 16:30:35'),
(227, 1, NULL, '82519', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 16:31:27', '2025-07-27 16:31:27'),
(228, 1, NULL, '67458', 0, 0, 1, 1.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 2, '2025-07-27 16:35:43', '2025-07-27 18:10:50'),
(229, 1, NULL, '95678', 0, 0, 1, 4.00, 220.00, 220.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 18:51:20', '2025-07-27 18:51:20'),
(230, 1, NULL, '67206', 0, 0, 1, 1.00, 70.00, 70.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 18:53:17', '2025-07-27 18:53:17'),
(231, 1, NULL, '67019', 0, 0, 1, 8.00, 220.00, 220.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 19:42:39', '2025-07-27 19:42:39'),
(232, 1, NULL, '67557', 0, 0, 1, 11.00, 390.00, 390.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-27 19:50:09', '2025-07-27 19:50:09'),
(233, 1, NULL, '67826', 0, 0, 1, 5.00, 70.00, 70.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-28 10:39:33', '2025-07-28 10:39:33'),
(234, 1, NULL, '37564', 0, 0, 1, 1.00, 50.00, 50.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-28 11:46:32', '2025-07-28 11:46:32'),
(235, 1, NULL, '66265', 0, 0, 1, 9.00, 250.00, 250.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-28 13:47:14', '2025-07-28 13:47:14'),
(236, 1, NULL, '57279', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-28 14:02:52', '2025-07-28 14:02:52'),
(237, 1, NULL, '71389', 0, 0, 1, 8.00, 160.00, 160.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-28 14:31:22', '2025-07-28 14:31:22'),
(238, 1, NULL, '89086', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-28 14:38:56', '2025-07-28 14:38:56'),
(239, 1, NULL, '62469', 0, 0, 1, 6.00, 220.00, 220.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-28 15:04:39', '2025-07-28 15:04:39'),
(240, 1, NULL, '40603', 0, 0, 1, 1.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-28 16:22:13', '2025-07-28 16:22:13'),
(241, 1, NULL, '68829', 0, 0, 1, 23.00, 790.00, 790.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-28 16:51:46', '2025-07-28 16:51:46'),
(242, 1, NULL, '86524', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-28 18:05:17', '2025-07-28 18:05:17'),
(243, 1, NULL, '79150', 0, 0, 1, 1.00, 20.00, 20.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-29 12:02:23', '2025-07-29 12:02:23'),
(244, 1, NULL, '25700', 0, 0, 1, 1.00, 60.00, 60.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-29 13:34:36', '2025-07-29 13:34:36'),
(245, 1, NULL, '92765', 0, 0, 1, 2.00, 40.00, 40.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-29 16:44:23', '2025-07-29 16:44:23'),
(246, 1, NULL, '12718', 0, 0, 1, 3.00, 220.00, 220.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-29 17:07:28', '2025-07-29 17:07:28'),
(247, 1, NULL, '40248', 0, 0, 1, 8.00, 200.00, 190.00, 10.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-29 17:27:08', '2025-07-29 17:27:08'),
(248, 1, NULL, '72011', 0, 0, 1, 2.00, 100.00, 100.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-30 10:18:52', '2025-07-30 10:18:52'),
(249, 1, NULL, '73353', 0, 0, 1, 2.00, 80.00, 80.00, 0.00, 0.00, '', NULL, '0', 0, '', '', 3, '2025-07-30 10:44:59', '2025-07-30 10:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_price` int(11) DEFAULT NULL,
  `qty_total_amount` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `unit` varchar(191) DEFAULT NULL,
  `size` varchar(191) DEFAULT NULL,
  `qty` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `category_id`, `product_price`, `qty_total_amount`, `color`, `unit`, `size`, `qty`, `created_at`, `updated_at`) VALUES
(60, 45, 1, 1, 70, '70', '', '', '', 1.00, '2025-07-23 19:17:32', '2025-07-23 19:17:32'),
(61, 45, 3, 1, 50, '50', '', '', '', 1.00, '2025-07-23 19:17:32', '2025-07-23 19:17:32'),
(62, 46, 1, 1, 70, '70', '', '', '', 1.00, '2025-07-23 19:19:13', '2025-07-23 19:19:13'),
(63, 46, 7, 1, 20, '40', '', '', '', 2.00, '2025-07-23 19:19:13', '2025-07-23 19:19:13'),
(64, 47, 1, 1, 70, '70', '', '', '', 1.00, '2025-07-23 19:21:06', '2025-07-23 19:21:06'),
(65, 47, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-23 19:21:06', '2025-07-23 19:21:06'),
(66, 47, 3, 1, 50, '150', '', '', '', 3.00, '2025-07-23 19:21:06', '2025-07-23 19:21:06'),
(67, 47, 31, 1, 30, '30', '', '', '', 1.00, '2025-07-23 19:21:06', '2025-07-23 19:21:06'),
(68, 48, 1, 1, 70, '70', '', '', '', 1.00, '2025-07-23 19:22:30', '2025-07-23 19:22:30'),
(69, 48, 10, 1, 100, '100', '', '', '', 1.00, '2025-07-23 19:22:31', '2025-07-23 19:22:31'),
(70, 48, 37, 1, 40, '40', '', '', '', 1.00, '2025-07-23 19:22:31', '2025-07-23 19:22:31'),
(71, 48, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-23 19:22:31', '2025-07-23 19:22:31'),
(72, 49, 10, 1, 100, '100', '', '', '', 1.00, '2025-07-23 19:23:04', '2025-07-23 19:23:04'),
(73, 50, 1, 1, 70, '70', '', '', '', 1.00, '2025-07-23 19:23:53', '2025-07-23 19:23:53'),
(74, 50, 2, 1, 20, '40', '', '', '', 2.00, '2025-07-23 19:23:53', '2025-07-23 19:23:53'),
(75, 51, 28, 1, 40, '120', '', '', '', 3.00, '2025-07-23 19:24:44', '2025-07-23 19:24:44'),
(76, 51, 13, 1, 80, '80', '', '', '', 1.00, '2025-07-23 19:24:44', '2025-07-23 19:24:44'),
(77, 52, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-23 19:25:10', '2025-07-23 19:25:10'),
(78, 53, 8, 1, 50, '200', '', '', '', 4.00, '2025-07-23 19:26:04', '2025-07-23 19:26:04'),
(79, 53, 11, 1, 50, '50', '', '', '', 1.00, '2025-07-23 19:26:04', '2025-07-23 19:26:04'),
(80, 54, 36, 1, 20, '20', '', '', '', 1.00, '2025-07-24 11:16:52', '2025-07-24 11:16:52'),
(81, 55, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-24 11:18:20', '2025-07-24 11:18:20'),
(82, 55, 36, 1, 20, '20', '', '', '', 1.00, '2025-07-24 11:18:20', '2025-07-24 11:18:20'),
(83, 55, 7, 1, 20, '40', '', '', '', 2.00, '2025-07-24 11:18:20', '2025-07-24 11:18:20'),
(84, 56, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-24 11:19:01', '2025-07-24 11:19:01'),
(85, 57, 5, 1, 20, '40', '', '', '', 2.00, '2025-07-24 11:24:58', '2025-07-24 11:24:58'),
(86, 57, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-24 11:24:58', '2025-07-24 11:24:58'),
(87, 57, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-24 11:24:58', '2025-07-24 11:24:58'),
(88, 57, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-24 11:24:58', '2025-07-24 11:24:58'),
(89, 58, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-24 11:31:38', '2025-07-24 11:31:38'),
(90, 59, 29, 1, 20, '60', '', '', '', 3.00, '2025-07-24 12:28:41', '2025-07-24 12:28:41'),
(91, 59, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-24 12:28:41', '2025-07-24 12:28:41'),
(92, 59, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-24 12:28:41', '2025-07-24 12:28:41'),
(93, 60, 29, 1, 20, '60', '', '', '', 3.00, '2025-07-24 12:28:53', '2025-07-24 12:28:53'),
(94, 60, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-24 12:28:53', '2025-07-24 12:28:53'),
(95, 60, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-24 12:28:53', '2025-07-24 12:28:53'),
(96, 61, 29, 1, 20, '60', '', '', '', 3.00, '2025-07-24 12:29:12', '2025-07-24 12:29:12'),
(97, 61, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-24 12:29:12', '2025-07-24 12:29:12'),
(98, 61, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-24 12:29:12', '2025-07-24 12:29:12'),
(99, 62, 29, 1, 20, '60', '', '', '', 3.00, '2025-07-24 12:29:23', '2025-07-24 12:29:23'),
(100, 62, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-24 12:29:23', '2025-07-24 12:29:23'),
(101, 62, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-24 12:29:23', '2025-07-24 12:29:23'),
(102, 63, 23, 1, 40, '40', '', '', '', 1.00, '2025-07-24 12:33:12', '2025-07-24 12:33:12'),
(103, 63, 63, 1, 10, '20', '', '', '', 2.00, '2025-07-24 12:33:12', '2025-07-24 12:33:12'),
(104, 64, 33, 1, 20, '60', '', '', '', 3.00, '2025-07-24 12:40:58', '2025-07-24 12:40:58'),
(105, 65, 14, 1, 40, '80', '', '', '', 2.00, '2025-07-24 13:13:51', '2025-07-24 13:13:51'),
(106, 66, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-24 13:42:01', '2025-07-24 13:42:01'),
(107, 66, 9, 1, 20, '20', '', '', '', 1.00, '2025-07-24 13:42:01', '2025-07-24 13:42:01'),
(108, 66, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-24 13:42:01', '2025-07-24 13:42:01'),
(109, 66, 51, 2, 60, '60', '', '', '', 1.00, '2025-07-24 13:42:01', '2025-07-24 13:42:01'),
(110, 67, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-24 16:22:54', '2025-07-24 16:22:54'),
(111, 67, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-24 16:22:54', '2025-07-24 16:22:54'),
(112, 68, 5, 1, 20, '40', '', '', '', 2.00, '2025-07-24 17:39:37', '2025-07-24 17:39:37'),
(113, 69, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-24 17:46:19', '2025-07-24 17:46:19'),
(114, 69, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-24 17:46:19', '2025-07-24 17:46:19'),
(115, 70, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-24 17:53:20', '2025-07-24 17:53:20'),
(116, 71, 29, 1, 20, '80', '', '', '', 4.00, '2025-07-24 18:05:07', '2025-07-24 18:05:07'),
(117, 72, 29, 1, 20, '240', '', '', '', 12.00, '2025-07-24 18:23:43', '2025-07-24 18:23:43'),
(124, 74, 30, 1, 40, '40', '', '', '', 1.00, '2025-07-24 19:33:46', '2025-07-24 19:33:46'),
(125, 75, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-24 21:16:47', '2025-07-24 21:16:47'),
(126, 76, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-25 08:58:00', '2025-07-25 08:58:00'),
(127, 77, 3, 1, 50, '50', '', '', '', 1.00, '2025-07-25 10:32:36', '2025-07-25 10:32:36'),
(128, 77, 8, 1, 50, '50', '', '', '', 1.00, '2025-07-25 10:32:36', '2025-07-25 10:32:36'),
(129, 78, 21, 1, 110, '110', '', '', '', 1.00, '2025-07-25 10:35:59', '2025-07-25 10:35:59'),
(130, 78, 13, 1, 80, '80', '', '', '', 1.00, '2025-07-25 10:35:59', '2025-07-25 10:35:59'),
(131, 78, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-25 10:35:59', '2025-07-25 10:35:59'),
(132, 78, 4, 1, 50, '50', '', '', '', 1.00, '2025-07-25 10:35:59', '2025-07-25 10:35:59'),
(133, 79, 11, 1, 50, '50', '', '', '', 1.00, '2025-07-25 10:41:44', '2025-07-25 10:41:44'),
(134, 79, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-25 10:41:44', '2025-07-25 10:41:44'),
(135, 80, 52, 2, 125, '125', '', '', '', 1.00, '2025-07-25 10:45:06', '2025-07-25 10:45:06'),
(136, 80, 57, 2, 50, '50', '', '', '', 1.00, '2025-07-25 10:45:06', '2025-07-25 10:45:06'),
(137, 81, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-26 07:57:35', '2025-07-26 07:57:35'),
(138, 82, 63, 1, 10, '20', '', '', '', 2.00, '2025-07-26 08:00:33', '2025-07-26 08:00:33'),
(139, 83, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:03:54', '2025-07-26 08:03:54'),
(140, 84, 5, 1, 20, '40', '', '', '', 2.00, '2025-07-26 08:09:32', '2025-07-26 08:09:32'),
(141, 84, 35, 1, 50, '100', '', '', '', 2.00, '2025-07-26 08:09:32', '2025-07-26 08:09:32'),
(142, 85, 65, 1, 40, '80', '', '', '', 2.00, '2025-07-26 08:24:57', '2025-07-26 08:24:57'),
(143, 85, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:24:57', '2025-07-26 08:24:57'),
(144, 86, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 08:25:47', '2025-07-26 08:25:47'),
(145, 86, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:25:47', '2025-07-26 08:25:47'),
(146, 87, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:26:26', '2025-07-26 08:26:26'),
(147, 88, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:26:58', '2025-07-26 08:26:58'),
(148, 89, 37, 1, 40, '40', '', '', '', 1.00, '2025-07-26 08:29:38', '2025-07-26 08:29:38'),
(149, 89, 63, 1, 10, '20', '', '', '', 2.00, '2025-07-26 08:29:38', '2025-07-26 08:29:38'),
(150, 89, 65, 1, 40, '80', '', '', '', 2.00, '2025-07-26 08:29:38', '2025-07-26 08:29:38'),
(151, 89, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:29:38', '2025-07-26 08:29:38'),
(152, 90, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:30:37', '2025-07-26 08:30:37'),
(153, 91, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:31:31', '2025-07-26 08:31:31'),
(154, 92, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-26 08:36:33', '2025-07-26 08:36:33'),
(155, 93, 5, 1, 20, '40', '', '', '', 2.00, '2025-07-26 08:39:43', '2025-07-26 08:39:43'),
(156, 94, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:41:42', '2025-07-26 08:41:42'),
(157, 95, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:42:06', '2025-07-26 08:42:06'),
(158, 96, 19, 1, 110, '110', '', '', '', 1.00, '2025-07-26 08:45:22', '2025-07-26 08:45:22'),
(159, 96, 35, 1, 50, '50', '', '', '', 1.00, '2025-07-26 08:45:22', '2025-07-26 08:45:22'),
(160, 96, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 08:45:22', '2025-07-26 08:45:22'),
(161, 97, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 08:46:32', '2025-07-26 08:46:32'),
(162, 98, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 08:47:00', '2025-07-26 08:47:00'),
(163, 99, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 09:06:26', '2025-07-26 09:06:26'),
(164, 99, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-26 09:06:26', '2025-07-26 09:06:26'),
(165, 99, 64, 1, 70, '70', '', '', '', 1.00, '2025-07-26 09:06:26', '2025-07-26 09:06:26'),
(166, 100, 50, 2, 80, '80', '', '', '', 1.00, '2025-07-26 09:09:43', '2025-07-26 09:09:43'),
(167, 101, 1, 1, 70, '70', '', '', '', 1.00, '2025-07-26 09:27:33', '2025-07-26 09:27:33'),
(168, 102, 63, 1, 10, '20', '', '', '', 2.00, '2025-07-26 09:34:48', '2025-07-26 09:34:48'),
(169, 103, 17, 1, 70, '70', '', '', '', 1.00, '2025-07-26 09:36:14', '2025-07-26 09:36:14'),
(170, 104, 5, 1, 20, '60', '', '', '', 3.00, '2025-07-26 09:37:16', '2025-07-26 09:37:16'),
(171, 105, 5, 1, 20, '80', '', '', '', 4.00, '2025-07-26 09:39:32', '2025-07-26 09:39:32'),
(172, 105, 35, 1, 50, '50', '', '', '', 1.00, '2025-07-26 09:39:32', '2025-07-26 09:39:32'),
(173, 106, 65, 1, 40, '80', '', '', '', 2.00, '2025-07-26 09:42:10', '2025-07-26 09:42:10'),
(174, 106, 12, 1, 20, '40', '', '', '', 2.00, '2025-07-26 09:42:10', '2025-07-26 09:42:10'),
(175, 106, 39, 1, 50, '50', '', '', '', 1.00, '2025-07-26 09:42:10', '2025-07-26 09:42:10'),
(176, 107, 11, 1, 50, '50', '', '', '', 1.00, '2025-07-26 09:43:43', '2025-07-26 09:43:43'),
(177, 108, 36, 1, 20, '20', '', '', '', 1.00, '2025-07-26 09:44:31', '2025-07-26 09:44:31'),
(178, 108, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 09:44:31', '2025-07-26 09:44:31'),
(179, 109, 11, 1, 50, '50', '', '', '', 1.00, '2025-07-26 09:45:41', '2025-07-26 09:45:41'),
(180, 109, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-26 09:45:41', '2025-07-26 09:45:41'),
(181, 109, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 09:45:41', '2025-07-26 09:45:41'),
(182, 110, 35, 1, 50, '50', '', '', '', 1.00, '2025-07-26 09:46:52', '2025-07-26 09:46:52'),
(183, 111, 5, 1, 20, '100', '', '', '', 5.00, '2025-07-26 09:47:19', '2025-07-26 09:47:19'),
(184, 112, 5, 1, 20, '60', '', '', '', 3.00, '2025-07-26 09:48:22', '2025-07-26 09:48:22'),
(185, 112, 11, 1, 50, '100', '', '', '', 2.00, '2025-07-26 09:48:22', '2025-07-26 09:48:22'),
(186, 113, 5, 1, 20, '100', '', '', '', 5.00, '2025-07-26 09:49:44', '2025-07-26 09:49:44'),
(187, 113, 35, 1, 50, '100', '', '', '', 2.00, '2025-07-26 09:49:44', '2025-07-26 09:49:44'),
(188, 114, 20, 1, 110, '110', '', '', '', 1.00, '2025-07-26 10:10:19', '2025-07-26 10:10:19'),
(189, 114, 19, 1, 110, '110', '', '', '', 1.00, '2025-07-26 10:10:19', '2025-07-26 10:10:19'),
(190, 114, 13, 1, 80, '160', '', '', '', 2.00, '2025-07-26 10:10:19', '2025-07-26 10:10:19'),
(191, 114, 40, 1, 20, '60', '', '', '', 3.00, '2025-07-26 10:10:19', '2025-07-26 10:10:19'),
(192, 114, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 10:10:19', '2025-07-26 10:10:19'),
(193, 114, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-26 10:10:19', '2025-07-26 10:10:19'),
(194, 114, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-26 10:10:19', '2025-07-26 10:10:19'),
(195, 115, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-26 11:18:27', '2025-07-26 11:18:27'),
(196, 116, 29, 1, 20, '80', '', '', '', 4.00, '2025-07-26 11:44:20', '2025-07-26 11:44:20'),
(197, 116, 15, 1, 60, '60', '', '', '', 1.00, '2025-07-26 11:44:20', '2025-07-26 11:44:20'),
(198, 117, 20, 1, 110, '110', '', '', '', 1.00, '2025-07-26 12:19:16', '2025-07-26 12:19:16'),
(199, 117, 21, 1, 110, '110', '', '', '', 1.00, '2025-07-26 12:19:16', '2025-07-26 12:19:16'),
(200, 117, 30, 1, 40, '120', '', '', '', 3.00, '2025-07-26 12:19:16', '2025-07-26 12:19:16'),
(201, 118, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-26 12:49:23', '2025-07-26 12:49:23'),
(202, 119, 19, 1, 110, '110', '', '', '', 1.00, '2025-07-26 12:54:00', '2025-07-26 12:54:00'),
(203, 120, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-26 12:54:51', '2025-07-26 12:54:51'),
(204, 121, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 13:25:03', '2025-07-26 13:25:03'),
(205, 122, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-26 13:26:21', '2025-07-26 13:26:21'),
(206, 123, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 13:42:52', '2025-07-26 13:42:52'),
(207, 123, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 13:42:52', '2025-07-26 13:42:52'),
(208, 123, 17, 1, 70, '70', '', '', '', 1.00, '2025-07-26 13:42:52', '2025-07-26 13:42:52'),
(209, 123, 8, 1, 50, '50', '', '', '', 1.00, '2025-07-26 13:42:52', '2025-07-26 13:42:52'),
(210, 124, 3, 1, 50, '50', '', '', '', 1.00, '2025-07-26 13:43:56', '2025-07-26 13:43:56'),
(211, 125, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 13:46:34', '2025-07-26 13:46:34'),
(212, 125, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 13:46:34', '2025-07-26 13:46:34'),
(213, 126, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 13:48:15', '2025-07-26 13:48:15'),
(214, 126, 40, 1, 20, '40', '', '', '', 2.00, '2025-07-26 13:48:15', '2025-07-26 13:48:15'),
(215, 126, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 13:48:15', '2025-07-26 13:48:15'),
(216, 126, 2, 1, 20, '40', '', '', '', 2.00, '2025-07-26 13:48:15', '2025-07-26 13:48:15'),
(217, 126, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-26 13:48:15', '2025-07-26 13:48:15'),
(218, 127, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 13:49:49', '2025-07-26 13:49:49'),
(219, 127, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 13:49:49', '2025-07-26 13:49:49'),
(220, 128, 24, 1, 40, '80', '', '', '', 2.00, '2025-07-26 13:50:29', '2025-07-26 13:50:29'),
(221, 129, 8, 1, 50, '50', '', '', '', 1.00, '2025-07-26 13:52:32', '2025-07-26 13:52:32'),
(222, 130, 40, 1, 20, '40', '', '', '', 2.00, '2025-07-26 13:57:09', '2025-07-26 13:57:09'),
(223, 130, 35, 1, 50, '50', '', '', '', 1.00, '2025-07-26 13:57:09', '2025-07-26 13:57:09'),
(224, 131, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 13:57:45', '2025-07-26 13:57:45'),
(225, 131, 35, 1, 50, '50', '', '', '', 1.00, '2025-07-26 13:57:45', '2025-07-26 13:57:45'),
(226, 132, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 13:59:39', '2025-07-26 13:59:39'),
(227, 133, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 14:00:23', '2025-07-26 14:00:23'),
(228, 134, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-26 14:06:03', '2025-07-26 14:06:03'),
(229, 135, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 14:27:28', '2025-07-26 14:27:28'),
(230, 136, 65, 1, 40, '40', '', '', '', 1.00, '2025-07-26 14:29:42', '2025-07-26 14:29:42'),
(231, 136, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 14:29:42', '2025-07-26 14:29:42'),
(232, 136, 11, 1, 50, '50', '', '', '', 1.00, '2025-07-26 14:29:42', '2025-07-26 14:29:42'),
(233, 137, 26, 1, 80, '160', '', '', '', 2.00, '2025-07-26 14:45:48', '2025-07-26 14:45:48'),
(234, 137, 37, 1, 40, '80', '', '', '', 2.00, '2025-07-26 14:45:48', '2025-07-26 14:45:48'),
(235, 137, 64, 1, 70, '70', '', '', '', 1.00, '2025-07-26 14:45:48', '2025-07-26 14:45:48'),
(236, 137, 3, 1, 50, '50', '', '', '', 1.00, '2025-07-26 14:45:48', '2025-07-26 14:45:48'),
(237, 138, 3, 1, 50, '50', '', '', '', 1.00, '2025-07-26 14:48:12', '2025-07-26 14:48:12'),
(238, 138, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-26 14:48:12', '2025-07-26 14:48:12'),
(239, 139, 28, 1, 40, '80', '', '', '', 2.00, '2025-07-26 14:50:37', '2025-07-26 14:50:37'),
(240, 139, 15, 1, 60, '60', '', '', '', 1.00, '2025-07-26 14:50:37', '2025-07-26 14:50:37'),
(241, 139, 11, 1, 50, '50', '', '', '', 1.00, '2025-07-26 14:50:37', '2025-07-26 14:50:37'),
(242, 139, 13, 1, 80, '80', '', '', '', 1.00, '2025-07-26 14:50:37', '2025-07-26 14:50:37'),
(243, 140, 28, 1, 40, '80', '', '', '', 2.00, '2025-07-26 14:51:51', '2025-07-26 14:51:51'),
(244, 141, 3, 1, 50, '150', '', '', '', 3.00, '2025-07-26 14:52:57', '2025-07-26 14:52:57'),
(245, 142, 19, 1, 110, '220', '', '', '', 2.00, '2025-07-26 14:53:43', '2025-07-26 14:53:43'),
(246, 143, 66, 1, 80, '80', '', '', '', 1.00, '2025-07-26 14:55:27', '2025-07-26 14:55:27'),
(247, 143, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 14:55:27', '2025-07-26 14:55:27'),
(248, 143, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 14:55:27', '2025-07-26 14:55:27'),
(249, 144, 21, 1, 110, '110', '', '', '', 1.00, '2025-07-26 14:56:49', '2025-07-26 14:56:49'),
(250, 144, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 14:56:49', '2025-07-26 14:56:49'),
(251, 145, 3, 1, 50, '100', '', '', '', 2.00, '2025-07-26 14:58:13', '2025-07-26 14:58:13'),
(252, 145, 7, 1, 20, '40', '', '', '', 2.00, '2025-07-26 14:58:13', '2025-07-26 14:58:13'),
(253, 145, 66, 1, 80, '80', '', '', '', 1.00, '2025-07-26 14:58:13', '2025-07-26 14:58:13'),
(254, 146, 21, 1, 110, '110', '', '', '', 1.00, '2025-07-26 14:58:45', '2025-07-26 14:58:45'),
(255, 147, 3, 1, 50, '50', '', '', '', 1.00, '2025-07-26 14:59:30', '2025-07-26 14:59:30'),
(256, 148, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 14:59:52', '2025-07-26 14:59:52'),
(257, 149, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:00:57', '2025-07-26 15:00:57'),
(258, 149, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-26 15:00:57', '2025-07-26 15:00:57'),
(259, 150, 12, 1, 20, '40', '', '', '', 2.00, '2025-07-26 15:01:56', '2025-07-26 15:01:56'),
(260, 150, 66, 1, 80, '160', '', '', '', 2.00, '2025-07-26 15:01:56', '2025-07-26 15:01:56'),
(261, 151, 4, 1, 50, '100', '', '', '', 2.00, '2025-07-26 15:03:52', '2025-07-26 15:03:52'),
(262, 152, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:05:36', '2025-07-26 15:05:36'),
(263, 153, 40, 1, 20, '80', '', '', '', 4.00, '2025-07-26 15:12:06', '2025-07-26 15:12:06'),
(264, 153, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:12:06', '2025-07-26 15:12:06'),
(265, 154, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:13:45', '2025-07-26 15:13:45'),
(266, 154, 7, 1, 20, '40', '', '', '', 2.00, '2025-07-26 15:13:45', '2025-07-26 15:13:45'),
(267, 154, 24, 1, 40, '80', '', '', '', 2.00, '2025-07-26 15:13:45', '2025-07-26 15:13:45'),
(268, 155, 20, 1, 110, '110', '', '', '', 1.00, '2025-07-26 15:15:14', '2025-07-26 15:15:14'),
(269, 155, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:15:14', '2025-07-26 15:15:14'),
(270, 156, 9, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:17:06', '2025-07-26 15:17:06'),
(271, 156, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:17:06', '2025-07-26 15:17:06'),
(272, 156, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:17:06', '2025-07-26 15:17:06'),
(273, 156, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:17:06', '2025-07-26 15:17:06'),
(274, 156, 20, 1, 110, '110', '', '', '', 1.00, '2025-07-26 15:17:06', '2025-07-26 15:17:06'),
(275, 156, 19, 1, 110, '110', '', '', '', 1.00, '2025-07-26 15:17:06', '2025-07-26 15:17:06'),
(276, 156, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:17:06', '2025-07-26 15:17:06'),
(277, 157, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:19:19', '2025-07-26 15:19:19'),
(278, 158, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:27:12', '2025-07-26 15:27:12'),
(279, 158, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:27:12', '2025-07-26 15:27:12'),
(280, 159, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:28:53', '2025-07-26 15:28:53'),
(281, 159, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:28:53', '2025-07-26 15:28:53'),
(282, 160, 28, 1, 40, '160', '', '', '', 4.00, '2025-07-26 15:34:14', '2025-07-26 15:34:14'),
(283, 161, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:35:05', '2025-07-26 15:35:05'),
(284, 162, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:35:30', '2025-07-26 15:35:30'),
(285, 163, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:36:19', '2025-07-26 15:36:19'),
(286, 164, 4, 1, 50, '100', '', '', '', 2.00, '2025-07-26 15:36:47', '2025-07-26 15:36:47'),
(287, 165, 15, 1, 60, '120', '', '', '', 2.00, '2025-07-26 15:38:26', '2025-07-26 15:38:26'),
(288, 165, 5, 1, 20, '40', '', '', '', 2.00, '2025-07-26 15:38:26', '2025-07-26 15:38:26'),
(289, 165, 2, 1, 20, '40', '', '', '', 2.00, '2025-07-26 15:38:26', '2025-07-26 15:38:26'),
(290, 165, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:38:26', '2025-07-26 15:38:26'),
(291, 166, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:39:03', '2025-07-26 15:39:03'),
(292, 166, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:39:03', '2025-07-26 15:39:03'),
(293, 167, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:41:54', '2025-07-26 15:41:54'),
(294, 167, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:41:54', '2025-07-26 15:41:54'),
(295, 167, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:41:54', '2025-07-26 15:41:54'),
(296, 167, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:41:54', '2025-07-26 15:41:54'),
(297, 167, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:41:54', '2025-07-26 15:41:54'),
(298, 168, 12, 1, 20, '40', '', '', '', 2.00, '2025-07-26 15:43:31', '2025-07-26 15:43:31'),
(299, 169, 65, 1, 40, '40', '', '', '', 1.00, '2025-07-26 15:43:58', '2025-07-26 15:43:58'),
(300, 170, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-26 15:45:16', '2025-07-26 15:45:16'),
(301, 171, 65, 1, 40, '120', '', '', '', 3.00, '2025-07-26 15:49:51', '2025-07-26 15:49:51'),
(302, 171, 24, 1, 40, '80', '', '', '', 2.00, '2025-07-26 15:49:51', '2025-07-26 15:49:51'),
(303, 171, 8, 1, 50, '100', '', '', '', 2.00, '2025-07-26 15:49:51', '2025-07-26 15:49:51'),
(304, 171, 11, 1, 50, '150', '', '', '', 3.00, '2025-07-26 15:49:51', '2025-07-26 15:49:51'),
(305, 172, 20, 1, 110, '110', '', '', '', 1.00, '2025-07-26 15:50:45', '2025-07-26 15:50:45'),
(306, 173, 3, 1, 50, '50', '', '', '', 1.00, '2025-07-26 16:01:48', '2025-07-26 16:01:48'),
(307, 174, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 16:02:34', '2025-07-26 16:02:34'),
(308, 175, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 16:06:40', '2025-07-26 16:06:40'),
(309, 176, 6, 1, 50, '100', '', '', '', 2.00, '2025-07-26 16:07:35', '2025-07-26 16:07:35'),
(310, 176, 3, 1, 50, '100', '', '', '', 2.00, '2025-07-26 16:07:35', '2025-07-26 16:07:35'),
(311, 176, 7, 1, 20, '80', '', '', '', 4.00, '2025-07-26 16:07:35', '2025-07-26 16:07:35'),
(312, 176, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:07:35', '2025-07-26 16:07:35'),
(313, 177, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:08:41', '2025-07-26 16:08:41'),
(314, 177, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 16:08:41', '2025-07-26 16:08:41'),
(315, 178, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:09:37', '2025-07-26 16:09:37'),
(316, 178, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 16:09:37', '2025-07-26 16:09:37'),
(317, 178, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:09:37', '2025-07-26 16:09:37'),
(318, 179, 63, 1, 10, '20', '', '', '', 2.00, '2025-07-26 16:10:27', '2025-07-26 16:10:27'),
(319, 180, 63, 1, 10, '30', '', '', '', 3.00, '2025-07-26 16:13:20', '2025-07-26 16:13:20'),
(320, 180, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:13:20', '2025-07-26 16:13:20'),
(321, 180, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:13:20', '2025-07-26 16:13:20'),
(322, 181, 65, 1, 40, '40', '', '', '', 1.00, '2025-07-26 16:14:37', '2025-07-26 16:14:37'),
(323, 181, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-26 16:14:37', '2025-07-26 16:14:37'),
(324, 181, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:14:37', '2025-07-26 16:14:37'),
(325, 182, 8, 1, 50, '50', '', '', '', 1.00, '2025-07-26 16:24:03', '2025-07-26 16:24:03'),
(326, 183, 19, 1, 110, '110', '', '', '', 1.00, '2025-07-26 16:28:07', '2025-07-26 16:28:07'),
(327, 183, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:28:07', '2025-07-26 16:28:07'),
(328, 183, 15, 1, 60, '60', '', '', '', 1.00, '2025-07-26 16:28:07', '2025-07-26 16:28:07'),
(329, 183, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-26 16:28:07', '2025-07-26 16:28:07'),
(330, 184, 64, 1, 70, '140', '', '', '', 2.00, '2025-07-26 16:29:11', '2025-07-26 16:29:11'),
(331, 184, 28, 1, 40, '80', '', '', '', 2.00, '2025-07-26 16:29:11', '2025-07-26 16:29:11'),
(332, 184, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:29:11', '2025-07-26 16:29:11'),
(333, 184, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:29:11', '2025-07-26 16:29:11'),
(334, 185, 2, 1, 20, '200', '', '', '', 10.00, '2025-07-26 16:35:38', '2025-07-26 16:35:38'),
(335, 185, 3, 1, 50, '100', '', '', '', 2.00, '2025-07-26 16:35:38', '2025-07-26 16:35:38'),
(336, 185, 20, 1, 110, '110', '', '', '', 1.00, '2025-07-26 16:35:38', '2025-07-26 16:35:38'),
(337, 185, 38, 1, 110, '110', '', '', '', 1.00, '2025-07-26 16:35:38', '2025-07-26 16:35:38'),
(338, 185, 59, 2, 100, '100', '', '', '', 1.00, '2025-07-26 16:35:38', '2025-07-26 16:35:38'),
(339, 186, 28, 1, 40, '120', '', '', '', 3.00, '2025-07-26 16:57:46', '2025-07-26 16:57:46'),
(340, 186, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-26 16:57:46', '2025-07-26 16:57:46'),
(341, 186, 2, 1, 20, '60', '', '', '', 3.00, '2025-07-26 16:57:46', '2025-07-26 16:57:46'),
(342, 187, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 17:26:32', '2025-07-26 17:26:32'),
(343, 187, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-26 17:26:32', '2025-07-26 17:26:32'),
(344, 188, 13, 1, 80, '80', '', '', '', 1.00, '2025-07-26 17:29:21', '2025-07-26 17:29:21'),
(345, 188, 17, 1, 70, '70', '', '', '', 1.00, '2025-07-26 17:29:21', '2025-07-26 17:29:21'),
(346, 189, 29, 1, 20, '100', '', '', '', 5.00, '2025-07-26 17:30:30', '2025-07-26 17:30:30'),
(347, 190, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 17:34:50', '2025-07-26 17:34:50'),
(348, 190, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-26 17:34:50', '2025-07-26 17:34:50'),
(349, 190, 36, 1, 20, '20', '', '', '', 1.00, '2025-07-26 17:34:50', '2025-07-26 17:34:50'),
(350, 190, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 17:34:50', '2025-07-26 17:34:50'),
(351, 190, 12, 1, 20, '20', '', '', '', 1.00, '2025-07-26 17:34:50', '2025-07-26 17:34:50'),
(352, 191, 11, 1, 50, '100', '', '', '', 2.00, '2025-07-26 17:46:31', '2025-07-26 17:46:31'),
(353, 191, 64, 1, 70, '70', '', '', '', 1.00, '2025-07-26 17:46:31', '2025-07-26 17:46:31'),
(354, 192, 8, 1, 50, '100', '', '', '', 2.00, '2025-07-26 17:51:27', '2025-07-26 17:51:27'),
(355, 192, 4, 1, 50, '100', '', '', '', 2.00, '2025-07-26 17:51:27', '2025-07-26 17:51:27'),
(356, 193, 8, 1, 50, '50', '', '', '', 1.00, '2025-07-26 17:51:59', '2025-07-26 17:51:59'),
(357, 194, 19, 1, 110, '110', '', '', '', 1.00, '2025-07-26 18:08:54', '2025-07-26 18:08:54'),
(358, 195, 28, 1, 40, '40', '', '', '', 1.00, '2025-07-26 18:09:39', '2025-07-26 18:09:39'),
(359, 195, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-26 18:09:39', '2025-07-26 18:09:39'),
(360, 196, 3, 1, 50, '50', '', '', '', 1.00, '2025-07-26 18:10:17', '2025-07-26 18:10:17'),
(361, 196, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-26 18:10:17', '2025-07-26 18:10:17'),
(362, 197, 12, 1, 20, '40', '', '', '', 2.00, '2025-07-26 18:10:50', '2025-07-26 18:10:50'),
(363, 198, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 18:11:19', '2025-07-26 18:11:19'),
(364, 199, 29, 1, 20, '60', '', '', '', 3.00, '2025-07-26 18:12:44', '2025-07-26 18:12:44'),
(365, 199, 15, 1, 60, '60', '', '', '', 1.00, '2025-07-26 18:12:44', '2025-07-26 18:12:44'),
(366, 200, 17, 1, 70, '70', '', '', '', 1.00, '2025-07-26 18:13:46', '2025-07-26 18:13:46'),
(367, 201, 4, 1, 50, '100', '', '', '', 2.00, '2025-07-26 18:14:48', '2025-07-26 18:14:48'),
(368, 201, 3, 1, 50, '100', '', '', '', 2.00, '2025-07-26 18:14:48', '2025-07-26 18:14:48'),
(369, 201, 1, 1, 70, '140', '', '', '', 2.00, '2025-07-26 18:14:48', '2025-07-26 18:14:48'),
(370, 201, 9, 1, 20, '40', '', '', '', 2.00, '2025-07-26 18:14:48', '2025-07-26 18:14:48'),
(371, 201, 11, 1, 50, '50', '', '', '', 1.00, '2025-07-26 18:14:48', '2025-07-26 18:14:48'),
(372, 201, 14, 1, 40, '40', '', '', '', 1.00, '2025-07-26 18:14:48', '2025-07-26 18:14:48'),
(373, 202, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-26 18:15:02', '2025-07-26 18:15:02'),
(374, 203, 1, 1, 70, '70', '', '', '', 1.00, '2025-07-26 18:15:33', '2025-07-26 18:15:33'),
(375, 203, 5, 1, 20, '60', '', '', '', 3.00, '2025-07-26 18:15:33', '2025-07-26 18:15:33'),
(376, 204, 4, 1, 50, '50', '', '', '', 1.00, '2025-07-26 18:16:26', '2025-07-26 18:16:26'),
(377, 204, 9, 1, 20, '20', '', '', '', 1.00, '2025-07-26 18:16:26', '2025-07-26 18:16:26'),
(378, 204, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-26 18:16:26', '2025-07-26 18:16:26'),
(379, 205, 14, 1, 40, '40', '', '', '', 1.00, '2025-07-26 18:16:52', '2025-07-26 18:16:52'),
(380, 206, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-26 18:17:15', '2025-07-26 18:17:15'),
(381, 207, 4, 1, 50, '100', '', '', '', 2.00, '2025-07-26 18:17:56', '2025-07-26 18:17:56'),
(382, 207, 11, 1, 50, '100', '', '', '', 2.00, '2025-07-26 18:17:56', '2025-07-26 18:17:56'),
(383, 208, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-26 18:18:28', '2025-07-26 18:18:28'),
(384, 209, 4, 1, 50, '50', '', '', '', 1.00, '2025-07-26 18:18:45', '2025-07-26 18:18:45'),
(385, 210, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-26 18:19:06', '2025-07-26 18:19:06'),
(386, 211, 24, 1, 40, '80', '', '', '', 2.00, '2025-07-26 18:19:41', '2025-07-26 18:19:41'),
(387, 212, 28, 1, 40, '80', '', '', '', 2.00, '2025-07-26 18:20:27', '2025-07-26 18:20:27'),
(388, 213, 3, 1, 50, '50', '', '', '', 1.00, '2025-07-26 18:20:58', '2025-07-26 18:20:58'),
(389, 214, 2, 1, 20, '40', '', '', '', 2.00, '2025-07-26 18:21:18', '2025-07-26 18:21:18'),
(390, 215, 63, 1, 10, '10', '', '', '', 1.00, '2025-07-26 18:21:50', '2025-07-26 18:21:50'),
(391, 216, 2, 1, 20, '40', '', '', '', 2.00, '2025-07-26 18:22:13', '2025-07-26 18:22:13'),
(392, 217, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-26 18:22:39', '2025-07-26 18:22:39'),
(393, 218, 29, 1, 20, '40', '', '', '', 2.00, '2025-07-26 19:06:02', '2025-07-26 19:06:02'),
(394, 218, 65, 1, 40, '40', '', '', '', 1.00, '2025-07-26 19:06:02', '2025-07-26 19:06:02'),
(395, 219, 40, 1, 20, '20', '', '', '', 1.00, '2025-07-26 19:17:05', '2025-07-26 19:17:05'),
(396, 220, 23, 1, 40, '40', '', '', '', 1.00, '2025-07-27 12:15:44', '2025-07-27 12:15:44'),
(397, 221, 20, 1, 110, '110', '', '', '', 1.00, '2025-07-27 13:09:48', '2025-07-27 13:09:48'),
(398, 222, 4, 1, 50, '50', '', '', '', 1.00, '2025-07-27 13:22:31', '2025-07-27 13:22:31'),
(399, 222, 17, 1, 70, '70', '', '', '', 1.00, '2025-07-27 13:22:31', '2025-07-27 13:22:31'),
(400, 222, 16, 1, 70, '70', '', '', '', 1.00, '2025-07-27 13:22:31', '2025-07-27 13:22:31'),
(401, 223, 6, 1, 50, '50', '', '', '', 1.00, '2025-07-27 13:25:36', '2025-07-27 13:25:36'),
(402, 223, 23, 1, 40, '40', '', '', '', 1.00, '2025-07-27 13:25:36', '2025-07-27 13:25:36'),
(403, 224, 63, 1, 10, '20', '', '', '', 2.00, '2025-07-27 13:33:23', '2025-07-27 13:33:23'),
(404, 225, 37, 1, 40, '80', '', '', '', 2.00, '2025-07-27 16:14:10', '2025-07-27 16:14:10'),
(405, 226, 23, 1, 40, '40', '', '', '', 1.00, '2025-07-27 16:30:35', '2025-07-27 16:30:35'),
(406, 226, 15, 1, 60, '60', '', '', '', 1.00, '2025-07-27 16:30:35', '2025-07-27 16:30:35'),
(407, 227, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-27 16:31:27', '2025-07-27 16:31:27'),
(408, 228, 47, 2, 100, '100', '', '', '', 1.00, '2025-07-27 16:35:43', '2025-07-27 16:35:43'),
(409, 229, 66, 1, 80, '80', '', '', '', 1.00, '2025-07-27 18:51:20', '2025-07-27 18:51:20'),
(410, 229, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-27 18:51:20', '2025-07-27 18:51:20'),
(411, 229, 10, 1, 100, '100', '', '', '', 1.00, '2025-07-27 18:51:20', '2025-07-27 18:51:20'),
(412, 229, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-27 18:51:20', '2025-07-27 18:51:20'),
(413, 230, 17, 1, 70, '70', '', '', '', 1.00, '2025-07-27 18:53:17', '2025-07-27 18:53:17'),
(414, 231, 2, 1, 20, '40', '', '', '', 2.00, '2025-07-27 19:42:39', '2025-07-27 19:42:39'),
(415, 231, 12, 1, 20, '60', '', '', '', 3.00, '2025-07-27 19:42:39', '2025-07-27 19:42:39'),
(416, 231, 24, 1, 40, '80', '', '', '', 2.00, '2025-07-27 19:42:39', '2025-07-27 19:42:39'),
(417, 231, 14, 1, 40, '40', '', '', '', 1.00, '2025-07-27 19:42:39', '2025-07-27 19:42:39'),
(418, 232, 2, 1, 20, '20', '', '', '', 1.00, '2025-07-27 19:50:09', '2025-07-27 19:50:09'),
(419, 232, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-27 19:50:09', '2025-07-27 19:50:09'),
(420, 232, 17, 1, 70, '210', '', '', '', 3.00, '2025-07-27 19:50:09', '2025-07-27 19:50:09'),
(421, 232, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-27 19:50:09', '2025-07-27 19:50:09'),
(422, 232, 12, 1, 20, '80', '', '', '', 4.00, '2025-07-27 19:50:09', '2025-07-27 19:50:09'),
(423, 232, 36, 1, 20, '20', '', '', '', 1.00, '2025-07-27 19:50:09', '2025-07-27 19:50:09'),
(424, 233, 63, 1, 10, '30', '', '', '', 3.00, '2025-07-28 10:39:33', '2025-07-28 10:39:33'),
(425, 233, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-28 10:39:33', '2025-07-28 10:39:33'),
(426, 233, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-28 10:39:33', '2025-07-28 10:39:33'),
(427, 234, 8, 1, 50, '50', '', '', '', 1.00, '2025-07-28 11:46:32', '2025-07-28 11:46:32'),
(428, 235, 29, 1, 20, '40', '', '', '', 2.00, '2025-07-28 13:47:14', '2025-07-28 13:47:14'),
(429, 235, 2, 1, 20, '60', '', '', '', 3.00, '2025-07-28 13:47:14', '2025-07-28 13:47:14'),
(430, 235, 14, 1, 40, '80', '', '', '', 2.00, '2025-07-28 13:47:14', '2025-07-28 13:47:14'),
(431, 235, 32, 1, 20, '20', '', '', '', 1.00, '2025-07-28 13:47:14', '2025-07-28 13:47:14'),
(432, 235, 4, 1, 50, '50', '', '', '', 1.00, '2025-07-28 13:47:14', '2025-07-28 13:47:14'),
(433, 236, 29, 1, 20, '20', '', '', '', 1.00, '2025-07-28 14:02:52', '2025-07-28 14:02:52'),
(434, 237, 36, 1, 20, '80', '', '', '', 4.00, '2025-07-28 14:31:22', '2025-07-28 14:31:22'),
(435, 237, 12, 1, 20, '60', '', '', '', 3.00, '2025-07-28 14:31:22', '2025-07-28 14:31:22'),
(436, 237, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-28 14:31:22', '2025-07-28 14:31:22'),
(437, 238, 33, 1, 20, '20', '', '', '', 1.00, '2025-07-28 14:38:56', '2025-07-28 14:38:56'),
(438, 239, 29, 1, 20, '80', '', '', '', 4.00, '2025-07-28 15:04:39', '2025-07-28 15:04:39'),
(439, 239, 30, 1, 40, '40', '', '', '', 1.00, '2025-07-28 15:04:39', '2025-07-28 15:04:39'),
(440, 239, 59, 2, 100, '100', '', '', '', 1.00, '2025-07-28 15:04:39', '2025-07-28 15:04:39'),
(441, 240, 10, 1, 100, '100', '', '', '', 1.00, '2025-07-28 16:22:14', '2025-07-28 16:22:14'),
(442, 241, 12, 1, 20, '200', '', '', '', 10.00, '2025-07-28 16:51:46', '2025-07-28 16:51:46'),
(443, 241, 30, 1, 40, '80', '', '', '', 2.00, '2025-07-28 16:51:46', '2025-07-28 16:51:46'),
(444, 241, 65, 1, 40, '40', '', '', '', 1.00, '2025-07-28 16:51:46', '2025-07-28 16:51:46'),
(445, 241, 34, 1, 40, '40', '', '', '', 1.00, '2025-07-28 16:51:46', '2025-07-28 16:51:46'),
(446, 241, 2, 1, 20, '60', '', '', '', 3.00, '2025-07-28 16:51:46', '2025-07-28 16:51:46'),
(447, 241, 33, 1, 20, '40', '', '', '', 2.00, '2025-07-28 16:51:46', '2025-07-28 16:51:46'),
(448, 241, 23, 1, 40, '40', '', '', '', 1.00, '2025-07-28 16:51:46', '2025-07-28 16:51:46'),
(449, 241, 64, 1, 70, '70', '', '', '', 1.00, '2025-07-28 16:51:46', '2025-07-28 16:51:46'),
(450, 241, 19, 1, 110, '220', '', '', '', 2.00, '2025-07-28 16:51:46', '2025-07-28 16:51:46'),
(451, 242, 29, 1, 20, '40', '', '', '', 2.00, '2025-07-28 18:05:18', '2025-07-28 18:05:18'),
(452, 243, 7, 1, 20, '20', '', '', '', 1.00, '2025-07-29 12:02:23', '2025-07-29 12:02:23'),
(453, 244, 15, 1, 60, '60', '', '', '', 1.00, '2025-07-29 13:34:36', '2025-07-29 13:34:36'),
(454, 245, 36, 1, 20, '20', '', '', '', 1.00, '2025-07-29 16:44:23', '2025-07-29 16:44:23'),
(455, 245, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-29 16:44:23', '2025-07-29 16:44:23'),
(456, 246, 10, 1, 100, '100', '', '', '', 1.00, '2025-07-29 17:07:28', '2025-07-29 17:07:28'),
(457, 246, 26, 1, 80, '80', '', '', '', 1.00, '2025-07-29 17:07:28', '2025-07-29 17:07:28'),
(458, 246, 65, 1, 40, '40', '', '', '', 1.00, '2025-07-29 17:07:28', '2025-07-29 17:07:28'),
(459, 247, 12, 1, 20, '40', '', '', '', 2.00, '2025-07-29 17:27:08', '2025-07-29 17:27:08'),
(460, 247, 7, 1, 20, '60', '', '', '', 3.00, '2025-07-29 17:27:08', '2025-07-29 17:27:08'),
(461, 247, 5, 1, 20, '20', '', '', '', 1.00, '2025-07-29 17:27:08', '2025-07-29 17:27:08'),
(462, 247, 30, 1, 40, '40', '', '', '', 1.00, '2025-07-29 17:27:08', '2025-07-29 17:27:08'),
(463, 247, 24, 1, 40, '40', '', '', '', 1.00, '2025-07-29 17:27:08', '2025-07-29 17:27:08'),
(464, 248, 8, 1, 50, '50', '', '', '', 1.00, '2025-07-30 10:18:52', '2025-07-30 10:18:52'),
(465, 248, 4, 1, 50, '50', '', '', '', 1.00, '2025-07-30 10:18:52', '2025-07-30 10:18:52'),
(466, 249, 24, 1, 40, '80', '', '', '', 2.00, '2025-07-30 10:44:59', '2025-07-30 10:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_category_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_categories`
--

CREATE TABLE `page_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_des` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `meta_image` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `account_no` varchar(191) DEFAULT NULL,
  `account_holder` varchar(191) DEFAULT NULL,
  `account_type` varchar(191) DEFAULT NULL,
  `image` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `title`, `slug`, `account_no`, `account_holder`, `account_type`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'cash', '+8801717796360', 'Parthasarathi Krishna das', 'Local', 'images/banner_image/aDlCS', 1, '2025-07-17 15:33:28', '2025-07-18 12:16:40'),
(2, 'Bank', 'bank', '0100171299980', 'Parthasarathi Krishna das', 'savings', 'images/banner_image/4a5pe', 1, '2025-07-18 20:04:59', '2025-07-18 20:04:59'),
(3, 'Cod', 'cod', '0124544754', 'Demo', 'Personal', 'images/banner_image/snkus', 1, '2025-07-21 21:37:22', '2025-07-21 21:37:22'),
(4, 'Due', 'due', '+8801717796360', 'Parthasarathi Krishna das', 'Local', 'images/banner_image/kkt3d', 1, '2025-07-25 09:55:21', '2025-07-25 09:55:21');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `buying_price` double(15,2) DEFAULT NULL,
  `sell_price` double(15,2) DEFAULT NULL,
  `discount` varchar(191) DEFAULT NULL,
  `discount_price` double(15,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total_sell` int(11) DEFAULT NULL,
  `total_product` int(11) DEFAULT NULL,
  `min_order_qty` int(11) DEFAULT NULL,
  `max_order_qty` int(11) DEFAULT NULL,
  `warranty` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_des` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `product_image_thumb` varchar(255) DEFAULT NULL,
  `product_image_small` varchar(255) DEFAULT NULL,
  `product_image_medium` varchar(255) DEFAULT NULL,
  `product_image_large` varchar(255) DEFAULT NULL,
  `image_alt` varchar(191) DEFAULT NULL,
  `image_des` varchar(191) DEFAULT NULL,
  `note` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `serial`, `admin_id`, `name`, `slug`, `code`, `sku`, `buying_price`, `sell_price`, `discount`, `discount_price`, `qty`, `total_sell`, `total_product`, `min_order_qty`, `max_order_qty`, `warranty`, `description`, `meta_title`, `meta_des`, `meta_keywords`, `image`, `product_image_thumb`, `product_image_small`, `product_image_medium`, `product_image_large`, `image_alt`, `image_des`, `note`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Radhakoli Biscuit', 'radhakoli-biscuit', NULL, NULL, NULL, 70.00, NULL, 0.00, 131, 4, 0, NULL, NULL, NULL, NULL, 'Radhakoli', NULL, NULL, 'images/product_image/8QaZQ.jpg', 'images/product_image/thumb8QaZQ.jpg', 'images/product_image/small8QaZQ.jpg', 'images/product_image/medium8QaZQ.jpg', 'images/product_image/large8QaZQ.jpg', NULL, NULL, '', 1, '2025-07-17 15:31:12', '2025-07-26 18:15:33'),
(2, 2, 1, 'Gurer goja', 'gurer-goja', NULL, NULL, NULL, 20.00, NULL, 0.00, 583, 42, 0, NULL, NULL, NULL, NULL, 'Gurer goja s', 'snacks', 'ggs', 'images/product_image/zBQss.jpeg', 'images/product_image/thumbzBQss.jpeg', 'images/product_image/smallzBQss.jpeg', 'images/product_image/mediumzBQss.jpeg', 'images/product_image/largezBQss.jpeg', NULL, NULL, '', 1, '2025-07-17 17:06:17', '2025-07-28 16:51:46'),
(3, 3, 1, 'Gurer goja big', 'gurer-goja-big', NULL, NULL, NULL, 50.00, NULL, 0.00, 8, 24, 0, NULL, NULL, NULL, NULL, 'Gurer goja boro', 'snaks', 'gurer goja boro', 'images/product_image/iy8gG.jpeg', 'images/product_image/thumbiy8gG.jpeg', 'images/product_image/smalliy8gG.jpeg', 'images/product_image/mediumiy8gG.jpeg', 'images/product_image/largeiy8gG.jpeg', NULL, NULL, '', 1, '2025-07-17 17:16:06', '2025-07-26 18:20:58'),
(4, 4, 1, 'chinir goja big', 'chinir-goja-big', NULL, NULL, NULL, 50.00, NULL, 0.00, 51, 16, 0, NULL, NULL, NULL, NULL, 'chinir goja', 'snaks', 'chinir goja boro', 'images/product_image/cdevE.jpeg', 'images/product_image/thumbcdevE.jpeg', 'images/product_image/smallcdevE.jpeg', 'images/product_image/mediumcdevE.jpeg', 'images/product_image/largecdevE.jpeg', NULL, NULL, '', 1, '2025-07-17 17:18:59', '2025-07-30 10:18:52'),
(5, 5, 1, 'chira vaja choto', 'chira-vaja-choto', NULL, NULL, NULL, 20.00, NULL, 0.00, 415, 41, 0, NULL, NULL, NULL, NULL, 'chira vaja', 'snaks', 'chira vaja choto', 'images/product_image/OLYkt.jpeg', 'images/product_image/thumbOLYkt.jpeg', 'images/product_image/smallOLYkt.jpeg', 'images/product_image/mediumOLYkt.jpeg', 'images/product_image/largeOLYkt.jpeg', NULL, NULL, '', 1, '2025-07-17 17:22:20', '2025-07-29 17:27:08'),
(6, 6, 1, 'chira vaja boro', 'chira-vaja-boro', NULL, NULL, NULL, 50.00, NULL, 0.00, 121, 3, 0, NULL, NULL, NULL, NULL, 'chira vaja', 'snaks', 'chira vaja boro', 'images/product_image/Z5DAJ.jpeg', 'images/product_image/thumbZ5DAJ.jpeg', 'images/product_image/smallZ5DAJ.jpeg', 'images/product_image/mediumZ5DAJ.jpeg', 'images/product_image/largeZ5DAJ.jpeg', NULL, NULL, '', 1, '2025-07-17 17:24:00', '2025-07-27 13:25:36'),
(7, 7, 1, 'nimki choto', 'nimki-choto', NULL, NULL, NULL, 20.00, NULL, 0.00, 847, 31, 0, NULL, NULL, NULL, NULL, 'nimki choto', 'snaks', 'nimki choto', 'images/product_image/jkMqq.jpeg', 'images/product_image/thumbjkMqq.jpeg', 'images/product_image/smalljkMqq.jpeg', 'images/product_image/mediumjkMqq.jpeg', 'images/product_image/largejkMqq.jpeg', NULL, NULL, '', 1, '2025-07-17 17:25:47', '2025-07-29 17:27:08'),
(8, 8, 1, 'nimki boro', 'nimki-boro', NULL, NULL, NULL, 50.00, NULL, 0.00, 45, 15, 0, NULL, NULL, NULL, NULL, 'nimki boro', 'snaks', 'nimki boro', 'images/product_image/Q9Dlv.jpeg', 'images/product_image/thumbQ9Dlv.jpeg', 'images/product_image/smallQ9Dlv.jpeg', 'images/product_image/mediumQ9Dlv.jpeg', 'images/product_image/largeQ9Dlv.jpeg', NULL, NULL, '', 1, '2025-07-17 17:27:25', '2025-07-30 10:18:52'),
(9, 9, 1, 'motor vaja choto', 'motor-vaja-choto', NULL, NULL, NULL, 20.00, NULL, 0.00, 163, 4, 0, NULL, NULL, NULL, NULL, 'motor vaja', 'snaks', 'motor vaja choto', 'images/product_image/Qi0PV.jpeg', 'images/product_image/thumbQi0PV.jpeg', 'images/product_image/smallQi0PV.jpeg', 'images/product_image/mediumQi0PV.jpeg', 'images/product_image/largeQi0PV.jpeg', NULL, NULL, '', 1, '2025-07-17 17:29:17', '2025-07-26 18:16:26'),
(10, 10, 1, 'chanachur boro', 'chanachur-boro', NULL, NULL, NULL, 100.00, NULL, 0.00, 10, 5, 0, NULL, NULL, NULL, NULL, 'chanachur boro', 'snaks', 'chanachur boro', 'images/product_image/ooVRT.jpeg', 'images/product_image/thumbooVRT.jpeg', 'images/product_image/smallooVRT.jpeg', 'images/product_image/mediumooVRT.jpeg', 'images/product_image/largeooVRT.jpeg', NULL, NULL, '', 1, '2025-07-17 17:31:33', '2025-07-29 17:07:28'),
(11, 11, 1, 'chanachur medium', 'chanachur-medium', NULL, NULL, NULL, 50.00, NULL, 0.00, 45, 16, 0, NULL, NULL, NULL, NULL, 'chanachur medium', 'snaks', 'chanachur medium', 'images/product_image/ynX1A.jpeg', 'images/product_image/thumbynX1A.jpeg', 'images/product_image/smallynX1A.jpeg', 'images/product_image/mediumynX1A.jpeg', 'images/product_image/largeynX1A.jpeg', NULL, NULL, '', 1, '2025-07-17 17:33:08', '2025-07-26 18:17:56'),
(12, 12, 1, 'chanachur small', 'chanachur-small', NULL, NULL, NULL, 20.00, NULL, 0.00, 271, 45, 0, NULL, NULL, NULL, NULL, 'chanachur small', 'snaks', 'chanachur small', 'images/product_image/aDA6G.jpeg', 'images/product_image/thumbaDA6G.jpeg', 'images/product_image/smallaDA6G.jpeg', 'images/product_image/mediumaDA6G.jpeg', 'images/product_image/largeaDA6G.jpeg', NULL, NULL, '', 1, '2025-07-17 17:34:14', '2025-07-29 17:27:08'),
(13, 13, 1, 'bombe chanachur boro', 'bombe-chanachur-boro', NULL, NULL, NULL, 80.00, NULL, 0.00, 124, 5, 0, NULL, NULL, NULL, NULL, 'bombe chanachur boro', 's', NULL, 'images/product_image/KXiv8.jpeg', 'images/product_image/thumbKXiv8.jpeg', 'images/product_image/smallKXiv8.jpeg', 'images/product_image/mediumKXiv8.jpeg', 'images/product_image/largeKXiv8.jpeg', NULL, NULL, '', 1, '2025-07-17 17:36:41', '2025-07-26 17:29:21'),
(14, 14, 1, 'bombe chanachur choto', 'bombe-chanachur-choto', NULL, NULL, NULL, 40.00, NULL, 0.00, 225, 5, 0, NULL, NULL, NULL, NULL, 'bombe chanachur choto', 'snaks', 'bombe chanachur choto', 'images/product_image/KotL4.jpeg', 'images/product_image/thumbKotL4.jpeg', 'images/product_image/smallKotL4.jpeg', 'images/product_image/mediumKotL4.jpeg', 'images/product_image/largeKotL4.jpeg', NULL, NULL, '', 1, '2025-07-17 17:38:12', '2025-07-28 13:47:14'),
(15, 15, 1, 'salt biscuit', 'salt-biscuit', NULL, NULL, NULL, 60.00, NULL, 0.00, 76, 8, 0, NULL, NULL, NULL, NULL, 'salt biscuit', 'biscuit', 'salt biscuit', 'images/product_image/Jxl8T.jpeg', 'images/product_image/thumbJxl8T.jpeg', 'images/product_image/smallJxl8T.jpeg', 'images/product_image/mediumJxl8T.jpeg', 'images/product_image/largeJxl8T.jpeg', NULL, NULL, '', 1, '2025-07-17 17:40:00', '2025-07-29 13:34:36'),
(16, 16, 1, 'mohon biscuit', 'mohon-biscuit', NULL, NULL, NULL, 70.00, NULL, 0.00, 26, 1, 0, NULL, NULL, NULL, NULL, 'mohon biscuit', 'biscuit', 'mohon biscuit', 'images/product_image/Gw3PE.jpeg', 'images/product_image/thumbGw3PE.jpeg', 'images/product_image/smallGw3PE.jpeg', 'images/product_image/mediumGw3PE.jpeg', 'images/product_image/largeGw3PE.jpeg', NULL, NULL, '', 1, '2025-07-17 17:41:20', '2025-07-27 13:22:31'),
(17, 17, 1, 'bittal biscuit', 'bittal-biscuit', NULL, NULL, NULL, 70.00, NULL, 0.00, 12, 9, 0, NULL, NULL, NULL, NULL, 'bittal biscuit', 'biscuit', 'bittal biscuit', 'images/product_image/zwQ3Z.jpeg', 'images/product_image/thumbzwQ3Z.jpeg', 'images/product_image/smallzwQ3Z.jpeg', 'images/product_image/mediumzwQ3Z.jpeg', 'images/product_image/largezwQ3Z.jpeg', NULL, NULL, '', 1, '2025-07-17 17:42:41', '2025-07-27 19:50:09'),
(18, 18, 1, 'brajamohon biscuit', 'brajamohon-biscuit', NULL, NULL, NULL, 120.00, NULL, 0.00, 32, 1, 0, NULL, NULL, NULL, NULL, 'brajamohon biscuit', 'biscuit', 'brajamohon biscuit', 'images/product_image/kv2q5.jpeg', 'images/product_image/thumbkv2q5.jpeg', 'images/product_image/smallkv2q5.jpeg', 'images/product_image/mediumkv2q5.jpeg', 'images/product_image/largekv2q5.jpeg', NULL, NULL, '', 1, '2025-07-17 17:44:35', '2025-07-24 18:32:06'),
(19, 19, 1, 'chinmoy biscuit', 'chinmoy-biscuit', NULL, NULL, NULL, 110.00, NULL, 0.00, 70, 10, 0, NULL, NULL, NULL, NULL, 'chinmoy biscuit', 'biscuit', 'chinmoy biscuit', 'images/product_image/bXWC2.jpeg', 'images/product_image/thumbbXWC2.jpeg', 'images/product_image/smallbXWC2.jpeg', 'images/product_image/mediumbXWC2.jpeg', 'images/product_image/largebXWC2.jpeg', NULL, NULL, '', 1, '2025-07-17 17:45:54', '2025-07-28 16:51:46'),
(20, 20, 1, 'hari biscuit', 'hari-biscuit', NULL, NULL, NULL, 110.00, NULL, 0.00, 152, 7, 0, NULL, NULL, NULL, NULL, 'hari biscuit', 'biscuit', 'hari biscuit', 'images/product_image/SeIz3.jpeg', 'images/product_image/thumbSeIz3.jpeg', 'images/product_image/smallSeIz3.jpeg', 'images/product_image/mediumSeIz3.jpeg', 'images/product_image/largeSeIz3.jpeg', NULL, NULL, '', 1, '2025-07-17 17:47:06', '2025-07-27 13:09:48'),
(21, 21, 1, 'gopal biscuit', 'gopal-biscuit', NULL, NULL, NULL, 110.00, NULL, 0.00, 31, 4, 0, NULL, NULL, NULL, NULL, 'gopal biscuit', 'biscuit', 'gopal biscuit', 'images/product_image/MV0Sn.jpeg', 'images/product_image/thumbMV0Sn.jpeg', 'images/product_image/smallMV0Sn.jpeg', 'images/product_image/mediumMV0Sn.jpeg', 'images/product_image/largeMV0Sn.jpeg', NULL, NULL, '', 1, '2025-07-17 17:48:07', '2025-07-26 14:58:45'),
(22, 22, 1, 'chaitanya biscuit', 'chaitanya-biscuit', NULL, NULL, NULL, 110.00, NULL, 0.00, 23, 0, 0, NULL, NULL, NULL, NULL, 'chaitanya biscuit', 'biscuit', 'chaitanya biscuit', 'images/product_image/tdHXY.jpeg', 'images/product_image/thumbtdHXY.jpeg', 'images/product_image/smalltdHXY.jpeg', 'images/product_image/mediumtdHXY.jpeg', 'images/product_image/largetdHXY.jpeg', NULL, NULL, '', 1, '2025-07-17 17:49:31', '2025-07-23 19:00:54'),
(23, 23, 1, 'mohon biscuit choto', 'mohon-biscuit-choto', NULL, NULL, NULL, 40.00, NULL, 0.00, 86, 5, 0, NULL, NULL, NULL, NULL, 'mohon biscuit choto', 'biscuit', 'mohon biscuit choto', 'images/product_image/wnw4j.jpeg', 'images/product_image/thumbwnw4j.jpeg', 'images/product_image/smallwnw4j.jpeg', 'images/product_image/mediumwnw4j.jpeg', 'images/product_image/largewnw4j.jpeg', NULL, NULL, '', 1, '2025-07-17 17:50:56', '2025-07-28 16:51:46'),
(24, 24, 1, 'drycake choto', 'drycake-choto', NULL, NULL, NULL, 40.00, NULL, 0.00, 96, 26, 0, NULL, NULL, NULL, NULL, 'drycake choto', 'biscuit', 'drycake choto', 'images/product_image/yiKu6.jpeg', 'images/product_image/thumbyiKu6.jpeg', 'images/product_image/smallyiKu6.jpeg', 'images/product_image/mediumyiKu6.jpeg', 'images/product_image/largeyiKu6.jpeg', NULL, NULL, '', 1, '2025-07-17 17:52:40', '2025-07-30 10:44:59'),
(25, 1, 1, 'Ghee-250gm', 'ghee-250gm', '', '', 0.00, 375.00, NULL, 0.00, 16, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 'images/product_image/4N61I.jpg', 'images/product_image/thumb4N61I.jpg', 'images/product_image/small4N61I.jpg', 'images/product_image/medium4N61I.jpg', 'images/product_image/large4N61I.jpg', NULL, NULL, '', 1, '2025-07-17 18:55:23', '2025-07-17 18:55:23'),
(26, 25, 1, 'Dry Cake big', 'dry-cake-big', NULL, NULL, NULL, 80.00, NULL, 0.00, 32, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'images/product_image/Y69sK.jpeg', 'images/product_image/thumbY69sK.jpeg', 'images/product_image/smallY69sK.jpeg', 'images/product_image/mediumY69sK.jpeg', 'images/product_image/largeY69sK.jpeg', NULL, NULL, '', 1, '2025-07-17 19:57:16', '2025-07-29 17:07:28'),
(27, 27, 1, 'Cake boro', 'cake-boro', '', '', 0.00, 70.00, NULL, 0.00, 0, 0, 0, 0, 0, NULL, NULL, 'Cake boro', 'cake', 'Cake boro', 'images/product_image/CYBI4.jpeg', 'images/product_image/thumbCYBI4.jpeg', 'images/product_image/smallCYBI4.jpeg', 'images/product_image/mediumCYBI4.jpeg', 'images/product_image/largeCYBI4.jpeg', NULL, NULL, '', 1, '2025-07-23 10:13:58', '2025-07-23 10:13:58'),
(28, 28, 1, 'cake medium', 'cake-medium', NULL, NULL, NULL, 40.00, NULL, 0.00, 61, 34, 0, NULL, NULL, NULL, NULL, 'cake medium', 'cake', 'cake medium', 'images/product_image/AHgnu.jpeg', 'images/product_image/thumbAHgnu.jpeg', 'images/product_image/smallAHgnu.jpeg', 'images/product_image/mediumAHgnu.jpeg', 'images/product_image/largeAHgnu.jpeg', NULL, NULL, '', 1, '2025-07-23 10:16:00', '2025-07-26 18:20:27'),
(29, 29, 1, 'cake choto', 'cake-choto', NULL, NULL, NULL, 20.00, NULL, 0.00, 65, 34, 0, NULL, NULL, NULL, NULL, 'cake choto', NULL, 'cake choto', 'images/product_image/p8HVe.jpeg', 'images/product_image/thumbp8HVe.jpeg', 'images/product_image/smallp8HVe.jpeg', 'images/product_image/mediump8HVe.jpeg', 'images/product_image/largep8HVe.jpeg', NULL, NULL, '', 1, '2025-07-23 10:17:48', '2025-07-28 18:05:18'),
(30, 30, 1, 'bread', 'bread', NULL, NULL, NULL, 40.00, NULL, 0.00, 87, 8, 0, NULL, NULL, NULL, NULL, 'bread', 'bread', 'bread', 'images/product_image/hbHL7.jpeg', 'images/product_image/thumbhbHL7.jpeg', 'images/product_image/smallhbHL7.jpeg', 'images/product_image/mediumhbHL7.jpeg', 'images/product_image/largehbHL7.jpeg', NULL, NULL, '', 1, '2025-07-23 10:21:13', '2025-07-29 17:27:08'),
(31, 31, 1, 'loaf', 'loaf', NULL, NULL, NULL, 30.00, NULL, 0.00, 16, 0, 0, NULL, NULL, NULL, NULL, 'loaf', 'bread', 'loaf', 'images/product_image/rmpPU.jpeg', 'images/product_image/thumbrmpPU.jpeg', 'images/product_image/smallrmpPU.jpeg', 'images/product_image/mediumrmpPU.jpeg', 'images/product_image/largermpPU.jpeg', NULL, NULL, '', 1, '2025-07-23 10:30:20', '2025-07-24 19:20:08'),
(32, 32, 1, 'loaf choto', 'loaf-choto', NULL, NULL, NULL, 20.00, NULL, 0.00, 319, 1, 0, NULL, NULL, NULL, NULL, 'bread', 'bread', 'bread', 'images/product_image/VBlBw.jpeg', 'images/product_image/thumbVBlBw.jpeg', 'images/product_image/smallVBlBw.jpeg', 'images/product_image/mediumVBlBw.jpeg', 'images/product_image/largeVBlBw.jpeg', NULL, NULL, '', 1, '2025-07-23 10:31:28', '2025-07-28 13:47:14'),
(33, 33, 1, 'chinir goja choto', 'chinir-goja-choto', NULL, NULL, NULL, 20.00, NULL, 0.00, 604, 8, 0, NULL, NULL, NULL, NULL, 'chinir', NULL, NULL, 'images/product_image/A22XI.jpeg', 'images/product_image/thumbA22XI.jpeg', 'images/product_image/smallA22XI.jpeg', 'images/product_image/mediumA22XI.jpeg', 'images/product_image/largeA22XI.jpeg', NULL, NULL, '', 1, '2025-07-23 18:39:05', '2025-07-28 16:51:46'),
(34, 34, 1, 'spicy stost', 'spicy-stost', '', '', 0.00, 40.00, NULL, 0.00, 17, 1, 0, 0, 0, NULL, NULL, 'spicy stost', 'stost', 'spicy stost', 'images/product_image/jnjtc.jpeg', 'images/product_image/thumbjnjtc.jpeg', 'images/product_image/smalljnjtc.jpeg', 'images/product_image/mediumjnjtc.jpeg', 'images/product_image/largejnjtc.jpeg', NULL, NULL, '', 1, '2025-07-23 18:41:59', '2025-07-28 16:51:46'),
(35, 34, 1, 'chalvaja big', 'chalvaja-big', NULL, NULL, NULL, 50.00, NULL, 0.00, 43, 9, 0, NULL, NULL, NULL, NULL, 'chalvaja boro', 'chalvaja big', 'chalvaja boro', 'images/product_image/5cIds.jpeg', 'images/product_image/thumb5cIds.jpeg', 'images/product_image/small5cIds.jpeg', 'images/product_image/medium5cIds.jpeg', 'images/product_image/large5cIds.jpeg', NULL, NULL, '', 1, '2025-07-23 18:48:02', '2025-07-26 13:57:45'),
(36, 35, 1, 'chalvaja choto', 'chalvaja-choto', NULL, NULL, NULL, 20.00, NULL, 0.00, 158, 8, 0, NULL, NULL, NULL, NULL, 'chalvaja choto', 'chalvaja choto', 'chalvaja choto', 'images/product_image/hP8Vk.jpeg', 'images/product_image/thumbhP8Vk.jpeg', 'images/product_image/smallhP8Vk.jpeg', 'images/product_image/mediumhP8Vk.jpeg', 'images/product_image/largehP8Vk.jpeg', NULL, NULL, '', 1, '2025-07-23 18:49:23', '2025-07-29 16:44:23'),
(37, 37, 1, 'sweet stost', 'sweet-stost', '', '', 0.00, 40.00, NULL, 0.00, 35, 8, 0, 0, 0, NULL, NULL, 'sweet stost', 'sweet stost', 'sweet stost', 'images/product_image/yV74r.jpeg', 'images/product_image/thumbyV74r.jpeg', 'images/product_image/smallyV74r.jpeg', 'images/product_image/mediumyV74r.jpeg', 'images/product_image/largeyV74r.jpeg', NULL, NULL, '', 1, '2025-07-23 18:53:54', '2025-07-27 16:14:10'),
(38, 38, 1, 'gopi biscuit', 'gopi-biscuit', '', '', 0.00, 110.00, NULL, 0.00, 31, 1, 0, 0, 0, NULL, NULL, 'gopi biscuit', 'gopi biscuit', 'gopi biscuit', 'images/product_image/dMgdb.jpeg', 'images/product_image/thumbdMgdb.jpeg', 'images/product_image/smalldMgdb.jpeg', 'images/product_image/mediumdMgdb.jpeg', 'images/product_image/largedMgdb.jpeg', NULL, NULL, '', 1, '2025-07-23 19:00:20', '2025-07-26 16:35:38'),
(39, 39, 1, 'bootvaja boro', 'bootvaja-boro', '', '', 0.00, 50.00, NULL, 0.00, 12, 1, 0, 0, 0, NULL, NULL, 'bootvaja boro', 'bootvaja boro', 'bootvaja boro', 'images/product_image/uvu9T.jpeg', 'images/product_image/thumbuvu9T.jpeg', 'images/product_image/smalluvu9T.jpeg', 'images/product_image/mediumuvu9T.jpeg', 'images/product_image/largeuvu9T.jpeg', NULL, NULL, '', 1, '2025-07-23 19:11:25', '2025-07-26 09:42:10'),
(40, 40, 1, 'bootvaja choto', 'bootvaja-choto', '', '', 0.00, 20.00, NULL, 0.00, -14, 22, 0, 0, 0, NULL, NULL, 'bootvaja choto', 'bootvaja choto', 'bootvaja choto', 'images/product_image/8jVB7.jpeg', 'images/product_image/thumb8jVB7.jpeg', 'images/product_image/small8jVB7.jpeg', 'images/product_image/medium8jVB7.jpeg', 'images/product_image/large8jVB7.jpeg', NULL, NULL, '', 1, '2025-07-23 19:12:39', '2025-07-26 19:17:05'),
(41, 2, 1, 'Red rice', 'red-rice', '', '', 0.00, 100.00, NULL, 0.00, 18, 0, 0, 0, 0, NULL, NULL, 'red rice', 'rice', 'red rice', 'images/product_image/GBB3m.jpeg', 'images/product_image/thumbGBB3m.jpeg', 'images/product_image/smallGBB3m.jpeg', 'images/product_image/mediumGBB3m.jpeg', 'images/product_image/largeGBB3m.jpeg', NULL, NULL, '', 1, '2025-07-24 10:39:54', '2025-07-24 10:39:54'),
(42, 3, 1, 'shada til', 'shada-til', '', '', 0.00, 50.00, NULL, 0.00, 3, 0, 0, 0, 0, NULL, NULL, 'shada til', 'shada til', 'shada til', 'images/product_image/NxkpO.jpeg', 'images/product_image/thumbNxkpO.jpeg', 'images/product_image/smallNxkpO.jpeg', 'images/product_image/mediumNxkpO.jpeg', 'images/product_image/largeNxkpO.jpeg', NULL, NULL, '', 1, '2025-07-24 10:41:30', '2025-07-24 10:41:30'),
(43, 4, 1, 'sunflower seed', 'sunflower-seed', '', '', 0.00, 80.00, NULL, 0.00, 35, 0, 0, 0, 0, NULL, NULL, 'sunflower seed', 'sunflower seed', 'sunflower seed', 'images/product_image/xHZnI.jpeg', 'images/product_image/thumbxHZnI.jpeg', 'images/product_image/smallxHZnI.jpeg', 'images/product_image/mediumxHZnI.jpeg', 'images/product_image/largexHZnI.jpeg', NULL, NULL, '', 1, '2025-07-24 10:43:49', '2025-07-24 10:43:49'),
(44, 5, 1, 'pamkin seed', 'pamkin-seed', '', '', 0.00, 90.00, NULL, 0.00, 43, 0, 0, 0, 0, NULL, NULL, 'pamkin seed', 'pamkin seed', 'pamkin seed', 'images/product_image/dKJaK.jpeg', 'images/product_image/thumbdKJaK.jpeg', 'images/product_image/smalldKJaK.jpeg', 'images/product_image/mediumdKJaK.jpeg', 'images/product_image/largedKJaK.jpeg', NULL, NULL, '', 1, '2025-07-24 10:45:43', '2025-07-24 10:45:43'),
(45, 6, 1, 'sea seed', 'sea-seed', '', '', 0.00, 60.00, NULL, 0.00, 22, 0, 0, 0, 0, NULL, NULL, 'sea seed', 'sea seed', 'sea seed', 'images/product_image/svL1I.jpeg', 'images/product_image/thumbsvL1I.jpeg', 'images/product_image/smallsvL1I.jpeg', 'images/product_image/mediumsvL1I.jpeg', 'images/product_image/largesvL1I.jpeg', NULL, NULL, '', 1, '2025-07-24 10:47:12', '2025-07-24 10:47:12'),
(46, 7, 1, 'tishi', 'tishi', '', '', 0.00, 40.00, NULL, 0.00, 7, 0, 0, 0, 0, NULL, NULL, 'tishi', NULL, NULL, 'images/product_image/IoxEt.jpeg', 'images/product_image/thumbIoxEt.jpeg', 'images/product_image/smallIoxEt.jpeg', 'images/product_image/mediumIoxEt.jpeg', 'images/product_image/largeIoxEt.jpeg', NULL, NULL, '', 1, '2025-07-24 10:48:05', '2025-07-24 10:48:05'),
(47, 8, 1, 'shama rice', 'shama-rice', '', '', 0.00, 100.00, NULL, 0.00, 13, 1, 0, 0, 0, NULL, NULL, 'shama rice', 'shama rice', 'shama rice', 'images/product_image/XutTR.jpeg', 'images/product_image/thumbXutTR.jpeg', 'images/product_image/smallXutTR.jpeg', 'images/product_image/mediumXutTR.jpeg', 'images/product_image/largeXutTR.jpeg', NULL, NULL, '', 1, '2025-07-24 10:49:20', '2025-07-27 16:35:43'),
(48, 9, 1, 'moringa powder', 'moringa-powder', '', '', 0.00, 75.00, NULL, 0.00, 14, 0, 0, 0, 0, NULL, NULL, 'moringa powder', 'moringa powder', 'moringa powder', 'images/product_image/Lmt8c.jpeg', 'images/product_image/thumbLmt8c.jpeg', 'images/product_image/smallLmt8c.jpeg', 'images/product_image/mediumLmt8c.jpeg', 'images/product_image/largeLmt8c.jpeg', NULL, NULL, '', 1, '2025-07-24 10:51:11', '2025-07-24 10:51:11'),
(49, 10, 1, 'dried ginger', 'dried-ginger', '', '', 0.00, 50.00, NULL, 0.00, 22, 0, 0, 0, 0, NULL, NULL, 'dried ginger', 'dried ginger', 'dried ginger', 'images/product_image/b7tll.jpeg', 'images/product_image/thumbb7tll.jpeg', 'images/product_image/smallb7tll.jpeg', 'images/product_image/mediumb7tll.jpeg', 'images/product_image/largeb7tll.jpeg', NULL, NULL, '', 1, '2025-07-24 10:52:59', '2025-07-24 10:52:59'),
(50, 11, 1, 'sandhab salt', 'sandhab-salt', '', '', 0.00, 80.00, NULL, 0.00, 22, 1, 0, 0, 0, NULL, NULL, 'sandhab salt', 'sandhab salt', 'sandhab salt', 'images/product_image/U3Zmw.jpeg', 'images/product_image/thumbU3Zmw.jpeg', 'images/product_image/smallU3Zmw.jpeg', 'images/product_image/mediumU3Zmw.jpeg', 'images/product_image/largeU3Zmw.jpeg', NULL, NULL, '', 1, '2025-07-24 10:54:40', '2025-07-26 09:09:42'),
(51, 12, 1, 'bit salt', 'bit-salt', '', '', 0.00, 60.00, NULL, 0.00, 41, 1, 0, 0, 0, NULL, NULL, 'bit salt', 'bit salt', 'bit salt', 'images/product_image/kEjvZ.jpeg', 'images/product_image/thumbkEjvZ.jpeg', 'images/product_image/smallkEjvZ.jpeg', 'images/product_image/mediumkEjvZ.jpeg', 'images/product_image/largekEjvZ.jpeg', NULL, NULL, '', 1, '2025-07-24 10:56:14', '2025-07-24 13:42:01'),
(52, 13, 1, 'holud gura 250g', 'holud-gura-250g', '', '', 0.00, 125.00, NULL, 0.00, 10, 1, 0, 0, 0, NULL, NULL, 'holud gura 250g', 'holud gura 250g', 'holud gura 250g', 'images/product_image/a4k3A.jpeg', 'images/product_image/thumba4k3A.jpeg', 'images/product_image/smalla4k3A.jpeg', 'images/product_image/mediuma4k3A.jpeg', 'images/product_image/largea4k3A.jpeg', NULL, NULL, '', 1, '2025-07-24 10:58:04', '2025-07-25 10:45:06'),
(53, 14, 1, 'holud gura 125g', 'holud-gura-125g', '', '', 0.00, 75.00, NULL, 0.00, 28, 0, 0, 0, 0, NULL, NULL, 'holud gura 125g', 'holud gura 125g', 'holud gura 125g', 'images/product_image/SeFh7.jpeg', 'images/product_image/thumbSeFh7.jpeg', 'images/product_image/smallSeFh7.jpeg', 'images/product_image/mediumSeFh7.jpeg', 'images/product_image/largeSeFh7.jpeg', NULL, NULL, '', 1, '2025-07-24 11:00:20', '2025-07-24 11:00:20'),
(54, 15, 1, 'akadashi mashala 1', 'akadashi-mashala-1', '', '', 0.00, 150.00, NULL, 0.00, 9, 0, 0, 0, 0, NULL, NULL, 'akadashi mashala', 'akadashi mashala', 'akadashi mashala', 'images/product_image/NoCkR.jpeg', 'images/product_image/thumbNoCkR.jpeg', 'images/product_image/smallNoCkR.jpeg', 'images/product_image/mediumNoCkR.jpeg', 'images/product_image/largeNoCkR.jpeg', NULL, NULL, '', 1, '2025-07-24 11:02:42', '2025-07-24 11:02:42'),
(55, 16, 1, 'akadashi mashla', 'akadashi-mashla', '', '', 0.00, 120.00, NULL, 0.00, 43, 0, 0, 0, 0, NULL, NULL, 'akadashi mshala', 'akadashi mashala', 'akadashi mashla', 'images/product_image/De6al.jpeg', 'images/product_image/thumbDe6al.jpeg', 'images/product_image/smallDe6al.jpeg', 'images/product_image/mediumDe6al.jpeg', 'images/product_image/largeDe6al.jpeg', NULL, NULL, '', 1, '2025-07-24 11:04:51', '2025-07-24 11:04:51'),
(56, 17, 1, 'dhaniya gura 150g', 'dhaniya-gura-150g', '', '', 0.00, 55.00, NULL, 0.00, 18, 0, 0, 0, 0, NULL, NULL, 'dhaniya gura 150g', 'dhaniya gura 150g', 'dhaniya gura 150g', 'images/product_image/2GdAZ.jpeg', 'images/product_image/thumb2GdAZ.jpeg', 'images/product_image/small2GdAZ.jpeg', 'images/product_image/medium2GdAZ.jpeg', 'images/product_image/large2GdAZ.jpeg', NULL, NULL, '', 1, '2025-07-24 11:06:50', '2025-07-24 11:06:50'),
(57, 18, 1, 'alu cips jhuri', 'alu-cips-jhuri', '', '', 0.00, 50.00, NULL, 0.00, 19, 1, 0, 0, 0, NULL, NULL, 'alu cips jhuri', 'alu cips churi', 'alu cips jhuri', 'images/product_image/hWG4A.jpeg', 'images/product_image/thumbhWG4A.jpeg', 'images/product_image/smallhWG4A.jpeg', 'images/product_image/mediumhWG4A.jpeg', 'images/product_image/largehWG4A.jpeg', NULL, NULL, '', 1, '2025-07-24 11:08:55', '2025-07-25 10:45:06'),
(58, 19, 1, 'alu cips jhuri boro', 'alu-cips-jhuri-boro', '', '', 0.00, 100.00, NULL, 0.00, 8, 0, 0, 0, 0, NULL, NULL, 'alu cips jhuri boro', 'alu cips jhuri boro', 'alu cips jhuri boro', 'images/product_image/73URD.jpeg', 'images/product_image/thumb73URD.jpeg', 'images/product_image/small73URD.jpeg', 'images/product_image/medium73URD.jpeg', 'images/product_image/large73URD.jpeg', NULL, NULL, '', 1, '2025-07-24 11:10:34', '2025-07-24 11:10:34'),
(59, 20, 1, 'alu cips boro', 'alu-cips-boro', '', '', 0.00, 100.00, NULL, 0.00, 20, 2, 0, 0, 0, NULL, NULL, 'alu cips boro', 'alu ciips boro', 'alu cips boro', 'images/product_image/MJ0yV.jpeg', 'images/product_image/thumbMJ0yV.jpeg', 'images/product_image/smallMJ0yV.jpeg', 'images/product_image/mediumMJ0yV.jpeg', 'images/product_image/largeMJ0yV.jpeg', NULL, NULL, '', 1, '2025-07-24 11:11:52', '2025-07-28 15:04:39'),
(60, 21, 1, 'alu cips vaja', 'alu-cips-vaja', '', '', 0.00, 120.00, NULL, 0.00, 15, 0, 0, 0, 0, NULL, NULL, 'alu cips vaja', 'alu cips vaja', 'alu cips vaja', 'images/product_image/X2hnS.jpeg', 'images/product_image/thumbX2hnS.jpeg', 'images/product_image/smallX2hnS.jpeg', 'images/product_image/mediumX2hnS.jpeg', 'images/product_image/largeX2hnS.jpeg', NULL, NULL, '', 1, '2025-07-24 11:13:08', '2025-07-24 11:13:08'),
(61, 22, 1, 'ata', 'ata', '', '', 0.00, 80.00, NULL, 0.00, 8, 0, 0, 0, 0, NULL, NULL, 'ata', 'ata', 'ata', 'images/product_image/RvK5p.jpeg', 'images/product_image/thumbRvK5p.jpeg', 'images/product_image/smallRvK5p.jpeg', 'images/product_image/mediumRvK5p.jpeg', 'images/product_image/largeRvK5p.jpeg', NULL, NULL, '', 1, '2025-07-24 11:13:59', '2025-07-24 11:13:59'),
(62, 23, 1, 'ghee 500g', 'ghee-500g', '', '', 0.00, 750.00, NULL, 0.00, 19, 0, 0, 0, 0, NULL, NULL, 'ghee 500g', 'ghee 500g', 'ghee 500g', 'images/product_image/HLtN7.jpeg', 'images/product_image/thumbHLtN7.jpeg', 'images/product_image/smallHLtN7.jpeg', 'images/product_image/mediumHLtN7.jpeg', 'images/product_image/largeHLtN7.jpeg', NULL, NULL, '', 1, '2025-07-24 11:15:47', '2025-07-24 11:15:47'),
(63, 51, 1, 'cips choto', 'cips-choto', NULL, NULL, NULL, 10.00, NULL, 0.00, 104, 26, 0, NULL, NULL, NULL, NULL, 'cips vaja', 'cips vaja choto', 'cips vaja choto', 'images/product_image/JpAal.jpeg', 'images/product_image/thumbJpAal.jpeg', 'images/product_image/smallJpAal.jpeg', 'images/product_image/mediumJpAal.jpeg', 'images/product_image/largeJpAal.jpeg', NULL, NULL, '', 1, '2025-07-24 11:31:17', '2025-07-28 10:39:33'),
(64, 51, 1, 'krishnakoli biscuit', 'krishnakoli-biscuit', '', '', 0.00, 70.00, NULL, 0.00, 81, 6, 0, 0, 0, NULL, NULL, 'krishnakoli biscuit', 'krishnakoli biscuit', 'krishnakoli biscuit', 'images/product_image/loMJT.jpeg', 'images/product_image/thumbloMJT.jpeg', 'images/product_image/smallloMJT.jpeg', 'images/product_image/mediumloMJT.jpeg', 'images/product_image/largeloMJT.jpeg', NULL, NULL, '', 1, '2025-07-24 19:06:30', '2025-07-28 16:51:46'),
(65, 51, 1, 'plane stost choto', 'plane-stost-choto', '', '', 0.00, 40.00, NULL, 0.00, 137, 15, 0, 0, 0, NULL, NULL, 'plane stost choto', 'plane stost choto', 'plane stost choto', 'images/product_image/dnnje.jpeg', 'images/product_image/thumbdnnje.jpeg', 'images/product_image/smalldnnje.jpeg', 'images/product_image/mediumdnnje.jpeg', 'images/product_image/largednnje.jpeg', NULL, NULL, '', 1, '2025-07-24 19:14:45', '2025-07-29 17:07:28'),
(66, 52, 1, 'plane stost boro', 'plane-stost-boro', '', '', 0.00, 80.00, NULL, 0.00, 35, 5, 0, 0, 0, NULL, NULL, 'plane stost boro', 'plane stost boro', 'plane stost boro', 'images/product_image/eNHlg.jpeg', 'images/product_image/thumbeNHlg.jpeg', 'images/product_image/smalleNHlg.jpeg', 'images/product_image/mediumeNHlg.jpeg', 'images/product_image/largeeNHlg.jpeg', NULL, NULL, '', 1, '2025-07-24 19:16:11', '2025-07-27 18:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_brands`
--

CREATE TABLE `product_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(25, 25, 2, '2025-07-17 18:55:23', '2025-07-17 18:55:23'),
(56, 27, 1, '2025-07-23 10:13:58', '2025-07-23 10:13:58'),
(63, 8, 1, '2025-07-23 18:17:04', '2025-07-23 18:17:04'),
(65, 11, 1, '2025-07-23 18:28:48', '2025-07-23 18:28:48'),
(66, 10, 1, '2025-07-23 18:29:15', '2025-07-23 18:29:15'),
(71, 24, 1, '2025-07-23 18:36:17', '2025-07-23 18:36:17'),
(74, 34, 1, '2025-07-23 18:41:59', '2025-07-23 18:41:59'),
(76, 17, 1, '2025-07-23 18:43:55', '2025-07-23 18:43:55'),
(77, 15, 1, '2025-07-23 18:44:36', '2025-07-23 18:44:36'),
(78, 16, 1, '2025-07-23 18:45:02', '2025-07-23 18:45:02'),
(81, 18, 1, '2025-07-23 18:50:09', '2025-07-23 18:50:09'),
(82, 12, 1, '2025-07-23 18:50:49', '2025-07-23 18:50:49'),
(83, 37, 1, '2025-07-23 18:53:54', '2025-07-23 18:53:54'),
(84, 19, 1, '2025-07-23 18:56:16', '2025-07-23 18:56:16'),
(85, 21, 1, '2025-07-23 18:57:05', '2025-07-23 18:57:05'),
(86, 23, 1, '2025-07-23 18:57:47', '2025-07-23 18:57:47'),
(87, 38, 1, '2025-07-23 19:00:20', '2025-07-23 19:00:20'),
(89, 22, 1, '2025-07-23 19:01:13', '2025-07-23 19:01:13'),
(94, 3, 1, '2025-07-23 19:04:17', '2025-07-23 19:04:17'),
(95, 4, 1, '2025-07-23 19:04:42', '2025-07-23 19:04:42'),
(96, 39, 1, '2025-07-23 19:11:25', '2025-07-23 19:11:25'),
(97, 40, 1, '2025-07-23 19:12:39', '2025-07-23 19:12:39'),
(98, 26, 1, '2025-07-23 19:14:08', '2025-07-23 19:14:08'),
(99, 41, 2, '2025-07-24 10:39:54', '2025-07-24 10:39:54'),
(100, 42, 2, '2025-07-24 10:41:30', '2025-07-24 10:41:30'),
(101, 43, 2, '2025-07-24 10:43:49', '2025-07-24 10:43:49'),
(102, 44, 2, '2025-07-24 10:45:43', '2025-07-24 10:45:43'),
(103, 45, 2, '2025-07-24 10:47:12', '2025-07-24 10:47:12'),
(104, 46, 2, '2025-07-24 10:48:05', '2025-07-24 10:48:05'),
(105, 47, 2, '2025-07-24 10:49:20', '2025-07-24 10:49:20'),
(106, 48, 2, '2025-07-24 10:51:11', '2025-07-24 10:51:11'),
(107, 49, 2, '2025-07-24 10:52:59', '2025-07-24 10:52:59'),
(108, 50, 2, '2025-07-24 10:54:40', '2025-07-24 10:54:40'),
(109, 51, 2, '2025-07-24 10:56:14', '2025-07-24 10:56:14'),
(110, 52, 2, '2025-07-24 10:58:04', '2025-07-24 10:58:04'),
(111, 53, 2, '2025-07-24 11:00:20', '2025-07-24 11:00:20'),
(112, 54, 2, '2025-07-24 11:02:42', '2025-07-24 11:02:42'),
(113, 55, 2, '2025-07-24 11:04:51', '2025-07-24 11:04:51'),
(114, 56, 2, '2025-07-24 11:06:50', '2025-07-24 11:06:50'),
(115, 57, 2, '2025-07-24 11:08:55', '2025-07-24 11:08:55'),
(116, 58, 2, '2025-07-24 11:10:34', '2025-07-24 11:10:34'),
(117, 59, 2, '2025-07-24 11:11:52', '2025-07-24 11:11:52'),
(118, 60, 2, '2025-07-24 11:13:08', '2025-07-24 11:13:08'),
(119, 61, 2, '2025-07-24 11:13:59', '2025-07-24 11:13:59'),
(120, 62, 2, '2025-07-24 11:15:47', '2025-07-24 11:15:47'),
(125, 20, 1, '2025-07-24 19:03:11', '2025-07-24 19:03:11'),
(126, 64, 1, '2025-07-24 19:06:30', '2025-07-24 19:06:30'),
(127, 1, 1, '2025-07-24 19:07:25', '2025-07-24 19:07:25'),
(128, 65, 1, '2025-07-24 19:14:46', '2025-07-24 19:14:46'),
(129, 66, 1, '2025-07-24 19:16:11', '2025-07-24 19:16:11'),
(130, 28, 1, '2025-07-24 19:17:54', '2025-07-24 19:17:54'),
(131, 29, 1, '2025-07-24 19:18:51', '2025-07-24 19:18:51'),
(132, 31, 1, '2025-07-24 19:20:09', '2025-07-24 19:20:09'),
(133, 30, 1, '2025-07-24 19:21:00', '2025-07-24 19:21:00'),
(134, 32, 1, '2025-07-24 19:22:27', '2025-07-24 19:22:27'),
(135, 13, 1, '2025-07-24 19:23:14', '2025-07-24 19:23:14'),
(136, 33, 1, '2025-07-24 19:24:22', '2025-07-24 19:24:22'),
(137, 2, 1, '2025-07-24 19:25:22', '2025-07-24 19:25:22'),
(138, 6, 1, '2025-07-24 19:26:13', '2025-07-24 19:26:13'),
(139, 5, 1, '2025-07-24 19:27:01', '2025-07-24 19:27:01'),
(140, 7, 1, '2025-07-24 19:28:01', '2025-07-24 19:28:01'),
(141, 63, 1, '2025-07-24 19:28:45', '2025-07-24 19:28:45'),
(142, 9, 1, '2025-07-24 19:30:06', '2025-07-24 19:30:06'),
(143, 14, 1, '2025-07-24 19:30:44', '2025-07-24 19:30:44'),
(144, 35, 1, '2025-07-24 19:31:37', '2025-07-24 19:31:37'),
(145, 36, 1, '2025-07-24 19:32:46', '2025-07-24 19:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_high_lights`
--

CREATE TABLE `product_high_lights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `highlights` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_image` varchar(191) DEFAULT NULL,
  `product_image_alt` varchar(191) DEFAULT NULL,
  `product_image_des` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(28, 25, 1, '2025-07-17 18:55:23', '2025-07-17 18:55:23'),
(60, 27, 1, '2025-07-23 10:13:58', '2025-07-23 10:13:58'),
(67, 8, 2, '2025-07-23 18:17:04', '2025-07-23 18:17:04'),
(69, 11, 4, '2025-07-23 18:28:48', '2025-07-23 18:28:48'),
(70, 10, 2, '2025-07-23 18:29:15', '2025-07-23 18:29:15'),
(76, 24, 1, '2025-07-23 18:36:17', '2025-07-23 18:36:17'),
(79, 34, 1, '2025-07-23 18:41:59', '2025-07-23 18:41:59'),
(81, 17, 1, '2025-07-23 18:43:55', '2025-07-23 18:43:55'),
(82, 15, 1, '2025-07-23 18:44:36', '2025-07-23 18:44:36'),
(83, 16, 1, '2025-07-23 18:45:02', '2025-07-23 18:45:02'),
(86, 18, 1, '2025-07-23 18:50:09', '2025-07-23 18:50:09'),
(87, 12, 1, '2025-07-23 18:50:49', '2025-07-23 18:50:49'),
(88, 37, 1, '2025-07-23 18:53:54', '2025-07-23 18:53:54'),
(89, 19, 1, '2025-07-23 18:56:16', '2025-07-23 18:56:16'),
(90, 21, 1, '2025-07-23 18:57:05', '2025-07-23 18:57:05'),
(91, 23, 1, '2025-07-23 18:57:47', '2025-07-23 18:57:47'),
(92, 38, 1, '2025-07-23 19:00:20', '2025-07-23 19:00:20'),
(94, 22, 1, '2025-07-23 19:01:13', '2025-07-23 19:01:13'),
(99, 3, 2, '2025-07-23 19:04:17', '2025-07-23 19:04:17'),
(100, 4, 2, '2025-07-23 19:04:42', '2025-07-23 19:04:42'),
(101, 39, 1, '2025-07-23 19:11:25', '2025-07-23 19:11:25'),
(102, 40, 1, '2025-07-23 19:12:39', '2025-07-23 19:12:39'),
(103, 26, 4, '2025-07-23 19:14:08', '2025-07-23 19:14:08'),
(104, 41, 1, '2025-07-24 10:39:54', '2025-07-24 10:39:54'),
(105, 42, 1, '2025-07-24 10:41:30', '2025-07-24 10:41:30'),
(106, 43, 1, '2025-07-24 10:43:49', '2025-07-24 10:43:49'),
(107, 44, 1, '2025-07-24 10:45:43', '2025-07-24 10:45:43'),
(108, 45, 1, '2025-07-24 10:47:12', '2025-07-24 10:47:12'),
(109, 46, 1, '2025-07-24 10:48:05', '2025-07-24 10:48:05'),
(110, 47, 1, '2025-07-24 10:49:20', '2025-07-24 10:49:20'),
(111, 48, 1, '2025-07-24 10:51:11', '2025-07-24 10:51:11'),
(112, 49, 1, '2025-07-24 10:52:59', '2025-07-24 10:52:59'),
(113, 50, 1, '2025-07-24 10:54:40', '2025-07-24 10:54:40'),
(114, 51, 1, '2025-07-24 10:56:14', '2025-07-24 10:56:14'),
(115, 52, 1, '2025-07-24 10:58:04', '2025-07-24 10:58:04'),
(116, 53, 1, '2025-07-24 11:00:20', '2025-07-24 11:00:20'),
(117, 54, 1, '2025-07-24 11:02:42', '2025-07-24 11:02:42'),
(118, 55, 1, '2025-07-24 11:04:51', '2025-07-24 11:04:51'),
(119, 56, 1, '2025-07-24 11:06:50', '2025-07-24 11:06:50'),
(120, 57, 1, '2025-07-24 11:08:55', '2025-07-24 11:08:55'),
(121, 58, 1, '2025-07-24 11:10:34', '2025-07-24 11:10:34'),
(122, 59, 1, '2025-07-24 11:11:52', '2025-07-24 11:11:52'),
(123, 60, 1, '2025-07-24 11:13:08', '2025-07-24 11:13:08'),
(124, 61, 1, '2025-07-24 11:13:59', '2025-07-24 11:13:59'),
(125, 62, 1, '2025-07-24 11:15:47', '2025-07-24 11:15:47'),
(130, 20, 1, '2025-07-24 19:03:12', '2025-07-24 19:03:12'),
(131, 64, 1, '2025-07-24 19:06:30', '2025-07-24 19:06:30'),
(132, 1, 4, '2025-07-24 19:07:25', '2025-07-24 19:07:25'),
(133, 65, 1, '2025-07-24 19:14:46', '2025-07-24 19:14:46'),
(134, 66, 1, '2025-07-24 19:16:11', '2025-07-24 19:16:11'),
(135, 28, 1, '2025-07-24 19:17:55', '2025-07-24 19:17:55'),
(136, 29, 1, '2025-07-24 19:18:51', '2025-07-24 19:18:51'),
(137, 31, 1, '2025-07-24 19:20:09', '2025-07-24 19:20:09'),
(138, 30, 1, '2025-07-24 19:21:01', '2025-07-24 19:21:01'),
(139, 32, 1, '2025-07-24 19:22:27', '2025-07-24 19:22:27'),
(140, 13, 2, '2025-07-24 19:23:14', '2025-07-24 19:23:14'),
(141, 33, 1, '2025-07-24 19:24:22', '2025-07-24 19:24:22'),
(142, 2, 1, '2025-07-24 19:25:22', '2025-07-24 19:25:22'),
(143, 6, 2, '2025-07-24 19:26:13', '2025-07-24 19:26:13'),
(144, 5, 1, '2025-07-24 19:27:01', '2025-07-24 19:27:01'),
(145, 7, 1, '2025-07-24 19:28:01', '2025-07-24 19:28:01'),
(146, 63, 1, '2025-07-24 19:28:45', '2025-07-24 19:28:45'),
(147, 9, 1, '2025-07-24 19:30:06', '2025-07-24 19:30:06'),
(148, 14, 1, '2025-07-24 19:30:44', '2025-07-24 19:30:44'),
(149, 14, 2, '2025-07-24 19:30:44', '2025-07-24 19:30:44'),
(150, 35, 1, '2025-07-24 19:31:37', '2025-07-24 19:31:37'),
(151, 36, 1, '2025-07-24 19:32:46', '2025-07-24 19:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `specification` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stock_statuses`
--

CREATE TABLE `product_stock_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock_status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stock_statuses`
--

INSERT INTO `product_stock_statuses` (`id`, `product_id`, `stock_status`, `created_at`, `updated_at`) VALUES
(25, 25, 'New Arrived', '2025-07-17 18:55:23', '2025-07-17 18:55:23'),
(57, 27, 'Upcoming', '2025-07-23 10:13:58', '2025-07-23 10:13:58'),
(64, 8, 'Limited', '2025-07-23 18:17:04', '2025-07-23 18:17:04'),
(66, 11, 'Limited', '2025-07-23 18:28:49', '2025-07-23 18:28:49'),
(67, 10, 'Limited', '2025-07-23 18:29:15', '2025-07-23 18:29:15'),
(72, 24, 'Limited', '2025-07-23 18:36:17', '2025-07-23 18:36:17'),
(75, 34, 'Limited', '2025-07-23 18:41:59', '2025-07-23 18:41:59'),
(77, 17, 'Limited', '2025-07-23 18:43:55', '2025-07-23 18:43:55'),
(78, 15, 'Limited', '2025-07-23 18:44:36', '2025-07-23 18:44:36'),
(79, 16, 'Limited', '2025-07-23 18:45:02', '2025-07-23 18:45:02'),
(82, 18, 'Limited', '2025-07-23 18:50:09', '2025-07-23 18:50:09'),
(83, 12, 'Limited', '2025-07-23 18:50:49', '2025-07-23 18:50:49'),
(84, 37, 'Limited', '2025-07-23 18:53:54', '2025-07-23 18:53:54'),
(85, 19, 'Limited', '2025-07-23 18:56:16', '2025-07-23 18:56:16'),
(86, 21, 'Limited', '2025-07-23 18:57:05', '2025-07-23 18:57:05'),
(87, 23, 'Limited', '2025-07-23 18:57:47', '2025-07-23 18:57:47'),
(88, 38, 'Limited', '2025-07-23 19:00:21', '2025-07-23 19:00:21'),
(90, 22, 'Limited', '2025-07-23 19:01:13', '2025-07-23 19:01:13'),
(95, 3, 'New Arrived', '2025-07-23 19:04:18', '2025-07-23 19:04:18'),
(96, 4, 'New Arrived', '2025-07-23 19:04:42', '2025-07-23 19:04:42'),
(97, 39, 'Limited', '2025-07-23 19:11:25', '2025-07-23 19:11:25'),
(98, 40, 'Limited', '2025-07-23 19:12:39', '2025-07-23 19:12:39'),
(99, 26, 'New Arrived', '2025-07-23 19:14:08', '2025-07-23 19:14:08'),
(100, 41, 'Limited', '2025-07-24 10:39:54', '2025-07-24 10:39:54'),
(101, 42, 'Limited', '2025-07-24 10:41:30', '2025-07-24 10:41:30'),
(102, 43, 'Limited', '2025-07-24 10:43:49', '2025-07-24 10:43:49'),
(103, 44, 'Limited', '2025-07-24 10:45:43', '2025-07-24 10:45:43'),
(104, 45, 'Limited', '2025-07-24 10:47:12', '2025-07-24 10:47:12'),
(105, 46, 'Limited', '2025-07-24 10:48:05', '2025-07-24 10:48:05'),
(106, 47, 'Limited', '2025-07-24 10:49:20', '2025-07-24 10:49:20'),
(107, 48, 'Limited', '2025-07-24 10:51:11', '2025-07-24 10:51:11'),
(108, 49, 'Limited', '2025-07-24 10:52:59', '2025-07-24 10:52:59'),
(109, 50, 'Limited', '2025-07-24 10:54:40', '2025-07-24 10:54:40'),
(110, 51, 'Limited', '2025-07-24 10:56:14', '2025-07-24 10:56:14'),
(111, 52, 'Limited', '2025-07-24 10:58:04', '2025-07-24 10:58:04'),
(112, 53, 'Limited', '2025-07-24 11:00:20', '2025-07-24 11:00:20'),
(113, 54, 'Limited', '2025-07-24 11:02:42', '2025-07-24 11:02:42'),
(114, 55, 'Limited', '2025-07-24 11:04:51', '2025-07-24 11:04:51'),
(115, 56, 'Limited', '2025-07-24 11:06:50', '2025-07-24 11:06:50'),
(116, 57, 'Limited', '2025-07-24 11:08:55', '2025-07-24 11:08:55'),
(117, 58, 'Limited', '2025-07-24 11:10:34', '2025-07-24 11:10:34'),
(118, 59, 'Limited', '2025-07-24 11:11:52', '2025-07-24 11:11:52'),
(119, 60, 'Limited', '2025-07-24 11:13:08', '2025-07-24 11:13:08'),
(120, 61, 'Limited', '2025-07-24 11:13:59', '2025-07-24 11:13:59'),
(121, 62, 'Limited', '2025-07-24 11:15:47', '2025-07-24 11:15:47'),
(126, 20, 'Limited', '2025-07-24 19:03:12', '2025-07-24 19:03:12'),
(127, 64, 'New Arrived', '2025-07-24 19:06:30', '2025-07-24 19:06:30'),
(128, 1, 'New Arrived', '2025-07-24 19:07:25', '2025-07-24 19:07:25'),
(129, 65, 'Limited', '2025-07-24 19:14:46', '2025-07-24 19:14:46'),
(130, 66, 'Limited', '2025-07-24 19:16:12', '2025-07-24 19:16:12'),
(131, 28, 'Upcoming', '2025-07-24 19:17:56', '2025-07-24 19:17:56'),
(132, 29, 'Upcoming', '2025-07-24 19:18:51', '2025-07-24 19:18:51'),
(133, 31, 'Upcoming', '2025-07-24 19:20:09', '2025-07-24 19:20:09'),
(134, 30, 'Upcoming', '2025-07-24 19:21:01', '2025-07-24 19:21:01'),
(135, 32, 'Upcoming', '2025-07-24 19:22:27', '2025-07-24 19:22:27'),
(136, 13, 'Limited', '2025-07-24 19:23:16', '2025-07-24 19:23:16'),
(137, 33, 'Limited', '2025-07-24 19:24:22', '2025-07-24 19:24:22'),
(138, 2, 'New Arrived', '2025-07-24 19:25:24', '2025-07-24 19:25:24'),
(139, 6, 'Limited', '2025-07-24 19:26:14', '2025-07-24 19:26:14'),
(140, 5, 'New Arrived', '2025-07-24 19:27:01', '2025-07-24 19:27:01'),
(141, 7, 'Limited', '2025-07-24 19:28:01', '2025-07-24 19:28:01'),
(142, 63, 'Limited', '2025-07-24 19:28:45', '2025-07-24 19:28:45'),
(143, 9, 'Limited', '2025-07-24 19:30:06', '2025-07-24 19:30:06'),
(144, 14, 'Limited', '2025-07-24 19:30:44', '2025-07-24 19:30:44'),
(145, 35, 'Limited', '2025-07-24 19:31:37', '2025-07-24 19:31:37'),
(146, 36, 'Limited', '2025-07-24 19:32:46', '2025-07-24 19:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `product_terms`
--

CREATE TABLE `product_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `terms` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_units`
--

CREATE TABLE `product_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_units`
--

INSERT INTO `product_units` (`id`, `product_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(25, 25, 1, '2025-07-17 18:55:23', '2025-07-17 18:55:23'),
(56, 27, 2, '2025-07-23 10:13:58', '2025-07-23 10:13:58'),
(63, 8, 2, '2025-07-23 18:17:04', '2025-07-23 18:17:04'),
(65, 11, 2, '2025-07-23 18:28:48', '2025-07-23 18:28:48'),
(66, 10, 2, '2025-07-23 18:29:15', '2025-07-23 18:29:15'),
(71, 24, 2, '2025-07-23 18:36:17', '2025-07-23 18:36:17'),
(74, 34, 2, '2025-07-23 18:41:59', '2025-07-23 18:41:59'),
(76, 17, 2, '2025-07-23 18:43:55', '2025-07-23 18:43:55'),
(77, 15, 2, '2025-07-23 18:44:36', '2025-07-23 18:44:36'),
(78, 16, 2, '2025-07-23 18:45:02', '2025-07-23 18:45:02'),
(81, 18, 2, '2025-07-23 18:50:09', '2025-07-23 18:50:09'),
(82, 12, 2, '2025-07-23 18:50:49', '2025-07-23 18:50:49'),
(83, 37, 2, '2025-07-23 18:53:54', '2025-07-23 18:53:54'),
(84, 19, 2, '2025-07-23 18:56:16', '2025-07-23 18:56:16'),
(85, 21, 2, '2025-07-23 18:57:05', '2025-07-23 18:57:05'),
(86, 23, 2, '2025-07-23 18:57:47', '2025-07-23 18:57:47'),
(87, 38, 2, '2025-07-23 19:00:21', '2025-07-23 19:00:21'),
(89, 22, 2, '2025-07-23 19:01:13', '2025-07-23 19:01:13'),
(94, 3, 2, '2025-07-23 19:04:18', '2025-07-23 19:04:18'),
(95, 4, 2, '2025-07-23 19:04:42', '2025-07-23 19:04:42'),
(96, 39, 2, '2025-07-23 19:11:25', '2025-07-23 19:11:25'),
(97, 40, 2, '2025-07-23 19:12:39', '2025-07-23 19:12:39'),
(98, 26, 2, '2025-07-23 19:14:08', '2025-07-23 19:14:08'),
(99, 41, 1, '2025-07-24 10:39:54', '2025-07-24 10:39:54'),
(100, 42, 2, '2025-07-24 10:41:30', '2025-07-24 10:41:30'),
(101, 43, 2, '2025-07-24 10:43:49', '2025-07-24 10:43:49'),
(102, 44, 2, '2025-07-24 10:45:43', '2025-07-24 10:45:43'),
(103, 45, 2, '2025-07-24 10:47:12', '2025-07-24 10:47:12'),
(104, 46, 2, '2025-07-24 10:48:05', '2025-07-24 10:48:05'),
(105, 47, 2, '2025-07-24 10:49:20', '2025-07-24 10:49:20'),
(106, 48, 2, '2025-07-24 10:51:11', '2025-07-24 10:51:11'),
(107, 49, 2, '2025-07-24 10:52:59', '2025-07-24 10:52:59'),
(108, 50, 2, '2025-07-24 10:54:40', '2025-07-24 10:54:40'),
(109, 51, 2, '2025-07-24 10:56:14', '2025-07-24 10:56:14'),
(110, 52, 2, '2025-07-24 10:58:04', '2025-07-24 10:58:04'),
(111, 53, 2, '2025-07-24 11:00:20', '2025-07-24 11:00:20'),
(112, 54, 2, '2025-07-24 11:02:42', '2025-07-24 11:02:42'),
(113, 55, 2, '2025-07-24 11:04:51', '2025-07-24 11:04:51'),
(114, 56, 2, '2025-07-24 11:06:50', '2025-07-24 11:06:50'),
(115, 57, 1, '2025-07-24 11:08:55', '2025-07-24 11:08:55'),
(116, 58, 2, '2025-07-24 11:10:34', '2025-07-24 11:10:34'),
(117, 59, 2, '2025-07-24 11:11:52', '2025-07-24 11:11:52'),
(118, 60, 2, '2025-07-24 11:13:08', '2025-07-24 11:13:08'),
(119, 61, 2, '2025-07-24 11:13:59', '2025-07-24 11:13:59'),
(120, 62, 1, '2025-07-24 11:15:47', '2025-07-24 11:15:47'),
(125, 20, 2, '2025-07-24 19:03:12', '2025-07-24 19:03:12'),
(126, 64, 2, '2025-07-24 19:06:30', '2025-07-24 19:06:30'),
(127, 1, 2, '2025-07-24 19:07:25', '2025-07-24 19:07:25'),
(128, 65, 2, '2025-07-24 19:14:46', '2025-07-24 19:14:46'),
(129, 66, 2, '2025-07-24 19:16:12', '2025-07-24 19:16:12'),
(130, 28, 2, '2025-07-24 19:17:55', '2025-07-24 19:17:55'),
(131, 29, 2, '2025-07-24 19:18:51', '2025-07-24 19:18:51'),
(132, 31, 2, '2025-07-24 19:20:09', '2025-07-24 19:20:09'),
(133, 30, 2, '2025-07-24 19:21:01', '2025-07-24 19:21:01'),
(134, 32, 2, '2025-07-24 19:22:27', '2025-07-24 19:22:27'),
(135, 13, 2, '2025-07-24 19:23:14', '2025-07-24 19:23:14'),
(136, 33, 2, '2025-07-24 19:24:22', '2025-07-24 19:24:22'),
(137, 2, 2, '2025-07-24 19:25:23', '2025-07-24 19:25:23'),
(138, 6, 2, '2025-07-24 19:26:13', '2025-07-24 19:26:13'),
(139, 5, 2, '2025-07-24 19:27:01', '2025-07-24 19:27:01'),
(140, 7, 2, '2025-07-24 19:28:01', '2025-07-24 19:28:01'),
(141, 63, 2, '2025-07-24 19:28:45', '2025-07-24 19:28:45'),
(142, 9, 2, '2025-07-24 19:30:06', '2025-07-24 19:30:06'),
(143, 14, 2, '2025-07-24 19:30:44', '2025-07-24 19:30:44'),
(144, 35, 2, '2025-07-24 19:31:37', '2025-07-24 19:31:37'),
(145, 36, 2, '2025-07-24 19:32:46', '2025-07-24 19:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `website` varchar(191) DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resturants`
--

CREATE TABLE `resturants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `opening_time` varchar(191) DEFAULT NULL,
  `delivery_hours` varchar(191) DEFAULT NULL,
  `open_closed` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `cover_image` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_des` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_role` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `password_str` varchar(255) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `start_price` decimal(15,2) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `s_fname` varchar(191) DEFAULT NULL,
  `s_lname` varchar(191) DEFAULT NULL,
  `s_address` varchar(191) DEFAULT NULL,
  `s_address2` varchar(191) DEFAULT NULL,
  `s_city` varchar(191) DEFAULT NULL,
  `s_zipcode` varchar(191) DEFAULT NULL,
  `s_phone` varchar(191) DEFAULT NULL,
  `s_email` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siteinfos`
--

CREATE TABLE `siteinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(191) DEFAULT NULL,
  `subscribe_title` text DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `site_owner_number` varchar(255) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `shipping_charge` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `happy_cutomers` int(11) DEFAULT NULL,
  `completed_projects` int(11) DEFAULT NULL,
  `footer_description` text DEFAULT NULL,
  `welcome_resturant_image` varchar(255) DEFAULT NULL,
  `welcome_resturant_description` longtext DEFAULT NULL,
  `catering_title` text DEFAULT NULL,
  `google_anlytics_code` longtext DEFAULT NULL,
  `location_api` text DEFAULT NULL,
  `opening_hours` text DEFAULT NULL,
  `resturant_close` text DEFAULT NULL,
  `robots_txt` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siteinfos`
--

INSERT INTO `siteinfos` (`id`, `site_name`, `subscribe_title`, `phone`, `site_owner_number`, `email`, `address`, `shipping_charge`, `tax`, `happy_cutomers`, `completed_projects`, `footer_description`, `welcome_resturant_image`, `welcome_resturant_description`, `catering_title`, `google_anlytics_code`, `location_api`, `opening_hours`, `resturant_close`, `robots_txt`, `created_at`, `updated_at`) VALUES
(1, 'POS', NULL, '01344288837', '01751394441', 'bikrombug@gmail.com', 'Prabhupada Bekary Shop', NULL, NULL, NULL, NULL, NULL, 'images/uploads/gobindas-welcome.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-22 09:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `site_images`
--

CREATE TABLE `site_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text DEFAULT NULL,
  `logo_black` varchar(255) DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `menu_home_image` varchar(191) DEFAULT NULL,
  `reserv_home_image` varchar(191) DEFAULT NULL,
  `gallery_home_image` varchar(191) DEFAULT NULL,
  `reserv_banner_home_image` varchar(191) DEFAULT NULL,
  `contact_banner_home_image` varchar(191) DEFAULT NULL,
  `reserv_profile_home_image` varchar(191) DEFAULT NULL,
  `menu_banner` varchar(191) DEFAULT NULL,
  `shop_banner` varchar(191) DEFAULT NULL,
  `gallery_banner` varchar(191) DEFAULT NULL,
  `facility_banner` varchar(191) DEFAULT NULL,
  `blog_banner` varchar(191) DEFAULT NULL,
  `contact_banner` varchar(191) DEFAULT NULL,
  `my_account_banner` varchar(191) DEFAULT NULL,
  `login_banner` varchar(191) DEFAULT NULL,
  `registration_banner` varchar(191) DEFAULT NULL,
  `cart_banner` varchar(191) DEFAULT NULL,
  `checkout_banner` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_images`
--

INSERT INTO `site_images` (`id`, `logo`, `logo_black`, `favicon`, `menu_home_image`, `reserv_home_image`, `gallery_home_image`, `reserv_banner_home_image`, `contact_banner_home_image`, `reserv_profile_home_image`, `menu_banner`, `shop_banner`, `gallery_banner`, `facility_banner`, `blog_banner`, `contact_banner`, `my_account_banner`, `login_banner`, `registration_banner`, `cart_banner`, `checkout_banner`, `created_at`, `updated_at`) VALUES
(1, 'https://bekari.matchlessgiftshopikd.com/uploads/2025/07/1753154996-download1.jpeg', 'https://bekari.matchlessgiftshopikd.com/uploads/2025/07/1753155955-images12.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-22 09:29:56', '2025-07-22 09:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `site_seos`
--

CREATE TABLE `site_seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_des` varchar(191) DEFAULT NULL,
  `meta_keywords` varchar(191) DEFAULT NULL,
  `robots` varchar(191) DEFAULT NULL,
  `canonical` varchar(191) DEFAULT NULL,
  `meta_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_seos`
--

INSERT INTO `site_seos` (`id`, `meta_title`, `meta_des`, `meta_keywords`, `robots`, `canonical`, `meta_image`, `created_at`, `updated_at`) VALUES
(1, 'Govindas Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-12 17:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `site_social_links`
--

CREATE TABLE `site_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `youtube` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_social_links`
--

INSERT INTO `site_social_links` (`id`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, NULL, 'sfd', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Small', 'small', 1, '2022-11-05 00:04:40', '2022-11-05 00:04:40'),
(2, 'Large', 'large', 1, '2022-11-05 00:04:46', '2022-11-05 00:04:46'),
(4, 'Medium', 'medium', 1, '2024-02-25 11:27:26', '2024-02-25 11:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'KG', 'kg', 1, '2023-12-18 05:00:23', '2023-12-18 05:00:23'),
(2, 'Peice', 'peice', 1, '2023-12-18 05:00:27', '2023-12-18 05:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(191) DEFAULT NULL,
  `lname` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `reset_otp` int(11) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `postcode` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `password_str` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`),
  ADD KEY `admins_name_index` (`name`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveryman_to_orders`
--
ALTER TABLE `deliveryman_to_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_packages`
--
ALTER TABLE `item_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marquees`
--
ALTER TABLE `marquees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_categories`
--
ALTER TABLE `page_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_brands`
--
ALTER TABLE `product_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_high_lights`
--
ALTER TABLE `product_high_lights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stock_statuses`
--
ALTER TABLE `product_stock_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_terms`
--
ALTER TABLE `product_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_units`
--
ALTER TABLE `product_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resturants`
--
ALTER TABLE `resturants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siteinfos`
--
ALTER TABLE `siteinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_images`
--
ALTER TABLE `site_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_seos`
--
ALTER TABLE `site_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_social_links`
--
ALTER TABLE `site_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveryman_to_orders`
--
ALTER TABLE `deliveryman_to_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_packages`
--
ALTER TABLE `item_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marquees`
--
ALTER TABLE `marquees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_categories`
--
ALTER TABLE `page_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_high_lights`
--
ALTER TABLE `product_high_lights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stock_statuses`
--
ALTER TABLE `product_stock_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `product_terms`
--
ALTER TABLE `product_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_units`
--
ALTER TABLE `product_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resturants`
--
ALTER TABLE `resturants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteinfos`
--
ALTER TABLE `siteinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_images`
--
ALTER TABLE `site_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_seos`
--
ALTER TABLE `site_seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_social_links`
--
ALTER TABLE `site_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
