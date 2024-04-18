-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 03:54 AM
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
-- Database: `vaccination_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospital_details`
--

CREATE TABLE `hospital_details` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `hospital_username` varchar(255) DEFAULT NULL,
  `hospital_password` varchar(255) DEFAULT NULL,
  `hospital_email` varchar(255) DEFAULT NULL,
  `hospital_contact` varchar(255) DEFAULT NULL,
  `hospital_address` varchar(255) DEFAULT NULL,
  `hospital_location` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'Reject'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital_details`
--

INSERT INTO `hospital_details` (`hospital_id`, `hospital_name`, `hospital_username`, `hospital_password`, `hospital_email`, `hospital_contact`, `hospital_address`, `hospital_location`, `status`) VALUES
(1, 'Jinnah Hospital', '@hospitaljinnah', '1234', 'hospitaljinnah@gmail.com', '2111111233', 'Rafiqui, Sarwar Shaheed Rd, Karachi Cantonment, Karachi, Karachi City,  75510', 'Karachi', 'Approve'),
(2, 'Liaquat National Hospital', '@hospitalliaquat', '1234', 'hospitalliaquat@gmail.com', '031111111111', 'National Stadium Rd, Liaquat National Hospital, Karachi, Karachi City, Sindh 74800', 'Karachi', 'Approve'),
(3, 'Dow Hospital', '@hospitaldow', '1234', 'dowhospital@gmail.com', '121444444444', ' V5PQ+H4M, Saudabad Shadman Town Kala Board, Karachi, Karachi City, Sindh', 'Karachi', 'Approve'),
(4, 'Ziauddin Hospital', '@hospitalziauddin', '1234', 'ziauddinhospital@gmail.com', '03666666666', ' Allama Rasheed Turabi Rd, Wahid Colony, Karachi, Karachi City, Sindh 74700', 'Karachi', 'Approve'),
(5, 'Indus Hospital', '@hospitalindus', '1234', 'indushospital@gmail.com', '037777777777', 'Plot C-76, Sector 31/5, Opposite، Crossing, Darussalam Society Sector 39 Korangi, Karachi, Karachi City, Sindh', 'Karachi', 'Reject'),
(14, 'abc', 'abc101', 'abc123', 'abc@gmail.com', '0303284387', 'abc karachi', 'Karachi', 'Reject'),
(15, 'XYZ', 'XYZ101', 'xyz123', 'XYZ@gmail.com', '0123123123', 'xyz karachi', 'karachi', 'Reject');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospital_details`
--
ALTER TABLE `hospital_details`
  ADD PRIMARY KEY (`hospital_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hospital_details`
--
ALTER TABLE `hospital_details`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
