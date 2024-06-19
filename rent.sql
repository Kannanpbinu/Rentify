-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 06:22 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rent`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

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
(25, 'Can add technican', 7, 'add_technican'),
(26, 'Can change technican', 7, 'change_technican'),
(27, 'Can delete technican', 7, 'delete_technican'),
(28, 'Can view technican', 7, 'view_technican'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add vendor', 9, 'add_vendor'),
(34, 'Can change vendor', 9, 'change_vendor'),
(35, 'Can delete vendor', 9, 'delete_vendor'),
(36, 'Can view vendor', 9, 'view_vendor'),
(37, 'Can add userrequest', 10, 'add_userrequest'),
(38, 'Can change userrequest', 10, 'change_userrequest'),
(39, 'Can delete userrequest', 10, 'delete_userrequest'),
(40, 'Can view userrequest', 10, 'view_userrequest'),
(41, 'Can add item', 11, 'add_item'),
(42, 'Can change item', 11, 'change_item'),
(43, 'Can delete item', 11, 'delete_item'),
(44, 'Can view item', 11, 'view_item'),
(45, 'Can add orders', 12, 'add_orders'),
(46, 'Can change orders', 12, 'change_orders'),
(47, 'Can delete orders', 12, 'delete_orders'),
(48, 'Can view orders', 12, 'view_orders'),
(49, 'Can add payment', 13, 'add_payment'),
(50, 'Can change payment', 13, 'change_payment'),
(51, 'Can delete payment', 13, 'delete_payment'),
(52, 'Can view payment', 13, 'view_payment');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'rentify', 'item'),
(12, 'rentify', 'orders'),
(13, 'rentify', 'payment'),
(7, 'rentify', 'technican'),
(8, 'rentify', 'user'),
(10, 'rentify', 'userrequest'),
(9, 'rentify', 'vendor'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2023-02-04 04:09:01.711462'),
(2, 'auth', '0001_initial', '2023-02-04 04:09:03.539515'),
(3, 'admin', '0001_initial', '2023-02-04 04:09:03.977436'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-02-04 04:09:03.991735'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-02-04 04:09:04.010965'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-02-04 04:09:04.223828'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-02-04 04:09:04.416267'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-02-04 04:09:04.547259'),
(9, 'auth', '0004_alter_user_username_opts', '2023-02-04 04:09:04.559282'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-02-04 04:09:04.667439'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-02-04 04:09:04.678224'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-02-04 04:09:04.692920'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-02-04 04:09:04.805206'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-02-04 04:09:04.908169'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-02-04 04:09:05.020153'),
(16, 'auth', '0011_update_proxy_permissions', '2023-02-04 04:09:05.054089'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-02-04 04:09:05.163684'),
(18, 'sessions', '0001_initial', '2023-02-04 04:09:05.440036'),
(19, 'rentify', '0001_initial', '2023-02-04 04:09:35.568072');

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
('3qbyreg07zpi10spe7a6ah0wqqeibs3q', 'e30:1pQiQL:D5ke31e3vtZdjiPBsbefUF-syFdLPdfFjyaesMYe_io', '2023-02-25 05:27:45.438742'),
('6x0wlm2yd6c6fb9t0be02gkq21r2rcp7', 'e30:1pPFf5:wtZI_vrlIwpE_3m9ep9PNWuW8gUJpUwgFs6NNT8auXo', '2023-02-21 04:32:55.577529'),
('80p10xoo58tnbs3misp7jrtoouqg46jz', '.eJyrVipNTEkpSi0uVrJS8k7My8osSiwoSMzJqVTSUSrNTFGyMgTSeYm5qUD5xLzEvJSMUof03MTMHL3k_FyQmlQQB5dkcWoRUApM1QIAwI4kjA:1pRoIy:cPdQUqAaaKUKW4ikEncsHJb-oIJJkjIVuq7JmivjnGo', '2023-02-28 05:56:40.238535'),
('kl7i0363wr107ry3s6je7tx78ejjojtr', 'e30:1pRyxF:zhHz5Sv_FZ7pe5AHhmsz6dT6gx9xD-A_Rg_mK7y2uR4', '2023-02-28 17:18:57.072908'),
('ngxmo0234wqxl12jpe3evot8jsxuylql', 'e30:1pPxv7:9DNV_I1im2ZgK6uR_Xbe813xhNPzdZAc3lOgCmedzBM', '2023-02-23 03:48:25.998832'),
('oh8cr09er14ulxhnt86j02n2a18hoj38', '.eJyrVirJTFGyMtZRKslLzE1VslJKzE3MUUgqNlMCCqXmJmbmgMSSM0od0kEcveT8XLBMckZeZnJiHlASwa4FANSsGb4:1pQ4pG:aQ_UzrtMVQ45LXvXe33wtixCiQ09wwT6oAWNesbcxjY', '2023-02-23 11:10:50.645563'),
('v8iz9cgquna4tk731frag140mxxosx24', 'e30:1pRFxM:J4EDyNPgOFLzcHsrMXVm1uRRQYOhk6wic9uGQ-Fp0QY', '2023-02-26 17:16:04.571360'),
('wk17g1oc13f24nj9ek76wywmh08u372t', 'e30:1pPM8n:iD1TXo8bA-fqhTK02qKMX7q0WFMCPM6zs2u6TiMc9rg', '2023-02-21 11:28:01.406796');

-- --------------------------------------------------------

--
-- Table structure for table `rentify_item`
--

CREATE TABLE IF NOT EXISTS `rentify_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `price` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `item_type` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  `vid` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rentify_item`
--

INSERT INTO `rentify_item` (`id`, `name`, `price`, `description`, `quantity`, `item_type`, `image`, `vid`) VALUES
(2, 'Audi Q6', '1000', 'Audi Q6 2020 Model', '1', 'Vehicle', 'Audi_Q6.jpeg', '3'),
(4, 'computer', '300', 'acer nitro15', '1', 'Electronic Devive', 'HP_Pavilion_15_iAKSya5.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rentify_orders`
--

