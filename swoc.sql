-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 04:56 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `swoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add registration', 7, 'add_registration'),
(26, 'Can change registration', 7, 'change_registration'),
(27, 'Can delete registration', 7, 'delete_registration'),
(28, 'Can view registration', 7, 'view_registration'),
(29, 'Can add addinternalmentors', 8, 'add_addinternalmentors'),
(30, 'Can change addinternalmentors', 8, 'change_addinternalmentors'),
(31, 'Can delete addinternalmentors', 8, 'delete_addinternalmentors'),
(32, 'Can view addinternalmentors', 8, 'view_addinternalmentors'),
(33, 'Can add addexternalmentors', 9, 'add_addexternalmentors'),
(34, 'Can change addexternalmentors', 9, 'change_addexternalmentors'),
(35, 'Can delete addexternalmentors', 9, 'delete_addexternalmentors'),
(36, 'Can view addexternalmentors', 9, 'view_addexternalmentors'),
(37, 'Can add addcoordinator', 10, 'add_addcoordinator'),
(38, 'Can change addcoordinator', 10, 'change_addcoordinator'),
(39, 'Can delete addcoordinator', 10, 'delete_addcoordinator'),
(40, 'Can view addcoordinator', 10, 'view_addcoordinator'),
(41, 'Can add addnews', 11, 'add_addnews'),
(42, 'Can change addnews', 11, 'change_addnews'),
(43, 'Can delete addnews', 11, 'delete_addnews'),
(44, 'Can view addnews', 11, 'view_addnews'),
(45, 'Can add bookedstudents', 12, 'add_bookedstudents'),
(46, 'Can change bookedstudents', 12, 'change_bookedstudents'),
(47, 'Can delete bookedstudents', 12, 'delete_bookedstudents'),
(48, 'Can view bookedstudents', 12, 'view_bookedstudents'),
(49, 'Can add feedback', 13, 'add_feedback'),
(50, 'Can change feedback', 13, 'change_feedback'),
(51, 'Can delete feedback', 13, 'delete_feedback'),
(52, 'Can view feedback', 13, 'view_feedback'),
(53, 'Can add complaint', 14, 'add_complaint'),
(54, 'Can change complaint', 14, 'change_complaint'),
(55, 'Can delete complaint', 14, 'delete_complaint'),
(56, 'Can view complaint', 14, 'view_complaint'),
(57, 'Can add stud_attendance', 15, 'add_stud_attendance'),
(58, 'Can change stud_attendance', 15, 'change_stud_attendance'),
(59, 'Can delete stud_attendance', 15, 'delete_stud_attendance'),
(60, 'Can view stud_attendance', 15, 'view_stud_attendance'),
(61, 'Can add addprograms', 16, 'add_addprograms'),
(62, 'Can change addprograms', 16, 'change_addprograms'),
(63, 'Can delete addprograms', 16, 'delete_addprograms'),
(64, 'Can view addprograms', 16, 'view_addprograms'),
(65, 'Can add addsurvey', 17, 'add_addsurvey'),
(66, 'Can change addsurvey', 17, 'change_addsurvey'),
(67, 'Can delete addsurvey', 17, 'delete_addsurvey'),
(68, 'Can view addsurvey', 17, 'view_addsurvey'),
(69, 'Can add skill', 18, 'add_skill'),
(70, 'Can change skill', 18, 'change_skill'),
(71, 'Can delete skill', 18, 'delete_skill'),
(72, 'Can view skill', 18, 'view_skill'),
(73, 'Can add tests', 19, 'add_tests'),
(74, 'Can change tests', 19, 'change_tests'),
(75, 'Can delete tests', 19, 'delete_tests'),
(76, 'Can view tests', 19, 'view_tests');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(10, 'swoc', 'addcoordinator'),
(9, 'swoc', 'addexternalmentors'),
(8, 'swoc', 'addinternalmentors'),
(11, 'swoc', 'addnews'),
(16, 'swoc', 'addprograms'),
(17, 'swoc', 'addsurvey'),
(12, 'swoc', 'bookedstudents'),
(14, 'swoc', 'complaint'),
(13, 'swoc', 'feedback'),
(7, 'swoc', 'registration'),
(18, 'swoc', 'skill'),
(15, 'swoc', 'stud_attendance'),
(19, 'swoc', 'tests');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-13 04:43:37.947099'),
(2, 'auth', '0001_initial', '2023-03-13 04:43:39.828012'),
(3, 'admin', '0001_initial', '2023-03-13 04:43:40.302871'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-13 04:43:40.324865'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-13 04:43:40.337107'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-13 04:43:40.528581'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-13 04:43:40.634736'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-13 04:43:40.852763'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-13 04:43:40.865603'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-13 04:43:40.981345'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-13 04:43:40.993147'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-13 04:43:41.017686'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-13 04:43:41.121750'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-13 04:43:41.239724'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-13 04:43:41.366918'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-13 04:43:41.401570'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-13 04:43:41.525232'),
(18, 'sessions', '0001_initial', '2023-03-13 04:43:41.813203'),
(19, 'swoc', '0001_initial', '2023-03-13 04:58:19.652413');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4kdu6wlpdf5gn710lc6i3tnfzmfh418e', '.eJyrVsrNTFGyMtRRys1LzE1VslJyLM4oz8xTcM1JyS9OVQKKp-YmZuYAJRKTM0od0kEcveT8XLBMXkl-EVAGyqgFAMpSGZc:1qmUCS:zOqgBMa1FvBTaKWHppt_R7PJ7sar8QPfy5OaC8Yxtqs', '2023-10-14 07:15:40.122887'),
('5vfrlvet6vkq2idjkqo3tlangg1jcu9c', 'e30:1qqUgV:U4JkRQCtWNVOq22pGG3UHFeVzicJfmO72vkfhkUHsys', '2023-10-25 08:35:15.635576'),
('6c41zeajis5xebldwhl49ke2y6mv53xl', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXQgIjAZpVoAy3IRew:1pbwcO:iAttBthgDTvf7HHM-j8mm5EyUyM6Wu2YUJq0WTUoZCA', '2023-03-28 04:50:36.142729'),
('a39iiqz45ym608lyd1h5n8yfptm2pnec', 'e30:1pljeS:e2CePa6iA5II7C98g5A-v4W2CDQ2RYiML1ihvQ5Gi40', '2023-04-24 05:01:12.348364'),
('asj24p9cjrcgyoatv6g96daw0ts56b3c', '.eJyrVipNTEkpSi0uVrJSSk5KT1LSUSrNTFGyMgTSeYm5qUDhxKLSPJBwam5iZg6QX5xS7JAOYusl5-eCJIpTi4DCYKoWADAMGlM:1pepO6:dV-0jPhDOud8u_7iXDWM94XkGKocxgF_0bnt5n7cgLY', '2023-04-05 03:43:46.202599'),
('g97bycf6omy4d40drifjpna1u10ely31', 'e30:1qya3Y:L-PRsPUiqfpjNxW7coiOoNdMPGID_DMg0Z99_1qUmkg', '2023-11-16 15:56:28.866743'),
('pt831u2tlfae4xv7ijgu0b11h5ur4m1y', '.eJyrVsrNTFGyMtJRys1LzE1VslIqTsxVKE5MKlUCCqXmJmbmgMWSSh3SQRy95PxcsExeSX4RUAbKqAUASHEXyA:1qqB4S:PeR9gPpvKGtlNltSDIdixurzWZXXt5WFxwAUs5dtsPc', '2023-10-24 11:38:40.154249'),
('pv4gu27f4pnbynocdtngbsi07epktbk0', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXQgIjAZpVoAy3IRew:1pbxgn:MV1jT2iRXiDDHQRHYas67WyPHt6Q1r2LYQ-37L_Vv2A', '2023-03-28 05:59:13.282003'),
('qnrsio6t80dxwbxcknrals5v0czvb8n9', 'e30:1pfH1i:FQIylPAQwRzUgfUIFDhCMHksCPEYPoMfS9mpsyqpjAI', '2023-04-06 09:14:30.876092');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_addexternalmentors`
--

