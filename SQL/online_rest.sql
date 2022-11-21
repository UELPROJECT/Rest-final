-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 12:49 PM
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
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_tbl`
--

CREATE TABLE `add_tbl` (
  `tbl_id` int(222) NOT NULL,
  `rs_id` int(222) DEFAULT NULL,
  `title` varchar(222) DEFAULT NULL,
  `table_yes` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_tbl`
--

INSERT INTO `add_tbl` (`tbl_id`, `rs_id`, `title`, `table_yes`) VALUES
(2, 11, 'abc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@gmail.com', '', '2021-04-07 08:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `cst_tbl_book`
--

CREATE TABLE `cst_tbl_book` (
  `cst_id` int(222) NOT NULL,
  `cst_tbl_no` int(11) NOT NULL,
  `cst_username` varchar(222) DEFAULT NULL,
  `rs_id` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cst_tbl_book`
--

INSERT INTO `cst_tbl_book` (`cst_id`, `cst_tbl_no`, `cst_username`, `rs_id`) VALUES
(64, 1, 'Salman', 11);

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Paneer Saag', 'Cottage cheese cooked with fresh ground spinach, onion, garlic and indian herbs.', '390.00', '606d72f3cb12f.jpg'),
(2, 1, 'Chicken Achari', 'Dahi, achar, tomatoes, mustard oil, fennel seeds', '250.00', '606d73302ece2.jpg'),
(3, 1, 'Murgh Tikka Biryani', 'Chicken Tikka Biryani Recipe is the famous Indian delicacy of Punjabi Cuisine. Boneless Chicken is marinated in spicy mix of Yogurt and Spices.', '470.00', '606d73771366a.jpg'),
(4, 1, 'Murgh Zafrani Kabab', 'Murgh Zafrani Kabab. A plateful of succulent pieces of meat, straight out of tandoor, is tough to resist.', '380.00', '606d73d2d37f4.jpg'),
(5, 2, 'Pink Spaghetti Gamberoni', 'Spaghetti pasta, grilled shrimps, parmesan cheese, with our homemade pink sauce,', '380.00', '606d7491a9d13.jpg'),
(6, 2, 'Cheesy Mashed Potato', 'Covered with mozzarella cheese.', '250.00', '606d74c416da5.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', '460.00', '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', '380.00', '606d752a209c3.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', '350.00', '606d7575798fb.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', '120.00', '606d75a7e21ec.jpg'),
(11, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', '470.00', '606d75ce105d0.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', '500.00', '606d7600dc54c.jpg'),
(13, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', '450.00', '606d765f69a19.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', '350.00', '606d768a1b2a1.jpg'),
(15, 4, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', '320.00', '606d76ad0c0cb.jpg'),
(16, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', '470.00', '606d76eedbb99.jpg'),
(17, 11, 'fafda and gelabi', 'THIS IN INDIAN FOOD', '1.99', '6378f067d0081.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'dasd', '2022-11-16 15:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Gazebo', 'gazebo@gmail.com', '4312533432', 'www.gazebo.com', '12pm', '12am', 'Mon-Sat', 'Borivali', '606d71a81ec5d.jpg', '2021-04-07 09:18:19'),
(2, 2, 'Eataly', 'eataly@gmail.com', '0557426406', 'www.eataly.com', '11am', '9pm', 'Mon-Sat', 'Goregaon', '606d720b5fc71.jpg', '2021-04-07 08:49:15'),
(3, 3, 'Mainland China', 'mainland@china.com', '4326538776', 'www.mainlandchina.com', '8am', '9pm', 'Mon-Fri', 'Malad', '606d72653306f.jpg', '2021-04-07 08:50:45'),
(4, 4, 'TGI Fridays', 'tgi@gmail.com', '2342353325', 'www.tgif.com', '9am', '9pm', 'Mon-Sat', 'Lower Parel', '606d72a49503a.jpg', '2021-04-07 08:51:48'),
(11, 1, 'abc', 'abc@gmail.com', '1234567890', 'www.abc.com', '9am', '6pm', '24hr-x7', 'wewqeq', '636ce766e3c0c.jpg', '2022-11-10 11:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Indian', '2021-04-07 08:45:20'),
(2, 'Italian', '2021-04-07 08:45:23'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(4, 'American', '2021-04-07 08:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `res_tbl`
--

CREATE TABLE `res_tbl` (
  `res_tbl_id` int(222) NOT NULL,
  `rs_id` int(222) DEFAULT NULL,
  `title` varchar(222) DEFAULT NULL,
  `tbl_no` int(222) DEFAULT NULL,
  `tbl_book` int(222) NOT NULL,
  `tbl_unbook` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `res_tbl`
--

INSERT INTO `res_tbl` (`res_tbl_id`, `rs_id`, `title`, `tbl_no`, `tbl_book`, `tbl_unbook`) VALUES
(5, 11, 'abc', 4, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_details`
--

CREATE TABLE `tbl_details` (
  `tbl_detail_id` int(222) NOT NULL,
  `dishes_name` varchar(222) NOT NULL,
  `res_name` varchar(222) NOT NULL,
  `price` int(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `table_yes_no` varchar(222) NOT NULL,
  `username` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'SAL', 'Salman', 'Ansari', 'salman@gmail.com', '1324325445', 'a32de55ffd7a9c4101a0c5c8788b38ed', 'Mira Road', 1, '2021-04-07 08:43:49'),
(2, 'PAR', 'Parth', 'Desai', 'parth@gmail.com', '4325345332', 'bc28715006af20d0e961afd053a984d9', 'Vasai', 1, '2021-04-07 08:44:35'),
(3, 'HIT', 'Hitesh', 'Gosavi', 'hitesh@gmail.com', '4325345332', '58b2318af54435138065ee13dd8bea16', 'Malad', 1, '2021-04-07 08:44:53');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 1, 'Paneer Saag', 1, '390.00', 'in process', '2022-11-16 15:02:54'),
(2, 1, 'Chicken Achari', 1, '250.00', NULL, '2022-11-14 15:52:47'),
(3, 1, 'Paneer Saag', 1, '390.00', NULL, '2022-11-16 15:01:11'),
(4, 1, 'Paneer Saag', 1, '390.00', NULL, '2022-11-16 15:02:05'),
(5, 1, 'Cheesy Mashed Potato', 1, '250.00', NULL, '2022-11-16 15:02:05'),
(6, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 12:11:02'),
(7, 1, 'Vegetable Fried Rice', 1, '350.00', NULL, '2022-11-20 12:27:44'),
(8, 1, 'Prawn Crackers', 1, '120.00', NULL, '2022-11-20 12:27:44'),
(9, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:21:04'),
(10, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:23:45'),
(11, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:26:05'),
(12, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:29:45'),
(13, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:30:54'),
(14, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:41:02'),
(15, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:42:13'),
(16, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:46:45'),
(17, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:48:26'),
(18, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:50:22'),
(19, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:57:33'),
(20, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 20:58:14'),
(21, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 21:02:15'),
(22, 1, 'fafda and gelabi', 1, '1.99', NULL, '2022-11-20 21:04:46'),
(23, 1, 'fafda and gelabi', 3, '1.99', NULL, '2022-11-21 11:02:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_tbl`
--
ALTER TABLE `add_tbl`
  ADD PRIMARY KEY (`tbl_id`),
  ADD KEY `rs_id` (`rs_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `cst_tbl_book`
--
ALTER TABLE `cst_tbl_book`
  ADD PRIMARY KEY (`cst_id`),
  ADD KEY `rs_id` (`rs_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `res_tbl`
--
ALTER TABLE `res_tbl`
  ADD PRIMARY KEY (`res_tbl_id`);

--
-- Indexes for table `tbl_details`
--
ALTER TABLE `tbl_details`
  ADD PRIMARY KEY (`tbl_detail_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_tbl`
--
ALTER TABLE `add_tbl`
  MODIFY `tbl_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cst_tbl_book`
--
ALTER TABLE `cst_tbl_book`
  MODIFY `cst_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_tbl`
--
ALTER TABLE `res_tbl`
  MODIFY `res_tbl_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_details`
--
ALTER TABLE `tbl_details`
  MODIFY `tbl_detail_id` int(222) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_tbl`
--
ALTER TABLE `add_tbl`
  ADD CONSTRAINT `add_tbl_ibfk_1` FOREIGN KEY (`rs_id`) REFERENCES `restaurant` (`rs_id`);

--
-- Constraints for table `cst_tbl_book`
--
ALTER TABLE `cst_tbl_book`
  ADD CONSTRAINT `cst_tbl_book_ibfk_1` FOREIGN KEY (`rs_id`) REFERENCES `restaurant` (`rs_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
