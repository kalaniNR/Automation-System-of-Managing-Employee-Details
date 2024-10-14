-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 07:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `colombo_studies`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `Admin_ID` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`Admin_ID`, `username`, `password`, `confirm_password`) VALUES
(1, 'kalani', '789', ''),
(4, 'imandi', 'imandi@123', ''),
(5, 'nadee', 'nadee@123', ''),
(159, 'raja', '1236', '1236'),
(1236, 'nadeesha', 'nadee@123', 'nadee@123');

-- --------------------------------------------------------

--
-- Table structure for table `assistant_table`
--

CREATE TABLE `assistant_table` (
  `Asi_ID` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assistant_table`
--

INSERT INTO `assistant_table` (`Asi_ID`, `username`, `password`, `confirm_password`) VALUES
(3, 'kalani', 'kalani@123', ''),
(852, 'maduu', '1234@#', '1234@#');

-- --------------------------------------------------------

--
-- Table structure for table `department_table`
--

CREATE TABLE `department_table` (
  `d_ID` int(10) NOT NULL,
  `d_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_table`
--

INSERT INTO `department_table` (`d_ID`, `d_name`) VALUES
(5, 'marketing'),
(100, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `ID` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact_num` int(10) NOT NULL,
  `DOB` date NOT NULL,
  `age` int(3) NOT NULL,
  `position` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `EPF_NO` int(20) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Basicsalary` int(100) NOT NULL,
  `department_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`ID`, `name`, `address`, `email`, `contact_num`, `DOB`, `age`, `position`, `gender`, `EPF_NO`, `Status`, `Basicsalary`, `department_name`) VALUES
('1', 'kalani', 'pallegedara', 'kalani@gmail.com', 741042068, '2003-07-26', 20, 'QA', 'Female', 258, 'active', 500000, ''),
('12', 'nadeesha', 'narammala', 'nadee@gmail.com', 741236594, '2000-02-05', 23, 'reception ', 'female', 500, 'active', 30000, 'marketing'),
('2', 'kasuni', 'narammala', 'kasuni@gmail.com', 741042068, '2003-07-25', 21, 'designer', 'Female', 581, 'active', 100000, ''),
('200', 'Mavitha', 'Kurunagala', 'Mavi@', 712345678, '2000-06-07', 23, 'Lecturer', 'Male', 203, 'Active', 600000, ''),
('23', 'kuru', 'narammala', 'kuru@gmail.com', 12365498, '2000-02-07', 21, 'accountant', 'female', 78, 'active', 250000, 'marketting'),
('9', 'imandi', 'barigoda ', 'imandi@gmail.com', 4215789, '2000-03-04', 21, 'accountant', 'female', 500, 'active', 300000, 'QA');

-- --------------------------------------------------------

--
-- Table structure for table `manager_table`
--

CREATE TABLE `manager_table` (
  `manager_ID` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager_table`
--

INSERT INTO `manager_table` (`manager_ID`, `username`, `password`, `confirm_password`) VALUES
(12, 'kavi', '1234', ''),
(45, 'rajapaksha ', '1236', '1236'),
(80, 'uqwe', '369', '369'),
(456, 'nadee', '123@#$', '123@#$'),
(800000, 'uqwe', '369', '369');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `assistant_table`
--
ALTER TABLE `assistant_table`
  ADD PRIMARY KEY (`Asi_ID`);

--
-- Indexes for table `department_table`
--
ALTER TABLE `department_table`
  ADD PRIMARY KEY (`d_ID`);

--
-- Indexes for table `employee_table`
--
ALTER TABLE `employee_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `manager_table`
--
ALTER TABLE `manager_table`
  ADD PRIMARY KEY (`manager_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