CREATE TABLE IF NOT EXISTS `swoc_addexternalmentors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  `dept` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `type` varchar(340) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swoc_addexternalmentors`
--

INSERT INTO `swoc_addexternalmentors` (`id`, `name`, `image`, `dept`, `email`, `phone`, `address`, `username`, `password`, `type`) VALUES
(1, 'Ashwin Eldose', 'images_2.jpeg', 'bca', 'achu@gmail.com', '7689776622', 'kollam', '', '1234', 'Internal'),
(2, 'sam sabu', 'scandix.eu-trimble-skp-stdo-yr-cnl-sub-312-removebg-preview_RpCI4m3.png', 'bca', 'sabu@gmail.com', '09654273492', 'sam villa', 'sab', '1234', 'External');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_addprograms`
--

CREATE TABLE IF NOT EXISTS `swoc_addprograms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` varchar(225) NOT NULL,
  `pgtype` varchar(225) NOT NULL,
  `link` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swoc_addprograms`
--

INSERT INTO `swoc_addprograms` (`id`, `name`, `description`, `pgtype`, `link`, `date`, `time`) VALUES
(1, 'spl program', 'spl program', 'arts', 'meet.google.com/qkm-smti-fpw', '2023-03-15', '12.00-3.00pm'),
(2, 'Python Developer', 'Python developer interview at infopark kochi', 'job interview', 'infopark kochi', '2023-10-28', '10am');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_addsurvey`
--

CREATE TABLE IF NOT EXISTS `swoc_addsurvey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studid` varchar(200) NOT NULL,
  `name` varchar(225) NOT NULL,
  `dept` varchar(225) NOT NULL,
  `sem` varchar(200) NOT NULL,
  `strength` varchar(200) NOT NULL,
  `weakness` varchar(200) NOT NULL,
  `opportunities` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swoc_addsurvey`
