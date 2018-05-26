-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2018 at 07:37 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sad`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_delete_account`
--

CREATE TABLE `accounts_delete_account` (
  `id` int(11) NOT NULL,
  `reason` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_patient`
--

CREATE TABLE `accounts_patient` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `weight` varchar(10) NOT NULL,
  `height` varchar(10) NOT NULL,
  `smoker` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_patient`
--

INSERT INTO `accounts_patient` (`id`, `image`, `birth_date`, `weight`, `height`, `smoker`, `sex`, `phone`, `name_id`) VALUES
(1, 'shutterstock_585259181.jpg', '1995-03-08', '69 KG', '5.7', 'No', 'Male', '01763433486', 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_shipping`
--

CREATE TABLE `accounts_shipping` (
  `id` int(11) NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `alternative_mobile_no` varchar(20) DEFAULT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_shipping`
--

INSERT INTO `accounts_shipping` (`id`, `city`, `area`, `address`, `alternative_mobile_no`, `patient_id`) VALUES
(1, 'Comilla', 'Notun bazar', 'Laksham\r\nBypass', '01763433486', 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_verifyaccount`
--

CREATE TABLE `accounts_verifyaccount` (
  `id` int(11) NOT NULL,
  `hash_code` varchar(200) NOT NULL,
  `is_verify` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_verifyaccount`
--

INSERT INTO `accounts_verifyaccount` (`id`, `hash_code`, `is_verify`, `user_id`) VALUES
(5, 'Hi hridoy,Thanks for your registration in Virtual Medical Aid(VMA)Please click on the link below to confirm your registration,http://127.0.0.1:8000/activate/31/4vk-d1b29d8b8b8cc0c64ebe', 1, 31);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add patient', 7, 'add_patient'),
(20, 'Can change patient', 7, 'change_patient'),
(21, 'Can delete patient', 7, 'delete_patient'),
(22, 'Can add shipping', 8, 'add_shipping'),
(23, 'Can change shipping', 8, 'change_shipping'),
(24, 'Can delete shipping', 8, 'delete_shipping'),
(25, 'Can add delete_account', 9, 'add_delete_account'),
(26, 'Can change delete_account', 9, 'change_delete_account'),
(27, 'Can delete delete_account', 9, 'delete_delete_account'),
(28, 'Can add test_category', 10, 'add_test_category'),
(29, 'Can change test_category', 10, 'change_test_category'),
(30, 'Can delete test_category', 10, 'delete_test_category'),
(31, 'Can add diagnostic_test', 11, 'add_diagnostic_test'),
(32, 'Can change diagnostic_test', 11, 'change_diagnostic_test'),
(33, 'Can delete diagnostic_test', 11, 'delete_diagnostic_test'),
(34, 'Can add hospital', 12, 'add_hospital'),
(35, 'Can change hospital', 12, 'change_hospital'),
(36, 'Can delete hospital', 12, 'delete_hospital'),
(37, 'Can add has_test', 13, 'add_has_test'),
(38, 'Can change has_test', 13, 'change_has_test'),
(39, 'Can delete has_test', 13, 'delete_has_test'),
(40, 'Can add package', 14, 'add_package'),
(41, 'Can change package', 14, 'change_package'),
(42, 'Can delete package', 14, 'delete_package'),
(43, 'Can add package_item', 15, 'add_package_item'),
(44, 'Can change package_item', 15, 'change_package_item'),
(45, 'Can delete package_item', 15, 'delete_package_item'),
(46, 'Can add ratings', 16, 'add_ratings'),
(47, 'Can change ratings', 16, 'change_ratings'),
(48, 'Can delete ratings', 16, 'delete_ratings'),
(49, 'Can add feedback', 17, 'add_feedback'),
(50, 'Can change feedback', 17, 'change_feedback'),
(51, 'Can delete feedback', 17, 'delete_feedback'),
(52, 'Can add test_order', 18, 'add_test_order'),
(53, 'Can change test_order', 18, 'change_test_order'),
(54, 'Can delete test_order', 18, 'delete_test_order'),
(55, 'Can add test_billing', 19, 'add_test_billing'),
(56, 'Can change test_billing', 19, 'change_test_billing'),
(57, 'Can delete test_billing', 19, 'delete_test_billing'),
(58, 'Can add package_order', 20, 'add_package_order'),
(59, 'Can change package_order', 20, 'change_package_order'),
(60, 'Can delete package_order', 20, 'delete_package_order'),
(61, 'Can add package_billing', 21, 'add_package_billing'),
(62, 'Can change package_billing', 21, 'change_package_billing'),
(63, 'Can delete package_billing', 21, 'delete_package_billing'),
(64, 'Can add verify account', 22, 'add_verifyaccount'),
(65, 'Can change verify account', 22, 'change_verifyaccount'),
(66, 'Can delete verify account', 22, 'delete_verifyaccount');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$3scNCHINiwkW$wntv+PBPnNSYuR7Sjpqfb6NHFiKqnHhY5B24oSwAJuY=', '2018-04-22 17:34:25.046196', 1, 'nasir', 'Md.', 'Nasir', 'nasiruiucse@gmail.com', 1, 1, '2018-04-21 10:53:00.000000'),
(2, 'pbkdf2_sha256$100000$bjDEKfyO0iSC$aZ1pHATn+YxIOAzz6nqIEIu/QIPYt1BCif0L6Vfd+NU=', '2018-04-21 15:47:50.486965', 0, 'dmc', 'Dhaka', 'Medical College', 'dmc@dmc.com', 0, 1, '2018-04-21 10:55:08.000000'),
(3, 'pbkdf2_sha256$100000$j9ddiwcYQ7Ub$ecAYKn/u4cXMJ2UIoc/Y5M1A2pD4KIqfiRIlc4iwaQU=', '2018-04-21 15:18:04.502747', 0, 'apollo', 'Apollo', 'Hospital Ltd', 'apollo@gmail.com', 0, 1, '2018-04-21 10:55:46.000000'),
(4, 'pbkdf2_sha256$100000$kl6W4N5OBpmk$kREHxFv9BIEsvI0YQOarhmSHA5FeJv1Y1VYrLMR95HM=', NULL, 0, 'cmc', 'Comilla', 'Medical College', 'cmc@gmail.com', 0, 1, '2018-04-21 10:56:36.000000'),
(5, 'pbkdf2_sha256$100000$EmAOArCRW4LF$jDIc4EkqXKQYou656CKFhsbdERIVjoGpdYRNj3tpVbU=', NULL, 0, 'ssmc', 'Shaheed Suhrawardy', 'Medical College', 'admin@shsmc.gov.bd', 0, 1, '2018-04-21 11:04:25.000000'),
(6, 'pbkdf2_sha256$100000$RsEAAbIuLLe0$rWkSl1iJyW9pUtsDBd7bqpLzY4InvFj7R6JoyNg7kpI=', NULL, 0, 'akmmc', 'Anwar Khan Modern', 'Medical College', 'akmmcbd@yahoo.com', 0, 1, '2018-04-21 11:07:41.000000'),
(7, 'pbkdf2_sha256$100000$SkIlyc1oQDNn$P9DdN3XBugBUiC//w3Ee4xwaSSr7LbRE7h/WFv7IDE0=', NULL, 0, 'ctgmc', 'Chittagong', 'Medical College', 'info@cmc.edu.bd', 0, 1, '2018-04-21 11:10:29.000000'),
(8, 'pbkdf2_sha256$100000$EPxbwttH795Q$zK5s4YoRiOg/nTvwOYp1xcgntOkUndCpeQ5jbDb8GoI=', NULL, 0, 'shl', 'Square', 'Hospitals Limited', 'info@squarehospital.com', 0, 1, '2018-04-21 11:24:51.000000'),
(9, 'pbkdf2_sha256$100000$q2qxzNYlMFk6$YWFH9ry979fsWE8W3Xg2d+MP4kLj8s1J5UaHLYg2Mao=', NULL, 0, 'ldc', 'Labaid', 'diagnostic centre', 'jalailshikder@labaidgroup.com', 0, 1, '2018-04-21 11:38:49.000000'),
(31, 'pbkdf2_sha256$100000$HOtAvtcnsZR7$rnzdOdtjtpEsGaDdL6rDx+k1QvgpfxT9DJd0xp2MGGs=', NULL, 0, 'hridoy', 'hridoy', 'mahmud', 'nasirvarsity@gmail.com', 0, 1, '2018-04-22 05:19:08.258608');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-04-21 10:54:47.944657', '1', 'nasir', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 1),
(2, '2018-04-21 10:55:08.288832', '2', 'dmc', 1, '[{\"added\": {}}]', 4, 1),
(3, '2018-04-21 10:55:28.549828', '2', 'dmc', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(4, '2018-04-21 10:55:46.322882', '3', 'apollo', 1, '[{\"added\": {}}]', 4, 1),
(5, '2018-04-21 10:56:06.207130', '3', 'apollo', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(6, '2018-04-21 10:56:36.412707', '4', 'cmc', 1, '[{\"added\": {}}]', 4, 1),
(7, '2018-04-21 10:56:56.700643', '4', 'cmc', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(8, '2018-04-21 10:57:55.117595', '1', 'Apollo Hospital Ltd', 1, '[{\"added\": {}}]', 12, 1),
(9, '2018-04-21 10:59:59.820086', '2', 'Comilla Medical College', 1, '[{\"added\": {}}]', 12, 1),
(10, '2018-04-21 11:03:02.144941', '3', 'Dhaka Medical College', 1, '[{\"added\": {}}]', 12, 1),
(11, '2018-04-21 11:04:26.073478', '5', 'ssmc', 1, '[{\"added\": {}}]', 4, 1),
(12, '2018-04-21 11:04:56.675940', '5', 'ssmc', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(13, '2018-04-21 11:05:55.137254', '4', 'Shaheed Suhrawardy Medical College Location', 1, '[{\"added\": {}}]', 12, 1),
(14, '2018-04-21 11:06:08.597140', '5', 'ssmc', 2, '[{\"changed\": {\"fields\": [\"last_name\"]}}]', 4, 1),
(15, '2018-04-21 11:07:41.457030', '6', 'akmmc', 1, '[{\"added\": {}}]', 4, 1),
(16, '2018-04-21 11:08:24.053126', '6', 'akmmc', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(17, '2018-04-21 11:09:18.035404', '5', 'Anwar Khan Modern Medical College', 1, '[{\"added\": {}}]', 12, 1),
(18, '2018-04-21 11:10:29.225462', '7', 'ctgmc', 1, '[{\"added\": {}}]', 4, 1),
(19, '2018-04-21 11:12:52.882999', '7', 'ctgmc', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(20, '2018-04-21 11:14:37.281523', '6', 'Chittagong Medical College', 1, '[{\"added\": {}}]', 12, 1),
(21, '2018-04-21 11:20:41.041691', '5', 'Anwar Khan Modern Medical College', 2, '[{\"changed\": {\"fields\": [\"phone\"]}}]', 12, 1),
(22, '2018-04-21 11:20:57.744978', '5', 'Anwar Khan Modern Medical College', 2, '[{\"changed\": {\"fields\": [\"phone\"]}}]', 12, 1),
(23, '2018-04-21 11:21:30.100083', '6', 'Chittagong Medical College', 2, '[{\"changed\": {\"fields\": [\"phone\", \"address\"]}}]', 12, 1),
(24, '2018-04-21 11:21:41.657089', '6', 'Chittagong Medical College', 2, '[{\"changed\": {\"fields\": [\"phone\"]}}]', 12, 1),
(25, '2018-04-21 11:22:27.750663', '6', 'Chittagong Medical College', 2, '[{\"changed\": {\"fields\": [\"address\"]}}]', 12, 1),
(26, '2018-04-21 11:24:51.892992', '8', 'shl', 1, '[{\"added\": {}}]', 4, 1),
(27, '2018-04-21 11:26:05.322836', '8', 'shl', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(28, '2018-04-21 11:26:51.879247', '7', 'Square Hospitals Limited', 1, '[{\"added\": {}}]', 12, 1),
(29, '2018-04-21 11:38:49.161753', '9', 'ldc', 1, '[{\"added\": {}}]', 4, 1),
(30, '2018-04-21 11:39:23.761086', '9', 'ldc', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\"]}}]', 4, 1),
(31, '2018-04-21 11:41:20.280317', '8', 'Labaid diagnostic centre', 1, '[{\"added\": {}}]', 12, 1),
(32, '2018-04-21 11:45:18.855396', '1', 'Urine', 1, '[{\"added\": {}}]', 10, 1),
(33, '2018-04-21 11:45:21.143406', '1', 'VMA 24hrs Urine', 1, '[{\"added\": {}}]', 11, 1),
(34, '2018-04-21 11:45:47.387823', '2', 'Blood', 1, '[{\"added\": {}}]', 10, 1),
(35, '2018-04-21 11:45:49.010277', '2', 'Valproic Acid Blood', 1, '[{\"added\": {}}]', 11, 1),
(36, '2018-04-21 11:46:37.062488', '1', 'Bio-Chemistry', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 10, 1),
(37, '2018-04-21 11:46:40.474920', '3', 'VALPROATE LEVEL', 1, '[{\"added\": {}}]', 11, 1),
(38, '2018-04-21 11:46:54.557620', '4', 'V M A- 24HRS URINE.', 1, '[{\"added\": {}}]', 11, 1),
(39, '2018-04-21 11:47:04.557359', '5', 'Urine-17 Ketosteriod (24hrs)', 1, '[{\"added\": {}}]', 11, 1),
(40, '2018-04-21 11:47:12.423996', '6', 'Urine for ACR', 1, '[{\"added\": {}}]', 11, 1),
(41, '2018-04-21 11:47:22.015008', '7', 'Urea Serum', 1, '[{\"added\": {}}]', 11, 1),
(42, '2018-04-21 11:47:30.756654', '8', 'TCO2 Blood', 1, '[{\"added\": {}}]', 11, 1),
(43, '2018-04-21 11:47:40.231763', '9', 'Synovial Fluid for Chloride', 1, '[{\"added\": {}}]', 11, 1),
(44, '2018-04-21 11:47:51.456074', '10', 'Spot Urine for Potassium', 1, '[{\"added\": {}}]', 11, 1),
(45, '2018-04-21 11:48:02.164010', '11', 'Protein Urine', 1, '[{\"added\": {}}]', 11, 1),
(46, '2018-04-21 11:48:49.947101', '3', 'Bone Densitometry', 1, '[{\"added\": {}}]', 10, 1),
(47, '2018-04-21 11:48:51.313320', '12', 'BONE DENSITOMETRY OF Total Body', 1, '[{\"added\": {}}]', 11, 1),
(48, '2018-04-21 11:48:59.346631', '13', 'BONE DENSITOMETRY OF Single Hip Lt./Rt.', 1, '[{\"added\": {}}]', 11, 1),
(49, '2018-04-21 11:49:09.180028', '14', 'BONE DENSITOMETRY OF A/P Spine', 1, '[{\"added\": {}}]', 11, 1),
(50, '2018-04-21 11:49:17.296230', '15', 'BONE DENSITOMETRY of both hip', 1, '[{\"added\": {}}]', 11, 1),
(51, '2018-04-21 11:49:34.145573', '4', 'Bronchoscopy', 1, '[{\"added\": {}}]', 10, 1),
(52, '2018-04-21 11:49:35.503960', '16', 'Bronchoscopy with Lung Biopsy', 1, '[{\"added\": {}}]', 11, 1),
(53, '2018-04-21 11:49:43.445284', '17', 'Bronchoscopy Procedure Charge', 1, '[{\"added\": {}}]', 11, 1),
(54, '2018-04-21 11:49:54.037036', '18', 'Bronchoscopy', 1, '[{\"added\": {}}]', 11, 1),
(55, '2018-04-21 11:50:08.880475', '5', 'Cardiac Test', 1, '[{\"added\": {}}]', 10, 1),
(56, '2018-04-21 11:50:10.252328', '19', 'Transoesophageal Echo (TEE)', 1, '[{\"added\": {}}]', 11, 1),
(57, '2018-04-21 11:50:16.997807', '20', 'Stress Echo', 1, '[{\"added\": {}}]', 11, 1),
(58, '2018-04-21 11:50:23.547086', '21', 'Spirometry with Reversibility Test', 1, '[{\"added\": {}}]', 11, 1),
(59, '2018-04-21 11:50:30.511198', '22', 'Spirometry Rever. Lung Volumes & DLCO', 1, '[{\"added\": {}}]', 11, 1),
(60, '2018-04-21 11:50:37.676720', '23', 'RAW & GAW', 1, '[{\"added\": {}}]', 11, 1),
(61, '2018-04-21 11:50:45.235635', '24', 'Nebulization', 1, '[{\"added\": {}}]', 11, 1),
(62, '2018-04-21 11:50:52.101721', '25', 'Methacholine Chalange Test', 1, '[{\"added\": {}}]', 11, 1),
(63, '2018-04-21 11:51:00.135354', '26', 'Lung Volume (Body Phe.)', 1, '[{\"added\": {}}]', 11, 1),
(64, '2018-04-21 11:51:07.776895', '27', 'ECG - MANUAL', 1, '[{\"added\": {}}]', 11, 1),
(65, '2018-04-21 11:51:14.576316', '28', 'Echo Cardiography', 1, '[{\"added\": {}}]', 11, 1),
(66, '2018-04-21 11:51:21.176180', '29', 'B.P.Monitoring-24 Hrs', 1, '[{\"added\": {}}]', 11, 1),
(67, '2018-04-21 11:51:27.059139', '30', '3D Echo Doppler CRT', 1, '[{\"added\": {}}]', 11, 1),
(68, '2018-04-21 11:51:48.126805', '6', 'Clinical Pathology', 1, '[{\"added\": {}}]', 10, 1),
(69, '2018-04-21 11:51:48.743023', '31', 'Wound Swab for Gram Stain', 1, '[{\"added\": {}}]', 11, 1),
(70, '2018-04-21 11:51:56.674198', '32', 'Wet Film & Gram Stain', 1, '[{\"added\": {}}]', 11, 1),
(71, '2018-04-21 11:52:02.898929', '33', 'Urine-HCG', 1, '[{\"added\": {}}]', 11, 1),
(72, '2018-04-21 11:52:11.432855', '34', 'Urethral Discharge for AFB Urethral Discharge for AFB', 1, '[{\"added\": {}}]', 11, 1),
(73, '2018-04-21 11:52:17.815492', '35', 'Synovial Fluid for AFB', 1, '[{\"added\": {}}]', 11, 1),
(74, '2018-04-21 11:52:24.207729', '36', 'Specific Gravity - Urine', 1, '[{\"added\": {}}]', 11, 1),
(75, '2018-04-21 11:52:31.499892', '37', 'R/M/E', 1, '[{\"added\": {}}]', 11, 1),
(76, '2018-04-21 11:52:39.991426', '38', 'Pleural Fluid for AFB', 1, '[{\"added\": {}}]', 11, 1),
(77, '2018-04-21 11:52:56.148280', '7', 'Colonoscopy', 1, '[{\"added\": {}}]', 10, 1),
(78, '2018-04-21 11:52:59.197773', '39', 'Short Colonoscopy', 1, '[{\"added\": {}}]', 11, 1),
(79, '2018-04-21 11:53:07.044543', '40', 'Colonoscopy', 1, '[{\"added\": {}}]', 11, 1),
(80, '2018-04-21 11:53:22.044625', '8', 'Contrast', 1, '[{\"added\": {}}]', 10, 1),
(81, '2018-04-21 11:53:32.828513', '8', 'Constrast', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 10, 1),
(82, '2018-04-21 11:53:33.424564', '41', 'Urovedio', 1, '[{\"added\": {}}]', 11, 1),
(83, '2018-04-21 11:53:40.005738', '42', 'Iopamero', 1, '[{\"added\": {}}]', 11, 1),
(84, '2018-04-21 11:53:55.653444', '9', 'CT Scan', 1, '[{\"added\": {}}]', 10, 1),
(85, '2018-04-21 11:53:57.086678', '43', 'HRCT (High Resolution CT Scan)', 1, '[{\"added\": {}}]', 11, 1),
(86, '2018-04-21 11:54:03.745325', '44', 'CT-SCAN-I FILM', 1, '[{\"added\": {}}]', 11, 1),
(87, '2018-04-21 11:54:13.727027', '45', 'CT-SCAN OF Neck', 1, '[{\"added\": {}}]', 11, 1),
(88, '2018-04-21 11:54:21.390042', '46', 'CT-SCAN OF Lumbar Spine', 1, '[{\"added\": {}}]', 11, 1),
(89, '2018-04-21 11:54:29.864310', '47', 'CT-SCAN OF CSP', 1, '[{\"added\": {}}]', 11, 1),
(90, '2018-04-21 11:54:37.862005', '48', 'CT-ANGIO OF Cardiac', 1, '[{\"added\": {}}]', 11, 1),
(91, '2018-04-21 11:54:45.265780', '49', 'CT Angiogram', 1, '[{\"added\": {}}]', 11, 1),
(92, '2018-04-21 11:55:06.284166', '10', 'Cyto-Pathology', 1, '[{\"added\": {}}]', 10, 1),
(93, '2018-04-21 11:55:06.785193', '50', 'Vault Smear for Cytology', 1, '[{\"added\": {}}]', 11, 1),
(94, '2018-04-21 11:55:14.394867', '51', 'Urine for Cytology', 1, '[{\"added\": {}}]', 11, 1),
(95, '2018-04-21 11:55:20.786167', '52', 'Pleural Fluid for Cytology', 1, '[{\"added\": {}}]', 11, 1),
(96, '2018-04-21 11:55:27.959759', '53', 'Pericardial Fluid for Cytology', 1, '[{\"added\": {}}]', 11, 1),
(97, '2018-04-21 11:55:33.911666', '54', 'FNAC Both Breast', 1, '[{\"added\": {}}]', 11, 1),
(98, '2018-04-21 11:55:39.511436', '55', 'CSF for Malignant Cell', 1, '[{\"added\": {}}]', 11, 1),
(99, '2018-04-21 11:55:48.244991', '56', 'Cervical for Cytology', 1, '[{\"added\": {}}]', 11, 1),
(100, '2018-04-21 11:56:07.018305', '11', 'Dermatology', 1, '[{\"added\": {}}]', 10, 1),
(101, '2018-04-21 11:56:09.919015', '57', 'Woods Lamp Examination', 1, '[{\"added\": {}}]', 11, 1),
(102, '2018-04-21 11:56:22.601449', '58', 'I/L(Intralesional) Infiltnation', 1, '[{\"added\": {}}]', 11, 1),
(103, '2018-04-21 11:56:28.822177', '59', 'Corn Pack Dressing-2', 1, '[{\"added\": {}}]', 11, 1),
(104, '2018-04-21 11:56:36.522311', '60', 'Corn Pack Dressing-1', 1, '[{\"added\": {}}]', 11, 1),
(105, '2018-04-21 11:56:45.019382', '61', 'Chemical Cautery-2', 1, '[{\"added\": {}}]', 11, 1),
(106, '2018-04-21 11:56:51.927422', '62', 'Chemical Cautery-1', 1, '[{\"added\": {}}]', 11, 1),
(107, '2018-04-21 11:57:10.922204', '62', 'Chemical Cautery-1', 2, '[]', 11, 1),
(108, '2018-04-21 11:57:21.792909', '12', 'Dialysis', 1, '[{\"added\": {}}]', 10, 1),
(109, '2018-04-21 11:57:22.651607', '63', 'O2', 1, '[{\"added\": {}}]', 11, 1),
(110, '2018-04-21 11:57:31.200811', '64', 'DIALYZER', 1, '[{\"added\": {}}]', 11, 1),
(111, '2018-04-21 11:57:41.817227', '65', 'DIALYSIS CHARGE', 1, '[{\"added\": {}}]', 11, 1),
(112, '2018-04-21 19:17:42.349787', '16', 'asadf', 3, '', 4, 1),
(113, '2018-04-21 19:17:42.386908', '13', 'asdf', 3, '', 4, 1),
(114, '2018-04-21 19:17:42.408945', '14', 'asfwer', 3, '', 4, 1),
(115, '2018-04-21 19:17:42.427943', '17', 'blu', 3, '', 4, 1),
(116, '2018-04-21 19:17:42.450381', '10', 'nakib', 3, '', 4, 1),
(117, '2018-04-21 19:17:42.470132', '11', 'noku', 3, '', 4, 1),
(118, '2018-04-21 19:17:42.491927', '12', 'nouka', 3, '', 4, 1),
(119, '2018-04-21 19:17:42.519967', '15', 'uiu', 3, '', 4, 1),
(120, '2018-04-21 19:17:42.542133', '23', 'werwer', 3, '', 4, 1),
(121, '2018-04-21 19:18:28.620092', '21', 'asfsaf', 3, '', 4, 1),
(122, '2018-04-21 19:18:28.651131', '24', 'dfgdfgdf', 3, '', 4, 1),
(123, '2018-04-21 19:18:28.676176', '19', 'justin', 3, '', 4, 1),
(124, '2018-04-21 19:18:28.698605', '22', 'nasiruiucse', 3, '', 4, 1),
(125, '2018-04-21 19:18:28.717618', '20', 'sf', 3, '', 4, 1),
(126, '2018-04-21 19:18:28.751651', '18', 'tutsadf', 3, '', 4, 1),
(127, '2018-04-21 19:25:09.975265', '25', 'tut', 3, '', 4, 1),
(128, '2018-04-21 19:33:30.112462', '27', 'uiyuyui', 3, '', 4, 1),
(129, '2018-04-22 05:04:34.514924', '26', 'asfwer', 3, '', 4, 1),
(130, '2018-04-22 05:04:34.549616', '29', 'bluebard', 3, '', 4, 1),
(131, '2018-04-22 05:04:34.571133', '27', 'ratul', 3, '', 4, 1),
(132, '2018-04-22 05:04:34.591679', '28', 'sagor', 3, '', 4, 1),
(133, '2018-04-22 05:05:42.447378', '30', 'bluebard', 3, '', 4, 1),
(134, '2018-04-22 05:19:57.793834', '5', 'hridoy', 2, '[{\"changed\": {\"fields\": [\"hash_code\"]}}]', 22, 1),
(135, '2018-04-22 05:20:11.273659', '5', 'hridoy', 2, '[]', 22, 1),
(136, '2018-04-22 05:20:16.193464', '5', 'hridoy', 2, '[]', 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'accounts', 'delete_account'),
(7, 'accounts', 'patient'),
(8, 'accounts', 'shipping'),
(22, 'accounts', 'verifyaccount'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'medical', 'diagnostic_test'),
(17, 'medical', 'feedback'),
(13, 'medical', 'has_test'),
(12, 'medical', 'hospital'),
(14, 'medical', 'package'),
(15, 'medical', 'package_item'),
(16, 'medical', 'ratings'),
(10, 'medical', 'test_category'),
(21, 'order_billing', 'package_billing'),
(20, 'order_billing', 'package_order'),
(19, 'order_billing', 'test_billing'),
(18, 'order_billing', 'test_order'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-04-21 10:50:18.395077'),
(2, 'auth', '0001_initial', '2018-04-21 10:50:24.434369'),
(3, 'admin', '0001_initial', '2018-04-21 10:50:26.386820'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-04-21 10:50:26.420448'),
(5, 'contenttypes', '0002_remove_content_type_name', '2018-04-21 10:50:28.242336'),
(6, 'auth', '0002_alter_permission_name_max_length', '2018-04-21 10:50:29.447943'),
(7, 'auth', '0003_alter_user_email_max_length', '2018-04-21 10:50:30.879924'),
(8, 'auth', '0004_alter_user_username_opts', '2018-04-21 10:50:30.951982'),
(9, 'auth', '0005_alter_user_last_login_null', '2018-04-21 10:50:31.305398'),
(10, 'auth', '0006_require_contenttypes_0002', '2018-04-21 10:50:31.341703'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2018-04-21 10:50:31.400779'),
(12, 'auth', '0008_alter_user_username_max_length', '2018-04-21 10:50:32.855365'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2018-04-21 10:50:33.411963'),
(14, 'sessions', '0001_initial', '2018-04-21 10:50:33.837867'),
(15, 'accounts', '0001_initial', '2018-04-21 10:50:52.113682'),
(16, 'medical', '0001_initial', '2018-04-21 10:51:18.759703'),
(17, 'order_billing', '0001_initial', '2018-04-21 10:51:39.917636'),
(18, 'order_billing', '0002_auto_20180421_2141', '2018-04-21 15:42:05.021067'),
(19, 'accounts', '0002_verifyaccount', '2018-04-21 17:48:32.628981'),
(20, 'accounts', '0003_auto_20180421_2349', '2018-04-21 17:49:32.418812');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('sczkcyxomjg56dfpmd9y8s0q6clnfa11', 'ZDMxNTFkOGNmOGY2MWU1MzBmODFkYjg2MWM5YTk1MjkxNzE0ZjNmMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNjk5NDk5ZDJlNzQ4NTY1MjU5NjhmYjc2ODFiMzlmM2JiNGE3MGUyIiwiaG9zcGl0YWwiOm51bGx9', '2018-05-06 17:34:25.107689');

-- --------------------------------------------------------

--
-- Table structure for table `medical_diagnostic_test`
--

CREATE TABLE `medical_diagnostic_test` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_diagnostic_test`
--

INSERT INTO `medical_diagnostic_test` (`id`, `name`, `category_id`) VALUES
(1, 'VMA 24hrs Urine', 1),
(2, 'Valproic Acid Blood', 2),
(3, 'VALPROATE LEVEL', 1),
(4, 'V M A- 24HRS URINE.', 1),
(5, 'Urine-17 Ketosteriod (24hrs)', 1),
(6, 'Urine for ACR', 1),
(7, 'Urea Serum', 1),
(8, 'TCO2 Blood', 1),
(9, 'Synovial Fluid for Chloride', 1),
(10, 'Spot Urine for Potassium', 1),
(11, 'Protein Urine', 1),
(12, 'BONE DENSITOMETRY OF Total Body', 3),
(13, 'BONE DENSITOMETRY OF Single Hip Lt./Rt.', 3),
(14, 'BONE DENSITOMETRY OF A/P Spine', 3),
(15, 'BONE DENSITOMETRY of both hip', 3),
(16, 'Bronchoscopy with Lung Biopsy', 4),
(17, 'Bronchoscopy Procedure Charge', 4),
(18, 'Bronchoscopy', 4),
(19, 'Transoesophageal Echo (TEE)', 5),
(20, 'Stress Echo', 5),
(21, 'Spirometry with Reversibility Test', 5),
(22, 'Spirometry Rever. Lung Volumes & DLCO', 5),
(23, 'RAW & GAW', 5),
(24, 'Nebulization', 5),
(25, 'Methacholine Chalange Test', 5),
(26, 'Lung Volume (Body Phe.)', 5),
(27, 'ECG - MANUAL', 5),
(28, 'Echo Cardiography', 5),
(29, 'B.P.Monitoring-24 Hrs', 5),
(30, '3D Echo Doppler CRT', 5),
(31, 'Wound Swab for Gram Stain', 6),
(32, 'Wet Film & Gram Stain', 6),
(33, 'Urine-HCG', 6),
(34, 'Urethral Discharge for AFB Urethral Discharge for AFB', 6),
(35, 'Synovial Fluid for AFB', 6),
(36, 'Specific Gravity - Urine', 6),
(37, 'R/M/E', 6),
(38, 'Pleural Fluid for AFB', 6),
(39, 'Short Colonoscopy', 7),
(40, 'Colonoscopy', 7),
(41, 'Urovedio', 8),
(42, 'Iopamero', 8),
(43, 'HRCT (High Resolution CT Scan)', 9),
(44, 'CT-SCAN-I FILM', 9),
(45, 'CT-SCAN OF Neck', 9),
(46, 'CT-SCAN OF Lumbar Spine', 9),
(47, 'CT-SCAN OF CSP', 9),
(48, 'CT-ANGIO OF Cardiac', 9),
(49, 'CT Angiogram', 9),
(50, 'Vault Smear for Cytology', 10),
(51, 'Urine for Cytology', 10),
(52, 'Pleural Fluid for Cytology', 10),
(53, 'Pericardial Fluid for Cytology', 10),
(54, 'FNAC Both Breast', 10),
(55, 'CSF for Malignant Cell', 10),
(56, 'Cervical for Cytology', 10),
(57, 'Woods Lamp Examination', 11),
(58, 'I/L(Intralesional) Infiltnation', 11),
(59, 'Corn Pack Dressing-2', 11),
(60, 'Corn Pack Dressing-1', 11),
(61, 'Chemical Cautery-2', 11),
(62, 'Chemical Cautery-1', 11),
(63, 'O2', 12),
(64, 'DIALYZER', 12),
(65, 'DIALYSIS CHARGE', 12);

-- --------------------------------------------------------

--
-- Table structure for table `medical_feedback`
--

CREATE TABLE `medical_feedback` (
  `id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `comment` longtext NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_has_test`
--

CREATE TABLE `medical_has_test` (
  `id` int(11) NOT NULL,
  `test_details` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `delivary_in` int(11) NOT NULL,
  `is_home_deliverable` tinyint(1) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_has_test`
--

INSERT INTO `medical_has_test` (`id`, `test_details`, `price`, `delivary_in`, `is_home_deliverable`, `hospital_id`, `name_id`) VALUES
(2, 'The therapeutic range for valproic acid (total) is 50-125 µg/mL. The toxic level is greater than 150 µg/mL. The therapeutic range for valproic acid (free) is 6-22 µg/mL. The toxic level is greater than 50 µg/mL; above this threshold concentration, the binding sites on plasma albumin begin to become saturated.', 200, 1, 1, 3, 2),
(3, 'The therapeutic range for valproic acid (total) is 50-125 µg/mL. The toxic level is greater than 150 µg/mL. The therapeutic range for valproic acid (free) is 6-22 µg/mL. The toxic level is greater than 50 µg/mL; above this threshold concentration, the binding sites on plasma albumin begin to become saturated.', 150, 1, 1, 3, 3),
(4, 'The therapeutic range for valproic acid (total) is 50-125 µg/mL. The toxic level is greater than 150 µg/mL. The therapeutic range for valproic acid (free) is 6-22 µg/mL. The toxic level is greater than 50 µg/mL; above this threshold concentration, the binding sites on plasma albumin begin to become saturated.', 180, 1, 1, 3, 5),
(5, 'The therapeutic range for valproic acid (total) is 50-125 µg/mL. The toxic level is greater than 150 µg/mL. The therapeutic range for valproic acid (free) is 6-22 µg/mL. The toxic level is greater than 50 µg/mL; above this threshold concentration, the binding sites on plasma albumin begin to become saturated.', 145, 1, 1, 3, 1),
(6, 'Three-dimensional echocardiography can be used to perform speckle tracking in all three dimensions simultaneously. Area strain, which integrates deformation of the LV in longitudinal and circumferential directions, has been used to create a 3D variant of SDI to quantify dyssynchrony with successful', 300, 1, 1, 3, 30),
(7, 'The therapeutic range for valproic acid (total) is 50-125 µg/mL. The toxic level is greater than 150 µg/mL. The therapeutic range for valproic acid (free) is 6-22 µg/mL. The toxic level is greater than 50 µg/mL; above this threshold concentration, the binding sites on plasma albumin begin to become saturated.', 300, 1, 1, 1, 1),
(8, 'The therapeutic range for valproic acid (total) is 50-125 µg/mL. The toxic level is greater than 150 µg/mL. The therapeutic range for valproic acid (free) is 6-22 µg/mL. The toxic level is greater than 50 µg/mL; above this threshold concentration, the binding sites on plasma albumin begin to become saturated.', 260, 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `medical_hospital`
--

CREATE TABLE `medical_hospital` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `zip_code` varchar(20) NOT NULL,
  `division` varchar(50) NOT NULL,
  `name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_hospital`
--

INSERT INTO `medical_hospital` (`id`, `type`, `email`, `phone`, `address`, `zip_code`, `division`, `name_id`) VALUES
(1, 'Hospital', 'apollo@gmail.com', '01729-276556, 01714-162759', 'Block: E, Plot: 81, Bashundhara R/A', '1205', 'Dhaka', 3),
(2, 'Medical college', 'comc@ac.dghs.gov.bd', '081-65562, 66550', 'Kuchaitoly', '3570', 'Chittagong', 4),
(3, 'Medical college', 'principal@dmc.gov.bd', '02 55165088', 'Zahir raihan Road, Bakshi Bazar', '1000', 'Dhaka', 2),
(4, 'Medical college', 'admin@shsmc.gov.bd', '02-8144048', 'Sher-E-Bangla Nagar', '1207', 'Dhaka', 5),
(5, 'Medical college', 'akmmcbd@yahoo.com', '+88-01792125251', 'House # 17, Road # 8, Dhanmondi R/A', '1205', 'Dhaka', 6),
(6, 'Medical college', 'info@cmc.edu.bd', '+88-031-619400', '57, K.B. Fazlul kader rd, Panchlaish, Chawkbazar', '4203', 'Chittagong', 7),
(7, 'Hospital', 'info@squarehospital.com', '10616', '18/F, Bir Uttam  Qazi Nuruzzaman Sarak, West Panthapath', '1205', 'Dhaka', 8),
(8, 'Diagnostic center', 'info@labaidgroup.com', '01766663005', 'Plot # 01 & 03, Road # 04, Dhanmondi', '1205', 'Dhaka', 9);

-- --------------------------------------------------------

--
-- Table structure for table `medical_package`
--

CREATE TABLE `medical_package` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `details` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `delivary_in` int(11) NOT NULL,
  `remarks` longtext,
  `hospital_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_package`
--

INSERT INTO `medical_package` (`id`, `name`, `details`, `price`, `delivary_in`, `remarks`, `hospital_id`) VALUES
(1, 'Executive Check-up (Diabetic)', 'Three-dimensional echocardiography can be used to perform speckle tracking in all three dimensions simultaneously. Area strain, which integrates deformation of the LV in longitudinal and circumferential directions, has been used to create a 3D variant of SDI to quantify dyssynchrony with successful', 1200, 3, '', 3),
(2, 'All Cardiology Checkup', 'Three-dimensional echocardiography can be used to perform speckle tracking in all three dimensions simultaneously. Area strain, which integrates deformation of the LV in longitudinal and circumferential directions, has been used to create a 3D variant of SDI to quantify dyssynchrony with successful', 3000, 3, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `medical_package_item`
--

CREATE TABLE `medical_package_item` (
  `id` int(11) NOT NULL,
  `package_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_package_item`
--

INSERT INTO `medical_package_item` (`id`, `package_name_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `medical_package_item_test`
--

CREATE TABLE `medical_package_item_test` (
  `id` int(11) NOT NULL,
  `package_item_id` int(11) NOT NULL,
  `diagnostic_test_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_package_item_test`
--

INSERT INTO `medical_package_item_test` (`id`, `package_item_id`, `diagnostic_test_id`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 10),
(4, 1, 12),
(5, 1, 17),
(6, 1, 19),
(7, 1, 26),
(9, 2, 57),
(10, 2, 62),
(8, 2, 64),
(11, 2, 65);

-- --------------------------------------------------------

--
-- Table structure for table `medical_ratings`
--

CREATE TABLE `medical_ratings` (
  `id` int(11) NOT NULL,
  `rating` varchar(15) NOT NULL,
  `comments` longtext NOT NULL,
  `proof` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL,
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medical_test_category`
--

CREATE TABLE `medical_test_category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_test_category`
--

INSERT INTO `medical_test_category` (`id`, `name`, `details`) VALUES
(1, 'Bio-Chemistry', 'VMA 24hrs Urine'),
(2, 'Blood', 'Valproic Acid Blood'),
(3, 'Bone Densitometry', 'BONE DENSITOMETRY'),
(4, 'Bronchoscopy', 'Bronchoscopy with Lung Biopsy'),
(5, 'Cardiac Test', 'Transoesophageal Echo (TEE)'),
(6, 'Clinical Pathology', 'Wound Swab for Gram Stain'),
(7, 'Colonoscopy', 'Short Colonoscopy'),
(8, 'Constrast', 'Urovedio'),
(9, 'CT Scan', 'HRCT (High Resolution CT Scan)'),
(10, 'Cyto-Pathology', 'Vault Smear for Cytology'),
(11, 'Dermatology', 'Woods Lamp Examination'),
(12, 'Dialysis', 'O2');

-- --------------------------------------------------------

--
-- Table structure for table `order_billing_package_billing`
--

CREATE TABLE `order_billing_package_billing` (
  `id` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `paid_on` date NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_billing_package_order`
--

CREATE TABLE `order_billing_package_order` (
  `id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `token_num` varchar(100) DEFAULT NULL,
  `verify` tinyint(1) NOT NULL,
  `test_taking_date` date DEFAULT NULL,
  `test_taking_time` time(6) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `package_name_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_billing_test_billing`
--

CREATE TABLE `order_billing_test_billing` (
  `id` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `account_number` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `paid_on` date NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_billing_test_billing`
--

INSERT INTO `order_billing_test_billing` (`id`, `paid_amount`, `account_number`, `transaction_id`, `paid_on`, `order_id`) VALUES
(1, 300, '01763433486', '65489798', '2018-04-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_billing_test_order`
--

CREATE TABLE `order_billing_test_order` (
  `id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `token_num` varchar(100) DEFAULT NULL,
  `verify` tinyint(1) NOT NULL,
  `is_completed` varchar(20) NOT NULL,
  `test_taking_date` date DEFAULT NULL,
  `test_taking_time` time(6) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `test_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_billing_test_order`
--

INSERT INTO `order_billing_test_order` (`id`, `payment_status`, `token_num`, `verify`, `is_completed`, `test_taking_date`, `test_taking_time`, `status`, `test_id`, `user_id`) VALUES
(1, 'Fully Paid', '1245', 1, 'No', '2018-03-22', '12:45:00.000000', 'Processing', 6, 1),
(2, 'Not Paid', '', 0, 'No', NULL, NULL, 'Processing', 8, 1),
(3, 'Not Paid', NULL, 0, 'No', '2018-04-21', '21:42:15.000000', 'Processing', 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_delete_account`
--
ALTER TABLE `accounts_delete_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `accounts_patient`
--
ALTER TABLE `accounts_patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_id` (`name_id`);

--
-- Indexes for table `accounts_shipping`
--
ALTER TABLE `accounts_shipping`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patient_id` (`patient_id`);

--
-- Indexes for table `accounts_verifyaccount`
--
ALTER TABLE `accounts_verifyaccount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_verifyaccount_user_id_c8190e35_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `medical_diagnostic_test`
--
ALTER TABLE `medical_diagnostic_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_diagnostic_t_category_id_c912b1c0_fk_medical_t` (`category_id`);

--
-- Indexes for table `medical_feedback`
--
ALTER TABLE `medical_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_feedback_hospital_id_6c498fb9_fk_medical_hospital_id` (`hospital_id`),
  ADD KEY `medical_feedback_user_id_5aa4967e_fk_accounts_patient_id` (`user_id`);

--
-- Indexes for table `medical_has_test`
--
ALTER TABLE `medical_has_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_has_test_hospital_id_eb78737c_fk_medical_hospital_id` (`hospital_id`),
  ADD KEY `medical_has_test_name_id_e678d0d4_fk_medical_diagnostic_test_id` (`name_id`);

--
-- Indexes for table `medical_hospital`
--
ALTER TABLE `medical_hospital`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_id` (`name_id`);

--
-- Indexes for table `medical_package`
--
ALTER TABLE `medical_package`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_package_hospital_id_3651d22d_fk_medical_hospital_id` (`hospital_id`);

--
-- Indexes for table `medical_package_item`
--
ALTER TABLE `medical_package_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_package_item_package_name_id_10f935ab_fk_medical_p` (`package_name_id`);

--
-- Indexes for table `medical_package_item_test`
--
ALTER TABLE `medical_package_item_test`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `medical_package_item_tes_package_item_id_diagnost_34c82e07_uniq` (`package_item_id`,`diagnostic_test_id`),
  ADD KEY `medical_package_item_diagnostic_test_id_5602211e_fk_medical_d` (`diagnostic_test_id`);

--
-- Indexes for table `medical_ratings`
--
ALTER TABLE `medical_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medical_ratings_test_id_8f4e612a_fk_medical_has_test_id` (`test_id`),
  ADD KEY `medical_ratings_user_id_30e824e9_fk_accounts_patient_id` (`user_id`);

--
-- Indexes for table `medical_test_category`
--
ALTER TABLE `medical_test_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_billing_package_billing`
--
ALTER TABLE `order_billing_package_billing`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `order_billing_package_order`
--
ALTER TABLE `order_billing_package_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_billing_packag_package_name_id_0f8ad51c_fk_medical_p` (`package_name_id`),
  ADD KEY `order_billing_packag_user_id_1d35dcba_fk_accounts_` (`user_id`);

--
-- Indexes for table `order_billing_test_billing`
--
ALTER TABLE `order_billing_test_billing`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `order_billing_test_order`
--
ALTER TABLE `order_billing_test_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_billing_test_order_test_id_5fdb5216_fk_medical_has_test_id` (`test_id`),
  ADD KEY `order_billing_test_order_user_id_949909a9_fk_accounts_patient_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_delete_account`
--
ALTER TABLE `accounts_delete_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_patient`
--
ALTER TABLE `accounts_patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_shipping`
--
ALTER TABLE `accounts_shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_verifyaccount`
--
ALTER TABLE `accounts_verifyaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `medical_diagnostic_test`
--
ALTER TABLE `medical_diagnostic_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `medical_feedback`
--
ALTER TABLE `medical_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_has_test`
--
ALTER TABLE `medical_has_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medical_hospital`
--
ALTER TABLE `medical_hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medical_package`
--
ALTER TABLE `medical_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medical_package_item`
--
ALTER TABLE `medical_package_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medical_package_item_test`
--
ALTER TABLE `medical_package_item_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `medical_ratings`
--
ALTER TABLE `medical_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medical_test_category`
--
ALTER TABLE `medical_test_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_billing_package_billing`
--
ALTER TABLE `order_billing_package_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_billing_package_order`
--
ALTER TABLE `order_billing_package_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_billing_test_billing`
--
ALTER TABLE `order_billing_test_billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_billing_test_order`
--
ALTER TABLE `order_billing_test_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_delete_account`
--
ALTER TABLE `accounts_delete_account`
  ADD CONSTRAINT `accounts_delete_account_user_id_2357049c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_patient`
--
ALTER TABLE `accounts_patient`
  ADD CONSTRAINT `accounts_patient_name_id_121447be_fk_auth_user_id` FOREIGN KEY (`name_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_shipping`
--
ALTER TABLE `accounts_shipping`
  ADD CONSTRAINT `accounts_shipping_patient_id_c5d58e8e_fk_accounts_patient_id` FOREIGN KEY (`patient_id`) REFERENCES `accounts_patient` (`id`);

--
-- Constraints for table `accounts_verifyaccount`
--
ALTER TABLE `accounts_verifyaccount`
  ADD CONSTRAINT `accounts_verifyaccount_user_id_c8190e35_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `medical_diagnostic_test`
--
ALTER TABLE `medical_diagnostic_test`
  ADD CONSTRAINT `medical_diagnostic_t_category_id_c912b1c0_fk_medical_t` FOREIGN KEY (`category_id`) REFERENCES `medical_test_category` (`id`);

--
-- Constraints for table `medical_feedback`
--
ALTER TABLE `medical_feedback`
  ADD CONSTRAINT `medical_feedback_hospital_id_6c498fb9_fk_medical_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `medical_hospital` (`id`),
  ADD CONSTRAINT `medical_feedback_user_id_5aa4967e_fk_accounts_patient_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_patient` (`id`);

--
-- Constraints for table `medical_has_test`
--
ALTER TABLE `medical_has_test`
  ADD CONSTRAINT `medical_has_test_hospital_id_eb78737c_fk_medical_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `medical_hospital` (`id`),
  ADD CONSTRAINT `medical_has_test_name_id_e678d0d4_fk_medical_diagnostic_test_id` FOREIGN KEY (`name_id`) REFERENCES `medical_diagnostic_test` (`id`);

--
-- Constraints for table `medical_hospital`
--
ALTER TABLE `medical_hospital`
  ADD CONSTRAINT `medical_hospital_name_id_185b0672_fk_auth_user_id` FOREIGN KEY (`name_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `medical_package`
--
ALTER TABLE `medical_package`
  ADD CONSTRAINT `medical_package_hospital_id_3651d22d_fk_medical_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `medical_hospital` (`id`);

--
-- Constraints for table `medical_package_item`
--
ALTER TABLE `medical_package_item`
  ADD CONSTRAINT `medical_package_item_package_name_id_10f935ab_fk_medical_p` FOREIGN KEY (`package_name_id`) REFERENCES `medical_package` (`id`);

--
-- Constraints for table `medical_package_item_test`
--
ALTER TABLE `medical_package_item_test`
  ADD CONSTRAINT `medical_package_item_diagnostic_test_id_5602211e_fk_medical_d` FOREIGN KEY (`diagnostic_test_id`) REFERENCES `medical_diagnostic_test` (`id`),
  ADD CONSTRAINT `medical_package_item_package_item_id_fb7a768f_fk_medical_p` FOREIGN KEY (`package_item_id`) REFERENCES `medical_package_item` (`id`);

--
-- Constraints for table `medical_ratings`
--
ALTER TABLE `medical_ratings`
  ADD CONSTRAINT `medical_ratings_test_id_8f4e612a_fk_medical_has_test_id` FOREIGN KEY (`test_id`) REFERENCES `medical_has_test` (`id`),
  ADD CONSTRAINT `medical_ratings_user_id_30e824e9_fk_accounts_patient_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_patient` (`id`);

--
-- Constraints for table `order_billing_package_billing`
--
ALTER TABLE `order_billing_package_billing`
  ADD CONSTRAINT `order_billing_packag_order_id_e0343ba2_fk_order_bil` FOREIGN KEY (`order_id`) REFERENCES `order_billing_package_order` (`id`);

--
-- Constraints for table `order_billing_package_order`
--
ALTER TABLE `order_billing_package_order`
  ADD CONSTRAINT `order_billing_packag_package_name_id_0f8ad51c_fk_medical_p` FOREIGN KEY (`package_name_id`) REFERENCES `medical_package` (`id`),
  ADD CONSTRAINT `order_billing_packag_user_id_1d35dcba_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_patient` (`id`);

--
-- Constraints for table `order_billing_test_billing`
--
ALTER TABLE `order_billing_test_billing`
  ADD CONSTRAINT `order_billing_test_b_order_id_4ec57ea7_fk_order_bil` FOREIGN KEY (`order_id`) REFERENCES `order_billing_test_order` (`id`);

--
-- Constraints for table `order_billing_test_order`
--
ALTER TABLE `order_billing_test_order`
  ADD CONSTRAINT `order_billing_test_order_test_id_5fdb5216_fk_medical_has_test_id` FOREIGN KEY (`test_id`) REFERENCES `medical_has_test` (`id`),
  ADD CONSTRAINT `order_billing_test_order_user_id_949909a9_fk_accounts_patient_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_patient` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
