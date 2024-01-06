-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 ديسمبر 2021 الساعة 09:55
-- إصدار الخادم: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 NOT NULL,
  `pic` varchar(111) CHARACTER SET utf8 NOT NULL,
  `details` varchar(333) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `details`, `date`) VALUES
(21, 'شراب', 'دواء-كحة-يسبب-النعاس-وأنواعهم.jpg', '', '2021-12-18 09:03:34'),
(22, 'ابر', 'wbbhk4rvqrp64kscapd56zkh5vify1ep.jpg', '', '2021-12-18 09:04:09'),
(23, 'كبسول', 'fk.jpg', '', '2021-12-18 09:04:45'),
(24, 'كبسول عملي', 'login.jpg', '', '2021-12-18 09:05:07'),
(25, 'مسكنات الالم', 'cap.png', '', '2021-12-18 09:05:31'),
(26, 'حبوب ', 'what-a-treatment-for-migraine-headache.jpg', '', '2021-12-18 09:05:59'),
(27, 'علاج تجميل', '5-free-skin-saving-products-you-can-totally-find-home.jpg', '', '2021-12-18 09:06:16'),
(28, 'علاج الامراض المزمنة', '207136_4_1621846280.jpg', '', '2021-12-18 09:06:55'),
(29, 'علاجات اخرى /منوعة', 'أسرع_علاج_للأنيميا.jpg', '', '2021-12-18 09:07:11'),
(30, 'كريم', 'lotion.png', '', '2021-12-18 09:08:15'),
(31, 'ادوية خاصة', 'tablet.png', '', '2021-12-18 09:08:33'),
(32, 'مرهم حروق', 'cream.png', '', '2021-12-18 09:08:48');

-- --------------------------------------------------------

--
-- بنية الجدول `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `supplier` varchar(222) CHARACTER SET utf8 NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `unit` text CHARACTER SET utf8 NOT NULL,
  `price` text CHARACTER SET utf8 NOT NULL,
  `pic` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `company` varchar(111) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `supplier`, `name`, `unit`, `price`, `pic`, `description`, `company`, `date`) VALUES
(25, 21, 'GTF8', 'ahmed', '56mg', '1', '', 'dwadwadaw', 'techcode', '2021-12-18 16:24:57'),
(26, 23, 'GTF', 'معلومات عامة', '55mg', '10', '', 'يشصيصشي', 'techcode', '2021-12-18 16:29:36'),
(27, 24, 'GTF8', 'ahmet ali', '56mg', '5', '', 'يصشيشصي', 'techcode24', '2021-12-18 16:31:48');

-- --------------------------------------------------------

--
-- بنية الجدول `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `title` varchar(222) CHARACTER SET utf8 NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `site`
--

INSERT INTO `site` (`id`, `title`, `name`) VALUES
(1, 'نظام ادارة الصيدلية', 'صيدلية الشفاء  ');

-- --------------------------------------------------------

--
-- بنية الجدول `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 NOT NULL,
  `contact` varchar(222) CHARACTER SET utf8 NOT NULL,
  `discount` varchar(222) CHARACTER SET utf8 NOT NULL,
  `item` varchar(222) CHARACTER SET utf8 NOT NULL,
  `amount` varchar(222) CHARACTER SET utf8 NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `sold`
--

INSERT INTO `sold` (`id`, `name`, `contact`, `discount`, `item`, `amount`, `userId`, `date`) VALUES
(36, 'احمد', '07705445247', '5', '1', '45', 2, '2021-12-19 08:52:26'),
(37, 'سعيد', '05245585844', '20', '1', '80', 2, '2021-12-19 08:54:10'),
(38, 'مشعل', '07705445247', '0', '1', '5', 3, '2021-12-19 08:55:12');

-- --------------------------------------------------------

--
-- بنية الجدول `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `pic` text CHARACTER SET utf8 NOT NULL,
  `number` text NOT NULL,
  `address` text CHARACTER SET utf8 NOT NULL,
  `cnic` text CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- إرجاع أو استيراد بيانات الجدول `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `pic`, `number`, `address`, `cnic`, `date`) VALUES
(1, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:23:49'),
(2, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:23:53'),
(3, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:23:56'),
(4, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:23:59'),
(5, 'faisal khan', 'fk.jpg', '2432342342', 'adfasdfasfdasdf', '2342342342423423', '2017-11-03 07:24:01');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) CHARACTER SET utf8 NOT NULL,
  `pic` varchar(222) CHARACTER SET utf8 NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(2, 'admin1@gmail.com', 'admin', 'صيدلاني', 'png.png', '2548574/845485', '2021-12-19 08:45:10'),
(3, 'admin2@gmail.com', 'admin', 'محمد', 'pngwing.png', '4748475748', '2021-12-19 08:52:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
