-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 27, 2026 at 05:14 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jewellerydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `status` enum('active','ordered') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `tbl_cart_ibfk_2` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

DROP TABLE IF EXISTS `tbl_feedback`;
CREATE TABLE IF NOT EXISTS `tbl_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `user_name`, `user_email`, `product_name`, `rating`, `message`, `created_at`) VALUES
(1, 'Harsh Parmar', 'harshparmar@gmail.com', 'Gold Bracelet', 5, 'Premium quality and very stylish. Loved it!', '2025-12-14 15:59:46'),
(2, 'Rathod Honey', 'honeyrathod@gmail.com', 'Silver Anklet', 4, 'Good design and comfortable to wear.', '2025-12-14 15:59:46'),
(3, 'Patel Yash', 'yashpatel@gmail.com', 'Diamond Ring', 5, 'Excellent finishing and fast delivery.', '2025-12-14 15:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inquiries`
--

DROP TABLE IF EXISTS `tbl_inquiries`;
CREATE TABLE IF NOT EXISTS `tbl_inquiries` (
  `inquiry_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`inquiry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_inquiries`
--

INSERT INTO `tbl_inquiries` (`inquiry_id`, `username`, `email`, `mobile`, `product_name`, `message`, `created_at`) VALUES
(1, 'aman_shah', 'aman@gmail.com', '9012345678', 'Gold Chain', 'Please share weight and making charges for this gold chain.', '2025-12-14 16:18:12'),
(2, 'neha_patel', 'neha@gmail.com', '8899776655', 'Silver Anklet', 'Is this silver anklet available as a pair?', '2025-12-14 16:18:12'),
(3, 'rahul_mehta', 'rahul@gmail.com', '9765432109', 'Diamond Ring', 'I want to know about certification and return policy.', '2025-12-14 16:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_maincategory`
--

DROP TABLE IF EXISTS `tbl_maincategory`;
CREATE TABLE IF NOT EXISTS `tbl_maincategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `maincatname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maincatdesc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_maincategory`
--

INSERT INTO `tbl_maincategory` (`id`, `maincatname`, `maincatdesc`) VALUES
(1, 'Men Jewellery', 'Men\'s Jewellery Description.'),
(2, 'Women Jewellery', 'Women\'s Jewellery Description');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

DROP TABLE IF EXISTS `tbl_offers`;
CREATE TABLE IF NOT EXISTS `tbl_offers` (
  `offer_id` int NOT NULL AUTO_INCREMENT,
  `promocode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offername` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_value` decimal(10,2) DEFAULT NULL,
  `offerdescription` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity` int DEFAULT NULL,
  `status` enum('Active','Expired','Disabled','') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_offers`
--

INSERT INTO `tbl_offers` (`offer_id`, `promocode`, `offername`, `discount_value`, `offerdescription`, `validity`, `status`) VALUES
(1, 'XYZ123', 'Wedding Offer', 10.00, 'Flat 10% Discounts ', 20, 'Active'),
(2, 'ABC456', 'Diwali Sale', 15.00, 'Flat 15% Discount ', 15, 'Expired'),
(3, 'H456', 'clarence offer', 20.00, 'Flat 20% off', 20, 'Active'),
(4, 'new', 'new12', 10.00, 'new offer', 10, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

DROP TABLE IF EXISTS `tbl_orders`;
CREATE TABLE IF NOT EXISTS `tbl_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `order_status` enum('Pending','Processing','Dispatched','Delivered','Cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `payment_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `discount_amount` decimal(10,2) DEFAULT '0.00',
  `final_price` decimal(10,2) DEFAULT '0.00',
  `promocode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_orders_ibfk_1` (`user_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `order_id`, `user_id`, `product_id`, `quantity`, `price`, `total_price`, `order_status`, `payment_status`, `payment_id`, `shipping_address`, `order_date`, `discount_amount`, `final_price`, `promocode`, `payment_method`) VALUES
(88, 17770182126626, 52, 4, 2, 4999.00, 9998.00, 'Delivered', 'Pending', '', 'Surat', '2026-04-24 08:10:12', 1499.70, 8498.30, 'ABC456', 'cod'),
(89, 17770182126626, 52, 7, 1, 45999.00, 45999.00, 'Delivered', 'Pending', '', 'Surat', '2026-04-24 08:10:12', 0.00, 45999.00, '', 'cod'),
(90, 17770403231028, 52, 2, 1, 25999.00, 25999.00, 'Pending', 'Paid', 'pay_ShMO8bUWBxH7uA', 'surat ', '2026-04-24 14:18:43', 3899.85, 22099.15, 'ABC456', 'online'),
(91, 17770407077109, 52, 4, 1, 4999.00, 4999.00, 'Pending', 'Paid', 'pay_ShMV9CHfrpx3sH', 'Surat', '2026-04-24 14:25:07', 749.85, 4249.15, 'ABC456', 'online'),
(92, 17770408712474, 52, 3, 1, 18999.00, 18999.00, 'Pending', 'Paid', 'pay_ShMY2v1ZCIwjD4', 'Surat', '2026-04-24 14:27:51', 3799.80, 15199.20, 'H456', 'online'),
(93, 17770411675984, 52, 1, 1, 15999.00, 15999.00, 'Pending', 'Paid', 'pay_ShMdH2eUQ6FPMI', 'Surat', '2026-04-24 14:32:47', 3199.80, 12799.20, 'H456', 'online');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer_id` int DEFAULT NULL,
  `sub_catid` int NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `purity` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_products_subcategory` (`sub_catid`),
  KEY `offer_id` (`offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `product_name`, `offer_id`, `sub_catid`, `description`, `price`, `purity`, `image`) VALUES
(1, 'Men Gold Ring Classic', 3, 1, 'Classic men gold ring', 15999, 22, '17723837849896.avif'),
(2, 'Men Diamond Ring', 2, 1, 'Stylish diamond ring for men', 25999, 18, '17723839879345.jpg'),
(3, 'Men Gold Bracelet', 3, 2, 'Premium gold bracelet for men', 18999, 22, '17723840593369.avif'),
(4, 'Men Silver Bracelet', 2, 2, 'Trendy silver bracelet', 4999, 22, '17723841218019.avif'),
(5, 'Men Gold Chain', 2, 3, 'Heavy gold chain for men', 34999, 22, '17723842003931.jpg'),
(6, 'Men Stylish Chain', 2, 3, 'Modern style chain', 12999, 18, '17723842801142.avif'),
(7, 'Women Gold Necklace', NULL, 4, 'Elegant gold necklace for women', 45999, 22, '17723845413690.jpg'),
(8, 'Women Designer Necklace', 2, 4, 'Designer necklace with stones', 55999, 22, '17723845638460.jpg'),
(9, 'Women Gold Earrings', 1, 5, 'Traditional gold earrings', 22999, 22, '17723845711595.jpg'),
(10, 'Women Stud Earrings', 2, 5, 'Small stud earrings', 8999, 18, '17723845794727.jpg'),
(11, 'Women Gold Bangles', 2, 6, 'Classic gold bangles set', 39999, 22, '17723845874256.jpg'),
(12, 'Women Designer Bangles', 2, 6, 'Designer bangles with stones', 49999, 22, '17723845963661.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

DROP TABLE IF EXISTS `tbl_purchase`;
CREATE TABLE IF NOT EXISTS `tbl_purchase` (
  `purchase_id` int NOT NULL AUTO_INCREMENT,
  `status` enum('success','failure') COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL,
  `productid` int NOT NULL,
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`purchase_id`, `status`, `paymentid`, `timestamp`, `productid`) VALUES
(5, 'success', 'pay_ShMdH2eUQ6FPMI', '2026-04-24 14:32:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

DROP TABLE IF EXISTS `tbl_review`;
CREATE TABLE IF NOT EXISTS `tbl_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `review_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_signup`
--

DROP TABLE IF EXISTS `tbl_signup`;
CREATE TABLE IF NOT EXISTS `tbl_signup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_signup`
--

INSERT INTO `tbl_signup` (`id`, `name`, `email`, `password`, `phone`, `address`) VALUES
(52, 'Harsh', 'd23amtics@gmail.com', '123', 6352131134, 'Surat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

DROP TABLE IF EXISTS `tbl_subcategory`;
CREATE TABLE IF NOT EXISTS `tbl_subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maincat_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_subcategory_ibfk_1` (`maincat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`id`, `name`, `description`, `maincat_id`) VALUES
(1, 'Rings', 'best Rings\r\n', 1),
(2, 'Bracelets', 'best Bracelets', 1),
(3, 'Chains', 'best chains\r\n', 1),
(4, 'Necklace', 'best Necklaces', 2),
(5, 'Earrings', 'best Earrings', 2),
(6, 'Bangles', 'best Bangles', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_signup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD CONSTRAINT `tbl_orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_signup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD CONSTRAINT `fk_products_subcategory` FOREIGN KEY (`sub_catid`) REFERENCES `tbl_subcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_products_ibfk_1` FOREIGN KEY (`offer_id`) REFERENCES `tbl_offers` (`offer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD CONSTRAINT `tbl_review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_signup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD CONSTRAINT `tbl_subcategory_ibfk_1` FOREIGN KEY (`maincat_id`) REFERENCES `tbl_maincategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
