-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 07:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('kiranadmin', 'kiranadmin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(1, 1, 'Manoj', 'kumar', 'Male', 'manojkumar@gmail.com', '8825743906', 'Sayee', 400, '2024-07-01', '10:00:00', 1, 1),
(2, 2, 'Janu', 'S', 'Female', 'janu@gmail.com', '8870292116', 'Kiran', 500, '2024-07-02', '08:00:00', 1, 1),
(3, 3, 'Linga', 'pravin', 'Male', 'lingapravin@gmail.com', '7826850110', 'Manoj', 700, '2024-07-03', '12:00:00', 1, 1),
(4, 4, 'Lokesh', 'raj', 'Male', 'lokeshraj@gmail.com', '9342416637', 'Akash', 450, '2024-07-04', '14:00:00', 1, 1),
(5, 5, 'Magesh', 'K', 'Male', 'magesh@gmail.com', '7010871407', 'Manoj', 600, '2024-07-05', '16:00:00', 1, 1),
(6, 6, 'Yathun', 'thrishna', 'Male', 'yathun@gmail.com', '9080104982', 'Manoj', 700, '2024-07-06', '16:00:00', 1, 1),
(7, 7, 'Aishwarya', 'K', 'Female', 'aishwarya@gmail.com', '8870292116', 'Kiran', 500, '2024-07-02', '10:00:00', 1, 1),
(8, 8, 'Kumara', 'vadivel', 'Male', 'kumaravadivel@gmail.com', '7395908735', 'Sayee', 400, '2024-07-08', '10:00:00', 1, 1),
(9, 9, 'Naveen', 'bharathi', 'Male', 'naveenbharathi@gmail.com', '7092222770', 'Manoj', 700, '2024-07-05', '10:00:00', 1, 1),
(10, 10, 'Naveen', 'bharathi', 'Male', 'naveenbharathi@gmail.com', '7092222770', 'Janu', 500, '2024-07-07', '10:00:00', 1, 1),
(13, 12, 'Sachin', 'M', 'Male', 'sachin18@gmail.com', '712345678', 'Kiran', 500, '2024-06-30', '12:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Abi', 'abi@gmail.com', '6324785161', 'Hey Admin'),
('Afiya', 'afiya@gmail.com', '6582165875', 'I got well very soon. Thank you doctors.\r\n'),
('Yuva', 'yuva@gmail.com', '6874265258', 'I love the Hospitality');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Kiran', 'kiran123', 'kiran301103@gmail.com', 'Cardiologist', 500),
('Sayee', 'sayee123', 'sayee@gmail.com', 'General', 400),
('Akash', 'akash123', 'akash@gmail.com', 'General', 450),
('Manoj', 'manoj123', 'manoj@gmail.com', 'Pediatrician', 700),
('Santhiya', 'santhiya123', 'santhiya@gmail.com', 'Pediatrician', 800),
('Janu', 'janu123', 'janu123@gmail.com', 'Cardiologist', 500),
('Joyce', 'joyce123', 'joyce@gmail.com', 'Neurologist', 600),
('Kavitha', 'kavitha123', 'kavitha@gmail.com', 'Neurologist', 900);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Manoj', 'kumar', 'Male', 'manojkumar@gmail.com', '8825743906', 'manoj123', 'manoj123'),
(2, 'Janu', 'S', 'Female', 'janu@gmail.com', '8870292116', 'janu123', 'janu123'),
(3, 'Linga', 'pravin', 'Male', 'lingapravin@gmail.com', '7826850110', 'pravin123', 'pravin123'),
(4, 'Lokesh', 'raj', 'Male', 'lokeshraj@gmail.com', '9342416637', 'lokesh123', 'lokesh123'),
(5, 'Magesh', 'K', 'Male', 'magesh@gmail.com', '7010871407', 'magesh123', 'magesh123'),
(6, 'Yathun', 'thrishna', 'Male', 'yathun@gmail.com', '9080104982', 'yathun123', 'yathun123'),
(7, 'Aishwarya', 'K', 'Female', 'aishwarya@gmail.com', '8870292116', 'aishwarya123', 'aishwarya123'),
(8, 'Kumara', 'vadivel', 'Male', 'kumaravadivel@gmail.com', '7395908735', 'kumar123', 'kumar123'),
(9, 'Naveen', 'bharathi', 'Male', 'naveenbharathi@gmail.com', '7092222770', 'naveen123', 'naveen123'),
(10, 'Sara', 'K', 'Female', 'sara@gmail.com', '8870292116', 'sara123', 'sara123'),
(13, 'Sachin', 'M', 'Male', 'sachin18@gmail.com', '712345678', 'Sachin123', 'Sachin123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Kiran', 7, 8, 'Aishwarya', 'K', '2024-07-02', '10:00:00', 'Low haemoglobin', 'Nothing', 'Ferro-Sequels- 0 0 1 - 30\r\nVitameg gold syrup\r\nEat fruits and take the tablets regularly and dring the syrup 5ml in morning and night daily'),
('Sayee', 1, 1, 'Manoj', 'kumar', '2024-07-01', '10:00:00', 'Fever', 'Nothing', 'Paracetamol 100mg - 1 0 1'),
('Akash', 4, 4, 'Lokesh', 'raj', '2024-07-04', '14:00:00', ' Cough and cold', 'Nothing', 'Citracin- 0 0 1\r\nCough syrup'),
('Kiran', 13, 12, 'Sachin', 'M', '2024-06-30', '12:00:00', 'fever', 'nothing', 'paracetamol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
