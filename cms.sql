-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 11 Şub 2025, 10:08:56
-- Sunucu sürümü: 9.1.0
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `cms`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT '',
  `img_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT '',
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `brands`
--

INSERT INTO `brands` (`id`, `title`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(7, 'deneme2', 'luffy.jpg', 2, 1, '2024-12-19 13:55:49'),
(8, 'deneme', 'zoro.png', 0, 1, '2025-01-24 08:31:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `img_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `courses`
--

INSERT INTO `courses` (`id`, `url`, `title`, `description`, `img_url`, `event_date`, `rank`, `isActive`, `createdAt`) VALUES
(4, 'deneme', 'deneme', '<p>deneme</p>', 'sanji11.jpg', '2025-01-24 00:00:00', 0, 1, '2025-01-24 08:21:03'),
(5, 'deneme2', 'deneme2', '<p>deneme2</p>', 'thumb-1920-1275009.jpg', '2025-02-10 00:00:00', 0, 1, '2025-02-10 12:47:35');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `email_settings`
--

DROP TABLE IF EXISTS `email_settings`;
CREATE TABLE IF NOT EXISTS `email_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `protocol` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `host` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `port` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT '',
  `user` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT '',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT '',
  `from` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT '',
  `to` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT '',
  `user_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `email_settings`
--

