-- SAFE VERSION FOR GITHUB (NO SENSITIVE DATA)

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;

-- ========================
-- DATABASE: jewellerydb
-- ========================

-- ========================
-- tbl_signup (SAFE)
-- ========================
DROP TABLE IF EXISTS `tbl_signup`;
CREATE TABLE `tbl_signup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15),
  `address` varchar(200),
  PRIMARY KEY (`id`)
);

-- Dummy user
INSERT INTO `tbl_signup` VALUES
(1, 'Test User', 'testuser@example.com', '$2y$10$hashedpassworddemo', '9999999999', 'Sample City');

-- ========================
-- tbl_feedback (SAFE)
-- ========================
DROP TABLE IF EXISTS `tbl_feedback`;
CREATE TABLE `tbl_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100),
  `user_email` varchar(100),
  `product_name` varchar(150),
  `rating` tinyint,
  `message` text,
  PRIMARY KEY (`id`)
);

INSERT INTO `tbl_feedback` VALUES
(1, 'User1', 'user1@example.com', 'Sample Product', 5, 'Great product!');

-- ========================
-- tbl_orders (SAFE)
-- ========================
DROP TABLE IF EXISTS `tbl_orders`;
CREATE TABLE `tbl_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2),
  `total_price` decimal(10,2),
  `order_status` varchar(50),
  `payment_status` varchar(50),
  `payment_id` varchar(100),
  `shipping_address` text,
  PRIMARY KEY (`id`)
);

INSERT INTO `tbl_orders` VALUES
(1, 100001, 1, 1, 1, 1000.00, 1000.00, 'Delivered', 'Paid', NULL, 'Sample Address');

-- ========================
-- tbl_products
-- ========================
DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255),
  `description` text,
  `price` int,
  PRIMARY KEY (`id`)
);

INSERT INTO `tbl_products` VALUES
(1, 'Sample Product', 'Demo product description', 1000);

-- ========================
-- tbl_cart
-- ========================
DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE `tbl_cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int,
  `product_id` int,
  `quantity` int DEFAULT 1,
  PRIMARY KEY (`id`)
);

-- ========================
-- tbl_review
-- ========================
DROP TABLE IF EXISTS `tbl_review`;
CREATE TABLE `tbl_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int,
  `user_id` int,
  `rating` int,
  `review_text` text,
  PRIMARY KEY (`id`)
);

COMMIT;
