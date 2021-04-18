-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2021 at 07:14 PM
-- Server version: 8.0.22
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int NOT NULL,
  `user_id` int NOT NULL,
  `item_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int NOT NULL,
  `item_category` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_category`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Mobile', 'Samsung', 'Samsung Galaxy 10', 152.00, './assets/products/1.png', '2020-03-28 11:08:57'),
(2, 'Mobile', 'Redmi', 'Redmi Note 7', 122.00, './assets/products/2.png', '2020-03-28 11:08:57'),
(3, 'Mobile', 'Redmi', 'Redmi Note 6', 122.00, './assets/products/3.png', '2020-03-28 11:08:57'),
(4, 'Mobile', 'Redmi', 'Redmi Note 5', 122.00, './assets/products/4.png', '2020-03-28 11:08:57'),
(5, 'Mobile', 'Redmi', 'Redmi Note 4', 122.00, './assets/products/5.png', '2020-03-28 11:08:57'),
(6, 'Mobile', 'Redmi', 'Redmi Note 8', 122.00, './assets/products/6.png', '2020-03-28 11:08:57'),
(7, 'Mobile', 'Redmi', 'Redmi Note 9', 122.00, './assets/products/8.png', '2020-03-28 11:08:57'),
(8, 'Mobile', 'Redmi', 'Redmi Note', 122.00, './assets/products/10.png', '2020-03-28 11:08:57'),
(9, 'Mobile', 'Samsung', 'Samsung Galaxy S6', 152.00, './assets/products/11.png', '2020-03-28 11:08:57'),
(10, 'Mobile', 'Samsung', 'Samsung Galaxy S7', 152.00, './assets/products/12.png', '2020-03-28 11:08:57'),
(11, 'Mobile', 'Apple', 'Apple iPhone 5', 152.00, './assets/products/13.png', '2020-03-28 11:08:57'),
(12, 'Mobile', 'Apple', 'Apple iPhone 6', 152.00, './assets/products/14.png', '2020-03-28 11:08:57'),
(13, 'Mobile', 'Apple', 'Apple iPhone 7', 152.00, './assets/products/15.png', '2020-03-28 11:08:57'),
(14, 'Electronic & Accessories ', 'Samsung', ' The Frame QLED 4K Smart TV', 81999.00, './assets/products/16.png', '2021-04-14 16:41:56'),
(15, 'Electronic & Accessories ', 'Samsung', 'Ultra HD LED Smart TV', 99999.00, './assets/products/17.png', '2021-04-14 16:41:56'),
(16, 'Electronic & Accessories ', 'Samsung', 'Full HD LED Smart TV', 31999.00, './assets/products/18.png', '2021-04-14 16:41:56'),
(17, 'Electronic & Accessories ', 'LG', 'All-in-One Ultra HD 4K Led Smart TV', 43999.00, './assets/products/19.png', '2021-04-14 16:41:56'),
(18, 'Electronic & Accessories ', 'LG', 'Nanocell Ultra HD 4K Led Smart TV', 79499.00, './assets/products/20.png', '2021-04-14 16:41:56'),
(19, 'Electronic & Accessories ', 'LG', 'HD Ready LED TV', 16599.00, './assets/products/21.png', '2021-04-14 16:41:56'),
(20, 'Electronic & Accessories ', 'Sony', 'X8500G Series Ultra HD 4K LED Smart TV', 94990.00, './assets/products/22.png', '2021-04-14 16:41:56'),
(21, 'Electronic & Accessories ', 'Sony', 'Bravia W672G Full HD LED Smart TV', 55790.00, './assets/products/23.png', '2021-04-14 16:41:56'),
(22, 'Electronic & Accessories ', 'Sony', 'Bravia Full HD LED Smart TV', 28606.00, './assets/products/24.png', '2021-04-14 16:41:56'),
(23, 'Electronic & Accessories ', 'Philips', '6800 HD Ready LED Smart TV', 17990.00, './assets/products/25.png', '2021-04-14 16:41:56'),
(24, 'Electronic & Accessories ', 'Philips', '6600 Ultra HD LED Smart TV ', 37999.00, './assets/products/26.png', '2021-04-14 16:41:56'),
(25, 'Electronic & Accessories ', 'Philips', 'Ultra HD 4K LED Smart TV', 70000.00, './assets/products/27.png', '2021-04-14 16:41:56'),
(26, 'Electronic & Accessories ', 'HP', 'Pavilion Gaming Ryzen 5 Quad Core 3550H - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) 15-ec0101AX Gaming Laptop', 49990.00, './assets/products/28.png', '2021-04-14 16:41:56'),
(27, 'Electronic & Accessories ', 'HP', 'Pavilion Gaming Ryzen 5 Hexa Core 4600H - (8 GB/1 TB HDD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) 15-ec1052AX Gaming Laptop', 64990.00, './assets/products/29.png', '2021-04-14 16:41:56'),
(28, 'Electronic & Accessories ', 'HP', 'Pavilion Core i7 10th Gen - (16 GB + 32 GB Optane/512 GB SSD/Windows 10 Home/4GB Graphics/NVIDIA GeForce GTX 1650) 15-DK1151TX Gaming Laptop', 79990.00, './assets/products/30.png', '2021-04-14 16:41:56'),
(29, 'Electronic & Accessories ', 'Dell', 'G3 Core i7 10th Gen - (16 GB/1 TB HDD/256 GB SSD/Windows 10 Home/4GB Graphics/NVIDIA GeForce GTX 1650) G3 3500 Gaming Laptop', 88990.00, './assets/products/31.png', '2021-04-14 16:41:56'),
(30, 'Electronic & Accessories ', 'Dell', 'XPS Core i7 10th Gen  - (16 GB/1 TB SSD/Windows 10 Home/4GB Graphics) XPS 9700 Laptop', 204114.00, './assets/products/32.png', '2021-04-14 16:41:56'),
(31, 'Electronic & Accessories ', 'Dell', 'Inspiron i5 9th Gen - (8 GB/512 GB SSD/Windows 10 Home/4GB Graphics/NVIDIA GeForce GTX 1650) G3 3590 Gaming Laptop', 74490.00, './assets/products/33.png', '2021-04-14 16:41:56'),
(32, 'Electronic & Accessories ', 'Lenovo', 'Ideapad S145 Core i3 10th Gen - (4 GB/256 GB SSD/Windows 10 Home) S145-15IIL Thin and Light Laptop', 36490.00, './assets/products/34.png', '2021-04-14 16:41:56'),
(33, 'Electronic & Accessories ', 'Lenovo', 'Ideapad 3 Core i5 10th Gen - (8 GB/1 TB HDD/Windows 10 Home) 15IIL05 Laptop ', 43990.00, './assets/products/35.png', '2021-04-14 16:41:56'),
(34, 'Electronic & Accessories ', 'Lenovo', 'Ideapad S 540 Core i5 10th Gen - (8 GB/1 TB HDD/256 GB SSD/Windows 10 Home/2 GB Graphics) 540-15IML Thin and Light Laptop', 60885.00, './assets/products/36.png', '2021-04-14 16:41:56'),
(35, 'Electronic & Accessories ', 'Lenovo', 'IdeaPad Gaming 3i Core i5 10th Gen - (8 GB/1 TB HDD/256 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650 Ti/60 Hz) 15IMH05 Gaming Laptop', 64990.00, './assets/products/37.png', '2021-04-14 16:41:56'),
(36, 'Men\'s Fashion', 'Allen Solly', 'Solid Men Polo Neck White T-Shirt', 584.00, './assets/products/38.png', '2021-04-14 16:41:56'),
(37, 'Men\'s Fashion', 'Allen Solly', 'Textured Men Polo Neck Green T-Shirt', 584.00, './assets/products/39.png', '2021-04-14 16:41:56'),
(38, 'Men\'s Fashion', 'Allen Solly', 'Men Slim Fit Printed Cut Away Collar Casual Shirt', 844.00, './assets/products/40.png', '2021-04-14 16:41:56'),
(39, 'Men\'s Fashion', 'Raymond', 'Men Slim Fit Checkered Casual Shirt', 1034.00, './assets/products/41.png', '2021-04-14 16:41:56'),
(40, 'Men\'s Fashion', 'Raymond', 'Men Slim Fit Self Design Spread Collar Formal Shirt', 893.00, './assets/products/42.png', '2021-04-14 16:41:56'),
(41, 'Men\'s Fashion', 'ADIDAS', 'Solid Men Round Neck Blue T-Shirt', 881.00, './assets/products/43.png', '2021-04-14 16:41:56'),
(42, 'Men\'s Fashion', 'ADIDAS', 'Solid Men Round Neck White T-Shirt', 1007.00, './assets/products/44.png', '2021-04-14 16:41:56'),
(43, 'Men\'s Fashion', 'ADIDAS', 'Solid Men Polo Neck Black T-Shirt', 1199.00, './assets/products/45.png', '2021-04-14 16:41:56'),
(44, 'Women\'s Fashion', 'BIBA', 'Women Printed Pure Cotton A-line Kurta  (Multicolor)', 885.00, './assets/products/46.png', '2021-04-14 16:41:56'),
(45, 'Women\'s Fashion', 'BIBA', 'Women Printed Cotton Blend High Low Kurta  (Multicolor)', 1273.00, './assets/products/47.png', '2021-04-14 16:41:56'),
(46, 'Women\'s Fashion', 'BIBA', 'Women Printed Pure Cotton Straight Kurta  (Pink)', 891.00, './assets/products/48.png', '2021-04-14 16:41:56'),
(47, 'Women\'s Fashion', 'BIBA', 'Women Printed Cotton Viscose Blend Straight Kurta  (Red)', 824.00, './assets/products/49.png', '2021-04-14 16:41:56'),
(48, 'Women\'s Fashion', 'GAP', 'Casual Butterfly Sleeve Solid Women Black Top', 1049.00, './assets/products/50.png', '2021-04-14 16:41:56'),
(49, 'Women\'s Fashion', 'GAP', 'Casual Roll-up Sleeve Solid Women Grey Top', 1068.00, './assets/products/51.png', '2021-04-14 16:41:56'),
(50, 'Women\'s Fashion', 'GAP', 'Striped Women Boat Neck Dark Blue, White T-Shirt', 916.00, './assets/products/52.png', '2021-04-14 16:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int NOT NULL,
  `user_id` int NOT NULL,
  `item_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