INSERT INTO `email_settings` (`id`, `protocol`, `host`, `port`, `user`, `password`, `from`, `to`, `user_name`, `isActive`, `createdAt`) VALUES
(2, 'smtp', 'ssl://smtp.gmail.com', '465', 'huseyinselen98@gmail.com', '123456', 'huseyinselen98@gmail.com', 'huseyinselen98@gmail.com', 'CMS', 1, '2018-01-14 14:57:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` int DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `files`
--

INSERT INTO `files` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(4, 11, 'uploads/galleries_v/files/kataloglarimiz/nodejs-icerik.docx', 0, 1, '2018-01-06 22:05:25'),
(5, 11, 'uzak-baglanti-ayarlari-koc.pdf', 0, 1, '2025-01-25 17:13:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `gallery_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `folder_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `rank` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `galleries`
--

INSERT INTO `galleries` (`id`, `url`, `title`, `gallery_type`, `folder_name`, `isActive`, `createdAt`, `rank`) VALUES
(1, 'yilbasi-partisi', 'Yılbaşı Partisi', 'image', 'yilbasi-partisi', 0, NULL, 2),
(9, 'videosinif-egitimleri', 'VideoSinif Eğitimleri', 'image', 'videosinif-egitimleri', 0, '2018-01-03 23:53:09', 1),
(11, 'kataloglarimiz', 'Kataloglarımız', 'file', 'kataloglarimiz', 0, '2018-01-04 00:07:06', 0),
(12, 'bayram-resimleri', 'Bayram Resimleri', 'image', 'bayram-resimleri', 0, '2018-01-06 23:32:37', 0),
(13, 'yeni-sistem-testi', 'yeni sistem testi', 'image', 'yeni-sistem-testi', 0, '2025-01-25 17:06:26', 0),
(14, 'deneme', 'Deneme', 'image', 'deneme', 1, '2025-02-10 12:45:37', 0),
(15, 'deneme', 'deneme', 'video', '', 1, '2025-02-10 12:45:52', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` int DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(27, 12, 'uploads/galleries_v/images/bayram-resimleri/ekran-resmi-2018-01-03-23-52-59.png', 1, 1, '2018-01-06 23:32:59'),
(28, 12, 'uploads/galleries_v/images/bayram-resimleri/ekran-resmi-2018-01-03-23-52-34.png', 2, 1, '2018-01-06 23:32:59'),
(30, 12, 'uploads/galleries_v/images/bayram-resimleri/ekran-resmi-2018-01-04-00-09-58.png', 3, 1, '2018-01-06 23:32:59'),
(31, 13, 'luffy.jpg', 0, 1, '2025-01-25 17:07:47'),
(32, 13, 'zoro.png', 0, 1, '2025-01-25 17:22:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `members`
--

INSERT INTO `members` (`id`, `email`, `isActive`, `createdAt`, `ip_address`) VALUES
(1, 'selen.huseyin98@gmail.com', 1, '2024-12-21 13:20:12', '::1'),
(2, 'selen.h98@gmail.com', 1, '2024-12-21 13:20:45', '::1'),
(3, 'selen.huseyin98@gmail.com', 1, '2024-12-21 13:22:13', '::1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `news_type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `viewCount` int NOT NULL,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `viewCount`, `rank`, `isActive`, `createdAt`) VALUES
(6, 'deneme', 'deneme', '<p>deneme</p>', 'image', 'zoro.png', '#', 0, 0, 1, '2025-01-24 08:19:12'),
(7, 'deneme2', 'deneme2', '<p>deneme2</p>', 'video', '#', 'https://www.youtube.com/embed/HsOJmllPG5k?si=aSrDxGBQ3TDxWQ4L', 0, 0, 1, '2025-02-10 12:49:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `popups`
--

DROP TABLE IF EXISTS `popups`;
CREATE TABLE IF NOT EXISTS `popups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `page` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `popup_unique_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `popups`
--

INSERT INTO `popups` (`id`, `title`, `description`, `page`, `isActive`, `createdAt`, `popup_unique_id`) VALUES
(6, 'One Piece', '<p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/WZ80_MkjSwQ\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe><br></p>', 'home_v', 1, '2025-01-25 10:34:05', '6794be1d7ecf4');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `finishedAt` datetime DEFAULT NULL,
  `client` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `place` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `portfolio_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `rank` int NOT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `portfolios`
--

INSERT INTO `portfolios` (`id`, `url`, `title`, `description`, `finishedAt`, `client`, `category_id`, `place`, `portfolio_url`, `rank`, `isActive`, `createdAt`) VALUES
(6, 'deneme', 'Deneme', '<p>deneme</p>', '2025-02-10 00:00:00', 'deneme', 1, 'deneme', 'deneme', 0, 1, '2025-02-10 12:41:27'),
(7, 'deneme2', 'deneme2', '                            <p>deneme2</p>                        ', '2025-02-10 00:00:00', 'deneme2', 2, 'deneme2', 'deneme2', 0, 1, '2025-02-10 12:50:19'),
(8, 'deneme3', 'deneme3', '<p>deneme3</p>', '2025-02-10 00:00:00', 'deneme3', 1, 'deneme3', 'deneme3', 0, 1, '2025-02-10 12:56:20'),
(9, 'deneme4', 'deneme4', '<p>deneme4</p>', '2025-02-10 00:00:00', 'deneme4', 2, 'deneme4', 'deneme4', 0, 1, '2025-02-10 12:56:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolio_categories`
--

DROP TABLE IF EXISTS `portfolio_categories`;
CREATE TABLE IF NOT EXISTS `portfolio_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `isActive` tinyint NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `title`, `isActive`, `createdAt`) VALUES
(1, 'Baraka', 1, '2024-12-17 19:37:20'),
(2, 'Donanım', 1, '2024-12-17 19:49:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolio_images`
--

DROP TABLE IF EXISTS `portfolio_images`;
CREATE TABLE IF NOT EXISTS `portfolio_images` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_id` int DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `isCover` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(10, 2, 'zoro.png', 0, 1, 1, '2025-01-25 19:03:53'),
(11, 2, 'luffy.jpg', 0, 1, 0, '2025-01-25 19:03:54'),
(12, 2, 'luffy.jpg', 0, 1, 0, '2025-01-25 19:23:03'),
(13, 2, 'sanji11.jpg', 0, 1, 0, '2025-01-25 19:23:04'),
(14, 2, 'thumb-1920-1275009.jpg', 0, 1, 0, '2025-01-25 19:23:04'),
(15, 2, 'zoro.png', 0, 1, 0, '2025-01-25 19:23:05'),
(16, 1, 'zoro.png', 0, 1, 0, '2025-01-25 19:24:02'),
(17, 1, 'luffy.jpg', 0, 1, 0, '2025-01-25 19:24:02'),
(18, 1, 'thumb-1920-1275009.jpg', 0, 1, 1, '2025-01-25 19:24:03');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `url`, `title`, `description`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'deneme-url-2', 'Deneme Ürünü 2', 'Bu bir deneme ürünü aciklamasidir 2', 4, 1, NULL),
(11, 'deneme', 'deneme', '                            <p>deneme</p>                        ', 3, 1, '2017-12-20 01:24:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `isCover` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(44, NULL, 'kablosuzkedi-2-768x858.png', 15, 0, 0, '2017-12-29 08:22:07'),
(45, NULL, 'videosinif-proje.png', 14, 0, 0, '2017-12-29 08:22:07'),
(46, NULL, 'ipphone8.jpeg', 0, 1, 0, '2017-12-29 08:25:35'),
(47, 6, 'ekran-resmi-2017-12-30-00-23-49--2-.png', 0, 1, 0, '2018-01-06 20:02:16'),
(48, 6, 'ekran-resmi-2017-12-30-00-26-11--2-.png', 2, 1, 0, '2018-01-06 20:02:16'),
(49, 6, 'ekran-resmi-2017-12-30-00-26-19--2-.png', 3, 1, 0, '2018-01-06 20:02:16'),
(50, 6, 'ekran-resmi-2017-12-30-00-27-36--2-.png', 1, 1, 0, '2018-01-06 20:02:16'),
(51, 12, 'ekran-resmi-2018-01-05-23-44-19--2-.png', 1, 1, 0, '2018-01-11 13:39:57'),
(52, 12, 'ekran-resmi-2018-01-05-23-44-19.png', 2, 1, 0, '2018-01-11 13:39:57'),
(53, 12, 'ekran-resmi-2018-01-05-18-47-54.png', 0, 1, 0, '2018-01-11 13:39:57'),
(54, 12, 'ekran-resmi-2018-01-04-00-38-12.png', 3, 1, 0, '2018-01-11 13:39:57'),
(55, 12, 'ekran-resmi-2018-01-04-00-38-12--2-.png', 4, 1, 0, '2018-01-11 13:39:57'),
(56, 12, 'zoro.jpg', 0, 1, 1, '2024-12-18 20:35:12'),
(57, 6, 'zoro1.jpg', 0, 1, 1, '2024-12-20 09:04:09'),
(58, 12, 'kimlik-onyuz.jpeg', 0, 1, 0, '2025-01-24 07:47:32'),
(59, 12, 'kimlik-arka-yuz.jpeg', 0, 1, 0, '2025-01-24 07:47:34'),
(60, 12, 'pexels-rahimegul-26596269.jpg', 0, 1, 0, '2025-01-24 07:47:37'),
(61, 12, 'pexels-scottwebb-2530586.jpg', 0, 1, 0, '2025-01-24 07:47:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `references`
--

DROP TABLE IF EXISTS `references`;
CREATE TABLE IF NOT EXISTS `references` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `img_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `references`
--

INSERT INTO `references` (`id`, `url`, `title`, `description`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(4, 'deneme', 'Deneme', '<p>Deneme</p>', 'zoro.png', 0, 1, '2025-01-25 18:21:45'),
(6, 'deneme2', 'deneme2', '<p>deneme2</p>', 'luffy.jpg', 0, 1, '2025-02-10 12:47:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `img_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `url`, `title`, `description`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(8, '1', '1', '<p>1</p>', 'zoro.png', 0, 1, '2025-01-25 18:33:46'),
(9, '2', '2', '<p>2</p>', 'luffy.jpg', 0, 1, '2025-01-25 18:33:56'),
(11, '3', '3', '<p>3</p>', 'thumb-1920-1275009.jpg', 0, 1, '2025-01-25 18:48:24');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `slogan` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `about_us` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `mission` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `vision` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `mobile_logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `phone_1` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `phone_2` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `fax_1` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `fax_2` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `lat` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `long` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `homepage_references_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `slogan`, `address`, `about_us`, `mission`, `vision`, `logo`, `mobile_logo`, `favicon`, `phone_1`, `phone_2`, `fax_1`, `fax_2`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `lat`, `long`, `createdAt`, `updatedAt`, `homepage_references_description`) VALUES
(2, 'Baraka Software', 'Hayallerinizi Kodlayın', '                                                                                                                                                                                                                                                                                                                                                                                                                <p>deneme</p>                                                                                                                                                                                                                                                                                                                                                                        ', '                                                                                                                                                                                                                                                                                                                                                                                                                <p>deneme</p>                                                                                                                                                                                                                                                                                                                                                                        ', '                                                                                                                                                                                                                                                                                                                                                                                                                <p>deneme</p>                                                                                                                                                                                                                                                                                                                                                                        ', '                                                                                                                                                                                                                                                                                                                                                                                                                <p>deneme</p>                                                                                                                                                                                                                                                                                                                                                                        ', 'baraka-software.jpg', 'baraka-software.jpg', 'baraka-software.jpg', 'deneme', 'deneme', 'deneme', 'deneme', 'selen.huseyin98@gmail.com', 'https://facebook.com1', 'https://twitter.com1', 'https://instagram1', 'https://linkedin1', '38.174280', '26.771038', '2025-01-26 09:16:26', '2025-02-10 13:35:42', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `allowButton` tinyint DEFAULT NULL,
  `button_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `button_caption` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `animation_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `animation_time` int DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `img_url`, `allowButton`, `button_url`, `button_caption`, `animation_type`, `animation_time`, `rank`, `isActive`, `createdAt`) VALUES
(10, '1', '<p>1</p>', 'zoro.png', 1, 'https://www.youtube.com/', 'deneme', NULL, NULL, 0, 1, '2025-01-27 06:38:58'),
(11, '2', '<p>2</p>', 'sanji11.jpg', 0, '', '', NULL, NULL, 0, 1, '2025-01-27 06:39:08'),
(12, '3', '<p>3</p>', 'luffy.jpg', 0, '', '', NULL, NULL, 0, 1, '2025-01-27 06:39:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `full_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `company` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `rank` tinyint DEFAULT '-99',
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `description`, `full_name`, `company`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'İş', 'Güzel', 'hüseyin selen', 'Onkofar Sağlık Ürünleri', 'luffy.jpg', 0, 1, '2025-01-26 08:23:53'),
(3, 'deneme', 'deneme', 'deneme', 'deneme', 'zoro.png', 1, 1, '2025-01-26 08:35:48');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `full_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `user_role_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT 'user',
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `password`, `permissions`, `user_role_id`, `isActive`, `createdAt`) VALUES
(3, 'huseyinselen35', 'Hüsyin Selen', 'selen.huseyin98@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '{\"brands\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"courses\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"dashboard\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"emailsettings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"galleries\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"news\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"popups\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"portfolio\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"portfolio_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"product\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"references\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"services\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"settings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"slides\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"testimonials\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"', '2', 1, NULL),
(4, 'admin', 'hüseyin', 'huseyinselen98@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '1', 1, '2025-01-27 20:41:02'),
(5, 'admin1', 'hüseyin', 'huseyinselen938@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2', 1, '2025-01-27 21:01:14');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `user_roles`
--

INSERT INTO `user_roles` (`id`, `title`, `permissions`, `isActive`, `createdAt`) VALUES
(1, 'Admin', '{\"brands\":{\"read\":\"on\"},\"courses\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"dashboard\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"emailsettings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"galleries\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"news\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"popups\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"portfolio\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"portfolio_categories\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"product\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"references\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"services\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"settings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"slides\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"testimonials\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"userop\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"users\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"user_roles\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"}}', 1, '2018-07-04 00:16:24'),
(2, 'Kullanıcı', '{\"brands\":{\"read\":\"on\",\"write\":\"on\",\"delete\":\"on\"},\"courses\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\"},\"dashboard\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\",\"delete\":\"on\"},\"emailsettings\":{\"read\":\"on\",\"write\":\"on\",\"update\":\"on\"},\"galleries\":{\"read\":\"on\",\"write\":\"on\"},\"news\":{\"read\":\"on\",\"write\":\"on\"},\"popups\":{\"read\":\"on\",\"write\":\"on\"},\"portfolio\":{\"read\":\"on\",\"write\":\"on\"}}', 1, '2018-07-04 00:16:29');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` int DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `videos`
--

INSERT INTO `videos` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 10, '2eZRRRiPQo8', 1, 1, NULL),
(3, 10, '2eZRRRiPQo8', 0, 1, '2018-01-06 22:55:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
