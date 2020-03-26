-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 26, 2020 at 01:27 AM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mishon`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_account`
--

CREATE TABLE IF NOT EXISTS `t_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `avatar` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `start_working` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `t_account`
--

INSERT INTO `t_account` (`id`, `username`, `password`, `role`, `address`, `avatar`, `phone`, `fullname`, `start_working`) VALUES
(11, '', '579096efa9dc3226bfef05647908c94d436995adbef2090d143592063c19b883', 'cashier', 'Cộng hòa xã hội chủ nghĩa Việt Nam', 'ff37aa07167020a.jpeg', '0335689922', 'Tienbks', '12/25/2019'),
(9, '', '579096efa9dc3226bfef05647908c94d436995adbef2090d143592063c19b883', 'cashier', 'Ha Noi 2', '', '6969696969', 'Nancy', '12/19/2019'),
(10, '', '579096efa9dc3226bfef05647908c94d436995adbef2090d143592063c19b883', 'cashier', '', 'fa87b5f020801b0.gif', '1234567890', 'My heaven', '12/24/2019'),
(13, '', 'a4e1b91f16dbbe122fcc429d7b85cd5ad3145144faf8eb10529a12c7259154c2', 'admin', 'Cộng hòa xã hội chủ nghĩa Việt Nam', 'd5fea43064fbf60.jpeg', '1111111111', 'Hồ chủ tịch', '12/25/2019'),
(14, '', '579096efa9dc3226bfef05647908c94d436995adbef2090d143592063c19b883', 'cashier', '', '', '9696969696', 'Nancy 2', '06/09/2019');

-- --------------------------------------------------------

--
-- Table structure for table `t_bill`
--

CREATE TABLE IF NOT EXISTS `t_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(45) NOT NULL,
  `total_price` int(225) NOT NULL,
  `account_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `note` text NOT NULL,
  `bill_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `t_bill`
--

INSERT INTO `t_bill` (`id`, `time`, `total_price`, `account_id`, `customer_id`, `note`, `bill_code`) VALUES
(1, '02/01/2020 15:39', 1989999, 9, 10, 'Delay', 'B1'),
(4, '27/12/2019 15:56', 31900000, 13, 39, 'Vip customer', 'B4'),
(3, '23/12/2019 15:39', 999999, 9, 0, '', 'B3'),
(5, '30/12/2019 11:10', 500000, 13, 12, 'dsdasdas', 'B5'),
(6, '26/02/2020 13:16', 200000, 13, 0, '', 'B6'),
(7, '26/02/2020 13:16', 200000, 13, 0, '', 'B7'),
(8, '26/02/2020 13:17', 1111111, 13, 0, '', 'B8'),
(9, '26/02/2020 13:17', 27000000, 13, 0, '', 'B9');

-- --------------------------------------------------------

--
-- Table structure for table `t_bill_detail`
--

CREATE TABLE IF NOT EXISTS `t_bill_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `product_sold_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `t_bill_detail`
--

INSERT INTO `t_bill_detail` (`id`, `quantity`, `bill_id`, `product_sold_id`, `price`, `discount_price`) VALUES
(1, 1, 1, 1, 0, 0),
(2, 1, 1, 2, 0, 0),
(5, 1, 3, 1, 0, 0),
(6, 1, 4, 8, 4900000, 4900000),
(7, 1, 4, 9, 27000000, 27000000),
(8, 2, 5, 10, 250000, 250000),
(9, 1, 6, 12, 200000, 200000),
(10, 1, 7, 12, 200000, 200000),
(11, 1, 8, 11, 1111111111, 1111111),
(12, 1, 9, 9, 27000000, 27000000);

-- --------------------------------------------------------

--
-- Table structure for table `t_categories_types`
--

CREATE TABLE IF NOT EXISTS `t_categories_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `t_categories_types`
--

INSERT INTO `t_categories_types` (`id`, `category`, `type`) VALUES
(86, 'Fashion', 'Watch'),
(69, 'Fashion', 'T-shirt'),
(90, 'Vehicles', ''),
(77, 'Fashion', 'Pants'),
(85, 'Fashion', 'Coat'),
(65, 'Fashion', ''),
(64, 'Electric device', 'Tablet'),
(63, 'Sport', 'Men''s sports shoes'),
(62, 'Electric device', 'Smart phone'),
(61, 'Electric device', 'Laptop'),
(40, 'Sport', ''),
(39, 'Electric device', ''),
(71, 'Fashion', 'Jacket'),
(87, 'Sport', 'Woman sneaker'),
(76, 'Book & gif', ''),
(88, 'Sport', 'Football shoes'),
(89, 'Fashion', 'Accessories'),
(91, 'Clothes', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_customer`
--

CREATE TABLE IF NOT EXISTS `t_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `point` float NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address_code` varchar(45) NOT NULL,
  `address_detail` varchar(255) NOT NULL,
  `birthday` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `t_customer`
--

