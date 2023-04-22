-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 22, 2023 lúc 01:41 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `e-shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(2, 'admin@gmail.com', '$2y$10$VWGBHLvGx6ulBqkICO2cLescSDQNv/z21zCk2rcts8LSFZACri0SS', 'admin', '0896234543', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_desc` text DEFAULT NULL,
  `brand_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'applee', 1, NULL, NULL),
(2, 'Không có', 'không có thương hiệu', 1, NULL, NULL),
(3, 'Samsung', 'samsung', 1, NULL, NULL),
(20, 'Oppo', 'ư', 1, NULL, NULL),
(27, 'Logitech', 'Logitech', 1, NULL, NULL),
(28, 'Dareu', 'Dareu', 1, NULL, NULL),
(29, 'Rappo', NULL, 1, NULL, NULL),
(31, 'Akko', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` text DEFAULT NULL,
  `category_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(29, 'Phụ kiện laptop', 'phụ kiện laptop', 0, NULL, NULL),
(30, 'Chuột, bàn phím', 'chuột, bàn phím', 1, NULL, NULL),
(31, 'Pin dự phòng', 'Pin dự phòng', 1, NULL, NULL),
(32, 'Ốp lưng', 'ốp lưng', 1, NULL, NULL),
(34, 'Camera', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_value` double(8,2) NOT NULL,
  `coupon_start` date NOT NULL,
  `coupon_end` date NOT NULL,
  `coupon_desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_name`, `coupon_value`, `coupon_start`, `coupon_end`, `coupon_desc`, `created_at`, `updated_at`) VALUES
