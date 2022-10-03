-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2022 at 03:03 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoices`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'B2001', '2022-08-26', '2022-08-30', 'البطاقات', 1, '20000.00', '1000.00', '0.00', '100.00', '10%', '1100.00', 'مدفوعة جزئيا', 3, NULL, '2022-08-01', NULL, '2022-08-26 01:22:16', '2022-08-26 18:15:11'),
(2, 'c129', '2022-08-26', '2022-08-31', 'البطاقات', 1, '30000.00', '2000.00', '0.00', '100.00', '5%', '2100.00', 'مدفوعة جزئيا', 3, 'sad', '2022-07-06', NULL, '2022-08-26 01:22:41', '2022-08-26 01:23:28'),
(3, 'y23', '2022-08-26', '2022-08-28', 'البطاقات', 1, '9000.00', '2000.00', '0.00', '100.00', '5%', '2100.00', 'مدفوعة', 1, NULL, '2022-08-05', NULL, '2022-08-26 01:23:05', '2022-08-26 01:23:49'),
(4, 'sda12', '2022-08-26', '2022-08-09', 'البطاقات', 1, '12300.00', '2000.00', '0.00', '200.00', '10%', '2200.00', 'غير مدفوعة', 2, 'asd', NULL, NULL, '2022-08-26 18:14:33', '2022-08-26 18:14:33'),
(5, 'csa', '2022-08-26', '2022-08-02', 'البطاقات', 1, '21321.00', '123.00', '0.00', '6.15', '5%', '129.15', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-26 18:14:47', '2022-08-26 18:14:47'),
(6, 'C302', '2022-08-26', '2022-08-15', 'البطاقات', 1, '32433.00', '222.00', '0.00', '22.20', '10%', '244.20', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-26 18:35:10', '2022-08-26 18:35:10'),
(7, 'css', '2022-08-26', '2022-08-03', 'البطاقات', 1, '2132.00', '32.00', '0.00', '3.20', '10%', '35.20', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-26 19:46:59', '2022-08-26 19:46:59'),
(8, 'css', '2022-08-26', '2022-08-03', 'البطاقات', 1, '2132.00', '32.00', '0.00', '3.20', '10%', '35.20', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-26 19:49:46', '2022-08-26 19:49:46'),
(9, 'eESN201', '2022-08-26', '2022-08-12', 'البطاقات', 1, '200001.00', '233.00', '0.00', '11.65', '5%', '244.65', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-26 20:03:13', '2022-08-26 20:03:13'),
(10, 'B2001', '2022-08-27', '2022-08-02', 'البطاقات', 1, '1999.00', '111.00', '0.00', '5.55', '5%', '116.55', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-27 08:56:25', '2022-08-27 08:56:25'),
(11, 'c2012', '2022-08-27', '2022-08-09', 'البطاقات', 1, '20000.00', '111.00', '0.00', '5.55', '5%', '116.55', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-27 08:58:18', '2022-08-27 08:58:18'),
(12, 'casc', '2022-08-27', '2022-08-01', 'البطاقات', 1, '21222.00', '1221.00', '0.00', '61.05', '5%', '1282.05', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-27 09:04:31', '2022-08-27 09:04:31'),
(13, 'Last12', '2022-08-27', '2022-08-08', 'البطاقات', 1, '21221.00', '1212.00', '0.00', '121.20', '10%', '1333.20', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-27 09:06:21', '2022-08-27 09:06:21'),
(14, 'V32', '2022-08-27', '2022-08-11', 'البطاقات', 1, '21312.00', '1222.00', '0.00', '122.20', '10%', '1344.20', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-27 09:30:10', '2022-08-27 09:30:10'),
(15, 'casc', '2022-08-27', '2022-08-02', 'البطاقات', 1, '10200.00', '1212.00', '0.00', '60.60', '5%', '1272.60', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-27 09:44:00', '2022-08-27 09:44:00'),
(16, 'asdas', '2022-08-27', '2022-08-01', 'البطاقات', 1, '21122.00', '12.00', '2.00', '0.50', '5%', '10.50', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-27 09:45:26', '2022-08-27 09:45:26'),
(17, 'Basd', '2022-08-27', '2022-08-02', 'البطاقات', 1, '12121.00', '122.00', '0.00', '6.10', '5%', '128.10', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-27 09:49:08', '2022-08-27 09:49:08'),
(18, 'csc22', '2022-08-27', '2022-08-19', 'البطاقات', 1, '121212.00', '1221.00', '0.00', '61.05', '5%', '1282.05', 'غير مدفوعة', 2, NULL, NULL, NULL, '2022-08-27 09:49:51', '2022-08-27 09:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_details`
--

CREATE TABLE `invoices_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Invoice` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Section` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_details`
--

