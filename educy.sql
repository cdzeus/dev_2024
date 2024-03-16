-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 05:44 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `educy`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add bag', 7, 'add_bag'),
(26, 'Can change bag', 7, 'change_bag'),
(27, 'Can delete bag', 7, 'delete_bag'),
(28, 'Can view bag', 7, 'view_bag'),
(29, 'Can add product', 8, 'add_product'),
(30, 'Can change product', 8, 'change_product'),
(31, 'Can delete product', 8, 'delete_product'),
(32, 'Can view product', 8, 'view_product'),
(33, 'Can add user log', 9, 'add_userlog'),
(34, 'Can change user log', 9, 'change_userlog'),
(35, 'Can delete user log', 9, 'delete_userlog'),
(36, 'Can view user log', 9, 'view_userlog');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$D7ScgqWKmRiLs9UttrxdoA$jt7NdYiHdcijymmzN+zMn8hck4lf1sbT6oObBxRCZiA=', '2024-02-29 10:41:23.383107', 0, 'fred', '', '', '', 0, 1, '2024-02-28 04:48:02.312315'),
(3, 'pbkdf2_sha256$720000$Y1VxGZJEhbFvugNJK9c7Cm$FZrTGiksjPcQ9Z+OjH7mLTu7S462ANJZyCSAPmtaTrA=', '2024-02-29 08:00:53.673885', 0, 'fredrakoto', '', '', '', 0, 1, '2024-02-29 08:00:50.878500'),
(5, 'pbkdf2_sha256$720000$82EMebrzKCc1Un72LxcC6H$rYZ8e0YkG4kPd9V86aLOQ+zWivxD7Xn/0qkGfH3zTcU=', '2024-02-29 10:03:58.822775', 0, 'admin1', '', '', '', 0, 1, '2024-02-29 10:03:56.463761'),
(6, 'pbkdf2_sha256$720000$W6SmJKXLunJ0egN8SshvoL$vdwsWLr48xnqlVibE8wu5N1LmKldfvkD1ySQRlA2YOs=', '2024-03-01 22:48:00.309856', 0, 'admin', '', '', '', 0, 1, '2024-02-29 10:55:30.480378'),
(7, 'pbkdf2_sha256$720000$E4916CTTbUI7ZvdchisWHa$Z9Jfnc3bKVnPOwgli8Ns2MRdgsWusxQMR004HOhJoRs=', '2024-02-29 13:39:42.597388', 0, 'ledanze', '', '', '', 0, 1, '2024-02-29 13:39:40.035797'),
(10, 'pbkdf2_sha256$720000$BSaNMxr6l844TNRgbI1Hlt$k9oK94aF+su0RPIf/kFvWSG+e+LICUJ38lfTM2gwLng=', '2024-03-01 07:38:47.226850', 0, 'test', '', '', '', 0, 1, '2024-03-01 07:38:44.870876'),
(12, 'pbkdf2_sha256$720000$vBj5NPHaZA0hSUniZWzwmR$a4sGtDVIoUCZ1yvU32O3VSFbqITP9fGGHy3Dm6quXd0=', '2024-03-01 22:33:59.360205', 0, 'username007', '', '', '', 0, 1, '2024-03-01 22:21:39.845554');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'educy', 'bag'),
(8, 'educy', 'product'),
(9, 'educy', 'userlog'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-28 04:45:32.201003'),
(2, 'auth', '0001_initial', '2024-02-28 04:45:47.634728'),
(3, 'admin', '0001_initial', '2024-02-28 04:45:53.160917'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-02-28 04:45:53.223424'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-28 04:45:53.389719'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-02-28 04:45:56.958842'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-02-28 04:45:59.591237'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-02-28 04:46:00.055116'),
(9, 'auth', '0004_alter_user_username_opts', '2024-02-28 04:46:00.101981'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-02-28 04:46:01.376933'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-02-28 04:46:01.533184'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-02-28 04:46:01.671842'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-02-28 04:46:01.815502'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-02-28 04:46:01.930157'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-02-28 04:46:02.417692'),
(16, 'auth', '0011_update_proxy_permissions', '2024-02-28 04:46:02.491550'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-02-28 04:46:02.586223'),
(18, 'educy', '0001_initial', '2024-02-28 04:46:03.258625'),
(19, 'educy', '0002_alter_products_image', '2024-02-28 04:46:03.449242'),
(20, 'educy', '0003_rename_products_product', '2024-02-28 04:46:03.760327'),
(21, 'sessions', '0001_initial', '2024-02-28 04:46:04.994225'),
(22, 'educy', '0004_userlog', '2024-02-29 14:07:25.310869'),
(23, 'educy', '0005_rename_product_name_userlog_username', '2024-02-29 14:14:55.902482'),
(24, 'educy', '0006_bag_quantity', '2024-03-01 21:45:31.304107'),
(25, 'educy', '0007_bag_product_image_bag_product_price', '2024-03-02 01:00:06.738918');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1clmsocjyzityj8m08d7t838wlhtiks7', '.eJxVjEEOwiAQRe_C2hBoZQCX7nsGMsCMVA0kpV0Z765NutDtf-_9lwi4rSVsnZYwZ3ERIE6_W8T0oLqDfMd6azK1ui5zlLsiD9rl1DI9r4f7d1Cwl29NEVz2iBo9KzID4gjMCQGdBaU1GSYmomwVOE_WKO3O2o6jMhGGxOL9ARGWOGw:1rgBfc:zdc5c30sZTYvg5GX_Ryz-_kZ-60UfQvHT9pvC5aHp3k', '2024-03-15 22:48:00.409051');

-- --------------------------------------------------------

--
-- Table structure for table `educy_bag`
--

CREATE TABLE `educy_bag` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `educy_bag`
--

INSERT INTO `educy_bag` (`id`, `product_name`, `username`, `quantity`, `product_image`, `product_price`) VALUES
(35, 'Mini Car', 'admin', 5, 'giorgio-trovato-p0OlRAAYXLY-unsplash.jpg', 250.00),
(36, 'Curse of Mouse', 'admin', 5, 'oscar-ivan-esquivel-arteaga-ZtxED1cpB1E-unsplash.jpg', 133.00),
(37, 'Men Fashion', 'admin', 5, 'nikhil-u7N77YRs9g0-unsplash.jpg', 25.00);

-- --------------------------------------------------------

--
-- Table structure for table `educy_product`
--

CREATE TABLE `educy_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `favorite` tinyint(1) NOT NULL,
  `type` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `educy_product`
--

INSERT INTO `educy_product` (`id`, `name`, `description`, `price`, `favorite`, `type`, `image`) VALUES
(36, 'Guitar AC', 'The best guitar you can get on 2024.', 160.00, 0, 'New arrival', 'guitar-acoustique.png'),
(37, 'Briquet Bic', 'Use more and more without loss!', 99.00, 0, 'Low Price', 'cas-verrest-lGBtfnQvOoI-unsplash.jpg'),
(38, 'Mini Car', 'You can make a good gift with this little car.', 250.00, 0, 'New arrival', 'giorgio-trovato-p0OlRAAYXLY-unsplash.jpg'),
(39, 'Camera Nikkon', 'Lens are not included but the default is best', 500.00, 0, 'Photography', 'giorgio-manenti-wmmIsQYZsvc-unsplash.jpg'),
(40, 'Curse of Mouse', 'It\'s not a horror movie, we just want to say that the mouse is alive.', 133.00, 0, 'New arrival', 'oscar-ivan-esquivel-arteaga-ZtxED1cpB1E-unsplash.jpg'),
(41, 'Guitar Classique', 'Use your own and be the star', 522.00, 0, 'Instrument', 'yucel-moran-5HltXT-6Vgw-unsplash.jpg'),
(42, 'Sneakers', 'Sneaks some sneaks of the sneaks.', 45.00, 0, 'Low Price', 'giorgio-trovato-LV_4qM5Gf9c-unsplash.jpg'),
(43, 'EarPoods', 'Invade the reality with our pure bass earPoods. lol :)', 125.00, 0, 'New arrival', 'liviu-c-ti3P_Bm2zio-unsplash.jpg'),
(44, 'Men Fashion', 'Bee.', 25.00, 0, 'Low Price', 'nikhil-u7N77YRs9g0-unsplash.jpg'),
(45, 'Carrrrss', 'Nothiing but just the speeeeed.', 255.00, 0, 'New arrival', 'giorgio-trovato-0CZwuZhiC84-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `educy_userlog`
--

CREATE TABLE `educy_userlog` (
  `id` bigint(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_joined` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `educy_userlog`
--

INSERT INTO `educy_userlog` (`id`, `username`, `password`, `email`, `date_joined`) VALUES
(1, 'fred123', 'pbkdf2_sha256$720000$2ootS96mVsOuD2IiVH7tIF$XI3SKWLTeYQOjE7bAb25qCNUPp6xLCsuYODPkkn75QI=', '', '2024-02-29 13:56:38.422596+00:00'),
(2, 'pointure', 'pbkdf2_sha256$720000$GfDYV53i8j1nL7a21VrL9S$57rNi7Rnljpz7M9hqknF2CQZbex719qKzsBUJ/jmyMM=', '', '2024-03-01 13:12:41.221288+00:00');

--
-- Indexes for dumped tables
--

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
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `educy_bag`
--
ALTER TABLE `educy_bag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educy_product`
--
ALTER TABLE `educy_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educy_userlog`
--
ALTER TABLE `educy_userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `educy_bag`
--
ALTER TABLE `educy_bag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `educy_product`
--
ALTER TABLE `educy_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `educy_userlog`
--
ALTER TABLE `educy_userlog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