INSERT INTO `t_customer` (`id`, `username`, `email`, `password`, `address`, `point`, `avatar`, `fullname`, `phone`, `address_code`, `address_detail`, `birthday`, `gender`) VALUES
(12, 'Nancy4', 'Nancy4@.com', 'e10adc3949ba59abbe56e057f20f883e', '69 nhà thổ, Phường Hàng Đào, Quận Hoàn Kiếm, Thành phố Hà Nội', 171.87, '', 'Nancy sexy', '0384419922', '01,002,00049', '69 nhà thổ', '', ''),
(39, 'Nancy11', 'Nancy11@.com', 'e10adc3949ba59abbe56e057f20f883e', 'TMH TechLab', 417, '180fcd21a9b3060.jpeg', '', '0384419922', '04,043,01324', '', '', ''),
(37, 'Nancy5', 'Nancy5@.com', 'e10adc3949ba59abbe56e057f20f883e', 'TMH TechLab', 700.17, '180fcd21a9b3060.jpeg', '', '0384419922', '04,043,01324', '', '', ''),
(14, 'Nancy6', 'Nancy6@.com', 'e10adc3949ba59abbe56e057f20f883e', 'TMH TechLab', 99, '180fcd21a9b3060.jpeg', '', '0384419922', '04,043,01324', '', '', ''),
(18, 'Nancy10', 'Nancy10@.com', 'e10adc3949ba59abbe56e057f20f883e', 'TMH TechLab', 99, '180fcd21a9b3060.jpeg', '', '0384419922', '04,043,01324', '', '', ''),
(20, 'Nancy12', 'Nancy12@.com', 'e10adc3949ba59abbe56e057f20f883e', 'TMH TechLab', 99, '180fcd21a9b3060.jpeg', '', '0384419922', '04,043,01324', '', '', ''),
(22, 'Nancy14', 'Nancy14@.com', 'e10adc3949ba59abbe56e057f20f883e', 'TMH TechLab', 99, '180fcd21a9b3060.jpeg', '', '0384419922', '04,043,01324', '', '', ''),
(35, 'Nancy5', 'Nancy5@.com', 'e10adc3949ba59abbe56e057f20f883e', 'TMH TechLab', 100, '180fcd21a9b3060.jpeg', '', '0384419922', '04,043,01324', '', '', ''),
(30, 'Nancy22', 'Nancy22@.com', 'e10adc3949ba59abbe56e057f20f883e', 'TMH TechLab', 99, '180fcd21a9b3060.jpeg', '', '0384419922', '04,043,01324', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_event`
--

CREATE TABLE IF NOT EXISTS `t_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `start_date` varchar(45) NOT NULL,
  `due_date` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `image` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `value_deal` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `t_event`
--

INSERT INTO `t_event` (`id`, `title`, `content`, `start_date`, `due_date`, `category`, `image`, `status`, `value_deal`) VALUES
(43, 'Nancy', '', '12/24/2019 17:00', '12/25/2019 00:00', 'Free ship', '.jpeg', 'Not apply', '200'),
(30, 'aaaa', '', '12/24/2019 17:00', '12/25/2019 00:00', 'Free ship', '4fa387aa093dc71.jpeg', 'Not apply', '150'),
(51, 'after mery christmas', '', '01/04/2020 09:00', '01/05/2020 00:00', 'Offer a discount', '8085abaa6981570.jpeg', 'Not apply', '20'),
(49, 'Happy new year', '', '01/01/2020 00:00', '01/02/2020 00:00', 'Offer a discount', 'a670873ca301e18.jpeg', 'Not apply', '20'),
(52, 'Happy new year', '', '01/22/2020 00:00', '01/23/2020 00:00', 'Offer a discount', 'aad288ca8645a50.jpeg', 'Not apply', '20'),
(19, 'Welcome lunch', '', '01/04/2020 17:00', '01/05/2019 00:00', 'Offer a discount', '45b8ae7fd7c8dfc.jpeg', 'Not apply', '16'),
(40, 'eeeee', '', '12/24/2019 17:00', '12/25/2019 00:00', 'Free ship', 'b620d609c951b3f.jpeg', 'Not apply', '300'),
(39, 'ddddd', '', '12/24/2019 17:00', '12/25/2019 00:00', 'Free ship', '90a2cdbb13767fc.jpeg', 'Not apply', '200'),
(41, 'fffff', '', '12/24/2019 17:00', '12/25/2019 00:00', 'Free ship', '2bc68612ec69e4d.png', 'Not apply', '400'),
(42, 'ggggg', '', '12/24/2019 17:00', '12/25/2019 00:00', 'Free ship', '9d372089acc5336.jpeg', 'Not apply', '500'),
(48, '1/1/2020', '', '12/24/2019 17:00', '12/25/2019 00:00', 'Offer a discount', '2b85b18a010b23b.jpeg', 'Not apply', '21');

-- --------------------------------------------------------

--
-- Table structure for table `t_event_detail`
--

CREATE TABLE IF NOT EXISTS `t_event_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=167 ;

--
-- Dumping data for table `t_event_detail`
--

INSERT INTO `t_event_detail` (`id`, `event_id`, `product_id`) VALUES
(163, 52, 95),
(164, 52, 94),
(159, 51, 95),
(166, 52, 93),
(165, 52, 92),
(162, 51, 92),
(136, 48, 82),
(144, 49, 82),
(161, 51, 93),
(160, 51, 94);

-- --------------------------------------------------------

--
-- Table structure for table `t_notification`
--

CREATE TABLE IF NOT EXISTS `t_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `t_notification`
--

INSERT INTO `t_notification` (`id`, `name`, `status`, `price`, `time`) VALUES
(1, 'Nancy', 'delivering order #08', '4474444', '17/12/2019 10:18'),
(2, 'Nancy', 'delivering order #O6', '6696666', '17/12/2019 10:27'),
(3, 'Nancy', 'delivered order #O5', '6696666', '17/12/2019 10:29'),
(4, 'Nancy', 'delivered order #04', '6696666', '17/12/2019 10:38'),
(5, 'Nancy', 'delivered order #O3', '6696666', '17/12/2019 10:40'),
(6, 'Nancy', 'delivering order #O2', '6696666', '17/12/2019 13:25'),
(7, 'Nancy', 'delivered order #O2', '6696666', '17/12/2019 14:54'),
(8, 'Nancy', 'delivered order #O2', '6696666', '17/12/2019 14:55'),
(9, 'Nancy', 'delivered order #O2', '6696666', '17/12/2019 14:57'),
(10, 'Nancy', 'delivered order #O7', '6696666', '17/12/2019 16:59'),
(11, 'Nancy', 'delete order #O3', '6696666', '17/12/2019 15:54'),
(12, 'Nancy', 'delivered order O11', '6696666', '25/12/2019 11:28'),
(13, 'Nancy', 'delivered order O11', '6696666', '25/12/2019 11:28'),
(14, 'Nancy', 'delivered order O11', '6696666', '25/12/2019 11:28'),
(15, 'Nancy', 'delivered order O9', '8918888', '25/12/2019 11:42'),
(16, 'Nancy', 'delivered order O9', '8918888', '25/12/2019 11:47'),
(17, 'Nancy', 'delivered order O9', '8918888', '25/12/2019 14:20'),
(18, 'Tienbks', 'delivered order O9', '8918888', '25/12/2019 14:28'),
(19, 'Hồ chủ tịch', 'delivered order #O1', '6696666', '26/12/2019 16:34'),
(20, 'Hồ chủ tịch', 'delivered order #O1', '6696666', '26/12/2019 16:34'),
(21, 'Hồ chủ tịch', 'delivered order #O1', '6696666', '26/12/2019 16:36'),
(22, 'Hồ chủ tịch', 'delivering order #O8', '6696666', '27/12/2019 10:23'),
(23, 'Tienbks', 'delivered order #O8', '6696666', '27/12/2019 10:25'),
(24, 'Hồ chủ tịch', 'delivering order #O5', '6696666', '27/12/2019 11:05'),
(25, 'Hồ chủ tịch', 'delivered order #O5', '6696666', '27/12/2019 11:13'),
(26, 'Hồ chủ tịch', 'sold bill #B4', '31,900,000', '27/12/2019 15:56'),
(27, 'Hồ chủ tịch', 'sold bill #B4', '31,900,000', '27/12/2019 15:56'),
(28, 'Hồ chủ tịch', 'sold bill #B5', '500,000', '30/12/2019 11:10'),
(29, 'Nancy4', 'ordered order #O16', '1,141,111', '3/01/2020 17:11'),
(30, 'Nancy4', 'cancelled order #O16', '1,141,111', '3/01/2020 17:11'),
(31, 'Hồ chủ tịch', 'delivering order #O14', '6696666', '21/01/2020 09:46'),
(32, 'Hồ chủ tịch', 'delivered order #O14', '6696666', '21/01/2020 09:46'),
(33, 'Hồ chủ tịch', 'sold bill #B6', '200,000', '26/02/2020 13:16'),
(34, 'Hồ chủ tịch', 'sold bill #B7', '200,000', '26/02/2020 13:16'),
(35, 'Hồ chủ tịch', 'sold bill #B8', '1,111,111', '26/02/2020 13:17'),
(36, 'Hồ chủ tịch', 'sold bill #B9', '27,000,000', '26/02/2020 13:17'),
(37, 'Hồ chủ tịch', 'delivering order #O6', '6696666', '27/02/2020 16:57');

-- --------------------------------------------------------

--
-- Table structure for table `t_notification_customer`
--

CREATE TABLE IF NOT EXISTS `t_notification_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  `status` int(11) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `t_notification_customer`
--

INSERT INTO `t_notification_customer` (`id`, `order_id`, `description`, `status`, `time`) VALUES
(1, 10, 'delivering', 0, '17/12/2019 10:18'),
(2, 11, 'delivered', 0, '12/25/2019 11:28'),
(4, 2, 'delivered', 0, '17/12/2019 14:57'),
(5, 7, 'delivered', 0, '17/12/2019 14:59'),
(6, 9, 'delivered', 0, '25/12/2019 14:28'),
(7, 1, 'delivered', 0, '26/12/2019 16:36'),
(8, 8, 'delivered', 0, '27/12/2019 10:25'),
(9, 5, 'delivered', 0, '27/12/2019 11:13'),
(10, 14, 'delivered', 0, '21/01/2020 09:46'),
(11, 6, 'delivering', 0, '27/02/2020 16:57');

-- --------------------------------------------------------

--
-- Table structure for table `t_order`
--

CREATE TABLE IF NOT EXISTS `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` text NOT NULL,
  `statement` varchar(45) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `total_price` varchar(45) NOT NULL,
  `note` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `ship-fee` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `t_order`
--

INSERT INTO `t_order` (`id`, `time`, `statement`, `contact`, `total_price`, `note`, `customer_id`, `order_code`, `ship-fee`, `account_id`) VALUES
(1, '13/12/2019 16:56', 'Delivered', 'Doan Dai Tien  - 241 Xuân Thuỷ, Phường Dịch Vọng Hậu, Quận Cầu Giấy, Thành phố Hà Nội\nĐiện thoại: 0384419922', '6696666', 'Đừng giao', 37, 'O1', '30,000', 13),
(2, '13/12/2019 16:53', 'Delivered', 'Doan Dai Tien  - Thôn 4, Tỉnh Sơn La, Huyện Thuận Châu, Xã Chiềng La\nĐiện thoại: 0987042556', '6696666', 'Giao vào 0h đêm nhé', 12, 'O2', '30,000', 0),
(5, '13/12/2019 17:12', 'Delivered', 'Doan Dai Tien  - 241 Xuân Thuỷ, Xã Sinh Long, Huyện Nà Hang, Tỉnh Tuyên Quang\nĐiện thoại: 0384419922', '6696666', '', 37, 'O5', '30,000', 13),
(6, '13/12/2019 17:15', 'Delivering', 'Doan Dai Tien  - 241 Xuân Thuỷ, Xã Sinh Long, Huyện Nà Hang, Tỉnh Tuyên Quang\nĐiện thoại: 0384419922', '6696666', '', 37, 'O6', '30,000', 13),
(7, '13/12/2019 17:36', 'Delivered', 'Doan Dai Tien  - 241 Xuân Thuỷ, Xã Sinh Long, Huyện Nà Hang, Tỉnh Tuyên Quang\nĐiện thoại: 0384419922', '6696666', '', 37, 'O7', '30,000', 0),
(8, '13/12/2019 17:37', 'Delivered', 'Doan Dai Tien  - 241 Xuân Thuỷ, Xã Sinh Long, Huyện Nà Hang, Tỉnh Tuyên Quang\nĐiện thoại: 0384419922', '6696666', '', 37, 'O8', '30,000', 11),
(9, '13/12/2019 17:44', 'Delivered', 'Doan Dai Tien  - 241 Xuân Thuỷ, Xã Sinh Long, Huyện Nà Hang, Tỉnh Tuyên Quang\nĐiện thoại: 0384419922', '8918888', '', 37, 'O9', '30,000', 11),
(10, '23/12/2019 17:46', 'Delivered', 'Doan Dai Tien  - Thôn 4, Tỉnh Sơn La, Huyện Thuận Châu, Xã Chiềng La\nĐiện thoại: 0987042556', '4474444', '', 12, 'O10', '30,000', 0),
(11, '22/12/2019 09:23', 'Delivered', 'Doan Dai Tien  - 241 Xuân Thuỷ, Xã Sinh Long, Huyện Nà Hang, Tỉnh Tuyên Quang\nĐiện thoại: 0384419922', '6696666', 'Ok!', 37, 'O11', '30,000', 0),
(14, '13/12/2019 16:56', 'Delivered', 'Doan Dai Tien  - 241 Xuân Thuỷ, Phường Dịch Vọng Hậu, Quận Cầu Giấy, Thành phố Hà Nội\nĐiện thoại: 0384419922', '6696666', 'Đừng giao', 12, 'O14', '30,000', 13);

-- --------------------------------------------------------

--
-- Table structure for table `t_order_detail`
--

CREATE TABLE IF NOT EXISTS `t_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_sold_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `t_order_detail`
--

INSERT INTO `t_order_detail` (`id`, `quantity`, `order_id`, `product_sold_id`, `price`, `discount_price`) VALUES
(1, 1, 1, 1, 0, 999999),
(2, 1, 1, 4, 0, 990000),
(3, 1, 2, 6, 0, 999999),
(4, 1, 2, 1, 0, 990000),
(9, 1, 5, 1, 0, 999999),
(10, 1, 5, 6, 0, 990000),
(11, 1, 6, 1, 0, 999999),
(12, 1, 6, 6, 0, 990000),
(13, 1, 7, 1, 0, 999999),
(14, 1, 7, 4, 0, 990000),
(15, 1, 8, 1, 0, 999999),
(16, 1, 8, 6, 0, 990000),
(17, 2, 9, 1, 0, 999999),
(18, 1, 9, 4, 0, 990000),
(19, 1, 10, 6, 0, 1111111),
(20, 1, 11, 1, 0, 222222),
(21, 1, 11, 6, 0, 333333),
(22, 1, 13, 1, 0, 444444),
(23, 1, 14, 1, 0, 555555),
(24, 1, 14, 4, 0, 666666);

-- --------------------------------------------------------

--
-- Table structure for table `t_order_track`
--

CREATE TABLE IF NOT EXISTS `t_order_track` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expected_time` varchar(255) NOT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `receive_time` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `t_order_track`
--

INSERT INTO `t_order_track` (`id`, `expected_time`, `delivery_time`, `receive_time`, `order_id`) VALUES
(1, '23/12/2019', '17/12/2019 09:27', '26/12/2019 16:36', 1),
(2, '23/12/2019', '17/12/2019 13:25', '17/12/2019 14:57', 2),
(3, '23/12/2019', '17/12/2019 09:12', '', 3),
(4, '23/12/2019', '17/12/2019 09:12', '', 4),
(5, '23/12/2019', '27/12/2019 11:05', '27/12/2019 11:13', 5),
(6, '23/12/2019', '27/02/2020 16:57', '', 6),
(7, '23/12/2019', '17/12/2019 09:12', '17/12/2019 14:59', 7),
(8, '23/12/2019', '', '', 7),
(9, '23/12/2019', '27/12/2019 10:23', '27/12/2019 10:25', 8),
(10, '23/12/2019', '17/12/2019 10:03', '25/12/2019 14:28', 9),
(11, '23/12/2019', '17/12/2019 10:18', '', 10),
(12, '23/12/2019', '17/12/2019 10:27', '12/25/2019 11:28', 11),
(13, '23/12/2019', '', '', 12),
(14, '23/12/2019', '21/01/2020 09:46', '21/01/2020 09:46', 14);

-- --------------------------------------------------------

--
-- Table structure for table `t_payment_methods`
--

CREATE TABLE IF NOT EXISTS `t_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `point` varchar(45) NOT NULL,
  `card` float NOT NULL,
  `cash` varchar(45) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `t_payment_methods`
--

INSERT INTO `t_payment_methods` (`id`, `point`, `card`, `cash`, `bill_id`, `order_id`) VALUES
(1, '0', 0, '1,989,999', 1, 0),
(3, '0', 0, '999,999', 3, 0),
(4, '133,300', 0, '0', 0, 1),
(11, '0', 0, '31,900,000', 4, 0),
(7, '133,300', 0, '0', 0, 5),
(8, '133,300', 0, '0', 0, 6),
(9, '133,300', 0, '0', 0, 7),
(10, '2,252,222', 0, '0', 0, 13),
(12, '0', 0, '500,000', 5, 0),
(13, '0', 0, '200,000', 6, 0),
(14, '0', 0, '200,000', 7, 0),
(15, '0', 0, '1,111,111', 8, 0),
(16, '0', 0, '27,000,000', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_product`
--

CREATE TABLE IF NOT EXISTS `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `price` int(45) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `categories_types_id` int(11) NOT NULL,
  `code` varchar(25) NOT NULL,
  `sold` int(11) NOT NULL,
  `detail_content` text NOT NULL,
  `finish_price` int(11) NOT NULL,
  PRIMARY KEY (`id`,`code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=130 ;

--
-- Dumping data for table `t_product`
--

INSERT INTO `t_product` (`id`, `name`, `price`, `image`, `description`, `categories_types_id`, `code`, `sold`, `detail_content`, `finish_price`) VALUES
(81, 'Iphone 11 pro max 64gb', 27000000, '37f1581a2d99e2c.png,52a04dbe711347e.png,da9ae44885ead1d.png,395668378275890.png,f4ba6fee2e7fd87.png', '<ul> <li>Ch&iacute;nh h&atilde;ng, nguy&ecirc;n seal, mới 100%, chưa Active</li> <li>Miễn ph&iacute; giao h&agrave;ng to&agrave;n quốc</li> <li>M&agrave;n h&igrave;nh OLED 6.5 inch</li> <li>Camera k&eacute;p 12MP, camera trước 7MP x&oacute;a ph&ocirc;ng</li> <li>Chip xử l&yacute;: A12 Bionic 64-bit 7nm</li> <li>RAM: 4GB</li> <li>ROM: 64GB</li> <li>Cảm biến nhận diện khu&ocirc;n mặt Face ID</li> <li>Bảo vệ bằng AI ngay tr&ecirc;n m&aacute;y</li> <li>M&agrave;n h&igrave;nh viền si&ecirc;u mỏng, khung th&eacute;p kh&ocirc;ng rỉ</li> <li>Chống nước IP68</li> <li>1 Nano SIM + 1 eSIM</li> <li>Hệ điều h&agrave;nh: iOS 12 ch&iacute;nh thức</li> <li>Sạc kh&ocirc;ng d&acirc;y Qi</li>\n</ul>', 62, 'P81', 2, 'Iphone 11 pro max 64gb  Ch&iacute;nh h&atilde;ng, nguy&ecirc;n seal, moi 100%, chua Active Mien ph&iacute; giao h&agrave;ng to&agrave;n quoc M&agrave;n h&igrave;nh OLED 6.5 inch Camera k&eacute;p 12MP, camera truoc 7MP x&oacute;a ph&ocirc;ng Chip xu l&yacute;: A12 Bionic 64-bit 7nm RAM: 4GB ROM: 64GB Cam bien nhan dien khu&ocirc;n mat Face ID Bao ve bang AI ngay tr&ecirc;n m&aacute;y M&agrave;n h&igrave;nh vien si&ecirc;u mong, khung th&eacute;p kh&ocirc;ng ri Chong nuoc IP68 1 Nano SIM + 1 eSIM He dieu h&agrave;nh: iOS 12 ch&iacute;nh thuc Sac kh&ocirc;ng d&acirc;y Qi\n', 27000000),
(57, 'Điện thoại samsung galaxy note 10 plus (256gb/12gb) - hàng chính hãng - đã kích hoạt bảo hành điện tử', 1111111111, '77a4825b00e990c.png,35c06b8df1bf63b.png,79b66b997d5fd30.png', '<ul> <li>dasdad</li> <li>sdasd</li> <li>adsda</li> <li>sda</li> <li>sda</li> <li>sda</li> <li>sd</li> <li>dasd</li>\n</ul>', 62, 'P57', 8, 'Dien thoai samsung galaxy note 10 plus (256gb/12gb) - hang chinh hang - da kich hoat bao hanh dien tu  dasdad sdasd adsda sda sda sda sd dasd\n', 1111111),
(58, 'Điện thoại xiaomi redmi note 7 (4gb/64gb) - hàng chính hãng', 2222222, '4b5098d0767bc17.png,6908deac8e84558.png,5a6794fcd9cc9ec.png', '<ul> <li>dasdad</li> <li>sdasd</li> <li>adsda</li> <li>sda</li> <li>sda</li> <li>sda</li> <li>sd</li> <li>dasd</li>\n</ul>', 62, 'P58', 6, 'Dien thoai xiaomi redmi note 7 (4gb/64gb) - hang chinh hang  dasdad sdasd adsda sda sda sda sd dasd\n', 2222222),
(59, 'Điện thoại iphone 11 pro max 64gb - hàng chính hãng', 3333333, '85fd9767476627c.png,8129c1031fe810a.png,0062a05efb57f42.png,1a9464561e32974.png', '<ul> <li>dasdad</li> <li>sdasd</li> <li>adsda</li> <li>sda</li> <li>sda</li> <li>sda</li> <li>sd</li> <li>dasd</li>\n</ul>', 62, 'P59', 5, 'Dien thoai iphone 11 pro max 64gb - hang chinh hang  dasdad sdasd adsda sda sda sda sd dasd\n', 3333333),
(60, 'Điện thoại xiaomi mi 9t pro 6gb/128gb - hàng chính hãng', 4444444, '2d9a065d84e3522.png,5e3a0ef73ec14ad.png,7172f6812c6da2f.png,598bf7fb61906b6.png,efbe9730589d73f.png', '<p><em>dasdad sdasd adsda sda sda sda sd dasd</em></p>', 62, 'P60', 4, 'Dien thoai xiaomi mi 9t pro 6gb/128gb - hang chinh hang dasdad sdasd adsda sda sda sda sd dasd', 4444444),
(85, 'Macbook pro touch bar 2019', 31990000, '9140a2914aabbf7.png,cf740dee699bff5.png', '<ul> <li>Chip: Intel Core I5, 1.4 GHz Turbo Boost up to 3.9 GHz with 4 Cores, 8 Threads</li> <li>RAM: 8GB 2133MHz LPDDR3 memory</li> <li>Ổ cứng: 128GB SSD storage</li> <li>Chipset đồ hoạ: Intel Iris Plus Graphics 645 on-board</li> <li>M&agrave;n h&igrave;nh: 13.3 inch Retina Display with True Tone (2560&times;1600)</li> <li>Hệ điều h&agrave;nh: Preinstalled macOS Mojave</li>\n</ul>', 61, 'P85', 0, 'Macbook pro touch bar 2019  Chip: Intel Core I5, 1.4 GHz Turbo Boost up to 3.9 GHz with 4 Cores, 8 Threads RAM: 8GB 2133MHz LPDDR3 memory O cung: 128GB SSD storage Chipset do hoa: Intel Iris Plus Graphics 645 on-board M&agrave;n h&igrave;nh: 13.3 inch Retina Display with True Tone (2560&times;1600) He dieu h&agrave;nh: Preinstalled macOS Mojave\n', 31990000),
(80, 'Iphone xr', 15000000, 'def7e46e9c9d5ba.png,28d904dc836d884.png,e8358c06add9ee1.png,34a388577d6045b.png', '<ul> <li>M&atilde; Quốc Tế: LL/ZA/ZP/.. Ch&iacute;nh h&atilde;ng, Nguy&ecirc;n seal, Mới 100%, Chưa Active</li> <li>Đối với h&agrave;ng iPhone xuất xứ m&atilde; LL: Kh&aacute;ch h&agrave;ng sử dụng tại Việt Nam phải k&iacute;ch hoạt đầu ti&ecirc;n bằng sim Việt Nam, nếu k&iacute;ch bằng sim nước ngo&agrave;i sẽ bị kh&oacute;a vĩnh viễn ko sử dụng được Kh&ocirc;ng sử dụng được eSIM tại Việt Nam, chỉ sử dụng được tại Mỹ</li> <li>Thiết kế: Nguy&ecirc;n khối M&agrave;n h&igrave;nh: 6.1 inch LCD (828 x 1792), 324 ppi, 3D touch, True-tone</li> <li>Camera Trước/Sau: 7MP / 12MP</li> <li>CPU: A12 Binonic 64-bit 7nm</li> <li>Bộ Nhớ: 128GB RAM: 3GB SIM: 1 Nano SIM, 1 eSIM</li> <li>T&iacute;nh năng: Chống nước, chống bụi, Face ID</li>\n</ul>', 62, 'P80', 0, 'Iphone xr  M&atilde; Quoc Te: LL/ZA/ZP/.. Ch&iacute;nh h&atilde;ng, Nguy&ecirc;n seal, Moi 100%, Chua Active Doi voi h&agrave;ng iPhone xuat xu m&atilde; LL: Kh&aacute;ch h&agrave;ng su dung tai Viet Nam phai k&iacute;ch hoat dau ti&ecirc;n bang sim Viet Nam, neu k&iacute;ch bang sim nuoc ngo&agrave;i se bi kh&oacute;a vinh vien ko su dung duoc Kh&ocirc;ng su dung duoc eSIM tai Viet Nam, chi su dung duoc tai My Thiet ke: Nguy&ecirc;n khoi M&agrave;n h&igrave;nh: 6.1 inch LCD (828 x 1792), 324 ppi, 3D touch, True-tone Camera Truoc/Sau: 7MP / 12MP CPU: A12 Binonic 64-bit 7nm Bo Nho: 128GB RAM: 3GB SIM: 1 Nano SIM, 1 eSIM T&iacute;nh nang: Chong nuoc, chong bui, Face ID\n', 15000000),
(103, 'Longline sleeveless t-shirt', 200000, '784da91d2f144dc.png', '<ul> <li>Chất liệu vải thun mềm v&agrave; tho&aacute;ng m&aacute;t</li> <li>Đường may tinh tế, tỉ mỉ</li> <li>Kết hợp c&ugrave;ng quần jeans d&agrave;i, quần &acirc;u,...</li> <li>Th&iacute;ch hợp đi l&agrave;m, đi chơi, dạo phố, du lịch</li>\n</ul>', 69, 'P103', 2, 'Longline sleeveless t-shirt  Chat lieu vai thun mem v&agrave; tho&aacute;ng m&aacute;t Duong may tinh te, ti mi Ket hop c&ugrave;ng quan jeans d&agrave;i, quan &acirc;u,... Th&iacute;ch hop di l&agrave;m, di choi, dao pho, du lich\n', 200000),
(82, 'Iphone x vn/a', 19450000, 'eea763faa713395.png,b28e777914b78fb.png,d75307d216fdc9b.png', '<ul> <li>Ch&iacute;nh h&atilde;ng, Nguy&ecirc;n seal, Mới 100%, Chưa Active</li> <li>Thiết kế: Nguy&ecirc;n khối</li> <li>M&agrave;n h&igrave;nh: Super AMOLED capacitive touchscreen, 5.8 inch HD</li> <li>Camera Trước/Sau: 7MP/ 2 camera 12MP CPU: Apple A11 Bionic 6 nh&acirc;n</li> <li>Bộ Nhớ: T&ugrave;y chọn 64GB / 256GB</li> <li>RAM: 3GB SIM: 1 Nano SIM</li> <li>T&iacute;nh năng: Chống nước, chống bụi, Face ID</li>\n</ul>', 62, 'P82', 0, 'Iphone x vn/a  Ch&iacute;nh h&atilde;ng, Nguy&ecirc;n seal, Moi 100%, Chua Active Thiet ke: Nguy&ecirc;n khoi M&agrave;n h&igrave;nh: Super AMOLED capacitive touchscreen, 5.8 inch HD Camera Truoc/Sau: 7MP/ 2 camera 12MP CPU: Apple A11 Bionic 6 nh&acirc;n Bo Nho: T&ugrave;y chon 64GB / 256GB RAM: 3GB SIM: 1 Nano SIM T&iacute;nh nang: Chong nuoc, chong bui, Face ID\n', 19450000),
(75, 'Iphone 11', 29000000, 'ac6d95367cd8097.png,8efa6c34fcc9b25.png,5dde4927ba88d7f.png,18312557b1a0e7b.png,5dde4927ba88d7f.png', '<ul> <li>Ch&iacute;nh h&atilde;ng, Nguy&ecirc;n seal, Mới 100%, Chưa active</li> <li>M&atilde; part: VN/A</li> <li>Thiết kế: Nguy&ecirc;n khối</li> <li>M&agrave;n h&igrave;nh: OLED (Super Retina XDR), 6.5 inch, 2688 x 1242 pixels</li> <li>Camera Trước/Sau: 12MP / 12MP + 12MP + 12MP</li> <li>CPU: Apple A13 Bionic (7 nm+)</li> <li>Bộ Nhớ: 64 GB</li> <li>RAM: 4GB</li> <li>SIM: 1</li> <li>Nano SIM + 1 esim</li> <li>T&iacute;nh năng: Chống nước, chống bụi, Face ID, Sạc pin nhanh</li>\n</ul>', 62, 'P75', 0, 'Iphone 11  Ch&iacute;nh h&atilde;ng, Nguy&ecirc;n seal, Moi 100%, Chua active M&atilde; part: VN/A Thiet ke: Nguy&ecirc;n khoi M&agrave;n h&igrave;nh: OLED (Super Retina XDR), 6.5 inch, 2688 x 1242 pixels Camera Truoc/Sau: 12MP / 12MP + 12MP + 12MP CPU: Apple A13 Bionic (7 nm+) Bo Nho: 64 GB RAM: 4GB SIM: 1 Nano SIM + 1 esim T&iacute;nh nang: Chong nuoc, chong bui, Face ID, Sac pin nhanh\n', 29000000),
(76, 'Iphone 6s', 6400000, '290851b8f917347.png,bb2f72353bcabb9.png,1ca7c70ade26dec.png,359d50561b29a14.png', '<ul> <li>M&atilde; Quốc Tế: LL,ZP, J/A,...</li> <li>Nguy&ecirc;n seal, mới 100%, chưa Active</li> <li>Miễn ph&iacute; giao h&agrave;ng to&agrave;n quốc</li> <li>Thiết kế: Nguy&ecirc;n khối, mặt k&iacute;nh cong 2.5D</li> <li>M&agrave;n h&igrave;nh: 4.7 inch, HD (1334 x 750 Pixels)</li> <li>Camera Trước/Sau: 5MP/ 12MP CPU: Apple A9 2 nh&acirc;n 64-bit Bộ nhớ: 32GB RAM: 2GB</li> <li>T&iacute;nh năng: Mở kh&oacute;a bằng v&acirc;n tay</li>\n</ul>', 62, 'P76', 0, 'Iphone 6s  M&atilde; Quoc Te: LL,ZP, J/A,... Nguy&ecirc;n seal, moi 100%, chua Active Mien ph&iacute; giao h&agrave;ng to&agrave;n quoc Thiet ke: Nguy&ecirc;n khoi, mat k&iacute;nh cong 2.5D M&agrave;n h&igrave;nh: 4.7 inch, HD (1334 x 750 Pixels) Camera Truoc/Sau: 5MP/ 12MP CPU: Apple A9 2 nh&acirc;n 64-bit Bo nho: 32GB RAM: 2GB T&iacute;nh nang: Mo kh&oacute;a bang v&acirc;n tay\n', 6400000),
(77, 'Iphone xs', 23990000, '61f93cd0485cca4.png,1d48894ea397d8d.png,58e14d35e662eca.png,ae7142b5cd0fa0f.png,623fdc9b4f5346f.png', '<ul> <li>Ch&iacute;nh h&atilde;ng, nguy&ecirc;n seal, mới 100%, chưa active</li> <li>Miễn ph&iacute; giao h&agrave;ng to&agrave;n quốc</li> <li>Thiết kế: Nguy&ecirc;n khối</li> <li>M&agrave;n h&igrave;nh OLED: 5.8 inch Super Retina (2436 x 1125), 463ppi, 3D Touch, TrueTone</li> <li>Dolby Vision HDR 10</li> <li>Camera Trước/Sau: 7MP/ 2 camera 12MP CPU: A12 Bionic 64-bit 7nm</li> <li>Bộ Nhớ: 64GB RAM: 4GB SIM: 1 Nano SIM - 1 eSIM</li> <li>Đạt chuẩn chống nước bụi IP68, Face ID</li>\n</ul>', 62, 'P77', 0, 'Iphone xs  Ch&iacute;nh h&atilde;ng, nguy&ecirc;n seal, moi 100%, chua active Mien ph&iacute; giao h&agrave;ng to&agrave;n quoc Thiet ke: Nguy&ecirc;n khoi M&agrave;n h&igrave;nh OLED: 5.8 inch Super Retina (2436 x 1125), 463ppi, 3D Touch, TrueTone Dolby Vision HDR 10 Camera Truoc/Sau: 7MP/ 2 camera 12MP CPU: A12 Bionic 64-bit 7nm Bo Nho: 64GB RAM: 4GB SIM: 1 Nano SIM - 1 eSIM Dat chuan chong nuoc bui IP68, Face ID\n', 23990000),
(78, 'Iphone 8 plus', 11000000, '1d7df1f6dcbebc8.png,64b7234ff5f188e.png,7ac0c7ae279b550.png,f4fe1e593f7c8ea.png,6a58f148341dd64.png', '<ul> <li>M&atilde; Quốc Tế: J/A,... Ch&iacute;nh h&atilde;ng, Nguy&ecirc;n seal, Mới 100%, Chưa Active</li> <li>Thiết kế: Nguy&ecirc;n khối</li> <li>M&agrave;n h&igrave;nh: LED-backlit IPS LCD, 4.7 inch HD</li> <li>Camera Trước/Sau: 7MP/12MP CPU: Apple A11 Bionic 6 nh&acirc;n</li> <li>Bộ Nhớ: 64GB RAM: 2GB SIM: 1 Nano SIM</li> <li>T&iacute;nh năng: Chống nước, chống bụi, 3D touch</li>\n</ul>', 62, 'P78', 0, 'Iphone 8 plus  M&atilde; Quoc Te: J/A,... Ch&iacute;nh h&atilde;ng, Nguy&ecirc;n seal, Moi 100%, Chua Active Thiet ke: Nguy&ecirc;n khoi M&agrave;n h&igrave;nh: LED-backlit IPS LCD, 4.7 inch HD Camera Truoc/Sau: 7MP/12MP CPU: Apple A11 Bionic 6 nh&acirc;n Bo Nho: 64GB RAM: 2GB SIM: 1 Nano SIM T&iacute;nh nang: Chong nuoc, chong bui, 3D touch\n', 11000000),
(79, 'Iphone 7 plus', 10999000, '07081a9149e256b.png,88fe049acc02652.png,86fe9733b7c429e.png,453674bde15108a.png,e051cb5d9f3a41c.png', '<ul> <li>Ch&iacute;nh h&atilde;ng, nguy&ecirc;n seal, mới 100%</li> <li>Thiết kế: Nguy&ecirc;n khối, mặt k&iacute;nh cong 2.5D</li> <li>M&agrave;n h&igrave;nh: 5.5 inch, Full HD (1080 x 1920 pixels)</li> <li>Camera Trước/Sau: 7MP/ 2 x 12MP</li> <li>CPU: Apple A10 Fusion 4 nh&acirc;n 64-bit</li> <li>Bộ Nhớ: T&ugrave;y chọn 32GB / 128GB</li> <li>RAM: 3GB</li> <li>Chống nước, chống bụi ti&ecirc;u chuẩn IP67</li>\n</ul>', 62, 'P79', 0, 'Iphone 7 plus  Ch&iacute;nh h&atilde;ng, nguy&ecirc;n seal, moi 100% Thiet ke: Nguy&ecirc;n khoi, mat k&iacute;nh cong 2.5D M&agrave;n h&igrave;nh: 5.5 inch, Full HD (1080 x 1920 pixels) Camera Truoc/Sau: 7MP/ 2 x 12MP CPU: Apple A10 Fusion 4 nh&acirc;n 64-bit Bo Nho: T&ugrave;y chon 32GB / 128GB RAM: 3GB Chong nuoc, chong bui ti&ecirc;u chuan IP67\n', 10999000),
(84, 'Macbook air 2019', 24590000, '3dd6bd353daba97.png,ace648685ce1030.png', '<ul> <li>Chip: Intel Core i5 8th 1.6GHz dual-core (Turbo Boost up to 3.6GHz)</li> <li>RAM: 8GB 2133MHz LPDDR3</li> <li>Ổ Cứng: 128GB SSD</li> <li>Chipset đồ họa: Intel UHD Graphics 617</li> <li>M&agrave;n h&igrave;nh: 13.3 inch (2560 x 1600), LED-backlit display with IPS technology, True Tone technology</li> <li>V&acirc;n tay: Touch ID</li> <li>Cổng kết nối: 2 x Thunderbolt 3, 3.5 mm headphone jack</li>\n</ul>', 61, 'P84', 0, 'Macbook air 2019  Chip: Intel Core i5 8th 1.6GHz dual-core (Turbo Boost up to 3.6GHz) RAM: 8GB 2133MHz LPDDR3 O Cung: 128GB SSD Chipset do hoa: Intel UHD Graphics 617 M&agrave;n h&igrave;nh: 13.3 inch (2560 x 1600), LED-backlit display with IPS technology, True Tone technology V&acirc;n tay: Touch ID Cong ket noi: 2 x Thunderbolt 3, 3.5 mm headphone jack\n', 24590000),
(83, 'Samsung galaxy m30s', 4900000, '9462eff0e794bc1.png,ca7237c774b4114.png,1496252cd7df7da.png,ebd1f24c6e349cb.png,8456cd96a23c6a8.webp', '<ul> <li>H&agrave;ng ch&iacute;nh h&atilde;ng Samsung Việt Nam, Nguy&ecirc;n seal, Mới 100%, Chưa Active</li> <li>M&agrave;n h&igrave;nh: Super AMOLED, 6.4&quot;, Full HD+ (1080 x 2280 Pixels)</li> <li>Camera Sau : 48 MP, 8 MP v&agrave; 5 MP (3 camera)</li> <li>Camera Trước: 16 MP</li> <li>CPU: Exynos 9611 8 nh&acirc;n</li> <li>Bộ Nhớ: 64GB</li> <li>RAM: 4GB</li> <li>Dung lượng pin 6000 mAh</li> <li>T&iacute;nh năng: Mở kh&oacute;a bằng v&acirc;n tay, Dolby Audio, Đ&egrave;n pin, Sạc pin nhanh, Chặn cuộc gọi, Chặn tin nhắn</li>\n</ul>', 62, 'P83', 1, 'Samsung galaxy m30s  H&agrave;ng ch&iacute;nh h&atilde;ng Samsung Viet Nam, Nguy&ecirc;n seal, Moi 100%, Chua Active M&agrave;n h&igrave;nh: Super AMOLED, 6.4&quot;, Full HD+ (1080 x 2280 Pixels) Camera Sau : 48 MP, 8 MP v&agrave; 5 MP (3 camera) Camera Truoc: 16 MP CPU: Exynos 9611 8 nh&acirc;n Bo Nho: 64GB RAM: 4GB Dung luong pin 6000 mAh T&iacute;nh nang: Mo kh&oacute;a bang v&acirc;n tay, Dolby Audio, D&egrave;n pin, Sac pin nhanh, Chan cuoc goi, Chan tin nhan\n', 4900000),
(86, 'Laptop asus vivobook 14', 15390000, '5775f10ca964d5c.jpg,9cc51190d180b26.png', '<ul> <li>Chip: Intel Core i5-8265U (1.60GHz Up to 3.90 GHz, 4Cores, 8Threads, 6MB Cache, FSB 4GT/s)</li> <li>RAM: 8GB DDR4 2400MHz + 1 slot RAM</li> <li>Ổ cứng: 512GB SSD M.2 PCIe</li> <li>Chipset đồ họa: Intel UHD Graphics 620</li> <li>M&agrave;n h&igrave;nh: 14-inch FHD (1920x1080) 60Hz Anti-Glare</li> <li>Panel with 45% NTSC, NanoEdge</li> <li>Hệ điều h&agrave;nh: Windows 10 bản quyền</li> <li>Pin: 2 Cells 37 Whrs</li>\n</ul>', 61, 'P86', 0, 'Laptop asus vivobook 14  Chip: Intel Core i5-8265U (1.60GHz Up to 3.90 GHz, 4Cores, 8Threads, 6MB Cache, FSB 4GT/s) RAM: 8GB DDR4 2400MHz + 1 slot RAM O cung: 512GB SSD M.2 PCIe Chipset do hoa: Intel UHD Graphics 620 M&agrave;n h&igrave;nh: 14-inch FHD (1920x1080) 60Hz Anti-Glare Panel with 45% NTSC, NanoEdge He dieu h&agrave;nh: Windows 10 ban quyen Pin: 2 Cells 37 Whrs\n', 15390000),
(87, 'Laptop hp envy', 21000000, '2f5a2079b0b10e5.png,0a227e1a15d5404.png', '<ul> <li>CPU: Intel Core i5-8265U 1.6GHz up 3.9GHz 6MB</li> <li>M&agrave;n h&igrave;nh: 13.3&quot; FHD (1920 x 1080) IPS, BrightView Micro-Edge</li> <li>RAM: 8GB LPDDR3 2133MHz (Onboard)</li> <li>Đồ họa: Intel UHD Graphics 620</li> <li>Lưu trữ: 256GB PCIe NVMe M.2 SSD</li> <li>Hệ điều h&agrave;nh: Windows 10 Home</li> <li>Pin: 4 Cell 53WHr</li>\n</ul>', 61, 'P87', 0, 'Laptop hp envy  CPU: Intel Core i5-8265U 1.6GHz up 3.9GHz 6MB M&agrave;n h&igrave;nh: 13.3&quot; FHD (1920 x 1080) IPS, BrightView Micro-Edge RAM: 8GB LPDDR3 2133MHz (Onboard) Do hoa: Intel UHD Graphics 620 Luu tru: 256GB PCIe NVMe M.2 SSD He dieu h&agrave;nh: Windows 10 Home Pin: 4 Cell 53WHr\n', 21000000),
(88, 'Laptop asus asuspro', 20000000, '3318fac8418732b.png', '<ul> <li>Si&ecirc;u mỏng, si&ecirc;u nhẹ</li> <li>Bẻ gập 180&deg;</li> <li>Bảo mật v&acirc;n tay</li> <li>2 v&ugrave;ng lưu trữ HDD v&agrave; SSD (n&acirc;ng cấp t&ugrave;y chọn)</li> <li>Win 10 bản quyền k&egrave;m theo m&aacute;y</li> <li>Chip: Intel Core i5-8250U (1.6 GHz, Turbo up to 3.4 GHz, L3 Cache 6MB, 15W)</li> <li>RAM: 4G DDR4</li> <li>Ổ cứng: T&ugrave;y chọn</li> <li>Chipset đồ họa: Intel HD Graphics 620</li> <li>M&agrave;n h&igrave;nh: 14 inch Full HD (1920 x 1080) IPS</li> <li>Pin: 3Cell (Li-Polymer/)</li>\n</ul>', 61, 'P88', 0, 'Laptop asus asuspro  Si&ecirc;u mong, si&ecirc;u nhe Be gap 180&deg; Bao mat v&acirc;n tay 2 v&ugrave;ng luu tru HDD v&agrave; SSD (n&acirc;ng cap t&ugrave;y chon) Win 10 ban quyen k&egrave;m theo m&aacute;y Chip: Intel Core i5-8250U (1.6 GHz, Turbo up to 3.4 GHz, L3 Cache 6MB, 15W) RAM: 4G DDR4 O cung: T&ugrave;y chon Chipset do hoa: Intel HD Graphics 620 M&agrave;n h&igrave;nh: 14 inch Full HD (1920 x 1080) IPS Pin: 3Cell (Li-Polymer/)\n', 20000000),
(89, 'Laptop lenovo ideapad', 16990000, '5841c4e92f9f4cd.png', '<ul> <li>CPU: Intel Core i5-9300H 2.4GHz up to 4.1GHz 8MB</li> <li>M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) IPS, Anti-Glare</li> <li>RAM: 8GB DDR4 2666MHz (1x SO-DIMM socket, up to 16GB SDRAM)</li> <li>Đồ họa: NVIDIA GeForce GTX 1050 3GB GDDR5 + Intel UHD Graphics 630</li> <li>Lưu trữ: HDD 1TB 5400rpm, x1 slot SSD M.2 (SATA/ PCIe)</li> <li>Hệ điều h&agrave;nh: Free DOS</li> <li>Pin: 3 Cell 45 WHr</li>\n</ul>', 61, 'P89', 0, 'Laptop lenovo ideapad  CPU: Intel Core i5-9300H 2.4GHz up to 4.1GHz 8MB M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) IPS, Anti-Glare RAM: 8GB DDR4 2666MHz (1x SO-DIMM socket, up to 16GB SDRAM) Do hoa: NVIDIA GeForce GTX 1050 3GB GDDR5 + Intel UHD Graphics 630 Luu tru: HDD 1TB 5400rpm, x1 slot SSD M.2 (SATA/ PCIe) He dieu h&agrave;nh: Free DOS Pin: 3 Cell 45 WHr\n', 16990000),
(90, 'Laptop acer aspire 5', 15090000, '153996d00f3f8a6.png', '<ul> <li>CPU: Intel Core i5-10210U (1.6 GHz - 4.2 GHz/6MB/4 nh&acirc;n, 8 lu&ocirc;̀ng)</li> <li>M&agrave;n h&igrave;nh: 15.6&quot; (1920 x 1080)</li> <li>RAM: 1 x 8GB DDR4 2133MHz (1 Khe cắm, Hỗ trợ tối đa 16GB)</li> <li>Đồ họa: Intel UHD Graphics 620</li> <li>Lưu trữ: 512GB SSD M.2 NVMe</li> <li>Hệ điều h&agrave;nh: Windows 10 Home 64-bit</li> <li>Pin: 4 cell</li>\n</ul>', 61, 'P90', 0, 'Laptop acer aspire 5  CPU: Intel Core i5-10210U (1.6 GHz - 4.2 GHz/6MB/4 nh&acirc;n, 8 lu&ocirc;ng) M&agrave;n h&igrave;nh: 15.6&quot; (1920 x 1080) RAM: 1 x 8GB DDR4 2133MHz (1 Khe cam, Ho tro toi da 16GB) Do hoa: Intel UHD Graphics 620 Luu tru: 512GB SSD M.2 NVMe He dieu h&agrave;nh: Windows 10 Home 64-bit Pin: 4 cell\n', 15090000),
(91, 'Laptop msi gf63', 23999000, '2e888dbe4b4d6fd.png,0ff98d786ac58a5.jpg', '<ul> <li>CPU: Intel Core i7-9750H 2.6GHz up to 4.5GHz 12MB</li> <li>RAM: 8GB DDR4 2666MHz (2x SO-DIMM socket, up to 32GB SDRAM)</li> <li>&Ocirc;̉ cứng: 512GB SSD M.2 PCIe</li> <li>Card đồ họa: NVIDIA GeForce GTX 1050Ti 4GB GDDR5 + Intel UHD Graphics 620</li> <li>M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) IPS, 60Hz, Thin Bezel, Anti-Glare with 45% NTSC</li> <li>Cổng giao tiếp: 3x USB 3.1, 1x USB 3.1 Type-C, 1x HDMI, 1x Mini-DisplayPort, 1x RJ45</li> <li>Hệ điều h&agrave;nh: Windows 10 Home</li> <li>Pin: 3 Cell 51WHr</li>\n</ul>', 61, 'P91', 0, 'Laptop msi gf63  CPU: Intel Core i7-9750H 2.6GHz up to 4.5GHz 12MB RAM: 8GB DDR4 2666MHz (2x SO-DIMM socket, up to 32GB SDRAM) &Ocirc; cung: 512GB SSD M.2 PCIe Card do hoa: NVIDIA GeForce GTX 1050Ti 4GB GDDR5 + Intel UHD Graphics 620 M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) IPS, 60Hz, Thin Bezel, Anti-Glare with 45% NTSC Cong giao tiep: 3x USB 3.1, 1x USB 3.1 Type-C, 1x HDMI, 1x Mini-DisplayPort, 1x RJ45 He dieu h&agrave;nh: Windows 10 Home Pin: 3 Cell 51WHr\n', 23999000),
(92, 'Ipad air 10.5', 12000000, '5a2dc7dfc5cf1e7.png', '<ul> <li>Thiết kế: Nh&ocirc;m nguy&ecirc;n khối</li> <li>M&agrave;n h&igrave;nh: 10.5&quot;, (2224 x 1668 pixels)</li> <li>Camera Trước/Sau: 7MP/ 8MP</li> <li>Chipset: Apple A12 Bionic (7 nm)</li> <li>CPU: Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)</li> <li>Bộ Nhớ: 64GB</li> <li>RAM: 3GB</li> <li>T&iacute;nh năng: Mở kh&oacute;a bằng v&acirc;n tay</li>\n</ul>', 64, 'P92', 0, 'Ipad air 10.5  Thiet ke: Nh&ocirc;m nguy&ecirc;n khoi M&agrave;n h&igrave;nh: 10.5&quot;, (2224 x 1668 pixels) Camera Truoc/Sau: 7MP/ 8MP Chipset: Apple A12 Bionic (7 nm) CPU: Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest) Bo Nho: 64GB RAM: 3GB T&iacute;nh nang: Mo kh&oacute;a bang v&acirc;n tay\n', 12000000),
(93, 'Samsung galaxy tab a8', 3000000, '24910a58b241839.png', '<ul> <li>H&agrave;ng ch&iacute;nh h&atilde;ng, Nguy&ecirc;n seal, Mới 100%, Chưa Active</li> <li>M&agrave;n h&igrave;nh: 8&#39;&#39; WUXGA TFT Độ ph&acirc;n giải 1280 x 800 pixels</li> <li>Camera Sau: 8 MP</li> <li>Camera Trước: 2 MP</li> <li>CPU: Qualcomm Snapdragon 429 processor</li> <li>Bộ Nhớ: 32GB</li> <li>RAM: 2GB</li> <li>Hỗ trợ thẻ nhớ MicroSD, l&ecirc;n đến 512 GB</li>\n</ul>', 64, 'P93', 0, 'Samsung galaxy tab a8  H&agrave;ng ch&iacute;nh h&atilde;ng, Nguy&ecirc;n seal, Moi 100%, Chua Active M&agrave;n h&igrave;nh: 8&#39;&#39; WUXGA TFT Do ph&acirc;n giai 1280 x 800 pixels Camera Sau: 8 MP Camera Truoc: 2 MP CPU: Qualcomm Snapdragon 429 processor Bo Nho: 32GB RAM: 2GB Ho tro the nho MicroSD, l&ecirc;n den 512 GB\n', 3000000),
(94, 'Ipad pro 11 inch (2018)', 20999000, '7c861f7c91620a3.png', '<ul> <li>Miễn ph&iacute; giao h&agrave;ng to&agrave;n quốc</li> <li>Thiết kế: Si&ecirc;u mỏng, loại bỏ n&uacute;t home</li> <li>M&agrave;n h&igrave;nh: 11 inch (2388 x1668), 264 ppi</li> <li>Camera Trước/Sau: 7MP Portrait Mode/Lighting - 12MP , f/1.8 Zoom quang 5x, Smart HDR</li> <li>CPU: A12X Bionic 64bit, Neural Engine, M12, 7 nh&acirc;n GPU</li> <li>Bộ Nhớ: 64GB</li> <li>RAM: 4GB</li> <li>Pin: 29.37Wh</li>\n</ul>', 64, 'P94', 0, 'Ipad pro 11 inch (2018)  Mien ph&iacute; giao h&agrave;ng to&agrave;n quoc Thiet ke: Si&ecirc;u mong, loai bo n&uacute;t home M&agrave;n h&igrave;nh: 11 inch (2388 x1668), 264 ppi Camera Truoc/Sau: 7MP Portrait Mode/Lighting - 12MP , f/1.8 Zoom quang 5x, Smart HDR CPU: A12X Bionic 64bit, Neural Engine, M12, 7 nh&acirc;n GPU Bo Nho: 64GB RAM: 4GB Pin: 29.37Wh\n', 20999000),
(95, 'Ipad mini 4 128gb', 12000000, 'ffe827fcba476b5.png', '<ul> <li>Ch&iacute;nh h&atilde;ng, nguy&ecirc;n seal, Mới 100%</li> <li>Miễn ph&iacute; giao h&agrave;ng to&agrave;n quốc</li> <li>Thiết kế mỏng, gọn nhẹ sang trọng đẹp mắt</li> <li>M&agrave;n h&igrave;nh: 7.9 inch</li> <li>Camera trước/sau: 1.2MP/8MP</li> <li>CPU: Apple A8, 1.5GHz</li> <li>Bộ nhớ: 128GB</li> <li>RAM: 2GB</li> <li>T&iacute;nh năng: Mở kh&oacute;a bằng v&acirc;n tay</li>\n</ul>', 64, 'P95', 0, 'Ipad mini 4 128gb  Ch&iacute;nh h&atilde;ng, nguy&ecirc;n seal, Moi 100% Mien ph&iacute; giao h&agrave;ng to&agrave;n quoc Thiet ke mong, gon nhe sang trong dep mat M&agrave;n h&igrave;nh: 7.9 inch Camera truoc/sau: 1.2MP/8MP CPU: Apple A8, 1.5GHz Bo nho: 128GB RAM: 2GB T&iacute;nh nang: Mo kh&oacute;a bang v&acirc;n tay\n', 12000000),
(96, 'Jacket baseball mishon', 450000, 'f57d0bfb967ba9f.png', '<p>&Aacute;o chất nỉ b&ocirc;ng dầy ấm, 1 lớp nỉ.</p> <p>&Aacute;o s&aacute;ng m&agrave;u, h&igrave;nh in thấm m&agrave;u, bảo h&agrave;nh giặt m&aacute;y thoải m&aacute;i. &Aacute;o đen in lưới chất lượng cao.</p> <p>Kiểu d&aacute;ng thời trang, &aacute;o tay d&agrave;i, c&oacute; t&uacute;i ốp ở bụng, c&uacute;c bấm chất lượng tốt.</p> <p>&Aacute;o d&aacute;ng xu&ocirc;ng, mặc rất thoải m&aacute;i, dễ phối đồ.</p> <p>Kiểu d&aacute;ng trẻ trung, nam hay nữ đều mặc được.</p>', 71, 'P96', 0, 'Jacket baseball mishon &Aacute;o chat ni b&ocirc;ng day am, 1 lop ni. &Aacute;o s&aacute;ng m&agrave;u, h&igrave;nh in tham m&agrave;u, bao h&agrave;nh giat m&aacute;y thoai m&aacute;i. &Aacute;o den in luoi chat luong cao. Kieu d&aacute;ng thoi trang, &aacute;o tay d&agrave;i, c&oacute; t&uacute;i op o bung, c&uacute;c bam chat luong tot. &Aacute;o d&aacute;ng xu&ocirc;ng, mac rat thoai m&aacute;i, de phoi do. Kieu d&aacute;ng tre trung, nam hay nu deu mac duoc.', 450000),
(97, 'Packable downjacket man', 1110000, 'f16bbc906ddd5d8.png', '<ul> <li>&Aacute;o kho&aacute;c phao nam si&ecirc;u nhẹ l&ocirc;ng vũ</li> <li>Mặc cực ấm cực nhẹ</li> <li>Form chuẩn t&ocirc;n d&aacute;ng</li> <li>H&agrave;ng đủ size 45-80kg</li>\n</ul>', 71, 'P97', 0, 'Packable downjacket man  &Aacute;o kho&aacute;c phao nam si&ecirc;u nhe l&ocirc;ng vu Mac cuc am cuc nhe Form chuan t&ocirc;n d&aacute;ng H&agrave;ng du size 45-80kg\n', 1110000),
(98, 'Atmosphere jacket man', 799000, 'f1b3ade057027d6.png', '<ul> <li>&Aacute;o kho&aacute;c phao nam giữ ấm ch&oacute;ng lạnh gi&oacute; m&ugrave;a thu đ&ocirc;ng doka</li> <li>Chất vải d&ugrave; mềm v&agrave; m&aacute;t mẻ, lớp b&ocirc;ng c&oacute; độ phồng cao</li> <li>&Aacute;o phao c&oacute; t&uacute;i kh&oacute;a k&eacute;o hai b&ecirc;n tiện lợi.</li> <li>&Aacute;o kho&aacute;c l&agrave; giữ ấm che gi&oacute; chống gi&oacute; lạnh tốt m&ugrave;a thu đ&ocirc;ng</li> <li>&Aacute;o giặc Kh&ocirc;ng Ra M&agrave;u , Kh&ocirc;ng Phai M&agrave;u</li>\n</ul>', 71, 'P98', 0, 'Atmosphere jacket man  &Aacute;o kho&aacute;c phao nam giu am ch&oacute;ng lanh gi&oacute; m&ugrave;a thu d&ocirc;ng doka Chat vai d&ugrave; mem v&agrave; m&aacute;t me, lop b&ocirc;ng c&oacute; do phong cao &Aacute;o phao c&oacute; t&uacute;i kh&oacute;a k&eacute;o hai b&ecirc;n tien loi. &Aacute;o kho&aacute;c l&agrave; giu am che gi&oacute; chong gi&oacute; lanh tot m&ugrave;a thu d&ocirc;ng &Aacute;o giac Kh&ocirc;ng Ra M&agrave;u , Kh&ocirc;ng Phai M&agrave;u\n', 799000),
(99, 'Jjang man jacket', 600000, 'e264a8fab38ef67.png', '<ul> <li>Lớp ngo&agrave;i bằng vải d&ugrave; n&ecirc;n c&oacute; t&aacute;c dụng cản gi&oacute; cực tốt, b&ecirc;n trong được chần bằng b&ocirc;ng tự nhi&ecirc;n, đảm bảo giữ phom, kh&ocirc;ng bị s&ocirc; b&ocirc;ng sau 1 thời gian sử dụng,</li> <li>Thiết kế theo phong c&aacute;ch trẻ trung v&agrave; năng động cho bạn nam diện v&agrave;o nhiều dịp kh&aacute;c nhau.</li>\n</ul>', 71, 'P99', 0, 'Jjang man jacket  Lop ngo&agrave;i bang vai d&ugrave; n&ecirc;n c&oacute; t&aacute;c dung can gi&oacute; cuc tot, b&ecirc;n trong duoc chan bang b&ocirc;ng tu nhi&ecirc;n, dam bao giu phom, kh&ocirc;ng bi s&ocirc; b&ocirc;ng sau 1 thoi gian su dung, Thiet ke theo phong c&aacute;ch tre trung v&agrave; nang dong cho ban nam dien v&agrave;o nhieu dip kh&aacute;c nhau.\n', 600000),
(100, 'Ny t-shirt', 300000, '516d2e5a4f6fec8.png', '<ul> <li>Chất liệu vải thun mềm v&agrave; tho&aacute;ng m&aacute;t</li> <li>Đường may tinh tế, tỉ mỉ</li> <li>Kết hợp c&ugrave;ng quần jeans d&agrave;i, quần &acirc;u,...</li> <li>Th&iacute;ch hợp đi l&agrave;m, đi chơi, dạo phố, du lịch</li>\n</ul>', 69, 'P100', 0, 'Ny t-shirt  Chat lieu vai thun mem v&agrave; tho&aacute;ng m&aacute;t Duong may tinh te, ti mi Ket hop c&ugrave;ng quan jeans d&agrave;i, quan &acirc;u,... Th&iacute;ch hop di l&agrave;m, di choi, dao pho, du lich\n', 300000),
(101, 'Zara basic t-shirt', 250000, 'ae36fc43c1de202.png,16de2924afdb90d.png', '<ul> <li>Chất liệu vải thun mềm v&agrave; tho&aacute;ng m&aacute;t</li> <li>Đường may tinh tế, tỉ mỉ</li> <li>Kết hợp c&ugrave;ng quần jeans d&agrave;i, quần &acirc;u,...</li> <li>Th&iacute;ch hợp đi l&agrave;m, đi chơi, dạo phố, du lịch</li>\n</ul>', 69, 'P101', 2, 'Zara basic t-shirt  Chat lieu vai thun mem v&agrave; tho&aacute;ng m&aacute;t Duong may tinh te, ti mi Ket hop c&ugrave;ng quan jeans d&agrave;i, quan &acirc;u,... Th&iacute;ch hop di l&agrave;m, di choi, dao pho, du lich\n', 250000),
(102, 'T-shirt caption america', 300000, '70fcf686c1a938a.png,a1669a31e900fd5.png', '<ul> <li>Form Unisex</li> <li>Chất liệu &aacute;o thun 100% cotton xuất Nhật</li> <li>C&ocirc;ng nghệ dệt vải 3D cho cảm gi&aacute;c nhẹ v&agrave; m&aacute;t khi mặc</li> <li>K&iacute;ch thước h&igrave;nh in tối đa khổ A3 với c&ocirc;ng nghệ in DTG hiện đại</li>\n</ul>', 69, 'P102', 0, 'T-shirt caption america  Form Unisex Chat lieu &aacute;o thun 100% cotton xuat Nhat C&ocirc;ng nghe det vai 3D cho cam gi&aacute;c nhe v&agrave; m&aacute;t khi mac K&iacute;ch thuoc h&igrave;nh in toi da kho A3 voi c&ocirc;ng nghe in DTG hien dai\n', 300000),
(105, 'Furious pro denim jeans', 450000, '726b517c0399039.png', '<ul> <li>Quần Jean được l&agrave;m từ chất vải jean mềm mịn, kh&ocirc;ng bai gi&atilde;o, co gi&atilde;n nhẹ v&agrave; rất &iacute;t bị nhăn khi gập.</li> <li>Quần Jean c&oacute; phom d&aacute;ng &ocirc;m cơ thể, ống c&ocirc;n b&oacute; vừa phải, nhẹ nh&agrave;ng t&ocirc;n d&aacute;ng người mặc.</li> <li>Đường may của Quần Jean rất chắc chắn c&ugrave;ng với chất liệu vải jean co gi&atilde;n thoải m&aacute;i cho người sử dụng c&oacute; thể vận động.</li> <li>T&uacute;i quần s&acirc;u thoải m&aacute;i cho người sử dụng c&oacute; thể để đồ đạc như điện thoại, ch&igrave;a kh&oacute;a, v&iacute;, ...</li>\n</ul>', 77, 'P105', 0, 'Furious pro denim jeans  Quan Jean duoc l&agrave;m tu chat vai jean mem min, kh&ocirc;ng bai gi&atilde;o, co gi&atilde;n nhe v&agrave; rat &iacute;t bi nhan khi gap. Quan Jean c&oacute; phom d&aacute;ng &ocirc;m co the, ong c&ocirc;n b&oacute; vua phai, nhe nh&agrave;ng t&ocirc;n d&aacute;ng nguoi mac. Duong may cua Quan Jean rat chac chan c&ugrave;ng voi chat lieu vai jean co gi&atilde;n thoai m&aacute;i cho nguoi su dung c&oacute; the van dong. T&uacute;i quan s&acirc;u thoai m&aacute;i cho nguoi su dung c&oacute; the de do dac nhu dien thoai, ch&igrave;a kh&oacute;a, v&iacute;, ...\n', 450000),
(106, 'Black jeans', 500000, 'dc06ae10d61ee83.png', '<ul> <li>Quần Jean được l&agrave;m từ chất vải jean cotton mềm mịn, kh&ocirc;ng bai gi&atilde;o, &iacute;t bị nhăn khi gập v&agrave; rất &iacute;t b&aacute;m bụi.</li> <li>Quần Jean c&oacute; phom d&aacute;ng &ocirc;m nhẹ cơ thể, ống c&ocirc;n b&oacute; vừa phải, nhẹ nh&agrave;ng t&ocirc;n d&aacute;ng người mặc.</li> <li>Đường may của Quần Jean rất chắc chắn thoải m&aacute;i cho người sử dụng c&oacute; thể vận động.</li> <li>T&uacute;i quần s&acirc;u vừa phải dễ d&agrave;ng cho người sử dụng c&oacute; thể để đồ đạc như điện thoại, ch&igrave;a kh&oacute;a, v&iacute; tiền,...</li>\n</ul>', 77, 'P106', 0, 'Black jeans  Quan Jean duoc l&agrave;m tu chat vai jean cotton mem min, kh&ocirc;ng bai gi&atilde;o, &iacute;t bi nhan khi gap v&agrave; rat &iacute;t b&aacute;m bui. Quan Jean c&oacute; phom d&aacute;ng &ocirc;m nhe co the, ong c&ocirc;n b&oacute; vua phai, nhe nh&agrave;ng t&ocirc;n d&aacute;ng nguoi mac. Duong may cua Quan Jean rat chac chan thoai m&aacute;i cho nguoi su dung c&oacute; the van dong. T&uacute;i quan s&acirc;u vua phai de d&agrave;ng cho nguoi su dung c&oacute; the de do dac nhu dien thoai, ch&igrave;a kh&oacute;a, v&iacute; tien,...\n', 500000),
(111, 'Double-sided plus cotton thick wool coat coat', 1399000, 'c37772f6c17eb29.png', '<p>updating .....</p>', 85, 'P111', 0, 'Double-sided plus cotton thick wool coat coat updating .....', 1399000),
(112, 'Korean coat man', 1500000, 'f91db532f526bca.png', '<p>Updating....</p>', 85, 'P112', 0, 'Korean coat man Updating....', 1500000),
(113, 'Korean coat winter', 2100000, 'cbfa5baf6eab071.png', '<ul><li>Kiểu d&aacute;ng: kiểu d&aacute;ng thời trang</li> <li>M&agrave;u sắc: m&agrave;u trắng sữa</li> <li>Chất liệu: dạ l&oacute;t vải lụa</li> <li>Xuất xứ: Việt nam</li>\n</ul>', 85, 'P113', 0, 'Korean coat winter  TH&Ocirc;NG TIN SAN PHAM: Kieu d&aacute;ng: kieu d&aacute;ng thoi trang M&agrave;u sac: m&agrave;u trang sua Chat lieu: da l&oacute;t vai lua Xuat xu: Viet nam\n', 2100000),
(114, 'Female coat korean trending', 1600000, 'f27f6d0f7d9c6b3.webp', '<ul><li>Kiểu d&aacute;ng: kiểu d&aacute;ng thời trang</li> <li>M&agrave;u sắc: m&agrave;u xanh nhạt</li> <li>Chất liệu: dạ l&oacute;t vải lụa</li>\n</ul>', 85, 'P114', 0, 'Female coat korean trending  TH&Ocirc;NG TIN SAN PHAM: Kieu d&aacute;ng: kieu d&aacute;ng thoi trang M&agrave;u sac: m&agrave;u xanh nhat Chat lieu: da l&oacute;t vai lua\n', 1600000),
(115, 'Jacket women clothes 2019', 610000, 'c322d27a2379f88.webp', '<ul><li>Kiểu d&aacute;ng: kiểu d&aacute;ng thời trang</li> <li>M&agrave;u sắc: m&agrave;u trắng sữa</li> <li>Chất liệu: dạ l&oacute;t vải lụa</li> <li>Xuất xứ : H&agrave;n Quốc</li>\n</ul>', 85, 'P115', 0, 'Jacket women clothes 2019  TH&Ocirc;NG TIN SAN PHAM: Kieu d&aacute;ng: kieu d&aacute;ng thoi trang M&agrave;u sac: m&agrave;u trang sua Chat lieu: da l&oacute;t vai lua Xuat xu : H&agrave;n Quoc\n &nbsp;', 610000),
(123, 'Smart watch x6', 4500000, '76834b514fcf4d2.png', '<ul> <li>Đồng hồ th&ocirc;ng minh X6 gi&aacute; rẻ nghe gọi chụp ảnh th&ocirc;ng số kỹ thuật : X6 M&agrave;n h&igrave;nh cong OLED</li> <li>D&acirc;y cao su mềm mại camera.</li> <li>C&oacute; khe sim : C&oacute; ( nghe Gọi )</li> <li>Khe thẻ nhớ : l&ecirc;n tới 32G</li> <li>Bộ nhớ trong : 128M+64M</li> <li>K&iacute;ch thước m&agrave;n h&igrave;nh : 1,5 inch</li> <li>Hệ thống tương th&iacute;ch : android / iOS</li> <li>Ng&ocirc;n ngữ : Đa ng&ocirc;n ngữ</li> <li>Cảm ứng : Điện dung</li> <li>Sản xuất : 2018</li> <li>Xạc : USB 2.0</li> <li>Danh bạ : Đồng bộ bluetooth + m&aacute;y.</li>\n</ul>', 86, 'P123', 0, 'Smart watch x6  Dong ho th&ocirc;ng minh X6 gi&aacute; re nghe goi chup anh th&ocirc;ng so ky thuat : X6 M&agrave;n h&igrave;nh cong OLED D&acirc;y cao su mem mai camera. C&oacute; khe sim : C&oacute; ( nghe Goi ) Khe the nho : l&ecirc;n toi 32G Bo nho trong : 128M+64M K&iacute;ch thuoc m&agrave;n h&igrave;nh : 1,5 inch He thong tuong th&iacute;ch : android / iOS Ng&ocirc;n ngu : Da ng&ocirc;n ngu Cam ung : Dien dung San xuat : 2018 Xac : USB 2.0 Danh ba : Dong bo bluetooth + m&aacute;y.\n', 4500000),
(122, 'Apple watch series 3', 6100000, '5b0f5ac78a28db8.png', '<ul> <li>Chuẩn kh&aacute;ng nước ISO 22810:2010</li> <li>Kết nối: Bluetooth 4.2, Wi-Fi 802.11 b/g/n</li> <li>Tương th&iacute;ch: iPhone</li> <li>Chức năng: Theo d&otilde;i nhịp tim, vận động</li> <li>Trợ l&yacute; ảo Siri hiệu quả Th&ocirc;ng b&aacute;o cuộc gọi, tin nhắn C&oacute; thể nghe nhạc, xem bản đồ</li> <li>Pin: 279mAh cho thời gian sử dụng l&ecirc;n đến 18 giờ</li>\n</ul>', 86, '10', 0, 'Apple watch series 3  Chuan kh&aacute;ng nuoc ISO 22810:2010 Ket noi: Bluetooth 4.2, Wi-Fi 802.11 b/g/n Tuong th&iacute;ch: iPhone Chuc nang: Theo d&otilde;i nhip tim, van dong Tro l&yacute; ao Siri hieu qua Th&ocirc;ng b&aacute;o cuoc goi, tin nhan C&oacute; the nghe nhac, xem ban do Pin: 279mAh cho thoi gian su dung l&ecirc;n den 18 gio\n', 6100000),
(124, 'Belt for man', 100000, 'a533ee457cb979a.png', '<ul> <li>Được l&agrave;m từ chất liệu da PU bền bỉ, dễ lau ch&ugrave;i</li> <li>Đầu kh&oacute;a kim loại chắc chắc, s&aacute;ng b&oacute;ng thời thượng</li> <li>D&acirc;y đeo c&oacute; thể điều chỉnh vừa vặn với v&ograve;ng eo</li> <li>T&ocirc;ng m&agrave;u lịch l&atilde;m, dễ kết hợp trang phục</li>\n</ul>', 89, 'P124', 0, 'Belt for man  Duoc l&agrave;m tu chat lieu da PU ben bi, de lau ch&ugrave;i Dau kh&oacute;a kim loai chac chac, s&aacute;ng b&oacute;ng thoi thuong D&acirc;y deo c&oacute; the dieu chinh vua van voi v&ograve;ng eo T&ocirc;ng m&agrave;u lich l&atilde;m, de ket hop trang phuc\n', 100000),
(125, 'Mishon belt for man', 120000, 'fe447322c7a25c7.png', '<p>Chất liệu da b&ograve; 100%</p> <p>Đầu kh&oacute;a hợp kim kh&ocirc;ng gỉ s&aacute;ng b&oacute;ng thời thượng</p> <p>Đường chỉ may tỉ mỉ, chắc chắn</p> <p>Kiểu d&aacute;ng đẳng cấp sang trọng</p> <p>T&ocirc;ng m&agrave;u lịch l&atilde;m, dễ kết hợp trang phục</p>', 89, 'P125', 0, 'Mishon belt for man Chat lieu da b&ograve; 100% Dau kh&oacute;a hop kim kh&ocirc;ng gi s&aacute;ng b&oacute;ng thoi thuong Duong chi may ti mi, chac chan Kieu d&aacute;ng dang cap sang trong T&ocirc;ng m&agrave;u lich l&atilde;m, de ket hop trang phuc', 120000),
(126, 'Adidas 17.3', 2500000, '58ae83a2f0aa72c.png,3ea6b08af292edf.png', '', 88, 'P126', 0, 'Adidas 17.3 ', 2500000);

-- --------------------------------------------------------

--
-- Table structure for table `t_product_sold`
--

CREATE TABLE IF NOT EXISTS `t_product_sold` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `t_product_sold`
--

INSERT INTO `t_product_sold` (`id`, `name`, `price`, `category`, `product_code`) VALUES
(1, 'Dell inspiron 5567', 999999, 'Electric device>>Smart phone', '999999'),
(2, 'Điệnthoạisunteka14gb-hàngchínhhãng', 990000, 'Electric device>>Smart phone', '14687816'),
(3, 'Samsung galaxy s6 edge 32gb - hàng nhập khẩu', 3000000, 'Electric device>>Smart phone', '30695321'),
(4, 'Dell inspiron 9999', 9999999, 'Electric device>>Laptop', 'P67'),
(5, 'Asus gaming', 7777777, 'Electric device>>Laptop', '777777'),
(6, 'Hp 1500', 1690000, 'Electric device>>Laptop', 'P54'),
(7, 'Người lạ nơi cuối con đường - lk ft justatee [ full mv]', 990000, 'Electric device>>Laptop', 'P52'),
(8, 'Samsung galaxy m30s', 4900000, 'Electric device>>Smart phone', 'P83'),
(9, 'Iphone 11 pro max 64gb', 27000000, 'Electric device>>Smart phone', 'P81'),
(10, 'Zara basic t-shirt', 250000, 'Fashion>>T-shirt', 'P101'),
(11, 'Điện thoại samsung galaxy note 10 plus (256gb/12gb) - hàng chính hãng - đã kích hoạt bảo hành điện tử', 1111111111, 'Electric device>>Smart phone', 'P57'),
(12, 'Longline sleeveless t-shirt', 200000, 'Fashion>>T-shirt', 'P103');

-- --------------------------------------------------------

--
-- Table structure for table `t_shopping_cart`
--

CREATE TABLE IF NOT EXISTS `t_shopping_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
