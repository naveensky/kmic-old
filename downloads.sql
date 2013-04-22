-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2013 at 11:50 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `downloads`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(4000) NOT NULL,
  `company` varchar(4000) DEFAULT NULL,
  `phone` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `company`, `phone`, `created_at`, `updated_at`, `name`) VALUES
(1, 'asd', 'as', 'asd', '2013-04-21 05:15:12', '2013-04-21 05:15:12', 'naveen'),
(2, 'nav', 'asda', 'na', '2013-04-21 05:16:04', '2013-04-21 05:16:04', 'naveen'),
(3, 'nav', 'asda', 'na', '2013-04-21 05:16:14', '2013-04-21 05:16:14', 'naveen'),
(4, 'na', 'na', 'na', '2013-04-21 05:18:44', '2013-04-21 05:18:44', 'naveen'),
(5, 'atul.lakhotia@kmindustrialcorp.com', 'KM INDUSTRIAL CORPORATION', '919971138071', '2013-04-21 05:34:58', '2013-04-21 05:34:58', 'Atul Lakhotia'),
(6, 'atul.lakhotia@kmindustrialcorp.com', 'KM INDUSTRIAL CORPORATION', '919971138071', '2013-04-21 05:35:08', '2013-04-21 05:35:08', 'Atul Lakhotia'),
(7, 'atul.lakhotia@kmindustrialcorp.com', 'KM INDUSTRIAL CORPORATION', '919971138071', '2013-04-21 05:35:11', '2013-04-21 05:35:11', 'Atul Lakhotia'),
(8, 'atul.lakhotia@kmindustrialcorp.com', 'KM INDUSTRIAL CORPORATION', '919971138071', '2013-04-21 05:35:20', '2013-04-21 05:35:20', 'Atul Lakhotia'),
(9, 'atul.lakhotia@kmindustrialcorp.com', 'KM INDUSTRIAL CORPORATION', '919971138071', '2013-04-21 05:37:13', '2013-04-21 05:37:13', 'Atul Lakhotia'),
(10, 'atul.lakhotia@kmindustrialcorp.com', 'KM INDUSTRIAL CORPORATION', '919971138071', '2013-04-21 05:37:24', '2013-04-21 05:37:24', 'Atul Lakhotia');

-- --------------------------------------------------------

--
-- Table structure for table `filedownloads`
--

CREATE TABLE IF NOT EXISTS `filedownloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(4000) NOT NULL,
  `date_published` datetime DEFAULT NULL,
  `download_count` int(11) NOT NULL DEFAULT '100',
  `file_type` enum('pricelist','catalogue') NOT NULL DEFAULT 'pricelist',
  `description` text,
  `path` varchar(4000) NOT NULL,
  `tags` varchar(4000) DEFAULT NULL,
  `company_name` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `filedownloads`
--

INSERT INTO `filedownloads` (`id`, `title`, `date_published`, `download_count`, `file_type`, `description`, `path`, `tags`, `company_name`) VALUES
(1, 'KM Industrial Corporation - Product Catalogue', '2013-04-21 00:00:00', 100, 'catalogue', 'This file contains the detailed description of the electrical products we deal in. The file also lists the brands available with us.\r\n\r\nWe deal in all types of electrical products and believe in providing complete electrical solutions to our clients. We provide L&T switchgear, Siemens Switchgear, Schneider switchgear, GE switchgear, BCH switchgear, Legrand switchgear, ABB switchgear, Havells switchgear, Havells wires and cables, Polycab wires and cables, Finolex wires and cables, RR Kabel wires and cables, Omron sensors, and other general electrical products.', 'KM_Product_Catalog.pdf', 'KMIC Product Brochure', 'KM Industrial Corp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
