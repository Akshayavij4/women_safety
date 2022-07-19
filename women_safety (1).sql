-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 10:49 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `women_safety`
--

-- --------------------------------------------------------

--
-- Table structure for table `report_tbl`
--

CREATE TABLE IF NOT EXISTS `report_tbl` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `image` tinytext NOT NULL,
  `description` varchar(100) NOT NULL,
  `reply` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `report_tbl`
--

INSERT INTO `report_tbl` (`id`, `user_id`, `date`, `time`, `image`, `description`, `reply`) VALUES
(1, '1', '2022-06-07', '08:54:05', '', 'error', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE IF NOT EXISTS `user_tbl` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `age` int(50) NOT NULL,
  `emergency_number` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`id`, `name`, `number`, `age`, `emergency_number`, `email`, `password`) VALUES
(1, 'Anandu', '8921679456', 23, '8943409211', 'anandu@gmail.com', '555'),
(3, 'anu', '8921679456', 25, '9526851581', 'anu@gmail.com', '111'),
(4, 'Akshaya', '8113072352', 21, '8848414808', 'akshayavijayan912@gmail.com', 'akshaya'),
(5, 'amal', '2134448', 30, '', 'aml@gmail.com', 'aaal');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
