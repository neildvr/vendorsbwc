-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 05:42 PM
-- Server version: 5.7.15
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Aisle 1', 'med, wipes...', '2017-01-24 19:17:37', '05-04-2020 09:18:34 PM'),
(4, 'Aisle 2', 'Chemicals ', '2017-01-24 19:19:32', '05-04-2020 09:19:21 PM'),
(5, 'Aisle 3', 'Condments, canned food', '2017-01-24 19:19:54', '05-04-2020 09:19:58 PM'),
(6, 'Aisle 4', 'Oils, pasta', '2017-02-20 19:18:52', '05-04-2020 09:20:53 PM'),
(7, 'Aisle 5', 'Babing fruit vegetables', '2020-04-05 14:21:41', '05-04-2020 09:21:35 PM'),
(8, 'Aisle 6', 'Frozen/fridge items ', '2020-04-05 15:52:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 1, '2', 1, '2020-04-05 14:32:15', 'Debit / Credit card', 'Delivered'),
(8, 1, '3', 1, '2020-04-05 14:32:15', 'Debit / Credit card', NULL),
(9, 1, '15', 1, '2020-04-05 14:32:15', 'Debit / Credit card', NULL),
(10, 1, '18', 2, '2020-04-05 14:32:15', 'Debit / Credit card', NULL),
(11, 1, '2', 2, '2020-04-05 15:43:27', 'COD', NULL),
(12, 1, '3', 1, '2020-04-05 15:43:27', 'COD', NULL),
(13, 1, '4', 2, '2020-04-05 15:43:27', 'COD', NULL),
(14, 1, '16', 1, '2020-04-05 15:43:27', 'COD', NULL),
(15, 1, '2', 1, '2020-04-05 16:59:43', 'Internet Banking', NULL),
(16, 1, '3', 3, '2020-04-05 16:59:43', 'Internet Banking', NULL),
(17, 1, '4', 2, '2020-04-05 16:59:43', 'Internet Banking', NULL),
(18, 1, '14', 1, '2020-04-05 16:59:43', 'Internet Banking', NULL),
(19, 1, '15', 2, '2020-04-05 16:59:43', 'Internet Banking', NULL),
(20, 1, '16', 1, '2020-04-05 16:59:43', 'Internet Banking', NULL),
(21, 1, '17', 1, '2020-04-05 16:59:43', 'Internet Banking', NULL),
(22, 1, '20', 1, '2020-04-05 16:59:43', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` varchar(11) DEFAULT NULL,
  `productPriceBeforeDiscount` varchar(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` varchar(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(303, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2179.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(304, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2181.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(305, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2183.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(306, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2184.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(307, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2186.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(308, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2187.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(309, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2189.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(310, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2190.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(311, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2193.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(312, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2195.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(313, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2198.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(314, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2200.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(315, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2201.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(316, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2203.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(317, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2204.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(318, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2206.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(319, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2208.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(320, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2210.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(321, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2214.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(322, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2215.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:18:20', NULL),
(323, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2179.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(324, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2181.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(325, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2183.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(326, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2184.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(327, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2186.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(328, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2187.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(329, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2189.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(330, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2190.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(331, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2193.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(332, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2195.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(333, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2198.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(334, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2200.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(335, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2201.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(336, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2203.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(337, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2204.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(338, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2206.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(339, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2208.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(340, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2210.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(341, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2214.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(342, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2216.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:37', NULL),
(343, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2215.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(344, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2216.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(345, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2217.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(346, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2219.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(347, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2220.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(348, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2221.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(349, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2224.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(350, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2225.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(351, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2228.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(352, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2234.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(353, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2236.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(354, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2237.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(355, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2239.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(356, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2241.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(357, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2242.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(358, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2243.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(359, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2244.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(360, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2245.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(361, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2246.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:21:52', NULL),
(362, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2247.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:22:05', NULL),
(363, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2248.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:22:05', NULL),
(364, 3, 8, NULL, NULL, NULL, NULL, NULL, 'ASH_2249.jpg', NULL, NULL, NULL, NULL, '2020-04-22 13:22:05', NULL),
(365, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2219.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(366, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2220.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(367, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2221.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(368, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2224.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(369, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2225.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(370, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2228.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(371, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2234.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(372, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2236.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(373, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2237.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(374, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2239.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(375, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2241.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(376, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2242.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(377, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2243.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(378, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2244.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(379, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2245.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(380, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2246.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(381, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2247.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(382, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2248.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL),
(383, 4, 5, NULL, NULL, NULL, NULL, NULL, 'ASH_2249.jpg', NULL, NULL, NULL, NULL, '2020-04-22 16:50:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Cleaning products', '2017-01-26 16:24:52', '05-04-2020 09:27:53 PM'),
(3, 4, 'Plastic/foil', '2017-01-26 16:29:09', '05-04-2020 09:28:23 PM'),
(4, 4, 'health section', '2017-01-30 16:55:48', '05-04-2020 09:28:55 PM'),
(5, 4, 'Breafast cereals', '2017-02-04 04:12:40', '05-04-2020 09:29:24 PM'),
(6, 4, 'Drinks', '2017-02-04 04:13:00', '05-04-2020 09:29:44 PM'),
(8, 3, 'Medications', '2017-02-04 04:13:54', '05-04-2020 09:30:51 PM'),
(9, 5, 'Condiments', '2017-02-04 04:36:45', '05-04-2020 09:33:15 PM'),
(13, 7, 'meat', '2020-04-05 14:21:54', NULL),
(15, 3, 'Toiletries', '2020-04-05 16:02:10', NULL),
(16, 3, 'tissues', '2020-04-05 16:02:22', NULL),
(17, 3, 'Water filters', '2020-04-05 16:02:35', NULL),
(18, 5, 'biscuits', '2020-04-05 16:03:31', NULL),
(19, 5, 'canned food', '2020-04-05 16:03:45', NULL),
(20, 5, 'spread/jams', '2020-04-05 16:04:00', NULL),
(21, 5, 'nuts/dried fruit', '2020-04-05 16:04:24', NULL),
(22, 3, 'Toilet paper', '2020-04-06 16:11:03', NULL),
(23, 3, 'Garbage bags', '2020-04-06 16:11:20', NULL),
(24, 3, 'Paper towel', '2020-04-06 16:11:39', NULL),
(25, 4, 'Chips', '2020-04-06 16:26:36', NULL),
(26, 6, 'Vegetables', '2020-04-06 16:38:19', NULL),
(27, 8, 'Milk products', '2020-04-06 16:43:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