(1, 'Khuyến mãi giảm 50% giá tiền', 0.50, '2023-04-14', '2023-04-22', NULL, NULL, NULL),
(2, 'Khuyễn mãi giảm 20% giá tiền', 0.20, '2023-04-11', '2023-04-19', NULL, NULL, NULL),
(3, 'Khuyến mãi giảm 10% giá trị sản phẩm', 0.10, '2023-04-14', '2023-04-23', NULL, NULL, NULL),
(4, 'Khuyến mãi giảm 15% giá trị sản phẩm', 0.15, '2023-04-16', '2023-04-18', NULL, NULL, NULL),
(5, 'Khuyễn mãi giảm 30% giá tiền', 0.30, '2023-04-04', '2023-04-12', NULL, NULL, NULL),
(6, 'Khuyễn mãi giảm 35% giá tiền', 0.35, '2023-04-11', '2023-04-30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_password`, `created_at`, `updated_at`) VALUES
(1, 'thu', 'truc@gmail.com', '0799786319', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL),
(2, 'Hoàng', 'hoang@gmail.com', '0987634123', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL),
(3, 'Hoa', 'hoa12@gmail.com', '0786545654', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL),
(4, 'hùng', 'hung1@gmail.com', '0856544213', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL),
(5, 'dyt', 'a@gmail.com', '0338783921', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(62, '2014_10_12_000000_create_users_table', 1),
(63, '2014_10_12_100000_create_password_resets_table', 1),
(64, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(65, '2023_03_19_221808_create_admin_table', 1),
(66, '2023_03_20_112200_create_category_table', 1),
(67, '2023_03_21_144831_create_brand_table', 1),
(68, '2023_03_22_064223_create_product_table', 1),
(69, '2023_03_24_102056_crete_customer_table', 1),
(70, '2023_03_24_122449_create_shipping_table', 1),
(71, '2023_03_25_095443_create_payment_table', 1),
(72, '2023_03_25_100534_create_order_table', 1),
(73, '2023_03_25_100642_create_order_detail_table', 1),
(74, '2023_04_01_163556_create_table_coupon', 1),
(75, '2023_04_03_073849_create_promotional_products_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `order_ngaydathang` date NOT NULL,
  `thang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `order_ngaydathang`, `thang`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 7, '30000', 'Giao hàng thành công', '2023-03-11', 3, NULL, NULL),
(6, 2, 2, 9, '340000', 'Giao hàng thành công', '2023-03-12', 3, NULL, NULL),
(7, 2, 2, 10, '70000', 'Đang chờ xử lý', '2023-03-12', 3, NULL, NULL),
(8, 2, 2, 11, '340000', 'Giao hàng thành công', '2023-02-12', 2, NULL, NULL),
(23, 3, 5, 26, '420000', 'Đã giao cho bên vận chuyển', '2023-02-13', 2, NULL, NULL),
(24, 1, 1, 27, '1700000', 'Đang chờ xử lý', '2023-04-13', 4, NULL, NULL),
(25, 2, 2, 28, '420000', 'Đang chờ xử lý', '2023-04-14', 4, NULL, NULL),
(26, 1, 1, 29, '504000', 'Giao hàng thành công', '2023-02-14', 2, NULL, NULL),
(27, 4, 6, 30, '100000', 'Đang chờ xử lý', '2023-04-14', 4, NULL, NULL),
(28, 5, 7, 31, '1580000', 'Đang chờ xử lý', '2023-04-14', 4, NULL, NULL),
(29, 5, 7, 32, '5280000', 'Đang chờ xử lý', '2023-03-14', 3, NULL, NULL),
(30, 2, 2, 33, '450000', 'Đang chờ xử lý', '2023-04-15', 4, NULL, NULL),
(32, 2, 2, 35, '230000', 'Giao hàng thành công', '2023-04-15', 4, NULL, NULL),
(33, 2, 2, 36, '662000', 'Giao hàng thành công', '2023-04-16', 4, NULL, NULL),
(34, 2, 2, 37, '450000', 'Đang chờ xử lý', '2023-04-21', 4, NULL, NULL),
(35, 2, 2, 39, '450000', 'Đang chờ xử lý', '2023-04-22', 4, NULL, NULL),
(36, 2, 2, 40, '240000', 'Đang chờ xử lý', '2023-04-22', 4, NULL, NULL),
(37, 4, 6, 41, '160000', 'Đang chờ xử lý', '2023-04-22', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `orderDetail_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`orderDetail_id`, `order_id`, `product_id`, `product_name`, `price`, `product_qty`, `created_at`, `updated_at`) VALUES
(3, 4, 14, 'Ốp lưng iPhone 14 Pro Max Araree Flexield', '30000', 1, NULL, NULL),
(4, 6, 17, 'Pin Sạc dự phòng Energizer 10.000mAh Tích hợp sạc không dây 10W QE10007PQ', '340000', 1, NULL, NULL),
(5, 7, 14, 'Ốp lưng iPhone 14 Pro Max Araree Flexield', '70000', 1, NULL, NULL),
(6, 8, 17, 'Pin Sạc dự phòng Energizer 10.000mAh Tích hợp sạc không dây 10W QE10007PQ', '340000', 1, NULL, NULL),
(24, 23, 20, 'Bàn phím cơ có dây Dareu EK87 TKL', '420000', 1, NULL, NULL),
(25, 24, 20, 'Bàn phím cơ có dây Dareu EK87 TKL', '420000', 1, NULL, NULL),
(26, 24, 15, 'Sạc dự phòng Samsung EB P5300x 20000mAh 25W', '640000', 2, NULL, NULL),
(27, 25, 20, 'Bàn phím cơ có dây Dareu EK87 TKL', '420000', 1, NULL, NULL),
(28, 26, 33, 'Camera IP hồng ngoại Wifi Ezviz C6N 1080p 2MP', '504000', 1, NULL, NULL),
(29, 27, 38, 'Ốp lưng Samsung Galaxy A34 OU Dẻo Trong', '100000', 1, NULL, NULL),
(30, 28, 43, 'Webcam Rapoo C200 HD 720p', '450000', 3, NULL, NULL),
(31, 28, 42, 'Tấm Lót Chuột S-case Chống Mỏi Cổ Tay', '230000', 1, NULL, NULL),
(32, 29, 34, 'Camera hành trình Gopro Hero 9', '4680000', 1, NULL, NULL),
(33, 29, 36, 'Ốp lưng iPhone 14 Pro UAG Civilian hỗ trợ sạc Magsafe', '600000', 1, NULL, NULL),
(34, 30, 43, 'Webcam Rapoo C200 HD 720p', '450000', 1, NULL, NULL),
(35, 32, 42, 'Tấm Lót Chuột S-case Chống Mỏi Cổ Tay', '230000', 1, NULL, NULL),
(36, 33, 37, 'Ốp lưng chống sốc cho iPhone 7/8 Plus K Armor Shield', '108000', 4, NULL, NULL),
(37, 33, 42, 'Tấm Lót Chuột S-case Chống Mỏi Cổ Tay', '230000', 1, NULL, NULL),
(38, 34, 43, 'Webcam Rapoo C200 HD 720p', '450000', 1, NULL, NULL),
(39, 35, 43, 'Webcam Rapoo C200 HD 720p', '450000', 1, NULL, NULL),
(40, 36, 40, 'Ốp lưng Samsung Galaxy S23 Ultra Araree Flexield', '120000', 2, NULL, NULL),
(41, 37, 39, 'Ốp lưng Samsung Galaxy A24 OU Dẻo Trong', '80000', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, '0', 'Đang chờ xử lý', NULL, NULL),
(2, '0', 'Đang chờ xử lý', NULL, NULL),
(3, '0', 'Đang chờ xử lý', NULL, NULL),
(4, '0', 'Đang chờ xử lý', NULL, NULL),
(5, '0', 'Đang chờ xử lý', NULL, NULL),
(6, '0', 'Đang chờ xử lý', NULL, NULL),
(7, '0', 'Đang chờ xử lý', NULL, NULL),
(8, '0', 'Đang chờ xử lý', NULL, NULL),
(9, '0', 'Đang chờ xử lý', NULL, NULL),
(10, '0', 'Đang chờ xử lý', NULL, NULL),
(11, '0', 'Đang chờ xử lý', NULL, NULL),
(12, '0', 'Đang chờ xử lý', NULL, NULL),
(13, '0', 'Đang chờ xử lý', NULL, NULL),
(14, '0', 'Đang chờ xử lý', NULL, NULL),
(15, '0', 'Đang chờ xử lý', NULL, NULL),
(16, '0', 'Đang chờ xử lý', NULL, NULL),
(17, '0', 'Đang chờ xử lý', NULL, NULL),
(25, '0', 'Đang chờ xử lý', NULL, NULL),
(26, '0', 'Đang chờ xử lý', NULL, NULL),
(27, '0', 'Đang chờ xử lý', NULL, NULL),
(28, '0', 'Đang chờ xử lý', NULL, NULL),
(29, '0', 'Đang chờ xử lý', NULL, NULL),
(30, '0', 'Đang chờ xử lý', NULL, NULL),
(31, '0', 'Đang chờ xử lý', NULL, NULL),
(32, '0', 'Đang chờ xử lý', NULL, NULL),
(33, '0', 'Đang chờ xử lý', NULL, NULL),
(34, '0', 'Đang chờ xử lý', NULL, NULL),
(35, '0', 'Đang chờ xử lý', NULL, NULL),
(36, '0', 'Đang chờ xử lý', NULL, NULL),
(37, '0', 'Đang chờ xử lý', NULL, NULL),
(38, '1', 'Đã thanh toán', NULL, NULL),
(39, '1', 'Đã thanh toán', NULL, NULL),
(40, '0', 'Chưa thanh toán', NULL, NULL),
(41, '0', 'Chưa thanh toán', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_idcode` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_content` text DEFAULT NULL,
  `product_desc` text DEFAULT NULL,
  `product_price` int(255) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_status` tinyint(1) NOT NULL,
  `product_SLtrongkho` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_idcode`, `product_name`, `product_unit`, `category_id`, `brand_id`, `product_content`, `product_desc`, `product_price`, `product_image`, `product_status`, `product_SLtrongkho`, `created_at`, `updated_at`) VALUES
(14, '0123', 'Ốp lưng iPhone 14 Pro Max Araree Flexield', 'cái', 32, 1, 'Ốp lưng iPhone 14 Pro Max Araree Flexield là chiếc ốp lưng được nhiều khách hàng lựa chọn. Bởi ngoài khả năng bảo vệ toàn diện, vẻ ngoài thu hút thì Araree Flexield Clear còn ghi điểm nhờ thiết kế ôm sát điện thoại iPhone 14 Pro Max.', NULL, 70000, '150.PNG', 1, 25, NULL, NULL),
(15, '0124', 'Sạc dự phòng Samsung EB P5300x 20000mAh 25W', 'cái', 31, 3, 'Chất liệu nhựa bền bỉ giúp hạn chế hư hỏng khi va đập\r\n1 cổng USB và 2 cổng Type-C phù hợp nhiều dòng máy\r\nDung lượng pin 20000mAh hỗ trợ sạc đầy pin nhiều lần\r\nCông suất sạc 25W giúp rút ngắn thời gian sạc đầy pin', NULL, 700000, 'Sạc dự phòng Samsung EB P5300x 20000mAh 25W30.PNG', 1, 28, NULL, NULL),
(16, '0012', 'Sạc dự phòng Samsung 10.000 mAh 25W EB-P3300X', 'cái', 31, 3, 'Thiết kế mỏng nhẹ, lớp vỏ ngoài được phủ lớp sơn mờ bám tay giúp cầm nắm dễ dàng\r\nSạc nhanh Quick Charge 2.0 công suất lên đến 25W giúp tiết kiệm tối đa thời gian sạc\r\nHỗ trợ sạc cùng lúc hai thiết bị nhờ trang bị 2 cổng sạc thông dụng USB-A và USB-C\r\nDung lượng 10.000 mAh lớn giúp nạp đầy pin cho các thiết bị như điện thoại, tai nghe,...', NULL, 530000, 'Sạc dự phòng Samsung 1013.PNG', 1, 20, NULL, NULL),
(17, '0231', 'Pin Sạc dự phòng Energizer 10.000mAh Tích hợp sạc không dây 10W QE10007PQ', 'cái', 31, 2, 'Tích hợp sạc không dây chuẩn Qi\r\nCông nghệ cạc nhanh đa nền tảng\r\nCông nghệ Auto voltage sensing tự cảm biến điện áp', NULL, 340000, 'Pin Sạc dự phòng Energizer 1094.PNG', 1, 18, NULL, NULL),
(18, '0125', 'Chuột có dây Gaming Logitech G102 LightSync', 'cái', 30, 27, 'Phản hồi siêu nhạy với cảm biến quang học 8.000 DPI\r\nỔn định với tốc độ phản hồi 1ms thông qua cổng USB\r\nCông nghệ LIGHTSYNC RGB giúp tùy chỉnh linh động\r\nDễ dàng điều khiển với 6 nút bấm được tích hợp sẵn', NULL, 499000, 'Chuột có dây Gaming Logitech G102 LightSync19.PNG', 1, 21, NULL, NULL),
(19, '0345', 'Bàn phím Bluetooth Logitech K380', 'cái', 30, 27, 'Thiết kế hiện đại, mỏng nhẹ cùng với nhiều màu sắc trẻ trung, tiện lợi khi mang theo và không tốn nhiều diện tích trên bàn làm việc\r\nTrang bị kết nối Bluetooth tiện lợi với khoảng cách tối đa 10m\r\nTương thích với nhiều hệ điều hành như Windows®, macOS, Chrome OS™, Android™, iOS, và thậm chí cả Apple TV\r\nKhả năng kết nối cùng lúc 3 thiết bị cùng chức năng Easy-Switch hỗ trợ chuyển đổi giữa các thiết bị nhanh chóng\r\nBàn phím thiết kế thấp dạng cắt kéo hơi lõm ôm lấy hình dáng đầu ngón tay cho trải nghiệm gõ mượt mà, yên tĩnh\r\nTrang bị 2 Pin AAA cho thời gian sử dụng thoải mái lên tới 24 tháng', 'Logitech K380 là bàn phím không dây cho phép kết nối đồng thời cùng lúc đến 3 thiết bị sử dụng các hệ điều hành khác nhau hoặc cùng 1 hệ điều hành. Mang đến công cụ làm việc tiện lợi, hỗ trợ cho công việc trong văn phòng của người dùng trở nên thoải mái với công nghệ bàn phím của Logitech.\r\n\r\nNút phím tròn mỏng, gõ êm tay, chính xác, nặng 423g\r\nVới sản phẩm bàn phím Logitech Bluetooth  này sở hữu kích thước 279 x 124 x 16 mm có trọng lượng 423g đáp ứng mọi nhu cầu di chuyển của người dùng, cùng với thiết kế độc đáo, lạ mắt tạo phong cách mới mẻ so với các bàn phím thông thường. Bàn phím được thiết kế với 2 tông màu xanh hoặc đen giúp cho người dùng có thể lựa chọn tông màu phù hợp.\r\nKết nối cùng lúc 3 thiết bị, đa dạng hệ điều hành, khoảng cách đến 10m\r\nBàn phím Logitech K380 sử dụng kết nối Bluetooth 3.0 với khoảng cách kết nối lên đến 10 m giúp cho người dùng có thể thoải mái kết nối đến với các thiết bị ở mọi vị trí trong phạm vi kết nối. Ngoài ra, bàn phím còn có khả năng kết nối với 3 thiết bị cùng lúc và có thể dễ dàng chuyển đổi qua lại giữa các kết nối chỉ bằng tổ hợp phín fn + F1/F2/F3 mang đến cho người dùng khả năng chuyển đổi linh hoạt vượt trội.', 750000, 'Bàn phím Bluetooth Logitech K38094.PNG', 1, 20, NULL, NULL),
(20, '1234', 'Bàn phím cơ có dây Dareu EK87 TKL', 'cái', 30, 28, 'Bàn phím cơ có dây DAREU EK87 - Trang bị chế độ đèn LED độc đáo\r\nBàn phím cơ có dây DAREU EK87 là loại bàn phím được đông đảo khách hàng giới trẻ ưa chuộng. Cùng tìm hiểu xem chi tiết thêm về loại bàn phím này nhé!', NULL, 420000, 'Bàn phím cơ có dây Dareu EK87 TKL1.PNG', 1, 28, NULL, NULL),
(21, '32123', 'Bàn phím cơ không dây Dareu EK807G TKL', 'cái', 30, 28, 'Bàn phím cơ không dây Dareu EK807G TKL - Giá rẻ, trải nghiệm gõ êm ái\r\nBàn phím cơ không dây Dareu EK807G là sản phẩm của hãng Gaming Gear DareU nổi tiếng. Với thiết kế hiện đại, kết nối không dây 2.4 Ghz cùng mức giá cực rẻ, đây sẽ là lựa chọn hoàn hảo phục vụ nhu cầu chơi game và công việc của bạn.', NULL, 650000, 'Bàn phím cơ không dây Dareu EK807G TKL56.PNG', 1, 22, NULL, NULL),
(22, '2311', 'Chuột không dây Logitech M221', 'cái', 30, 27, 'Thiết kế nhỏ gọn, dễ cầm nắm và thoải mái khi sử dụng\r\nHỗ trợ kết nối USB Receiver trong khoảng cách 10m\r\nCông nghệ SilentTouch giúp giảm hơn 90% tiếng nhấp\r\nCảm biến 1000DPI kiểm soát mượt mà và chính xác', 'Chuột không dây Logitech M221 – Nhanh và nhạy\r\nVới ưu điểm về sự linh hoạt chuột không dây đã trở nên phổ biến và thịnh hành bởi nhiều người sử dụng. Trong số đó, chuột Logitech M221 là chuột không dâyvượt trội hơn cả.\r\n\r\nThiết kế linh hoạt, tốc độ không dây 2.4 GHz\r\nChuột không dây Logitech M221 sở hữu một vẻ ngoài vô cùng nhỏ gọn, kiểu dáng hai bên cân xứng tiện lợi trong quá trình thao tác. Ngoài ra, nó còn được vát cong một cách tuyệt hảo cho cảm giác mềm mại và ôm trọn lấy cả lòng bàn tay khi thao tác cùng với chuột Logitech một cach nhẹ nhàng.', 340000, 'Chuột không dây Logitech M22197.PNG', 1, 23, NULL, NULL),
(23, '1432', 'Chuột Bluetooth Rapoo M100 Silen', 'cá', 30, 29, 'Độ phân giải 1600 DPI mang đến khả năng lướt chính xác\r\nChế độ im lặng, thoải mái sử dụng mà không sợ làm phiền\r\nCông nghệ tiết kiệm pin, có thể sử dụng lên đến 9 tháng\r\nKết nối không dây Bluetooth và đầu thu USB rất tiện lợi', 'Chuột không dây Rapoo M100 Silent - Triệt tiêu mọi tiếng ồn\r\nBạn e ngại điều gì khi sử dụng máy tính. Chắc hẳn vào những đêm tối, khi chỉ còn bạn thức nhưng người trong nhà đã yên giấc, bỗng tiếng click vang lên, bạn e rằng người thân sẽ thức giấc và la rầy bạn. Để tránh tình trạng đó và đưa mọi thao tác của bạn về chế độ im lặng, sử dụng ngay chuột không dây Rapoo M100 Silent.\r\n\r\nThiết kế gọn nhẹ, nút bấm silent độ ồn thấp\r\nĐập vào mắt chúng ta có một sản phẩm chuột không dây với thiết kế đối xứng, tức nó được sử dụng cho người thuận tay trái lẫn tay phải. Trọng lượng chuột Rapoo chỉ đạt 54gram, giúp người dùng dễ dàng điều khiển chuột mà không cần sử dụng đến lực.', 320000, 'Chuột Bluetooth Rapoo M100 Silen28.PNG', 1, 23, NULL, NULL),
(24, '2143', 'Chuột không dây Logitech M185', 'cái', 30, 27, 'Thiết kế nhỏ gọn, dễ cầm nắm và thoải mái khi sử dụng\r\nNút cuộn cho cảm giác trực quan, chính xác từng dòng\r\nCảm biến quang học 1000DPI kiểm soát mượt mà hơn\r\nHỗ trợ kết nối USB Receiver với khoảng cách đến 10m', NULL, 200000, 'Chuột không dây Logitech M18518.PNG', 1, 12, NULL, NULL),
(25, '41324', 'Chuột Bluetooth Rapoo M160 Silent', 'cái', 30, 29, 'Kiểu dáng đơn giản, phù hợp cho người thuận cả 2 tay.\r\nĐộ phân giải 1300 DPI, đáp ứng nhiều nhu cầu sử dụng.\r\nKết nối Bluetooth 3.0, 4.0 và đầu thu USB 2.4 GHz mượt mà.\r\nDùng 1 viên pin AA, dễ tìm mua và thay thế.', 'Chuột không dây Rapoo M160 Silent - Thiết kế đối xứng thoải mái\r\nChuột có dây khá bất tiện khi bạn mang ra ngoài, dễ rối hoặc đứt dây khi gập. Giải pháp cho bạn là sử dụng chuột không dây Rapoo M160 Silent. Không những tiện lợi trong sử dụng mà còn sở hữu nhiều ưu điểm bất ngờ. Xem chi tiết thông tin về con chuột thần thánh này dưới đây!\r\n\r\nĐộ nhạy ấn tượng, kết nối linh hoạt\r\nThương hiệu chuột không dây có độ phân giải lên tới 1300 dpi, siêu nhạy bén. Chuột có thể sử dụng trên nhiều bề mặt khác nhau không hề bị ảnh hưởng.\r\n\r\nChuột có thể kết nối linh hoạt 3 máy cùng lúc, giúp bạn trải nghiệm hiệu suất cao trong làm việc. Tốc độ cao 2.4 Ghz và tín hiệu cực ổn trong bán kính 10m khi kết nối.', 300000, 'Chuột Bluetooth Rapoo M160 Silent3.PNG', 1, 20, NULL, NULL),
(26, '32421', 'Chuột chơi game không dây Logitech G703 LIGHTSPEED', 'cái', 30, 27, 'Mang lại sự thoải mái, độ bền và hiệu suất vượt trội với thiết kế thoải mái và tay cầm bên bằng cao su để điều khiển\r\nCảm biến HERO 25K tiên tiến với khả năng theo dõi 1:1, 400 + IBS và độ nhạy tối đa 25.600 DPI cùng tính năng làm mượt, lọc và tăng tốc.\r\nThời lượng pin lên đến 60 giờ, thoả sức chiến game\r\nChiếu sáng RGB LIGHTSYNC có thể tuỳ chỉnh qua phần mềm HUB của Logitech', 'Chuột chơi game không dây Logitech G703 Lightspeed - Trợ thủ đắc lực cho gamer\r\nGame thủ thường sẽ đòi hỏi nhiều hơn ở những con chuột máy tính để phục vụ cho các pha combat mãn nhãn. Vì vậy các nhà sản xuất đều phải cải tiến những sản phẩm của mình lên một tầm cao mới. Xin giới thiệu chuột chơi game không dây Logitech G703 Lightspeed đảm bảo cho các tác vụ chơi game mượt mà hơn.\r\n\r\nĐộ bền vượt trội, cảm giác trải nghiệm dễ chịu\r\nCó thể thấy chuột gaming không sở hữu thiết kế đối xứng như những chú chuột khác. Thay vào đó, nó sẽ nghiêng hẳn sang một bên để tiện sử dụng cho những người thuận tay phải.Đặc biệt, độ bền của chuột chơi game không dây Logitech G703 Lightspeed mới đáng để cân nhắc. Với chất liệu bền bỉ, người dùng thoải mái cử động mạnh hay trút giận lên sản phẩm mà không sợ bị hỏng hóc.', 1200000, 'Chuột chơi game không dây Logitech G703 LIGHTSPEED8.PNG', 1, 10, NULL, NULL),
(27, '3212', 'Bàn phím cơ AKKO 3087 RF', 'cái', 30, 31, NULL, NULL, 1000000, 'Bàn phím cơ AKKO 3087 RF63.PNG', 1, 15, NULL, NULL),
(28, '2435', 'Bàn phím cơ AKKO 3108 V2 World Tour Tokyo', 'cái', 30, 31, NULL, 'Bàn phím cơ AKKO 3108 V2 World Tour Tokyo - Mượt mà, đẳng cấp\r\nBàn phím cơ AKKO 3108 V2 World Tour Tokyo làm mưa làm gió trên thị trường thì tiếp tục tiến hành nâng cấp và cho ra mắt phiên bản phím cơ Silent V2, cảm giác gõ vô cùng mượt mà với phiên bản nâng cấp nhẹ nhàng. Phiên bản bàn phím cơ này có nhiều tông màu cho người dùng thỏa mái lựa chọn.\r\n\r\nThiết kế cho vẻ ngoài ấn tượng, đẹp mắt\r\nBàn phím cơ AKKO 3108 v2 World Tour Tokyo được thiết kế dựa theo hình ảnh biểu tượng của Tokyo là núi Phú Sĩ và hoa anh đào rực rỡ. Với hàng loạt mẫu sản phẩm bàn phím cơ mới ra mắt thì Akko đang mang đến một sức hút mãnh liệt với thiết kế bắt mắt của mình.\r\n\r\nSeries World Tour không chỉ là một công cụ đánh máy mà còn có thể đóng vai trò phương tiện giao tiếp và tương tác văn hóa, điều này tạo nên nét độc đáo trên sản phẩm này.', 900000, 'Bàn phím cơ AKKO 3108 V2 World Tour Tokyo50.PNG', 1, 20, NULL, NULL),
(29, '3462', 'Bàn phím cơ AKKO 3108 RF', 'cái', 30, 31, NULL, NULL, 1500000, 'Bàn phím cơ AKKO 3108 RF91.PNG', 1, 20, NULL, NULL),
(30, '23421', 'Bàn phím cơ Logitech G413 SE Brown Switch White Led', 'cái', 30, 27, NULL, NULL, 890000, 'Bàn phím cơ Logitech G413 SE Brown Switch White Led10.PNG', 1, 22, NULL, NULL),
(31, '5322', 'Bàn phím cơ Logitech G413 SE TKL Brown Switch White Led', 'cái', 30, 27, NULL, 'Bàn phím cơ Logitech G413 SE TKL - Thiết kế bền bị, độ nhạy cao\r\nLogitech G413 SE TKL là một sản phẩm bàn phím cơ giá rẻ đang được rất nhiều người dùng quan tâm, săn đón. Để hiểu hơn về sản phẩm bàn phím cơ này, hãy cùng nhau theo dõi ngay bài viết sau đây của CellphoneS nhé!\r\n\r\nChất liệu hợp kim nhôm bền bỉ, chân đế có thể điều chỉnh độ cao\r\nBàn phím cơ Logitech G413 SE TKL được thiết kế kiểu dáng truyền thống full size cùng keycaps được hoàn thiện từ PBT bền bỉ. Vật liệu PBT với khả năng chống mài mòn mang lại một hiệu suất chơi game tối ưu.\r\nLogitech G413 SE/TKL lại được hoàn thiện từ hợp kim nhôm 5052 với trọng lượng nhẹ, độ bền cao giúp bàn phím có vẻ bề ngoài thanh mảnh hơn.\r\n\r\nĐèn LED trắng tiện lợi, hỗ trợ sử dụng dễ dàng trong bóng tối\r\nBàn phím Logitech được trang bị đèn LED màu trắng, vừa có tác dụng dùng để trang trí, vừa có tác dụng thêm về sự trải nghiệm tiện nghi, thoải mái cho người dùng khi sử dụng bàn phím trong một không gian tối. Ánh sáng nền chiếu xuyên qua các kí tự trên bàn phím của bàn phím cơ Logitech G413.', 1200000, 'Bàn phím cơ Logitech G413 SE Brown Switch White Led83.PNG', 1, 21, NULL, NULL),
(32, '4133', 'Cáp HDMI 2.0 Orico', 'cái', 29, 2, NULL, NULL, 100000, 'Cáp HDMI 287.PNG', 1, 20, NULL, NULL),
(33, '34654', 'Camera IP hồng ngoại Wifi Ezviz C6N 1080p 2MP', 'cái', 34, 2, 'Camera quay Video Độ Nét Cao: Ghi lại mọi chi tiết ở độ phân giải 1080p rõ nét\r\nQuay và Quét: 340º theo chiều ngang và 120º theo chiều dọc\r\nChế độ tầm nhìn ban đêm thông minh với Smart IR tăng thêm chi tiết hình ảnh vào ban đêm\r\nTự động theo dõi khi phát hiện một vật thể chuyển động,đồng thời báo động bằng hình ảnh thời gian thực\r\nÂm Thanh Hai Chiều: Giao tiếp với người khác bằng micrô và loa tích hợp.\r\nHỗ trợ lưu trữ nội bộ với thẻ SD 256 GB hoặc lưu trữ đám mây EZVIZ Cloud', 'Camera IP wifi Ezviz C6N 1080p 2MP - Giám sát hồng ngoại hiệu quả vào ban đêm\r\nĐể tăng khả năng giám sát cả bên trong & bên ngoài căn nhà, bạn hãy sở hữu ngay camera Ezviz C6N. Với khả năng quan sát hồng ngoại 360 độ, camera C6N sẽ giúp bạn theo dõi căn nhà của mình một cách trọn vẹn, bất kể ban ngày hay ban đêm.\r\n\r\nCamera độ phân giải 1920 x 1080 pixels với micro và loa đàm thoại 2 chiều tiện dụng\r\nCamera Ezviz có độ phân giải 1920 x 1080 pixels giúp tái tạo hình ảnh sắc nét, giám sát hiệu quả hơn. Với màu sắc chân thực & trực quan sinh động, camera sẽ giúp bạn quan sát mọi góc cạnh trong căn nhà, đảm bảo an tâm mọi lúc mọi nơi. Chỉ cần lắp đặt, camera sẽ hoạt động liên tục và theo dõi mọi cử chỉ, hành vi bên trong không gian nhà bạn.', 560000, 'Camera IP hồng ngoại Wifi Ezviz C6N 1080p 2MP82.PNG', 1, 19, NULL, NULL),
(34, '5454', 'Camera hành trình Gopro Hero 9', 'cái', 34, 2, 'Camera có khả năng ghi hình lên tới độ phân giải 5K@30fps sắc nét\r\nHệ thống chống rung ổn định hình ảnh Hyper Smooth 3.0 cải tiến giúp cho cảnh quay trở nên mượt mà, ổn định hơn\r\nHỗ trợ người dùng Live Stream trực tiếp ở độ phân giải hình ảnh 1080p vô cùng tiện lợi\r\nKhả năng chống nước ở độ sâu lên đến 10m, thích hợp để quay dưới nước hoặc trong điều kiện thời tiết xấu\r\nTích hợp hai màn hình cảm ứng trước và sau, điều khiển bằng giọng nói cùng các chức năng chỉnh sửa nhanh video hoặc hình ảnh ghi được\r\nSử dụng viên pin lớn hơn có dung lượng lên đến 1720 mAh giúp thời lượng sử dụng tăng thêm\r\nCó thể lắp kèm phụ kiện như mic thu âm, đèn LED chiếu sáng hay màn hình rời, cho phép quay hình chuyên nghiệp gọn nhẹ hơn', 'Camera hành trình Gopro Hero 9 - Ghi lại những hình ảnh tuyệt vời nhất\r\nCamera hành trình luôn là những thiết bị không thể thiết đối với mỗi người dùng thích du lịch khám phá. Gopro Hero 9 là một trong những sản phẩm tuyệt vời nhất năm 2020 với độ phân giải quay cũng như trang bị nhiều công nghệ hình ảnh sắc nét, ổn định nhất khi quay.\r\n\r\nNhỏ gọn chất liệu cao cấp, khung chắc chắn khi gắn gimbal\r\nVới thiết kế nhỏ gọn mà Gopro Hero 9 mang lại phiên bản lần này cũng có kích thước tương tự như phiên bản trước và được tối giản nhỏ gọn với các đường nét tinh tế hơn.\r\n\r\nCó thể nói camera Gopro là một trong những camera hành trình tốt nhất với thiết kế bằng chất lượng nhựa cao cấp. Hạn chế tối đa va đập rơi vỡ trong quá trình sử dụng của người dùng khi quay video.', 5200000, 'Camera hành trình Gopro Hero 940.PNG', 1, 21, NULL, NULL),
(35, '1342', 'Ốp lưng iPhone 14 Pro Apple Silicone Case hỗ trợ sạc Magsafe Clear', 'cái', 32, 1, NULL, 'Ốp lưng iPhone 14 Pro Apple Silicone Case With Magsafe Clear - Bảo vệ tối ưu\r\nỐp lưng iPhone 14 Pro Apple Silicone Case With Magsafe Clear không chỉ giúp chiếc smartphone của bạn được bảo vệ an toàn, cũng như giữ được vẻ đẹp nguyên gốc của thiết bị. Dòng ốp lưng iPhone 14 Pro chính hãng do Apple sản xuất, do đó sản phẩm chắc chắn sẽ là sự lựa chọn phù hợp nhất dành cho thiết bị của bạn\r\n\r\nNgoại hình trong suốt, giữ nguyên vẻ đẹp nguyên bản iPhone\r\nĐược chế tác từ chất liệu polycarbonate trong suốt, ốp lưng sẽ giữ nguyên vẻ đẹp gốc của chiếc iPhone 14 Pro với những gam màu rực rỡ, cùng logo trái táo độc quyền của Apple. Bên cạnh đó nhờ vào chất liệu cao cấp, ốp lưng sẽ không bị ố vàng gây mất thẩm mỹ cho thiết bị dù đã trải qua thời gian dài sử dụng.', 100000, 'Ốp lưng iPhone 14 Pro Apple Silicone Case hỗ trợ sạc Magsafe Clear46.PNG', 1, 12, NULL, NULL),
(36, '53122', 'Ốp lưng iPhone 14 Pro UAG Civilian hỗ trợ sạc Magsafe', 'cái', 32, 1, NULL, NULL, 1200000, 'Ốp lưng iPhone 14 Pro Max UAG Metropolis LT hỗ trợ sạc Magsafe73.PNG', 1, 19, NULL, NULL),
(37, '2146', 'Ốp lưng chống sốc cho iPhone 7/8 Plus K Armor Shield', 'cái', 32, 1, NULL, NULL, 120000, '242.PNG', 1, 17, NULL, NULL),
(38, '23443', 'Ốp lưng Samsung Galaxy A34 OU Dẻo Trong', 'cái', 32, 3, NULL, NULL, 100000, '374.PNG', 1, 22, NULL, NULL),
(39, '2433', 'Ốp lưng Samsung Galaxy A24 OU Dẻo Trong', 'cái', 32, 3, NULL, NULL, 80000, '451.PNG', 1, 10, NULL, NULL),
(40, '4534', 'Ốp lưng Samsung Galaxy S23 Ultra Araree Flexield', 'cái', 32, 3, NULL, NULL, 120000, '1157.PNG', 1, 19, NULL, NULL),
(41, '34253', 'Giá đỡ Laptop Hyper Stand Folding Alunium HTU6', 'cái', 29, 2, NULL, NULL, 200000, '588.PNG', 1, 22, NULL, NULL),
(42, '435346', 'Tấm Lót Chuột S-case Chống Mỏi Cổ Tay', 'cái', 29, 2, NULL, NULL, 230000, '631.PNG', 1, 5, NULL, NULL),
(43, '2434', 'Webcam Rapoo C200 HD 720p', 'cái', 29, 29, NULL, NULL, 500000, '797.PNG', 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotional_products`
--

CREATE TABLE `promotional_products` (
  `pp_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `price_final` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `promotional_products`
--

INSERT INTO `promotional_products` (`pp_id`, `product_id`, `coupon_id`, `price_final`, `created_at`, `updated_at`) VALUES
(1, 14, 1, '30000', NULL, NULL),
(2, 15, 2, '640000', NULL, NULL),
(3, 16, 2, '424000', NULL, NULL),
(4, 17, 3, '306000', NULL, NULL),
(5, 19, 2, '600000', NULL, NULL),
(6, 21, 4, '552500', NULL, NULL),
(7, 18, 5, '349300', NULL, NULL),
(8, 33, 3, '504000', NULL, NULL),
(9, 34, 3, '4680000', NULL, NULL),
(10, 26, 3, '1080000', NULL, NULL),
(11, 29, 3, '1350000', NULL, NULL),
(12, 37, 3, '108000', NULL, NULL),
(13, 31, 1, '600000', NULL, NULL),
(14, 27, 3, '900000', NULL, NULL),
(15, 36, 1, '600000', NULL, NULL),
(16, 43, 3, '450000', NULL, NULL),
(17, 30, 3, '801000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `customer_id`, `shipping_name`, `shipping_phone`, `shipping_address`, `shipping_note`, `created_at`, `updated_at`) VALUES
(1, 1, 'Thanh Thanh', '0799786319', 'Cần thơ', NULL, NULL, NULL),
(2, 2, 'Hoàng', '0799786319', 'Ninh kiều, cần thơ', NULL, NULL, NULL),
(5, 3, 'Thanh Thanh', '0799786319', '12/3, an', NULL, NULL, NULL),
(6, 4, 'hùng', '024783723', 'Cần thơ', NULL, NULL, NULL),
(7, 5, 'Thanh Thanh', '0799786319', '12/3, an', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`orderDetail_id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_idcode` (`product_idcode`);

--
-- Chỉ mục cho bảng `promotional_products`
--
ALTER TABLE `promotional_products`
  ADD PRIMARY KEY (`pp_id`);

--
-- Chỉ mục cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `orderDetail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `promotional_products`
--
ALTER TABLE `promotional_products`
  MODIFY `pp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
