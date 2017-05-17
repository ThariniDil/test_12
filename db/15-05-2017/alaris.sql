-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2017 at 07:55 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `admin_level` varchar(50) NOT NULL,
  `security_key` varchar(40) NOT NULL,
  `email_verify` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `username`, `email`, `password`, `admin_level`, `security_key`, `email_verify`) VALUES
(7, 'Malinga', 'yasasvidanage@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'editor', '', 0),
(8, 'yasas', 'yasasmalinga@ymail.com', '123456', 'administrator', '', 0),
(9, 'yaaa', 'yasasmalinga@ymail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'administrator', 'f2938f156986fd1950da377f871992afd73d03eb', 0);

-- --------------------------------------------------------

--
-- Table structure for table `beauty_tips`
--

CREATE TABLE `beauty_tips` (
  `id` int(11) NOT NULL,
  `video_link` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `beauty_tips`
--

INSERT INTO `beauty_tips` (`id`, `video_link`, `description`, `image`) VALUES
(2, 'www.facebook.com', 'gooddd', 'maxresdefault.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `careers_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `mobile_number` varchar(45) DEFAULT NULL,
  `attachment` text,
  `vacancies_vacancy_id` int(11) DEFAULT NULL,
  `notify` tinyint(2) NOT NULL,
  `receved_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`careers_id`, `name`, `date_of_birth`, `email`, `gender`, `mobile_number`, `attachment`, `vacancies_vacancy_id`, `notify`, `receved_date`) VALUES
(16, 'thanooshan', '2017-05-08', 'yasasmalinga@ymail.com', 'male', '0788490126', 'thanooshan.pptx', 4, 0, '0000-00-00'),
(18, 'malinga', '2017-05-14', '', 'male', '', 'malinga.pptx', 5, 0, '2017-05-09'),
(19, 'yasas', '2017-05-09', 'gtshan10@gmail.com', 'male', '47544', 'yasas.pdf', 4, 0, '2017-05-09'),
(20, 'poikj', '2017-05-31', 'admin@admin.com', 'male', '456789', 'poikj.pdf', 4, 0, '2017-05-09');

-- --------------------------------------------------------

--
-- Table structure for table `categary`
--

CREATE TABLE `categary` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categary`
--

INSERT INTO `categary` (`cat_id`, `cat_name`) VALUES
(1, 'Phamceutical'),
(2, 'Cosmeceutical'),
(3, 'Natraceuticals');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(45) DEFAULT NULL,
  `province_pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `cus_name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `question` text,
  `answer` text,
  `faq_faq_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `question`, `answer`, `faq_faq_cat_id`) VALUES
(1, 'what is your name', 'I m yasas', 2),
(2, 'How Old are you?', 'Hi', 1),
(3, 'What is This ?', 'Mango', 1),
(4, 'aaaa', 'ddd', 2);

-- --------------------------------------------------------

--
-- Table structure for table `faq_category`
--

CREATE TABLE `faq_category` (
  `faq_cat_id` int(11) NOT NULL,
  `category_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq_category`
--

INSERT INTO `faq_category` (`faq_cat_id`, `category_name`) VALUES
(1, 'General'),
(2, 'My Account'),
(3, 'Brands & Products'),
(4, 'Sales & Distibution'),
(5, 'Promotions'),
(6, 'Ingredients');

-- --------------------------------------------------------

--
-- Table structure for table `feature_products`
--

CREATE TABLE `feature_products` (
  `id` int(11) NOT NULL,
  `product1` varchar(45) DEFAULT NULL,
  `product2` varchar(45) DEFAULT NULL,
  `product3` varchar(45) DEFAULT NULL,
  `categary` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `info` varchar(45) DEFAULT NULL,
  `notification_status` varchar(45) DEFAULT NULL,
  `message` text,
  `product_product_id` int(11) DEFAULT NULL,
  `order_order_id` int(11) DEFAULT NULL,
  `career_career_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `info`, `notification_status`, `message`, `product_product_id`, `order_order_id`, `career_career_id`) VALUES
(1, 'vacancy', '0', 'yasas has sent us a cv for a vacancy', NULL, NULL, NULL),
(2, 'vacancy', '0', 'poikj has sent us a cv for a vacancy', NULL, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `customer_customer_id` int(11) NOT NULL,
  `payment_payment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `product_product_id` int(11) NOT NULL,
  `order_order_id` int(11) NOT NULL,
  `qty` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `image`, `link`) VALUES
(1, 'abena.png', 'http://www.abena.com/'),
(2, 'baxter.png', 'http://www.baxter.com/index.page'),
(3, 'bd.png', 'https://www.bd.com/'),
(4, 'boston.png', 'https://www.bostonscientific.com/en-US/Home.h'),
(5, 'microlife.png', 'http://www.microlife.com/'),
(6, 'philips.png', 'https://www.philips.com/global');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `option` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `pro_name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `pro_price` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `pro_image` varchar(45) DEFAULT NULL,
  `discount` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `types_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `pro_name`, `description`, `qty`, `pro_price`, `gender`, `pro_image`, `discount`, `status`, `types_type_id`) VALUES
(4, 'Imunor', 'aaaa', '4', '200', 'both', 'Amino XL.png', '10', '1', 2),
(5, 'aaaaaaaaaaaaaaaaaaa', 'vvvvvvvvvvv', '1', '1223', 'both', 'Sure Slim.png', '', '1', 2),
(6, 'image test', 'image test', '123', '10', 'both', 'GLA.png', '', '1', 3),
(8, 'yasas', 'sdsds', '12', '111', 'both', 'Gold Jojoba.png', '', 'available', 2),
(9, 'asasa', 'asas', '12', '12', 'both', 'Sure_Slim.png', '', 'available', 2),
(10, 'asa', 'hvhv', '12', '41222', 'both', 'Imuno.png', '', 'available', 2);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `pro_id` int(11) NOT NULL,
  `province_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL,
  `review_name` varchar(45) DEFAULT NULL,
  `number_of_rating` varchar(45) DEFAULT NULL,
  `product_product_id` int(11) NOT NULL,
  `user_login_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sub_menus`
--

CREATE TABLE `sub_menus` (
  `id` int(11) NOT NULL,
  `main_category` varchar(100) DEFAULT NULL,
  `sub_category` varchar(100) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_menus`
--

INSERT INTO `sub_menus` (`id`, `main_category`, `sub_category`, `title`, `image`, `link`, `description`) VALUES
(1, 'Group News', 'ACE Care', NULL, NULL, NULL, '21,000 Sqf Factory for Brand ACE Care Ltd Und'),
(2, 'product', 'Facia', NULL, 'new-facia.png', NULL, NULL),
(3, 'COPORATE', 'Alaris', 'Wide Network', NULL, '#', 'While mobile devices work well when searchi Safari or Chrome browser for the best experience when applying for a job.'),
(4, NULL, NULL, NULL, 'girl.png', NULL, NULL),
(5, 'gdgc', 'hfvh', NULL, 'yasas51.jpg', NULL, NULL),
(6, 'COPORATE', 'Alaris', NULL, NULL, NULL, 'We bring quality the-global brands to your hands.'),
(7, NULL, NULL, NULL, 'car.png', NULL, NULL),
(8, 'COPORATE', 'Alaris', 'Wide Network', NULL, '#', 'While mobile devices work well when search Safari or Chrome browser for the best experience when applying for a job..');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL,
  `slider_image` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` text,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `slider_image`, `title`, `description`, `link`) VALUES
(1, 'banner-01.png', 'Technology', 'Healthcare is changing. That’s why, as a leader in medical technology, services, and solutions, we’re collaborating with international partners to bring the latest innovation to Hospitals, Clinics & now your Home.', 'http://localhost/alaris/home/technology'),
(2, 'banner-011.png', 'Hi max', 'Healthcare is changing. That’s why, as a leader in medical technology, services, and solutions, we’re collaborating with international partners to bring the latest innovation to Hospitals, Clinics & now your Home.', 'www.youtube.com'),
(3, 'banner-012.png', 'Petrol', 'Healthcare is changing. That’s why, as a leader in medical technology, services, and solutions, we’re collaborating with international partners to bring the latest innovation to Hospitals, Clinics & now your Home.', 'asas');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(45) DEFAULT NULL,
  `categary_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_name`, `categary_cat_id`) VALUES
(2, 'Jojaba', 3),
(3, 'Pacia', 2),
(4, 'Timulants', 1),
(5, 'Pramlintid', 1),
(6, 'G Yrim', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `social_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

CREATE TABLE `vacancies` (
  `vacancy_id` int(11) NOT NULL,
  `vacancy_name` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `job_title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vacancies`
--

INSERT INTO `vacancies` (`vacancy_id`, `vacancy_name`, `image`, `job_title`, `description`, `status`) VALUES
(4, 'bb', 'yasas.jpg', 'aaaaaa', 'aaaaaa', 1),
(5, 'trainee web developer', 'missionvision.png', 'Web developer', 'css php good', 1),
(7, 'sdsd', 'yasas3.jpg', 'JBUJB', 'HUHUJG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `link`, `description`) VALUES
(1, 'www.facebook.com', 'yasas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `beauty_tips`
--
ALTER TABLE `beauty_tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`careers_id`),
  ADD KEY `fk_careers_vacancies1_idx` (`vacancies_vacancy_id`);

--
-- Indexes for table `categary`
--
ALTER TABLE `categary`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `fk_city_province1_idx` (`province_pro_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`),
  ADD KEY `fk_faq_faq_categary1_idx` (`faq_faq_cat_id`);

--
-- Indexes for table `faq_category`
--
ALTER TABLE `faq_category`
  ADD PRIMARY KEY (`faq_cat_id`);

--
-- Indexes for table `feature_products`
--
ALTER TABLE `feature_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`),
  ADD UNIQUE KEY `career_career_id` (`career_career_id`),
  ADD KEY `fk_notification_product1_idx` (`product_product_id`),
  ADD KEY `fk_notification_order1_idx` (`order_order_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_order_customer_idx` (`customer_customer_id`),
  ADD KEY `fk_order_payment1_idx` (`payment_payment_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `fk_product_has_order_order1_idx` (`order_order_id`),
  ADD KEY `fk_product_has_order_product1_idx` (`product_product_id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_types1_idx` (`types_type_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`),
  ADD KEY `fk_reviews_product1_idx` (`product_product_id`),
  ADD KEY `fk_reviews_user_login1_idx` (`user_login_user_id`);

--
-- Indexes for table `sub_menus`
--
ALTER TABLE `sub_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `fk_types_categary1_idx` (`categary_cat_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`vacancy_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `beauty_tips`
--
ALTER TABLE `beauty_tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `careers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `categary`
--
ALTER TABLE `categary`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `faq_category`
--
ALTER TABLE `faq_category`
  MODIFY `faq_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `feature_products`
--
ALTER TABLE `feature_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_menus`
--
ALTER TABLE `sub_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `vacancy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `careers`
--
ALTER TABLE `careers`
  ADD CONSTRAINT `fk_careers_vacancies1` FOREIGN KEY (`vacancies_vacancy_id`) REFERENCES `vacancies` (`vacancy_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_city_province1` FOREIGN KEY (`province_pro_id`) REFERENCES `province` (`pro_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `faq`
--
ALTER TABLE `faq`
  ADD CONSTRAINT `fk_faq_faq_categary1` FOREIGN KEY (`faq_faq_cat_id`) REFERENCES `faq_category` (`faq_cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `fk_notification_order1` FOREIGN KEY (`order_order_id`) REFERENCES `order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notification_product1` FOREIGN KEY (`product_product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_customer` FOREIGN KEY (`customer_customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_order_payment1` FOREIGN KEY (`payment_payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `fk_product_has_order_order1` FOREIGN KEY (`order_order_id`) REFERENCES `order` (`order_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_product_has_order_product1` FOREIGN KEY (`product_product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_types1` FOREIGN KEY (`types_type_id`) REFERENCES `types` (`type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviews_product1` FOREIGN KEY (`product_product_id`) REFERENCES `product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_reviews_user_login1` FOREIGN KEY (`user_login_user_id`) REFERENCES `user_login` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `types`
--
ALTER TABLE `types`
  ADD CONSTRAINT `fk_types_categary1` FOREIGN KEY (`categary_cat_id`) REFERENCES `categary` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