CREATE TABLE IF NOT EXISTS `rentify_orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `item_id` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `price` varchar(200) NOT NULL,
  `date` varchar(150) NOT NULL,
  `edate` varchar(200) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `rentify_orders`
--

INSERT INTO `rentify_orders` (`id`, `user_id`, `item_id`, `quantity`, `price`, `date`, `edate`, `status`) VALUES
(1, '1', '1', '1', '150', '2023-02-25', '', 'paid'),
(2, '2', '1', '1', '150', '2023-02-16', '', 'paid'),
(3, '1', '4', '1', '1200', '2023-02-18', '', 'paid'),
(4, '2', '1', '2', '150', '2023-02-14', '', 'order'),
(5, '2', '1', '2', '900', '2023-02-15', '', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `rentify_payment`
--

CREATE TABLE IF NOT EXISTS `rentify_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `item_id` varchar(150) NOT NULL,
  `order_id` varchar(150) NOT NULL,
  `cardname` varchar(150) NOT NULL,
  `cardnumber` varchar(150) NOT NULL,
  `cardtype` varchar(150) NOT NULL,
  `cardyear` varchar(150) NOT NULL,
  `cardmonth` varchar(150) NOT NULL,
  `cvv` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rentify_payment`
--

INSERT INTO `rentify_payment` (`id`, `user_id`, `item_id`, `order_id`, `cardname`, `cardnumber`, `cardtype`, `cardyear`, `cardmonth`, `cvv`, `date`, `status`) VALUES
(1, '2', '1', '2', 'SBI', '20024623498745', 'Credit Card', '2023', '1', '342', '2023-02-16', 'paid'),
(2, '1', '4', '3', 'SBI', '56343278542343', 'Credit Card', '2023', '1', '654', '2023-02-18', 'paid'),
(3, '1', '1', '1', 'asxas', '56787878789', 'Credit Card', '2024', '7', '565', '2023-02-25', 'paid'),
(4, '2', '1', '5', 'uyeuwa', '7785675646465', 'Credit Card', '2025', '5', '767', '2023-02-15', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `rentify_technican`
--

CREATE TABLE IF NOT EXISTS `rentify_technican` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `age` varchar(200) NOT NULL,
  `status` varchar(150) NOT NULL,
  `vid` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rentify_technican`
--

INSERT INTO `rentify_technican` (`id`, `name`, `email`, `phone`, `address`, `password`, `age`, `status`, `vid`) VALUES
(1, 'joel', 'joel@gmail.com', '9867542356', 'Kottayam\r\n', '1234', '25', 'approved', ''),
(2, 'jishnu', 'jishnu@gmail.com', '7089763412', 'Alappuzha', '1234', '24', 'approved', '1'),
(3, 'akshay', 'akshay@gmail.com', '7856438714', 'fort Kochi', '1234', '26', 'approved', '');

-- --------------------------------------------------------

--
-- Table structure for table `rentify_type`
--

CREATE TABLE IF NOT EXISTS `rentify_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `rentify_type`
--

INSERT INTO `rentify_type` (`id`, `type`) VALUES
(1, 'Electronic Devive'),
(2, 'Vehicle'),
(3, 'Machine'),
(4, 'Equipment'),
(5, 'Vehicle'),
(7, 'Audi'),
(8, 'Electronic Devive');

-- --------------------------------------------------------

--
-- Table structure for table `rentify_user`
--

CREATE TABLE IF NOT EXISTS `rentify_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rentify_user`
--

INSERT INTO `rentify_user` (`id`, `name`, `email`, `phone`, `address`, `password`) VALUES
(1, 'anandhu@gmail.com', 'anandhu@gmail.com', '9856784565', 'Kanjirappally', '1234'),
(2, 'sabin', 'sabin@gmail.com', '9856342376', 'aluva\r\n', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `rentify_userrequest`
--

CREATE TABLE IF NOT EXISTS `rentify_userrequest` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tech_id` varchar(150) NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rentify_userrequest`
--

INSERT INTO `rentify_userrequest` (`id`, `tech_id`, `user_id`, `description`, `date`, `status`) VALUES
(1, '1', '2', 'Audi Q6 2020 Model', '2023-02-17', 'approved'),
(2, '1', '2', 'HP Pavilion', '2023-02-24', 'pending'),
(3, '3', '1', 'HP Pavilion', '2023-02-18', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `rentify_vendor`
--

CREATE TABLE IF NOT EXISTS `rentify_vendor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `place` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rentify_vendor`
--

INSERT INTO `rentify_vendor` (`id`, `name`, `email`, `phone`, `address`, `place`, `username`, `password`) VALUES
(1, 'albin', 'albin@gmail.com', '9867342187', 'kattappana(CPO),Idukki', 'Kattappan', 'albin', '1234'),
(2, 'vishnu', 'vishnu@gmail.com', '9870412435', 'kollam(CPO),kollam', 'kollam', 'vishnu', '1234'),
(3, 'arun', 'arun@gmail.com', '983476231', 'marine drive', 'ernakulam', 'arun', '1234');

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
