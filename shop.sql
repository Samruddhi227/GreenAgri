-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 07:26 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

--
-- Created by samruddhi kolase
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'humigold', 150),
(2, 'Theeta', 400),
(3, 'SUPER SONATA\r\n', 500),
(4, 'biovitax', 215),
(5, 'remore', 6000),
(6, 'Thrips Controller', 6200),
(7, 'Bio-Tech Grade Bindu-Silicon Liquid', 2290),
(8, 'DC 80 Plus Chemical', 400),
(9, 'Chemical Grade Unisa-82', 500),
(11, 'Monarch Agricultural Active Silicone Spreader', 1200),
(12, 'Mycorrhiza Bio Fertilizer', 1200),
(13, 'Mother Biotech Root Inducer', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(6, 'Samruddhi kolase', 'samruddhi@gmail.com', '9b02567cdba92ffce343e0bd58e37c07', '6786764', 'Pune', '13 chandane house, javahrnagar,near abil house, shivajingr,pune'),
(7, 'Avadoot Kolase', 'kolaseavadhoot@gmail.com', '14e1b600b1fd579f47433b88e8d85291', '6786764', 'shirampur', 'shirampur,ahemadnage'),
(8, 'Samruddhi kolase', 'samu@gmail.com', 'c81a9919f0264423eac1d1304e2fcea5', '7558611599', 'Pune', '13 chandane house, javahrnagar,near abil house, shivajingr,pune'),
(9, 'pooja kolase', 'pooja@gmail.com', '5c157ec615d7b552c2c4e4699d91c27b', '888889', 'Pune', '13 chandane house, javahrnagar,near abil house, shivajingr,pune');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(7, 3, 3, 'Added to cart'),
(8, 3, 4, 'Added to cart'),
(9, 3, 5, 'Added to cart'),
(10, 3, 11, 'Added to cart'),
(11, 1, 9, 'Added to cart'),
(12, 1, 2, 'Added to cart'),
(13, 1, 8, 'Added to cart'),
(14, 4, 2, 'Confirmed'),
(18, 5, 11, 'Confirmed'),
(20, 5, 5, 'Confirmed'),
(22, 6, 1, 'Confirmed'),
(23, 6, 1, 'Confirmed'),
(24, 6, 2, 'Confirmed'),
(25, 6, 3, 'Confirmed'),
(26, 6, 4, 'Confirmed'),
(28, 7, 3, 'Confirmed'),
(29, 7, 2, 'Confirmed'),
(31, 8, 2, 'Confirmed'),
(32, 8, 3, 'Confirmed'),
(33, 8, 1, 'Confirmed'),
(34, 8, 2, 'Confirmed'),
(35, 9, 1, 'Confirmed'),
(36, 9, 2, 'Confirmed'),
(37, 9, 3, 'Confirmed'),
(38, 9, 7, 'Confirmed'),
(39, 9, 4, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
