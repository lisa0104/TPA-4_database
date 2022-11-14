-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 02:06 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `casiers`
--

CREATE TABLE `casiers` (
  `casiers_id` int(11) NOT NULL,
  `casiers_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `casiers`
--

INSERT INTO `casiers` (`casiers_id`, `casiers_name`) VALUES
(1, 'mozart'),
(2, 'sherlock'),
(3, 'watson'),
(4, 'cristie'),
(5, 'microft'),
(6, 'holmes'),
(7, 'will'),
(8, 'lucas'),
(9, 'nancy');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `name`) VALUES
(1, 'susu'),
(2, 'sosis'),
(3, 'makanan ringan');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`) VALUES
(1, 'Lisa'),
(2, 'Jack'),
(3, 'Agatha'),
(4, 'Sherlock'),
(5, 'Dakota'),
(6, 'Thomas'),
(7, 'Watson'),
(8, 'Nancy'),
(9, 'Lucas'),
(10, 'Alfred');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `casiers_id` int(11) NOT NULL,
  `price_total` int(11) NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `casiers_id`, `price_total`, `order_date`) VALUES
(1, 1, 1, 43000, '2022-11-01 23:59:59'),
(2, 9, 5, 43000, '2022-11-02 23:59:59'),
(3, 4, 1, 21000, '2022-11-03 23:59:59'),
(4, 3, 7, 14000, '2022-11-05 23:59:59'),
(5, 5, 1, 10000, '2022-10-01 23:59:59'),
(6, 7, 9, 12000, '2022-08-01 23:59:59'),
(7, 2, 3, 13000, '2022-09-01 23:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `orders_item`
--

CREATE TABLE `orders_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_item`
--

INSERT INTO `orders_item` (`order_item_id`, `order_id`, `products_id`, `categories_id`, `quantity`, `price`) VALUES
(1, 1, 1, 1, 2, 10000),
(2, 1, 4, 1, 1, 11000),
(3, 1, 7, 3, 2, 22000),
(5, 2, 1, 1, 2, 10000),
(6, 2, 4, 1, 1, 11000),
(7, 2, 7, 3, 2, 22000),
(8, 3, 1, 1, 2, 10000),
(9, 3, 4, 1, 1, 11000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_name` char(50) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_name`, `price`) VALUES
(1, 'milkita', 5000),
(2, 'susubendera', 6000),
(3, 'ultramilk', 7000),
(4, 'dancow', 11000),
(5, 'kanzler', 8000),
(6, 'sonice', 2000),
(7, 'chitato', 11000),
(8, 'lays', 13000),
(9, 'qtela', 15000),
(10, 'potabee', 13000),
(11, 'oreo', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `products_cat`
--

CREATE TABLE `products_cat` (
  `products_cat_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_cat`
--

INSERT INTO `products_cat` (`products_cat_id`, `products_id`, `categories_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 3),
(8, 8, 3),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casiers`
--
ALTER TABLE `casiers`
  ADD PRIMARY KEY (`casiers_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `casiers_id` (`casiers_id`);

--
-- Indexes for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `products_id` (`products_id`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `products_cat`
--
ALTER TABLE `products_cat`
  ADD PRIMARY KEY (`products_cat_id`),
  ADD KEY `products_id` (`products_id`),
  ADD KEY `categories_id` (`categories_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`casiers_id`) REFERENCES `casiers` (`casiers_id`);

--
-- Constraints for table `orders_item`
--
ALTER TABLE `orders_item`
  ADD CONSTRAINT `orders_item_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`),
  ADD CONSTRAINT `orders_item_ibfk_2` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`categories_id`),
  ADD CONSTRAINT `orders_item_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `products_cat`
--
ALTER TABLE `products_cat`
  ADD CONSTRAINT `products_cat_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`products_id`),
  ADD CONSTRAINT `products_cat_ibfk_2` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`categories_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
