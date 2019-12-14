-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 09:37 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_oop_crud_level_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Fashion', '2014-06-01 00:35:07', '2014-05-30 12:04:33'),
(2, 'Electronics', '2014-06-01 00:35:07', '2014-05-30 12:04:33'),
(3, 'Motors', '2014-06-01 00:35:07', '2014-05-30 12:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `image`, `created`, `modified`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', 336, 3, '', '2014-06-01 01:12:26', '2014-05-31 11:42:26'),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', 299, 2, '', '2014-06-01 01:12:26', '2014-05-31 11:42:26'),
(3, 'Samsung Galaxy S4', 'How about no?', 600, 3, '', '2014-06-01 01:12:26', '2014-05-31 11:42:26'),
(6, 'Bench Shirt', 'The best shirt!', 29, 1, '', '2014-06-01 01:12:26', '2014-05-30 20:42:21'),
(7, 'Lenovo Laptop', 'My business partner.', 399, 2, '', '2014-06-01 01:13:45', '2014-05-30 20:43:39'),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', 259, 2, '', '2014-06-01 01:14:13', '2014-05-30 20:44:08'),
(9, 'Spalding Watch', 'My sports watch.', 199, 1, '', '2014-06-01 01:18:36', '2014-05-30 20:48:31'),
(10, 'Sony Smart Watch', 'The coolest smart watch!', 300, 2, '', '2014-06-06 17:10:01', '2014-06-05 12:39:51'),
(11, 'Huawei Y300', 'For testing purposes.', 100, 2, '', '2014-06-06 17:11:04', '2014-06-05 12:40:54'),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', 60, 1, '', '2014-06-06 17:12:21', '2014-06-05 12:42:11'),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', 70, 1, '', '2014-06-06 17:12:59', '2014-06-05 12:42:49'),
(25, 'Abercrombie Allen Anew Shirt', 'Awesome new shirt!', 999, 1, '', '2014-11-22 18:42:13', '2014-11-21 14:12:13'),
(26, 'Another product', 'Awesome product!', 555, 2, '', '2014-11-22 19:07:34', '2014-11-21 14:37:34'),
(27, 'Bag', 'Awesome bag for you!', 999, 1, '', '2014-12-04 21:11:36', '2014-12-03 16:41:36'),
(28, 'Wallet', 'You can absolutely use this one!', 799, 1, '', '2014-12-04 21:12:03', '2014-12-03 16:42:03'),
(30, 'Wal-mart Shirt', '', 555, 2, '', '2014-12-13 00:52:29', '2014-12-11 20:22:29'),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', 333, 1, '', '2014-12-13 00:52:54', '2014-12-11 20:22:54'),
(32, 'Washing Machine Model PTRR', 'Some new product.', 999, 1, '', '2015-01-08 22:44:15', '2015-01-07 18:14:15'),
(39, 'test', 'sfsd dvdfsf sdds sdbjsd sdmvsd vdsv bbb ', 3000, 2, '', '2019-12-13 07:16:37', '2019-12-13 06:16:37'),
(40, 'g shock watch', 'High-Quality &amp; Affordable Courses', 8000, 1, '5a25087bd7fb4aaab9b516acac2481bdc2322ec9-g271-casio-original-imaepyujyyeyqun71.jpeg', '2019-12-13 07:59:50', '2019-12-13 06:59:50'),
(41, 'g shock watch', 'uploads uploadsupl oad supl oadsu pload suploa ds uploads uploads', 8000, 1, '5a25087bd7fb4aaab9b516acac2481bdc2322ec9-g271-casio-original-imaepyujyyeyqun7.jpeg', '2019-12-13 08:01:02', '2019-12-13 07:01:02'),
(42, 'mohdAkram', 'sadsad', 3000, 1, '5a25087bd7fb4aaab9b516acac2481bdc2322ec9-g271-casio-original-imaepyujyyeyqun7.jpeg', '2019-12-13 08:12:11', '2019-12-13 07:12:11'),
(43, 'samsung m20', 'safsa', 3000, 2, '846625db6116fc9bb540404c19d8774ab3d89b87-mi.jpeg', '2019-12-13 08:19:39', '2019-12-13 07:19:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
