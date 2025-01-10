-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 09, 2025 at 06:03 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `password` varchar(500) COLLATE utf8mb4_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `coment-id` int DEFAULT NULL,
  `news-id` int DEFAULT NULL,
  `articel-id` int DEFAULT NULL,
  `cat-id` int DEFAULT NULL,
  KEY `articel-id` (`articel-id`),
  KEY `cat-id` (`cat-id`),
  KEY `coment-id` (`coment-id`),
  KEY `news-id` (`news-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `coment-id`, `news-id`, `articel-id`, `cat-id`) VALUES
(0, 'mojtabavahedi9414', '123456', 'mojtabavahedi9414@gmail.com', 1, 1, 1, 1),
(0, 'wegrgtr', 'rwetrthyj', '4rewt5yr6', NULL, NULL, NULL, NULL),
(0, 'wegrgtr', 'rwetrthyj', '4rewt5yr6', NULL, NULL, NULL, NULL),
(0, 'ngfhxgjh', 'htdfymghj', 'erwrgthfgjmtr2q3rt', NULL, NULL, NULL, NULL),
(0, 'ngfhxgjh', 'htdfymghj', 'erwrgthfgjmtr2q3rt', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articlee`
--

DROP TABLE IF EXISTS `articlee`;
CREATE TABLE IF NOT EXISTS `articlee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `body` text COLLATE utf8mb4_persian_ci NOT NULL,
  `link-site` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `status` int NOT NULL,
  `time` int NOT NULL,
  `cat-id` int NOT NULL,
  `img-article` varchar(255) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `sound-article` varchar(255) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `video-article` varchar(255) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `comment-id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `articlee`
--

INSERT INTO `articlee` (`id`, `title`, `body`, `link-site`, `status`, `time`, `cat-id`, `img-article`, `sound-article`, `video-article`, `comment-id`) VALUES
(1, 'ey5656', '5eu7te767u5', '567uhyj7676uyu5', 1, 542, 2525, '9gbipo98', 'c87p9t87', '87ol,hj87yukuuuuuuuu', 1),
(2, 'ey5656', '5eu7te767u5', '567uhyj7676uyu5', 1, 542, 2525, '9gbipo98', 'c87p9t87', '87ol,hj87yukuuuuuuuu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categori`
--

DROP TABLE IF EXISTS `categori`;
CREATE TABLE IF NOT EXISTS `categori` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categori` varchar(255) COLLATE utf8mb4_persian_ci NOT NULL,
  `categori-id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `categori`
--

INSERT INTO `categori` (`id`, `categori`, `categori-id`) VALUES
(1, 'sport', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment-admin`
--

DROP TABLE IF EXISTS `comment-admin`;
CREATE TABLE IF NOT EXISTS `comment-admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8mb4_persian_ci NOT NULL,
  `commet2` text COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `comment-admin`
--

INSERT INTO `comment-admin` (`id`, `comment`, `commet2`) VALUES
(1, 'غ65غف4قصثف45ف', 'ث43ف53');

-- --------------------------------------------------------

--
-- Table structure for table `comment-user`
--

DROP TABLE IF EXISTS `comment-user`;
CREATE TABLE IF NOT EXISTS `comment-user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8mb4_persian_ci NOT NULL,
  `commet2` text COLLATE utf8mb4_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `comment-user`
--

INSERT INTO `comment-user` (`id`, `comment`, `commet2`) VALUES
(1, 'هتهامههات', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_persian_ci NOT NULL,
  `body` text COLLATE utf8mb3_persian_ci NOT NULL,
  `link-site` varchar(500) COLLATE utf8mb3_persian_ci NOT NULL,
  `status` int NOT NULL,
  `cat-id` int NOT NULL,
  `time` int NOT NULL,
  `admin-id` int NOT NULL,
  `img-news` varchar(500) COLLATE utf8mb3_persian_ci DEFAULT NULL,
  `sound-news` varchar(500) COLLATE utf8mb3_persian_ci DEFAULT NULL,
  `video-news` varchar(500) COLLATE utf8mb3_persian_ci DEFAULT NULL,
  `comment-id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `link-site`, `status`, `cat-id`, `time`, `admin-id`, `img-news`, `sound-news`, `video-news`, `comment-id`) VALUES
(1, 'mmmm', 'ooooo', 'http', 1, 1, 3555, 52, 'jjjj', 'tttt', 'aaaaa', 11111),
(2, 'mmmm', 'ooooo', 'http', 1, 1, 3555, 52, 'jjjj', 'tttt', 'aaaaa', 11111);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb3_persian_ci NOT NULL,
  `password` varchar(500) COLLATE utf8mb3_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb3_persian_ci NOT NULL,
  `coment-id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `costohjrh` (`coment-id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `coment-id`) VALUES
(1, 'mojtabavahedi9414', '', 'mojtabavahedi9414@gmail.com', 1),
(2, 'mojtabavahedi9414', '', 'mojtabavahedi9414@gmail.com', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`articel-id`) REFERENCES `articlee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`cat-id`) REFERENCES `categori` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `admin_ibfk_3` FOREIGN KEY (`coment-id`) REFERENCES `comment-admin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `admin_ibfk_4` FOREIGN KEY (`news-id`) REFERENCES `news` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `costohjrh` FOREIGN KEY (`coment-id`) REFERENCES `comment-user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
