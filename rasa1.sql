-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2020 at 09:03 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `rasa1`
--

CREATE TABLE `rasa1` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `company` varchar(30) NOT NULL,
  `job` varchar(30) NOT NULL,
  `use_case` varchar(30) NOT NULL,
  `budget` varchar(30) NOT NULL,
  `business_email` varchar(30) NOT NULL,
  `phone_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rasa1`
--

INSERT INTO `rasa1` (`id`, `name`, `company`, `job`, `use_case`, `budget`, `business_email`, `phone_number`) VALUES
(1, 'Rakesh', 'indusland', 'software developer', 'i want to build a chatbot', '20000', 'rakesh.p@neuralit.com', '9768807199'),
(2, 'Rakesh Panigrayh', 'ACME', 'manager', 'I am planning to build a chatb', '20000', 'rakesh.p@gmail.com', '6754321876'),
(3, 'Rakesh Panigrayh', 'ACME', 'manager', 'I am planning to build a chatb', '20000', 'rakesh.p@gmail.com', '6754321876'),
(4, 'Pankaj Shrivastav', 'neualit pvt. ltd.', 'software developer', 'I want to develop messeging bo', '5lakh', 'panigrahyrakesh143@gmail.com', '9938845341'),
(5, 'narasimha', 'ACME', 'developer', 'want to build a website', '200000', 'test@businessmail.com', '8839421708');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rasa1`
--
ALTER TABLE `rasa1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rasa1`
--
ALTER TABLE `rasa1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
