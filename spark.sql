-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 08:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spark`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Akshay', 'Bharath', 3456, '2021-08-20 06:26:25'),
(2, 'Bharath', 'arjun', 23634, '2021-08-20 05:13:40'),
(3, 'mainsh', 'manjunath', 23880, '2021-08-20 04:20:25'),
(4, 'sandesh', 'akshay', 12000, '2021-08-20 03:11:55'),
(5, 'sharath', 'kumarsharath', 5020, '2021-08-20 06:19:52'),
(6, 'jamesbond', 'sandesh', 53020, '2021-08-20 06:39:25'),
(7, 'arjun', 'srinivas', 23400, '2021-08-20 06:23:48'),
(8, 'sandesh', 'mainsh', 8000, '2021-08-20 06:29:27'),
(9, 'Bharath', 'jamesbond', 450, '2021-08-20 07:34:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Akshay', 'akshay@gmail.com', 100522),
(2, 'sandesh', 'sandesh@gmail.com', 87400),
(3, 'mainsh', 'mainsh@gmail.com', 3456),
(4, 'Bharath', 'bharath@gmail.com', 23868),
(5, 'sharath', 'sharath@gmail.com', 23430),
(6, 'kumar sharath', 'kumarsharath@gmail.com', 12000),
(7, 'manjunath', 'manjunath@gmail.com', 53020),
(8, 'jamesbond', 'jamesbond@gmail.com', 23850),
(9, 'arjun', 'arjun@gmail.com', 85000),
(10, 'srinivas', 'srinivas@gmail.com', 7320);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
