-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 20, 2021 at 08:50 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Phone_Number` int NOT NULL,
  `Balance` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `Email`, `Phone_Number`, `Balance`) VALUES
(1, 'Dummy-1', 'dummy1@email.com', 1234567890, 3500),
(2, 'Dummy-2', 'dummy2@email.com', 1234567890, 5000.98),
(3, 'Dummy-3', 'dummy3@email.com', 567890125, 1010.66),
(4, 'Dummy-4', 'dummy4@email.com', 456780790, 19000.6),
(5, 'Dummy-5', 'dummy5@email.com', 909678070, 2000.6),
(6, 'Dummy-6', 'dummy6@email.com', 126567890, 10990.7),
(7, 'Dummy-7', 'dummy7@email.com', 34567890, 1000),
(8, 'Dummy-8', 'dummy8@email.com', 1237890, 0.69),
(9, 'Dummy-9', 'dummy9@email.com', 1987890, 10801.4),
(10, 'Dummy-10', 'dummy10@email.com', 98237890, 7800.98);

-- --------------------------------------------------------

--
-- Table structure for table `transactionhistory`
--

DROP TABLE IF EXISTS `transactionhistory`;
CREATE TABLE IF NOT EXISTS `transactionhistory` (
  `customerName` varchar(45) NOT NULL,
  `transactionAmount` int NOT NULL,
  `timestamp` varchar(45) NOT NULL,
  `sendReceive` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactionhistory`
--

INSERT INTO `transactionhistory` (`customerName`, `transactionAmount`, `timestamp`, `sendReceive`) VALUES

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