--

INSERT INTO `swoc_addsurvey` (`id`, `studid`, `name`, `dept`, `sem`, `strength`, `weakness`, `opportunities`, `description`, `status`) VALUES
(1, '1', 'arun', 'BCOM', '1', 'hardworking', 'trust everyone', 'dance', 'aabb', 'approve'),
(2, '3', 'Jerin', 'BCA', '6', 'Testing', 'Testing', 'TEst', 'hgjwegdjhg', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_bookedstudents`
--

CREATE TABLE IF NOT EXISTS `swoc_bookedstudents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` varchar(150) NOT NULL,
  `dept` varchar(150) NOT NULL,
  `sem` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `exmentorid` varchar(150) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `swoc_bookedstudents`
--

INSERT INTO `swoc_bookedstudents` (`id`, `sid`, `dept`, `sem`, `email`, `phone`, `exmentorid`, `name`) VALUES
(1, '1', 'BCOM', 'dsf', 'sds@gmail.com', '7689776622', '1', 'arun'),
(2, '3', 'BCA', '6', 'j@gmail.com', '9654273491', '2', 'Jerin'),
(4, '4', 'BTECH', '6', 'm@gmail.com', '09654273492', '2', 'manu');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_chats`
--

CREATE TABLE IF NOT EXISTS `swoc_chats` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `s_id` int(3) NOT NULL,
  `m_id` int(3) NOT NULL,
  `s_msg` varchar(200) NOT NULL,
  `m_msg` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `swoc_chats`
--

INSERT INTO `swoc_chats` (`id`, `s_id`, `m_id`, `s_msg`, `m_msg`) VALUES
(1, 3, 2, 'hai', ''),
(2, 3, 2, 'hello', ''),
(3, 3, 2, '', 'haii'),
(4, 3, 2, '', 'hello'),
(6, 4, 2, '', 'Hello manu'),
(7, 3, 2, 'There is an error with the site', ''),
(8, 3, 2, '', 'okk'),
(10, 4, 2, 'haii sir', ''),
(11, 1, 1, '', 'Haii'),
(12, 1, 1, 'hello', '');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_complaint`
--

CREATE TABLE IF NOT EXISTS `swoc_complaint` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `complaint` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swoc_complaint`
--

INSERT INTO `swoc_complaint` (`id`, `user_id`, `complaint`) VALUES
(1, '1', 'more time ');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_feedback`
--

CREATE TABLE IF NOT EXISTS `swoc_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `studid` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swoc_feedback`
--

INSERT INTO `swoc_feedback` (`id`, `studid`, `feedback`) VALUES
(1, '1', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_registration`
--

CREATE TABLE IF NOT EXISTS `swoc_registration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `dept` varchar(150) NOT NULL,
  `sem` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `swoc_registration`
--

INSERT INTO `swoc_registration` (`id`, `name`, `dept`, `sem`, `email`, `phone`, `address`, `username`, `password`, `status`) VALUES
(1, 'arun', 'BCOM', 'dsf', 'sds@gmail.com', '7689776622', 'cbgb', 'achu', '3455', 'approved'),
(2, 'amal bs6', 'BCOM', '3', 'anu@gmail.com', '6767676767', 'segfcf', 'vava', '456', 'rejected'),
(3, 'Jerin', 'BCA', '6', 'j@gmail.com', '9654273491', 'sam villa', 'jerin', '1234', 'approved'),
(4, 'manu', 'BTECH', '6', 'm@gmail.com', '09654273492', 'sam villa', 'man', '1234', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_skill`
--

CREATE TABLE IF NOT EXISTS `swoc_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studid` varchar(200) NOT NULL,
  `skill` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `swoc_skill`
--

INSERT INTO `swoc_skill` (`id`, `studid`, `skill`) VALUES
(1, 'arun', 'learning good'),
(2, 'Jerin', 'Smart \r\nHardwork');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_stud_attendance`
--

CREATE TABLE IF NOT EXISTS `swoc_stud_attendance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `studentid` varchar(150) NOT NULL,
  `Date` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `swoc_stud_attendance`
--

INSERT INTO `swoc_stud_attendance` (`id`, `studentid`, `Date`, `status`) VALUES
(3, 'Jerin', '2023-10-11', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_tests`
--

CREATE TABLE IF NOT EXISTS `swoc_tests` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `stud_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `typee` varchar(100) NOT NULL,
  `mid` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `result` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `swoc_tests`
--

INSERT INTO `swoc_tests` (`id`, `name`, `stud_id`, `date`, `link`, `typee`, `mid`, `status`, `result`) VALUES
(1, 'Skill', 'Jerin', '2023-10-10T14:30', 'infopark kochi', 'Offline', '2', 'completed', '76%'),
(3, 'Soft Skill test ', 'Jerin', '2023-10-10T14:00', 'https://docs.google.com/forms/d/1o8I9muXlYsTm_kabOuj-jgcvXwJhM_sZg-VEyQEak_8/edit', 'Online', '2', 'completed', '80%');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
