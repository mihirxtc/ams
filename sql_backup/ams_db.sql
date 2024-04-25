-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 08:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tb`
--

CREATE TABLE `adminlogin_tb` (
  `a_login_id` int(11) NOT NULL,
  `a_name` varchar(60) NOT NULL,
  `a_email` varchar(60) NOT NULL,
  `a_password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `adminlogin_tb`
--

INSERT INTO `adminlogin_tb` (`a_login_id`, `a_name`, `a_email`, `a_password`) VALUES
(1, 'admin', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `assets_tb`
--

CREATE TABLE `assets_tb` (
  `pid` int(11) NOT NULL,
  `pname` varchar(60) NOT NULL,
  `pdop` date NOT NULL,
  `pava` int(11) NOT NULL,
  `ptotal` int(11) NOT NULL,
  `poriginalcost` int(11) NOT NULL,
  `psellingcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assets_tb`
--

INSERT INTO `assets_tb` (`pid`, `pname`, `pdop`, `pava`, `ptotal`, `poriginalcost`, `psellingcost`) VALUES
(5, 'Monitor', '2024-04-22', 98, 100, 6500, 7000),
(6, 'Keyboard', '2024-04-22', 150, 150, 1350, 1500),
(7, 'Mouse', '2024-04-22', 195, 200, 450, 500);

-- --------------------------------------------------------

--
-- Table structure for table `assignwork_tb`
--

CREATE TABLE `assignwork_tb` (
  `rno` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `request_info` text NOT NULL,
  `request_desc` text NOT NULL,
  `requester_name` varchar(60) NOT NULL,
  `requester_add1` text NOT NULL,
  `requester_add2` text NOT NULL,
  `requester_city` varchar(60) NOT NULL,
  `requester_state` varchar(60) NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) NOT NULL,
  `requester_mobile` bigint(11) NOT NULL,
  `assign_tech` varchar(60) NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assignwork_tb`
--

INSERT INTO `assignwork_tb` (`rno`, `request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `assign_tech`, `assign_date`) VALUES
(14, 58, 'Panasonic LED TV', 'Model - 202100008011, display is blank not working', 'Mihir Menon', 'B-18, Alfa Park Society ', 'Motera Road, Sabaramati', 'Ahmedabad', 'Gujarat', 38005, 'mihir@gmail.com', 8128429890, 'Modern India Technicians', '2024-04-24'),
(15, 59, 'Toshiba Air Conditioner', 'model: 202180118011,  Motor Service', 'Aryan Panchal', 'G-78, New Sarovar Apartment', 'Nehrunagar Road, Zansi ki Rani', 'Ahmedabad', 'Gujarat', 380008, 'aryanpanchal123@gmail.com', 7357544893, 'Modern India Technicians', '2024-04-24'),
(16, 60, 'Samsung Fridge', 'Model: 202100998282024, cooling is not working', 'Karan Soni', 'B-123, New pearl avenue', 'Vastrapur', 'Ahmedabad', 'Gujarat', 380006, 'karansoni81023@gmail.com', 9099999999, 'Modern India Technicians', '2024-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `custid` int(11) NOT NULL,
  `custname` varchar(60) NOT NULL,
  `custadd` varchar(60) NOT NULL,
  `cpname` varchar(60) NOT NULL,
  `cpquantity` int(11) NOT NULL,
  `cpeach` int(11) NOT NULL,
  `cptotal` int(11) NOT NULL,
  `cpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`custid`, `custname`, `custadd`, `cpname`, `cpquantity`, `cpeach`, `cptotal`, `cpdate`) VALUES
(29, 'Aryan Panchal', 'B-21 Shreenath Apartment', 'Monitor', 2, 7000, 14000, '2024-04-22'),
(30, 'Jay Prajapati', 'B-123 ABC apartment', 'Mouse', 5, 500, 2500, '2024-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `requesterlogin_tb`
--

CREATE TABLE `requesterlogin_tb` (
  `r_login_id` int(11) NOT NULL,
  `r_name` varchar(60) NOT NULL,
  `r_email` varchar(60) NOT NULL,
  `r_password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `requesterlogin_tb`
--

INSERT INTO `requesterlogin_tb` (`r_login_id`, `r_name`, `r_email`, `r_password`) VALUES
(17, 'Mihir Menon', 'mihir@gmail.com', '$2y$10$kAxTTA3Fmf9xDtABJSI9TOTSayf40/klqrqNZnSOG.mrkYd8HA7MW'),
(19, 'Karan Soni', 'karan@gmail.com', '$2y$10$iNKuVh.6DUGChep9zQ38EOym23udpbevZS1kPx1yuIiqm9yHusUGi'),
(20, 'Jay Prajapati', 'jay@gmail.com', '$2y$10$pOLd.xc9v6SvCKFiK8JSC.SyPbsA4rwqISbqi.BWxIUPmA9Asp/KS'),
(21, 'Parth Joshi', 'parthjoshi@gmail.com', '$2y$10$skSgElSmmfwEV3nlsHnX3O3adOoMeIJV1rPwJleKRWDKSHaK/ancC'),
(22, 'Aryan Panchal', 'aryanpanchal123@gmail.com', '$2y$10$q/v8WEm87/rpzX9nu6tQ5.gqOy2LnMiHUvUEWDaJN2vi1mZOQz3P.'),
(23, 'Karan Soni', 'karansoni81023@gmail.com', '$2y$10$hNZPGhqJ6V7.5YcJWmaB.uT30cGm1mAJ96OqjcxKMI3ZhHH10tmRi');

-- --------------------------------------------------------

--
-- Table structure for table `submitrequest_tb`
--

CREATE TABLE `submitrequest_tb` (
  `request_id` int(11) NOT NULL,
  `request_info` text NOT NULL,
  `request_desc` text NOT NULL,
  `requester_name` varchar(60) NOT NULL,
  `requester_add1` text NOT NULL,
  `requester_add2` text NOT NULL,
  `requester_city` varchar(60) NOT NULL,
  `requester_state` varchar(60) NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) NOT NULL,
  `requester_mobile` bigint(11) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `submitrequest_tb`
--

INSERT INTO `submitrequest_tb` (`request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `request_date`) VALUES
(58, 'Panasonic LED TV', 'Model - 202100008011, display is blank not working', 'Mihir Menon', 'B-18, Alfa Park Society ', 'Motera Road, Sabaramati', 'Ahmedabad', 'Gujarat', 38005, 'mihir@gmail.com', 8128429890, '2024-04-22'),
(59, 'Toshiba Air Conditioner', 'model: 202180118011,  Motor Service', 'Aryan Panchal', 'G-78, New Sarovar Apartment', 'Nehrunagar Road, Zansi ki Rani', 'Ahmedabad', 'Gujarat', 380008, 'aryanpanchal123@gmail.com', 7357544893, '2024-04-22'),
(60, 'Samsung Fridge', 'Model: 202100998282024, cooling is not working', 'Karan Soni', 'B-123, New pearl avenue', 'Vastrapur', 'Ahmedabad', 'Gujarat', 380006, 'karansoni81023@gmail.com', 9099999999, '2024-04-24'),
(61, 'Samsung Fridge', 'Model: 202100998282024, cooling is not working', 'Karan Soni', 'B-123, New pearl avenue', 'Vastrapur', 'Ahmedabad', 'Gujarat', 380006, 'karansoni81023@gmail.com', 9099999999, '2024-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `technician_tb`
--

CREATE TABLE `technician_tb` (
  `empid` int(11) NOT NULL,
  `empName` varchar(60) NOT NULL,
  `empCity` varchar(60) NOT NULL,
  `empMobile` bigint(11) NOT NULL,
  `empEmail` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `technician_tb`
--

INSERT INTO `technician_tb` (`empid`, `empName`, `empCity`, `empMobile`, `empEmail`) VALUES
(16, 'Modern India Technicians', 'Ahmedabad', 8128429899, 'modernindiatechnicians@gmail.com'),
(17, 'Modern Gujarat Technicians', 'Ahmedabad', 7128427890, 'moderngujarattechinicians@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  ADD PRIMARY KEY (`a_login_id`);

--
-- Indexes for table `assets_tb`
--
ALTER TABLE `assets_tb`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  ADD PRIMARY KEY (`r_login_id`);

--
-- Indexes for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `technician_tb`
--
ALTER TABLE `technician_tb`
  ADD PRIMARY KEY (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  MODIFY `a_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets_tb`
--
ALTER TABLE `assets_tb`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customer_tb`
--
ALTER TABLE `customer_tb`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  MODIFY `r_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `technician_tb`
--
ALTER TABLE `technician_tb`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