INSERT INTO `invoices_details` (`id`, `id_Invoice`, `invoice_number`, `product`, `Section`, `Status`, `Value_Status`, `Payment_Date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(1, 1, 'B2001', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'AbOod_Enshasi', '2022-08-26 01:22:16', '2022-08-26 01:22:16'),
(2, 2, 'c129', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, 'sad', 'AbOod_Enshasi', '2022-08-26 01:22:41', '2022-08-26 01:22:41'),
(3, 3, 'y23', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'AbOod_Enshasi', '2022-08-26 01:23:05', '2022-08-26 01:23:05'),
(4, 2, 'c129', 'البطاقات', '1', 'مدفوعة جزئيا', 3, '2022-07-06', 'sad', 'AbOod_Enshasi', '2022-08-26 01:23:28', '2022-08-26 01:23:28'),
(5, 3, 'y23', 'البطاقات', '1', 'مدفوعة', 1, '2022-08-05', NULL, 'AbOod_Enshasi', '2022-08-26 01:23:49', '2022-08-26 01:23:49'),
(6, 4, 'sda12', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, 'asd', 'AbOod_Enshasi', '2022-08-26 18:14:33', '2022-08-26 18:14:33'),
(7, 5, 'csa', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'AbOod_Enshasi', '2022-08-26 18:14:47', '2022-08-26 18:14:47'),
(8, 1, 'B2001', 'البطاقات', '1', 'مدفوعة جزئيا', 3, '2022-08-01', NULL, 'AbOod_Enshasi', '2022-08-26 18:15:11', '2022-08-26 18:15:11'),
(9, 6, 'C302', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'AbOod_Enshasi', '2022-08-26 18:35:10', '2022-08-26 18:35:10'),
(10, 7, 'css', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'AbOod_Enshasi', '2022-08-26 19:46:59', '2022-08-26 19:46:59'),
(11, 8, 'css', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'AbOod_Enshasi', '2022-08-26 19:49:46', '2022-08-26 19:49:46'),
(12, 9, 'eESN201', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'ENSHASI', '2022-08-26 20:03:13', '2022-08-26 20:03:13'),
(13, 10, 'B2001', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'AbOod_Enshasi', '2022-08-27 08:56:25', '2022-08-27 08:56:25'),
(14, 11, 'c2012', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'ENSHASI', '2022-08-27 08:58:18', '2022-08-27 08:58:18'),
(15, 12, 'casc', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'ENSHASI', '2022-08-27 09:04:31', '2022-08-27 09:04:31'),
(16, 13, 'Last12', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'ENSHASI', '2022-08-27 09:06:21', '2022-08-27 09:06:21'),
(17, 14, 'V32', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'AbOod_Enshasi', '2022-08-27 09:30:10', '2022-08-27 09:30:10'),
(18, 15, 'casc', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'AbOod_Enshasi', '2022-08-27 09:44:00', '2022-08-27 09:44:00'),
(19, 16, 'asdas', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'ENSHASI', '2022-08-27 09:45:26', '2022-08-27 09:45:26'),
(20, 17, 'Basd', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'ENSHASI', '2022-08-27 09:49:08', '2022-08-27 09:49:08'),
(21, 18, 'csc22', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'ENSHASI', '2022-08-27 09:49:51', '2022-08-27 09:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_achives`
--

CREATE TABLE `invoice_achives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachments`
--

CREATE TABLE `invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_attachments`
--

INSERT INTO `invoice_attachments` (`id`, `file_name`, `invoice_number`, `Created_by`, `invoice_id`, `created_at`, `updated_at`) VALUES
(1, 'Web capture_20-8-2022_12191_.jpeg', 'y23', 'AbOod_Enshasi', 3, '2022-08-26 01:28:23', '2022-08-26 01:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_15_131659_create_sections_table', 1),
(6, '2022_08_16_084514_create_invoices_table', 1),
(7, '2022_08_20_050348_create_products_table', 1),
(8, '2022_08_20_210631_create_invoices_details_table', 1),
(9, '2022_08_20_211359_create_invoice_attachments_table', 1),
(10, '2022_08_23_114910_create_invoice_achives_table', 1),
(11, '2022_08_24_221758_create_permission_tables', 1),
(12, '2022_08_26_222902_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0d1ebb3d-0134-4b43-8deb-3a7cf1a974a8', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 1, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"AbOod_Enshasi\"}', NULL, '2022-08-27 09:44:00', '2022-08-27 09:44:00'),
('17741f46-4dad-44d9-befd-aa4aa2366e84', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 1, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"ENSHASI\"}', '2022-08-27 09:29:15', '2022-08-27 09:06:21', '2022-08-27 09:29:15'),
('3ef60aa0-8135-41e0-b112-b14bb6f8e17b', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 1, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"AbOod_Enshasi\"}', '2022-08-27 09:30:14', '2022-08-27 09:30:10', '2022-08-27 09:30:14'),
('3f9b9621-60f4-4940-8e4c-bce5aec9761e', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 3, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"AbOod_Enshasi\"}', NULL, '2022-08-27 09:30:10', '2022-08-27 09:30:10'),
('6f26e249-6f7e-40d6-a058-8b4f13df0941', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 3, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"ENSHASI\"}', NULL, '2022-08-27 09:06:21', '2022-08-27 09:06:21'),
('75da48c5-5daa-4183-845a-5004778c8cd4', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 3, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"ENSHASI\"}', NULL, '2022-08-27 09:49:51', '2022-08-27 09:49:51'),
('9d4556e2-d80e-4c02-b4ec-69ae8ad7a068', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 3, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"AbOod_Enshasi\"}', NULL, '2022-08-27 09:44:00', '2022-08-27 09:44:00'),
('a7e3111d-ae8f-4b42-bd69-c9a130aa7630', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 1, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"ENSHASI\"}', NULL, '2022-08-27 09:49:08', '2022-08-27 09:49:08'),
('baf334c3-f1f6-4dfb-99bd-4a86ea63139d', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 1, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"ENSHASI\"}', NULL, '2022-08-27 09:45:26', '2022-08-27 09:45:26'),
('bf260298-3629-4668-bce6-6942e8ae0c8a', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 3, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"ENSHASI\"}', NULL, '2022-08-27 09:45:26', '2022-08-27 09:45:26'),
('ca5a56a4-a018-4735-973c-e0c06a275246', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 1, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"ENSHASI\"}', NULL, '2022-08-27 09:49:51', '2022-08-27 09:49:51'),
('f6e04a5a-ba73-4711-a3e7-e0dc510b7720', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 3, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 \",\"user\":\"ENSHASI\"}', NULL, '2022-08-27 09:49:08', '2022-08-27 09:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'الفواتير', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(2, 'قائمة الفواتير', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(3, 'الفواتير المدفوعة', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(4, 'الفواتير المدفوعة جزئيا', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(5, 'الفواتير الغير مدفوعة', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(6, 'ارشيف الفواتير', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(7, 'التقارير', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(8, 'تقرير الفواتير', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(9, 'تقرير العملاء', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(10, 'المستخدمين', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(11, 'قائمة المستخدمين', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(12, 'صلاحيات المستخدمين', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(13, 'الاعدادات', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(14, 'المنتجات', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(15, 'الاقسام', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(16, 'اضافة فاتورة', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(17, 'حذف الفاتورة', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(18, 'تصدير EXCEL', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(19, 'تغير حالة الدفع', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(20, 'تعديل الفاتورة', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(21, 'ارشفة الفاتورة', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(22, 'طباعةالفاتورة', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(23, 'اضافة مرفق', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(24, 'حذف المرفق', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(25, 'اضافة مستخدم', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(26, 'تعديل مستخدم', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(27, 'حذف مستخدم', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(28, 'عرض صلاحية', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(29, 'اضافة صلاحية', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(30, 'تعديل صلاحية', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(31, 'حذف صلاحية', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(32, 'اضافة منتج', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(33, 'تعديل منتج', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(34, 'حذف منتج', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(35, 'اضافة قسم', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(36, 'تعديل قسم', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(37, 'حذف قسم', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28'),
(38, 'الاشعارات', 'web', '2022-08-25 11:42:28', '2022-08-25 11:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Product_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Product_name`, `description`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'البطاقات', 'فاتوره', 1, '2022-08-26 01:21:43', '2022-08-26 01:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2022-08-25 11:42:34', '2022-08-25 12:23:24'),
(2, 'user', 'web', '2022-08-25 12:35:45', '2022-08-25 12:35:45'),
(3, 'visteor', 'web', '2022-08-26 00:05:42', '2022-08-26 00:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(10, 1),
(10, 2),
(11, 1),
(12, 1),
(12, 2),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'بنك القدس', ',مستحقات', '2022-08-26 01:21:29', '2022-08-26 01:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'AbOod_Enshasi', 'harry@den.com', NULL, '$2y$10$Lccme2ESgic8vcQ5N0PSCuGIed7ShhHpqbCwh64vyeS0y6gscSYi2', '[\"owner\"]', 'مفعل', 'C0VLBT3mkgqvAaiTcrEzKteiL2z3yC8tojvhfA2i0XIWv1exRKaqj6a2h2dr', '2022-08-25 11:42:34', '2022-08-25 11:42:34'),
(3, 'ENSHASI', 'Abd@gmail.com', NULL, '$2y$10$qE0R1lySADY2514D6avRweneO7X5nQPtV2BV0QBltZerqsrPzYTpe', '[\"user\"]', 'مفعل', NULL, '2022-08-25 12:55:16', '2022-08-26 00:32:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Indexes for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_details_id_invoice_foreign` (`id_Invoice`);

--
-- Indexes for table `invoice_achives`
--
ALTER TABLE `invoice_achives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_attachments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `invoices_details`
--
ALTER TABLE `invoices_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `invoice_achives`
--
ALTER TABLE `invoice_achives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD CONSTRAINT `invoices_details_id_invoice_foreign` FOREIGN KEY (`id_Invoice`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD CONSTRAINT `invoice_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
