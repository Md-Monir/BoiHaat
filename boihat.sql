-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2017 at 08:13 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boihat`
--

-- --------------------------------------------------------

--
-- Table structure for table `adds`
--

CREATE TABLE `adds` (
  `id` int(10) NOT NULL,
  `addimg` varchar(500) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adds`
--

INSERT INTO `adds` (`id`, `addimg`, `created`, `modified`) VALUES
(1, 'add1', '2017-10-25 04:58:33', '2017-10-25 04:58:33'),
(3, 'add3', '2017-10-25 04:58:48', '2017-10-25 04:58:48'),
(4, 'add4', '2017-10-25 04:58:52', '2017-10-25 04:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `bookname` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `publisher` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `author` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `pubyear` date DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `rating` int(2) DEFAULT NULL,
  `catagory` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `summary` text CHARACTER SET utf8,
  `user_id` int(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `bookname`, `publisher`, `author`, `pubyear`, `avatar`, `rating`, `catagory`, `summary`, `user_id`, `created`, `modified`) VALUES
(33, 'Byomkesh Bakshi', '', 'Sharadindu Bandyopadhyay', '2017-10-23', '2.jpg', NULL, 'DETECTIVE', 'Byomkesh Bakshi (Bengali: à¦¬à§à¦¯à§‹à¦®à¦•à§‡à¦¶ à¦¬à¦•à§à¦¸à§€) is a fictional detective in Bengali literature created by Sharadindu Bandyopadhyay. He is one of the most famous detective characters in Bengali literature. This book contains all of his stories in one volume, including one incomplete story. \r\n\r\nà¦¶à¦°à¦¦à¦¿à¦¨à§à¦¦à§ à¦…à¦®à¦¨à¦¿à¦¬à¦¾à¦¸ (à¦ªà§à¦°à¦¥à¦®-à¦¦à§à¦¬à¦¾à¦¦à¦¶ à¦–à¦£à§à¦¡) à¦—à§à¦°à¦¨à§à¦¥à§‡ à¦¸à¦™à§à¦•à¦²à¦¿à¦¤ à¦¶à¦°à¦¦à¦¿à¦¨à§à¦¦à§ à¦¬à¦¨à§à¦¦à§à¦¯à§‹à¦ªà¦¾à¦§à§à¦¯à¦¾à§Ÿà§‡à¦° à¦¯à¦¾à¦¬à¦¤à§€à§Ÿ à¦°à¦šà¦¨à¦¾ à¦¬à¦¿à¦·à§Ÿ à¦…à¦¨à§à¦¸à¦¾à¦°à§‡ à¦à¦• à¦à¦•à¦Ÿà¦¿ à¦–à¦£à§à¦¡à§‡ à¦¬à¦¿à¦¨à§à¦¯à¦¸à§à¦¤ à¦•à¦°à¦¾à¦° à¦¨à¦¬ à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦…à¦¨à§à¦¯à¦¾à§Ÿà§€ à¦²à§‡à¦–à¦•à§‡à¦° à¦¸à¦®à§à¦¦à§Ÿ à¦—à§‹à§Ÿà§‡à¦¨à§à¦¦à¦¾ à¦•à¦¾à¦¹à¦¿à¦¨à§€ à¦à¦•à¦¤à§à¦°à§‡ à¦¬à§à¦¯à§‹à¦®à¦•à§‡à¦¶ à¦¸à¦®à¦—à§à¦° à¦¨à¦¾à¦®à§‡ à¦ªà§à¦°à¦•à¦¾à¦¶ à¦•à¦°à¦¾ à¦¹à¦²à¥¤ à¦¶à¦°à¦¦à¦¿à¦¨à§à¦¦à§ à¦…à¦®à¦¨à¦¿à¦¬à¦¾à¦¸-à¦à¦° à¦ªà§à¦°à¦¥à¦®, à¦¦à§à¦¬à¦¿à¦¤à§€à§Ÿ à¦“ à¦¦à§à¦¬à¦¾à¦¦à¦¶ à¦–à¦£à§à¦¡à§‡ à¦¬à¦¿à¦§à§ƒà¦¤ à¦¬à§à¦¯à§‹à¦®à¦•à§‡à¦¶ à¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦°à¦šà¦¨à¦¾à¦—à§à¦²à¦¿à¦“ à¦¯à§‡à¦®à¦¨, à¦¸à§à¦•à§à¦®à¦¾à¦° à¦¸à§‡à¦¨à§‡à¦° \'à¦¬à§à¦¯à§‹à¦®à¦•à§‡à¦¶ à¦‰à¦ªà¦¨à§à¦¯à¦¾à¦¸\', à¦ªà§à¦°à¦¤à§à¦²à¦šà¦¨à§à¦¦à§à¦° à¦—à§à¦ªà§à¦¤à§‡à¦° \'à¦¬à§à¦¯à§‹à¦®à¦•à§‡à¦¶, à¦¸à¦¤à§à¦¯à¦¬à¦¤à§€, à¦¸à¦¤à§à¦¯à¦¬à¦¤à§€à¦° à¦—à¦¾à§œà¦¿\' à¦“ \'à¦¬à§à¦¯à§‹à¦®à¦•à§‡à¦¶ à¦“ à¦¸à¦¤à§à¦¯à¦¬à¦¤à§€à¦° à¦ªà§à¦°à¦¸à§à¦¥à¦¾à¦¨\' à¦à¦¬à¦‚ à¦ªà¦¾à¦°à§à¦¥ à¦šà¦Ÿà§à¦Ÿà§‹à¦ªà¦¾à¦§à§à¦¯à¦¾à§Ÿà§‡à¦° \'à¦¬à§à¦¯à§‹à¦®à¦•à§‡à¦¶à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦¸à¦¾à¦•à§à¦·à¦¾à§Žà¦•à¦¾à¦°\' à¦à¦‡ à¦—à§à¦°à¦¨à§à¦¥à§‡ (à¦¶à§‡à¦·à§‹à¦•à§à¦¤ à¦¦à§à¦Ÿà¦¿ à¦¦à§à¦¬à¦¿à¦¤à§€à§Ÿ à¦¸à¦‚à¦¸à§à¦•à¦°à¦£à§‡) à¦¯à§à¦•à§à¦¤ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤\r\n\r\nà¦¶à¦°à¦¦à¦¿à¦¨à§à¦¦à§ à¦¬à¦¨à§à¦¦à§à¦¯à§‹à¦ªà¦¾à¦§à§à¦¯à¦¾à¦¯à¦¼ à¦¬à§à¦¯à§‹à¦®à¦•à§‡à¦¶ à¦šà¦°à¦¿à¦¤à§à¦°à¦Ÿà¦¿ à¦¨à¦¿à¦¯à¦¼à§‡ à§©à§©à¦Ÿà¦¿ à¦•à¦¾à¦¹à¦¿à¦¨à§€ à¦°à¦šà¦¨à¦¾ à¦•à¦°à§‡à¦›à§‡à¦¨à¥¤ à¦à¦° à¦®à¦¾à¦à§‡ à§§à¦Ÿà¦¿ à¦…à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£à¥¤ à¦à¦‡ à¦•à¦¾à¦¹à¦¿à¦¨à§€à¦—à§à¦²à¦¿ à¦¹à¦²à¦ƒ\r\nà¦¸à¦¤à§à¦¯à¦¾à¦¨à§à¦¬à§‡à¦·à§€, à¦ªà¦¥à§‡à¦° à¦•à¦¾à¦à¦Ÿà¦¾, à¦¸à§€à¦®à¦¾à¦¨à§à¦¤-à¦¹à§€à¦°à¦¾,à¦®à¦¾à¦•à¦¡à¦¼à¦¸à¦¾à¦° à¦°à¦¸, à¦…à¦°à§à¦¥à¦®à¦¨à¦°à§à¦¥à¦®à§â€Œ, à¦šà§‹à¦°à¦¾à¦¬à¦¾à¦²à¦¿, à¦…à¦—à§à¦¨à¦¿à¦¬à¦¾à¦£, à¦‰à¦ªà¦¸à¦‚à¦¹à¦¾à¦°, à¦°à¦•à§à¦¤à¦®à§à¦–à§€ à¦¨à§€à¦²à¦¾, à¦¬à§à¦¯à§‹à¦®à¦•à§‡à¦¶ à¦“ à¦¬à¦°à¦¦à¦¾, à¦šà¦¿à¦¤à§à¦°à¦šà§‹à¦°, à¦¦à§à¦°à§à¦—à¦°à¦¹à¦¸à§à¦¯, à¦šà¦¿à¦¡à¦¼à¦¿à¦¯à¦¼à¦¾à¦–à¦¾à¦¨à¦¾, à¦†à¦¦à¦¿à¦® à¦°à¦¿à¦ªà§, à¦¬à¦¹à§à¦¨à¦¿-à¦ªà¦¤à¦™à§à¦—, à¦°à¦•à§à¦¤à§‡à¦° à¦¦à¦¾à¦—, à¦®à¦£à¦¿à¦®à¦¨à§à¦¡à¦¨, à¦…à¦®à§ƒà¦¤à§‡à¦° à¦®à§ƒà¦¤à§à¦¯à§, à¦¶à§ˆà¦²à¦°à¦¹à¦¸à§à¦¯, à¦…à¦šà¦¿à¦¨ à¦ªà¦¾à¦–à¦¿, à¦•à¦¹à§‡à¦¨ à¦•à¦¬à¦¿ à¦•à¦¾à¦²à¦¿à¦¦à¦¾à¦¸, à¦…à¦¦à§ƒà¦¶à§à¦¯ à¦¤à§à¦°à¦¿à¦•à§‹à¦£, à¦–à§à¦à¦œà¦¿ à¦–à§à¦à¦œà¦¿ à¦¨à¦¾à¦°à¦¿, à¦…à¦¦à§à¦¬à¦¿à¦¤à§€à¦¯à¦¼, à¦®à¦—à§à¦¨à¦®à§ˆà¦¨à¦¾à¦•, à¦¦à§à¦·à§à¦Ÿà¦šà¦•à§à¦°, à¦¹à§‡à¦à¦¯à¦¼à¦¾à¦²à¦¿à¦° à¦›à¦¨à§à¦¦, à¦°à§à¦® à¦¨à¦®à§à¦¬à¦° à¦¦à§à¦‡, à¦›à¦²à¦¨à¦¾à¦° à¦›à¦¨à§à¦¦, à¦¶à¦œà¦¾à¦°à§à¦° à¦•à¦¾à¦à¦Ÿà¦¾, à¦¬à§‡à¦£à§€à¦¸à¦‚à¦¹à¦¾à¦°, à¦²à§‹à¦¹à¦¾à¦° à¦¬à¦¿à¦¸à§à¦•à§à¦Ÿ, à¦¬à¦¿à¦¶à§à¦ªà¦¾à¦² à¦¬à¦§ (à¦…à¦¸à¦®à¦¾à¦ªà§à¦¤) à¥¤', 10, '2017-10-23 18:16:43', '2017-10-23 18:16:43'),
(32, 'Feluda Somogro', '', 'Satyajit Ray', '2005-10-23', '1.jpg', NULL, 'DETECTIVE', 'Between 1965 and 1992, Satyajit Ray wrote a total of 35 Feluda stories, featuring the master sleuth Pradosh C. Mitter, AKA Feluda. The plots involve murder, mystery and adventure, most of the times in exotic locations, narrated in a racy, humorous style by the detective\'s cousin-cum-assistant Topeshranjan Mitter AKA Topshe, and in most cases, accompanied by the funny Lalmohan Ganguly AKA Jatayu, who himself was a famous crime writer. All of this makes for enormously entertaining fare - and it is no wonder that each Feluda book has been a best-seller. All the stories are now available together in this two volume omnibus. For the first time ever, the stories are arranged in chronological order of composition, and one can note Feluda\'s development from an unknown amateur detective to a famous investigator. This first volume contains some of the best Feluda stories ever written.', 10, '2017-10-23 18:15:17', '2017-10-23 18:15:17'),
(29, 'à¦…à¦˜à§‹à¦°à¦—à¦žà§à¦œà§‡à¦° à¦˜à§‹à¦°à¦¾à¦²à§‹ à¦¬à§à¦¯à¦¾à¦ªà¦¾à¦°', '', 'à¦¶à§€à¦°à§à¦·à§‡à¦¨à§à¦¦à§ à¦®à§à¦–à§‹à¦ªà¦¾à¦§à§à¦¯à¦¾à¦¯à¦¼', '2017-10-23', '8.jpg', NULL, 'COMEDY', 'à¦¶à¦™à§à¦•à¦¾à¦¹à¦°à¦£ à¦†à¦° à¦¬à¦¿à¦ªà¦¦à¦­à¦žà§à¦œà¦¨ à¦¦à§à¦‡ à¦¬à¦¨à§à¦§à§ à¦®à¦¿à¦²à§‡ à¦¨à¦¦à§€ à¦¥à§‡à¦•à§‡ à¦à¦•à¦Ÿà¦¾ à¦²à¦¾à¦¶ à¦¤à§à¦²à¦²à¥¤ à¦ªà¦°à§‡ à¦¦à§‡à¦–à¦¾ à¦—à§‡à¦² à¦²à§‹à¦•à¦Ÿà¦¾ à¦®à¦°à§‡à¦¨à¦¿à¥¤ à¦¤à¦¾à¦°à¦¾à¦¤à¦¾à¦°à¦¿ à¦•à¦°à§‡ à¦²à§‹à¦•à¦Ÿà¦¾à¦•à§‡ à¦¨à¦¿à§Ÿà§‡ à¦¤à¦¾à¦°à¦¾ à¦•à¦°à¦¾à¦²à§€ à¦¡à¦¾à¦•à§à¦Ÿà¦¾à¦°à§‡à¦° à¦¬à¦¾à§œà¦¿ à¦—à§‡à¦²à¥¤ à¦•à¦°à¦¾à¦²à§€à¦¡à¦¾à¦•à§à¦Ÿà¦¾à¦° à¦…à¦¦à§à¦­à§à¦¤ à¦®à¦¾à¦¨à§à¦·à¥¤ à¦°à§‹à¦—à§€à¦¦à§‡à¦° à¦œà§‹à§œ à¦•à¦°à§‡ à¦ªà¦¥à§à¦¯ à¦—à§‡à¦²à¦¾à§Ÿà¥¤ à¦¨à¦¾ à¦–à§‡à¦²à§‡ à¦°à§‹à¦—à§€à¦° à¦—à¦²à¦¾à¦Ÿà¦¿à¦ªà§‡ à¦§à¦°à§‡à¥¤ à¦²à¦¾à¦ à¦¿ à¦¨à¦¿à§Ÿà§‡ à¦¦à§Œà§œà¦¾à§Ÿà¥¤\r\nà¦œà¦Ÿà§‡à¦¶à§à¦¬à¦° à¦…à¦˜à§‹à¦°à¦—à¦žà§à¦œà§‡à¦° à¦¨à¦¾à¦®à¦•à¦°à¦¾ à¦œà§à¦¯à§‹à¦¤à¦¿à¦·à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¤à¦¾à¦° à¦¸à¦¬ à¦­à¦¬à¦¿à¦·à§Žà¦¬à¦¾à¦£à§€ à¦‰à¦²à¦Ÿà¦¾ à¦¹à§Ÿà¥¤ à¦•à§‡à¦‰ à¦¯à¦¦à¦¿ à¦à¦¸à§‡ à¦¬à¦²à§‡, à¦ªà¦°à§€à¦•à§à¦·à¦¾à§Ÿ à¦«à§‡à¦² à¦•à¦°à¦¬ à¦¨à¦¾ à¦ªà¦¾à¦¶ à¦•à¦°à¦¬? à¦¸à§‡ à¦‰à¦¤à§à¦¤à¦° à¦¦à¦¿à¦², à¦¨à¦¾ à¦°à§‡ à¦à¦¬à¦¾à¦° à¦¤à§‹à¦° à¦¹à¦¬à§‡ à¦¨à¦¾ à¦°à§‡à¥¤ à¦à¦•à¦¥à¦¾ à¦¶à§à¦¨à§‡ à¦¸à§‡ à¦²à¦¾à¦«à¦¾à¦¤à§‡ à¦¥à¦¾à¦•à§‡à¥¤ à¦à¦¬à¦‚ à¦°à§‡à¦œà¦¾à¦²à§à¦Ÿ à¦¬à§‡à¦°à§à¦²à§‡ à¦¦à§‡à¦–à¦¾ à¦¯à¦¾à§Ÿ à¦¸à§‡ à¦²à§‡à¦Ÿà¦¾à¦° à¦¨à¦¿à§Ÿà§‡ à¦ªà¦¾à¦¶ à¦•à¦°à§‡à¦›à§‡à¥¤ à¦•à¦°à¦¾à¦²à§€à¦¡à¦¾à¦•à§à¦Ÿà¦¾à¦° à¦à¦° à¦¸à¦¾à¦¥à§‡ à¦œà¦Ÿà§‡à¦¶à§à¦¬à¦°à§‡à¦° à¦¬à¦¿à¦¶ à¦¬à¦›à¦°à§‡à¦° à¦à¦—à§œà¦¾à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¤à¦¾à¦“ à¦œà¦Ÿà§‡à¦¶à§à¦¬à¦° à¦ªà§à¦°à¦¤à¦¿à¦¦à¦¿à¦¨ à¦•à¦°à¦¾à¦²à§€à¦¡à¦¾à¦•à§à¦Ÿà¦¾à¦°à§‡à¦° à¦¬à¦¾à§œà¦¿ à¦à¦¸à§‡ à¦¬à¦¸à§‡ à¦¥à¦¾à¦•à§‡à¥¤\r\nà¦®à§ƒà¦—à¦¾à¦™à§à¦• à¦˜à§œà¦¿à§Ÿà¦¾à¦²à§‡à¦° à¦à¦•à¦Ÿà¦¾ à¦¨à§‡à¦¶à¦¾ à¦¹à¦šà§à¦›à§‡ à¦˜à§œà¦¿ à¦•à¦¾à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à¦¾à¥¤ à¦¤à¦¾à¦° à¦•à¦¾à¦²à§‡à¦•à¦¶à¦¨à§‡ à¦¨à¦¾à¦¨à¦¾à¦°à¦•à¦® à¦˜à§œà¦¿ à¦†à¦›à§‡à¥¤ à¦•à§‹à¦¨à¦“ à¦˜à§œà¦¿ à¦¤à¦¾à¦° à¦ªà¦›à¦¨à§à¦¦ à¦¹à¦²à§‡ à¦¸à§‡à¦Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¦²à¦¾à¦– à¦²à¦¾à¦– à¦Ÿà¦¾à¦•à¦¾à¦“ à¦–à¦°à¦š à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¸à§‡à¥¤ à¦¸à§‡à¦¦à¦¿à¦¨ à¦¤à¦¾à¦° à¦¬à¦¾à§œà¦¿à¦° à¦¬à¦¾à¦—à¦¾à¦¨à§‡ à¦à¦•à¦Ÿà¦¾ à¦›à§‡à¦²à§‡à¦•à§‡ à¦¦à§‡à¦–à¦²à§‡à¦¨ à¦¤à¦¿à¦¨à¦¿à¥¤ à¦›à§‡à¦²à§‡à¦Ÿà¦¾ à¦•à¦¥à¦¾ à¦¬à¦²à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¨à¦¾à¥¤ à¦¤à¦¾à¦° à¦¹à¦¾à¦¤à§‡ à¦›à¦¿à¦² à¦¸à§à¦¨à§à¦¦à¦° à¦à¦•à¦Ÿà¦¾ à¦˜à§œà¦¿à¥¤ à¦®à§ƒà¦—à¦¾à¦™à§à¦• à¦¬à¦¾à¦¬à§à¦° à¦ªà¦›à¦¨à§à¦¦ à¦¹à§Ÿà§‡ à¦—à§‡à¦² à¦˜à§œà¦¿à¦Ÿà¦¾à¥¤ à¦œà§‹à§œ à¦•à¦°à§‡ à¦˜à§œà¦¿ à¦¨à¦¿à¦¤à§‡ à¦—à¦¿à§Ÿà§‡ à¦¬à¦¾à¦§à¦² à¦¬à¦¿à¦ªà¦¤à§à¦¤à¦¿à¥¤ à¦›à§‡à¦²à§‡à¦Ÿà¦¾ à¦¤à¦¿à¦¨à¦¤à¦²à¦¾à¦° à¦›à¦¾à¦¦ à¦¥à§‡à¦•à§‡ à¦²à¦¾à¦« à¦¦à¦¿à§Ÿà§‡ à¦¨à¦¦à¦¿à¦¤à§‡ à¦ªà§œà§‡ à¦—à§‡à¦²à¥¤ à¦ªà§œà¦¾à¦° à¦†à¦—à§‡ à¦à¦•à¦Ÿà¦¾ à¦—à§à¦²à¦¿ à¦–à§‡à§Ÿà§‡à¦›à¦¿à¦²à¥¤ à¦²à§‹à¦•à¦®à§à¦–à§‡ à¦¶à§‹à¦¨à¦¾ à¦¯à¦¾à¦šà§à¦›à§‡ à¦›à§‡à¦²à§‡à¦Ÿà¦¾ à¦¨à¦¾à¦•à¦¿ à¦•à¦°à¦¾à¦²à§€à¦¡à¦¾à¦•à§à¦Ÿà¦¾à¦°à§‡à¦° à¦¬à¦¾à§œà¦¿à¦¤à§‡ à¦†à¦›à§‡à¥¤ à¦¦à§à¦œà¦¨ à¦·à¦¨à§à¦¡à¦¾à¦®à¦¾à¦°à§à¦•à¦¾ à¦²à§‹à¦• à¦ªà¦¾à¦ à¦¿à§Ÿà§‡ à¦¦à¦¿à¦²à§‡à¦¨ à¦®à§ƒà¦—à¦¾à¦™à§à¦• à¦˜à§œà¦¿à§Ÿà¦¾à¦²à¥¤ à¦›à§‡à¦²à§‡à¦Ÿà¦¾à¦•à§‡ à¦–à§à¦¨ à¦•à¦°à§‡ à¦¹à¦¾à¦¤à§‡à¦° à¦˜à§œà¦¿à¦Ÿà¦¾ à¦›à¦¿à¦¨à¦¿à§Ÿà§‡ à¦†à¦¨à¦¤à§‡ à¦¬à¦²à§‡ à¦¦à¦¿à¦²à§‡à¦¨à¥¤\r\nà¦›à§‡à¦²à§‡à¦Ÿà¦¾ à¦•à§‡, à¦•à§‹à¦¤à§à¦¥à§‡à¦•à§‡ à¦†à¦¸à¦² à¦¤à¦¾ à¦•à§‡à¦‰ à¦œà¦¾à¦¨à§‡à¦¨à¦¾à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦•à¦°à¦¾à¦²à§€à¦¡à¦¾à¦•à§à¦Ÿà¦¾à¦°à§‡à¦° à¦¬à¦‰ à¦†à¦° à¦•à¦°à¦¾à¦²à§€à¦¡à¦¾à¦•à§à¦Ÿà¦¾à¦° à¦œà¦¾à¦¨à¦¤à§‡ à¦ªà¦¾à¦°à¦² à¦¸à§‡à¦Ÿà¦¾à¥¤ à¦›à§‡à¦²à§‡à¦Ÿà¦¾ à¦•à¦¥à¦¾ à¦¬à¦²à¦² à¦¤à¦¾à¦¦à§‡à¦° à¦¸à¦¾à¦¥à§‡à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦…à¦¨à§à¦¯ à¦‰à¦ªà¦¾à§Ÿà§‡à¥¤', 10, '2017-10-23 18:04:23', '2017-10-23 18:04:23'),
(30, 'Unmad', 'Monthly Published Magazine', 'Ahsan Habib', '2017-10-23', '7.jpg', NULL, 'Magazine        ', 'Unmad is popular Bengali monthly satire magazine in Bangladesh. It was created in 1978 and Chief Editor is Bangladeshi Popular cartoonist Ahsan Habib who is elder brother of Popular writer Humayun Ahmed. In every Eid Unmad publishes Special Eid issue (Eid Sankha) with Fun, Jokes and Comedy etc. Download Eid Special Bangla Magazine (Eid Sankha) and Read Unmad Eid Special Magazine 2014 issue.', 6, '2017-10-23 18:10:48', '2017-10-23 18:10:48'),
(31, 'Arjun Samagra', '', 'Samaresh Majumder', '2017-10-23', '6.jpg', NULL, 'DETECTIVE', 'Arjun is a young handsome detective from Jalpaiguri created by Samaresh Majumdar in 1983 for young children.\r\nArjun has solved cases all over the world. His stories have an inherent sense of adventure. Unlike most of the detectives Arjun doesnâ€™t have any assistant whether he has a preceptor, Amal Shome. He is young and is not a detective by profession. Working closely with Amol Shome inspires him to take on more such adventures. Arjun is a small-town guy who works under restrictions. He is neither aged nor mature. Arjun has an athletic body with a sharp mind.', 7, '2017-10-23 18:13:30', '2017-10-23 18:13:30'),
(34, 'Kiriti Omnibus', '', 'Niharranjan Gupta', '2017-10-23', '3.jpg', NULL, 'DETECTIVE', 'Kiriti Omnibus ( set ) (Bengali) by Niharranjan Gupta is a collection of the stories of his most celebrated fictional character Kiriti Roy, an ace private investigator.', 10, '2017-10-23 18:17:53', '2017-10-23 18:17:53'),
(35, 'Masud Rana', '', 'Qazi Anwar Hossain & other Ghostwriters', '2017-10-23', '4.jpg', NULL, 'DETECTIVE', 'Masud Rana is a fictional character created in 1966 by writer Qazi Anwar Hussain, who featured him in over 400 novels. Hussain created the adult spy-thriller series Masud Rana, at first modelled after James Bond, but expanded widely. So far 450 books have been published in this series which has gained a lot of popularity in Bangladesh. Written from the 1960s and continuing to present day, books are published almost every month by Sheba Prokashoni, one of the most popular publishing house of Bangladesh. Although Qazi Anwar Hussain started the series, it is an open secret that nowadays he doesn\'t write it any more. A group of ghostwriters are employed to produce all the new Masud Rana novels.\r\n\r\nThe Masud Rana books describes the adventures of its eponymous hero Masud Rana, an international Espionage Agent of Bangladeshi origin, closely resembling James Bond in his expertise with weapons and love for women. Although the soul author of the series is Qazi Anwar Hussain, it is known that Hussain liberally extracts segments of plots from popular Western spy thrillers of contemporary period. Nonetheless, the series became a boon for young people in post-war Bangladesh, who had few entertainment alternatives in an era pre-dating cable TV, the web sites and smart phones. The books caused concern among some middle-class parents because of their occasional racy contents, and reading Masud Rana was an activity often frowned upon. The series eventually ran to well over four hundred individual titles.', 10, '2017-10-23 18:19:43', '2017-10-23 18:19:43'),
(36, 'Kakababu Samagra ', '', 'Sunil Gangopadhayay', '2017-10-23', '5.jpg', NULL, 'DETECTIVE', 'This handicapped intelligent character was created by Sunil Gangopadhyay, that has become legendary in Indian childrenâ€™s literature.\r\nThe series started in the autumn of 1979 with the publication of â€˜Bhoyonkor Sundorâ€™ in Anandamela magazine, puja number. Since then, the series continued for 33 years on popular demand, with over 36 adventure novels in print until the death of the author in 2012. Kakababu is ex-Director of the Archaeological Survey of India, whose real name is Raja Roychowdhury. In â€œKakabaubur Prothom Abhijanâ€, it is revealed that Kakababu lost his leg when he jumped off a cliff to help his friend Kamal, walks with the help of a crutch. This accident however has not crippled his strong mental will and physical strength. He is much sought after by the Indian intelligence to solve critical cases of crime. He has worked in CBI for some years.\r\nKakababuâ€™s two companions are Sontu aka Sunanda Roychowdhury, the nephew of kakababu and Santuâ€™s best friend Jojo who was introduced as a character to give comic relief.', 10, '2017-10-23 18:20:57', '2017-10-23 18:20:57'),
(37, 'The stone sky', '', 'N.K. Jemisin', '2017-10-23', '9.jpg', NULL, 'Science Fiction', 'THIS IS THE WAY THE WORLD ENDS... FOR THE LAST TIME.\r\nThe Moon will soon return. Whether this heralds the destruction of humankind or something worse will depend on two women.\r\nEssun has inherited the power of Alabaster Tenring. With it, she hopes to find her daughter Nassun and forge a world in which every orogene child can grow up safe.\r\nFor Nassun, her mother\'s mastery of the Obelisk Gate comes too late. She has seen the evil of the world, and accepted what her mother will not admit: that sometimes what is corrupt cannot be cleansed, only destroyed.', 10, '2017-10-23 18:31:10', '2017-10-23 18:31:10'),
(38, 'Thirteen Rising', 'Razorbill                                                                   ', 'Romina Russell', '2017-10-23', '10.jpg', NULL, 'Science Fiction', 'Romina Russellâ€™s epic sci-fi fantasy series reaches its breathtaking conclusion with this fourth and final novel.\r\n\r\nThe master has been unmasked. Rhoâ€™s world has been turned upside down. With her loved ones in peril and all the stars set against her, can the young Guardian from House Cancer muster the strength to keep fighting? Or has she finally found her match in a master whose ambition to rule knows no limits\r\n', 10, '2017-10-23 18:32:09', '2017-10-23 18:34:00'),
(39, 'Noumenon', 'Harper Voyager', 'Marina J. Lostetter', '2017-10-23', '11.jpg', NULL, 'Science Fiction', 'With nods to Arthur C. Clarkeâ€™s Rama series, the real science of Neal Stephensonâ€™s Seveneves, a touch of Hugh Howeyâ€™s Wool, and told through echoes of Octavia Butlerâ€™s voice, this is a powerful tale of space travel, adventure, discovery, and humanity that unfolds through a series of generational vignettes\r\nIn 2088, humankind is at last ready to explore beyond Earthâ€™s solar system. But one uncertainty remains: Where do we go? \r\nAstrophysicist Reggie Straifer has an idea. Heâ€™s discovered an anomalous star that appears to defy the laws of physics, and proposes the creation of a deep-space mission to find out whether the star is a weird natural phenomenon, or something manufactured\r\nThe journey will take eons. In order to maintain the genetic talent of the original crew, humankindâ€™s greatest ambitionâ€”to explore the furthest reaches of the galaxyâ€”is undertaken by clones. But a clone is not a perfect copy, and each new generation has its own quirks, desires, and neuroses. As the centuries fly by, the society living aboard the nine ships (designated â€œConvoy Sevenâ€) changes and evolves, but their mission remains the same: to reach Reggieâ€™s mysterious star and explore its originsâ€”and implications.\r\nA mosaic novel of discovery, Noumenonâ€”in a series of vignettesâ€”examines the dedication, adventure, growth, and fear of having your entire world consist of nine ships in the vacuum of space. The men and women, and even the AI, must learn to work and live together in harmony, as their original DNA is continuously replicated and they are born again and again into a thousand new lives. With the stars their home and the unknown their destination, they are on a voyage of many lifetimesâ€”an odyssey to understand what lies beyond the limits of human knowledge and imagination.\r\n', 6, '2017-10-23 18:33:28', '2017-10-23 18:33:28'),
(40, 'Blight', 'Greenwillow Books', 'Alexandra Duncan', '2017-10-23', '12.jpg', NULL, 'Science Fiction', 'Seventeen-year-old Tempest Torres has lived on the AgraStar farm north of Atlanta since she was found outside the gates at the age of five. Now sheâ€™s part of the security force guarding the fence and watching for scavengersâ€”people who would rather steal genetically engineered food from the company than work for it. When a group of such rebels accidentally sets off an explosion in the research compound, it releases into the air a blight that kills every living thing in its pathâ€”including humans. With blight-resistant seeds in her pocket, Tempest teams up with a scavenger boy named Alder and runs for help. But when they finally arrive at AgraStar headquarters, they discover that thereâ€™s an even bigger plot behind the blightâ€”and itâ€™s up to them to stop it from happening again. A fast-paced action-adventure story that is Margaret Atwoodâ€™s Oryx and Crake meets Nancy Farmerâ€™s House of the Scorpion.', 7, '2017-10-23 18:34:56', '2017-10-23 18:34:56'),
(41, 'Hide and Seek', 'Bookouture          ', 'Richard Jay Parker', '2017-10-23', '13.jpg', NULL, 'Science Fiction', 'The sun is out. Your little boy is smiling. The next time you lookâ€¦ heâ€™s gone.\r\nLana Cross would do anything to protect her perfect family but on a trip to an adventure park, they slip out of her sight. When she finds her husband, heâ€™s out cold on the forest floor. Then the truth sinks in: Cooper, her four-year-old son, is missing.\r\nNo one stopped the man carrying the sleeping boy. The park cameras donâ€™t show where he went. Then Lana receives an anonymous message, telling her to visit a local school with a horrifying history...\r\nThis is no random attack. Whoever took Cooper is playing a twisted game, and if Lana wants to find him, she must participate. how could there be a link between the school and her missing son? And can Lana find her little boy before itâ€™s too late?\r\n', 10, '2017-10-23 18:35:56', '2017-10-23 18:35:56'),
(42, 'Are you sleeping', 'Gallery Books', 'Kathleen Barber', '2017-10-23', '14.jpg', NULL, 'Science Fiction', 'Serial meets Ruth Wareâ€™s In A Dark, Dark Wood in this inventive and twisty psychological thriller about a mega-hit podcast that reopens a murder caseâ€”and threatens to unravel the carefully constructed life of the victimâ€™s daughter.\r\nThe only thing more dangerous than a lie...is the truth.\r\nJosie Buhrman has spent the last ten years trying to escape her familyâ€™s reputation and with good reason. After her father\'s murder thirteen years prior, her mother ran away to join a cult and her twin sister Lanie, once Josieâ€™s closest friend and confidant, betrayed her in an unimaginable way. Now, Josie has finally put down roots in New York, settling into domestic life with her partner Caleb, and thatâ€™s where she intends to stay. The only problem is that she has lied to Caleb about every detail of her pastâ€”starting with her last name.\r\nWhen investigative reporter Poppy Parnell sets off a media firestorm with a mega-hit podcast that reopens the long-closed case of Josieâ€™s fatherâ€™s murder, Josieâ€™s world begins to unravel. Meanwhile, the unexpected death of Josieâ€™s long-absent mother forces her to return to her Midwestern hometown where she must confront the demons from her pastâ€”and the lies on which she has staked her future.\r\n', 6, '2017-10-23 18:37:27', '2017-10-23 18:37:27'),
(43, 'Charlatans', 'Robin Cook', 'G.P. Putnam\'s Sons', '2017-10-23', '15.jpg', NULL, 'Science Fiction', '"Charlatans is an explosive thriller from New York Times bestselling author and master of the medical thriller Robin Cook.\r\nNoah Rothauser is the new super chief resident at Boston Memorial Hospital. Housing state-of-the-art medical facilities, itâ€™s always been Noahâ€™s dream to work for such an esteemed institution. But the pressures of the role become all too clear when a seemingly routine operation results in the tragic death of an otherwise healthy man. With potential malpractice suspected it falls to the newly appointed surgical doctor to investigate what happened.\r\nQuestioning those involved uncovers bitter feuds within the hospitalâ€™s surgical staff when Dr. William Mason, the egotistical, world-class surgeon who performed the operation, is quick to blame staff anaeshtetist Dr. Ava London for the disastrous outcome. However Dr. London, along with the nursing staff, point the finger at the surgeon.\r\nWhen two more anaesthesia-related deaths occur, Noah is forced to look closer at the impressively competent, charming, yet mysterious Dr. London, and he quickly realizes thereâ€™s far more to her than meets the eye. With his own job and integrity coming into jeopardy, Noah must decide which doctor is at fault and who he can believe â€“ before any more lives are lostâ€\r\n', 7, '2017-10-23 18:38:53', '2017-10-23 18:38:53'),
(44, 'The perfect Couple ', 'Penguin Random House Australia', 'Lexi Landsman', '2017-10-23', '16.jpg', NULL, 'Science Fiction', 'In this masterful suspense novel, which will appeal to fans of \'Gone Girl\', it\'s clear that the truth is not always what it seems. \r\nThere are secrets in every marriage . . . and some are more dangerous than others.\r\nSarah and Marco Moretti are the perfect couple. Together they have travelled the globe building high-profile careers as archaeologists. Now, at a dig in Florence, they are on the brink of the discovery of a lifetime.\r\nHowever their marriage is not what it seems.\r\nOn the very evening that Sarah uncovers the San Gennaro necklace â€“ a long-lost antiquity that will bring them worldwide fame - she witnesses Marco kissing another woman. Blinded by tears, she drives home alone in the dead of night . . .\r\nWhen Sarah wakes up in hospital, she has no memory of the car accident that brought her there - or the 48 hours preceding it.\r\nGone is the knowledge of her husbandâ€™s infidelity. But gone too is all recollection of finding the precious necklace.\r\nAnd the loss of those two crucial memories will have devastating repercussionsâ€¦\r\n"Memory can be the difference between love and hate, survival and death, forgiveness and revenge."\r\n', 10, '2017-10-23 18:40:02', '2017-10-23 18:40:02'),
(45, 'The Cottingley Secret', 'William Morrow Paperbacks                      ', 'Hazel Gaynor', '2017-10-23', '17.jpg', NULL, 'Fiction', 'The author of The Girl Who Came Home turns the clock back one hundred years to a time when two young girls from Cottingley, Yorkshire, convinced the world that they had done the impossible and photographed fairies in their garden. Now, in her newest novel, international bestseller Hazel Gaynor reimagines their story.\r\n1917â€¦ It was inexplicable, impossible, but it had to be trueâ€”didnâ€™t it? When two young cousins, Frances Griffiths and Elsie Wright from Cottingley, England, claim to have photographed fairies at the bottom of the garden, their parents are astonished. But when one of the great novelists of the time, Sir Arthur Conan Doyle, becomes convinced of the photographsâ€™ authenticity, the girls become a national sensation, their discovery offering hope to those longing for something to believe in amid a world ravaged by war. Frances and Elsie will hide their secret for many decades. But Frances longs for the truth to be told.\r\nOne hundred years laterâ€¦ When Olivia Kavanagh finds an old manuscript in her late grandfatherâ€™s bookshop she becomes fascinated by the story it tells of two young girls who mystified the world. But it is the discovery of an old photograph that leads her to realize how the fairy girlsâ€™ lives intertwine with hers, connecting past to present, and blurring her understanding of what is real and what is imagined. As she begins to understand why a nation once believed in fairies, can Olivia find a way to believe in herself?\r\n', 6, '2017-10-23 18:41:57', '2017-10-23 18:41:57'),
(46, 'Sour Heart', 'Lenny', 'Jenny Zhang', '2017-10-23', '18.jpg', NULL, 'Fiction', 'Centered on a community of immigrants who have traded their endangered lives as artists in China and Taiwan for the constant struggle of life at the poverty line in 1990s New York City, Zhangâ€™s collection examines the many ways that family and history can weigh us down and also lift us up. From the young woman coming to terms with her grandmotherâ€™s role in the Cultural Revolution to the daughter struggling to understand where her family ends and she begins, to the girl discovering the power of her body to inspire and destroy, these seven stories illuminate the complex and messy inner lives of girls struggling to define themselves.', 10, '2017-10-23 18:42:59', '2017-10-23 18:42:59'),
(47, 'The Almost Sister', 'William Morrow', 'Joshilyn Jackson', '2017-10-23', '19.jpg', NULL, 'Fiction', 'With empathy, grace, humor, and piercing insight, the author of gods in Alabama pens a powerful, emotionally resonant novel of the South that confronts the truth about privilege, family, and the distinctions between perception and reality - the stories we tell ourselves about our origins and who we really are.\r\nSuperheroes have always been Leia Birch Briggs\' weakness. One tequila-soaked night at a comics convention, the usually level-headed graphic novelist is swept off her barstool by a handsome and anonymous Batman. \r\nIt turns out the caped crusader has left her with more than just a nice, fuzzy memory. She\'s having a baby boy - an unexpected but not unhappy development in the thirty-eight year-old\'s life. But before Leia can break the news of her impending single-motherhood (including the fact that her baby is biracial) to her conventional, Southern family, her step-sister Rachel\'s marriage implodes. Worse, she learns her beloved ninety-year-old grandmother, Birchie, is losing her mind, and she\'s been hiding her dementia with the help of Wattie, her best friend since girlhood.\r\nLeia returns to Alabama to put her grandmother\'s affairs in order, clean out the big Victorian that has been in the Birch family for generations, and tell her family that she\'s pregnant. Yet just when Leia thinks she\'s got it all under control, she learns that illness is not the only thing Birchie\'s been hiding. Tucked in the attic is a dangerous secret with roots that reach all the way back to the Civil War. Its exposure threatens the family\'s freedom and future, and it will change everything about how Leia sees herself and her sister, her son and his missing father, and the world she thinks she knows.\r\n', 10, '2017-10-23 18:44:00', '2017-10-23 18:44:00'),
(48, 'Keep You Safe', 'Melissa Hil', 'Ecco                                             ', '2017-10-23', '20.jpg', NULL, 'Fiction', 'For readers who love issue-driven fiction, Melissa Hill has written a breakout novel exploring the "to vaccinate or not" debate and the tragic consequences of one mother\'s decision on another.\r\n\r\nSingle mom Kate O\'Donnell is living her worst nightmare. Her young daughter, Clara, who has a medical condition that doesn\'t allow her to be vaccinated, becomes critically ill when one of her classmates, Lauren-whose family chose not to vaccinate-contracts and spreads the virus. While Lauren has no trouble recovering from the disease, Clara\'s condition worsens. With time spent by her daughter\'s bedside, Kate loses her job and slides deeper into medical debt. But when another school parent points the blame at Lauren\'s mother, Lucy, and the media begins an attack, we see two very different views on parenting and how badly things can spin out of control when all either of these two women wanted was to keep their daughters safe.\r\n', 6, '2017-10-23 18:44:52', '2017-10-23 18:44:52'),
(49, 'The Hearts we sold', 'Emily Lloyd-Jones', 'Little, Brown Books for Young Readers    ', '2017-10-23', '21.jpg', NULL, 'Romance', 'When Dee Moreno makes a deal with a demonâ€”her heart in exchange for an escape from a disastrous home lifeâ€”she finds the trade may have been more than she bargained for. And becoming â€œheartlessâ€ is only the beginning. What lies ahead is a nightmare far bigger, far more monstrous than anything she could have ever imagined.\r\nWith reality turned on its head, Dee has only a group of other deal-making teens to keep her grounded, including the charming but secretive James Lancer. And as something grows between them amid an otherworldy ordeal, Dee begins to wonder: Can she give someone her heart when itâ€™s no longer hers to give?\r\n', 6, '2017-10-23 18:45:49', '2017-10-23 18:45:49'),
(50, 'The Wood', 'Feiwel & Friends', 'Chelsea Bobulski', '2017-10-23', '22.jpg', NULL, 'Romance', 'After her father goes missing in the woods that they protect, Winter tries to seek the truth in what happened, why the wood is changing, and what it all has to do with the arrival of a mysterious stranger in this thrilling YA debut.\r\nWhen Winterâ€™s dad goes missing during his nightly patrol of the wood, it falls to her to patrol the time portals and protect the travelers who slip through them. Winter can\'t help but think there\'s more to her dad\'s disappearance than she\'s being told.\r\nShe soon finds a young man traveling in the wood named Henry who knows more than he should. He believes if they can work together to find his missing parents, they could discover the truth about Winterâ€™s dad. \r\nThe wood is poisoned, changing into something sinisterâ€”torturing travelers lost in it. Winter must put her trust in Henry in order to find the truth and those theyâ€™ve lost. \r\nBobulskiâ€™s eerie debut is filled with friendship, family, and the responsibilities we choose and those we do not.\r\n', 10, '2017-10-23 18:46:41', '2017-10-23 18:46:41'),
(51, 'Just Friends', 'Swoon Reads', 'Tiffany Pitcock', '2017-10-23', '23.jpg', NULL, 'Romance', 'A new spin on the classic smart-girl-and-bad-boy setup, this witty contemporary romance shows how easily a friendship â€“ even one built on an elaborate lie â€“ can become so much more.\r\nJenny meets Chance for the very first time when she is assigned as his partner in their Junior Oral Communications class. But after they rescue a doomed assignment with one clever lie, the whole school is suddenly convinced that Little-Miss-Really-Likes-Having-A and the most scandalous heartbreaker in school have been best friends forever. Itâ€™s amazing how quickly a lie can growâ€•especially when you really, really want it to be the truth.\r\nWith Jenny, Chance can live the normal life heâ€™s always kind of wanted. And with Chance, Jenny can have the exciting teen experiences that TV shows and movies have always promised. Through it all, they hold on to the fact that they are â€œjust friends.â€ But that might be the biggest lie of all.\r\nDebut author Tiffany Pitcock delivers a spot-on depiction of first love and the high school rumor mill in Just Friends, chosen by readers like you for Macmillan\'s young adult imprint Swoon Reads. \r\n', 7, '2017-10-23 18:47:34', '2017-10-23 18:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `book_id` varchar(10) DEFAULT NULL,
  `remark` varchar(1024) DEFAULT NULL,
  `rating` varchar(5) DEFAULT NULL,
  `addpic` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `book_id`, `remark`, `rating`, `addpic`, `created`, `modified`) VALUES
(8, NULL, NULL, 'sdfghij 4567890', NULL, NULL, '2017-10-29 18:21:15', '2017-10-29 18:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(128) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pro_pic` varchar(100) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `address`, `dob`, `pro_pic`, `username`, `email`, `password`, `created`, `modified`) VALUES
(10, 'Md. Monir', 'Bla bla bla', '2017-10-18', 'Webp.net-compress-image.jpg', 'monir', 'monir@boihaat.com', '542a0a3e3d1cedd9fbe13a4efe42576f549f883c', '2017-10-18 15:00:33', '2017-10-18 15:00:33'),
(6, 'Iftekher Mahmud Maruf', 'Bla bla bla', '1997-10-06', NULL, 'Iftekher7', 'iftkhermamud7@boihaat.com', '542a0a3e3d1cedd9fbe13a4efe42576f549f883c', '2017-10-17 09:17:31', '2017-10-17 09:17:31'),
(7, 'Md ASIFUL HAQUE', 'FASDKHF', '1997-12-01', NULL, 'asiful', 'as@boihaat.com', '542a0a3e3d1cedd9fbe13a4efe42576f549f883c', '2017-10-17 09:20:54', '2017-10-17 09:20:54'),
(12, 'Mr. Test', 'test address', '2017-10-24', 'kl.png', 'tests', 'test@test.com', '542a0a3e3d1cedd9fbe13a4efe42576f549f883c', '2017-10-24 16:02:25', '2017-10-24 16:02:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adds`
--
ALTER TABLE `adds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adds`
--
ALTER TABLE `adds`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
