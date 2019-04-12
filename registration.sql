-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2019 at 07:22 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookentries`
--

CREATE TABLE `bookentries` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `Book_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookentries`
--

INSERT INTO `bookentries` (`id`, `image`, `subject`, `author`, `Book_Name`) VALUES
(25, 'balaguru.jpg', 'Computer Science', 'BalaguruSwamy', 'Programming in Ansi C'),
(27, 'javabook.jpg', 'Computer Science', 'Herbert Schildt', 'The Complete Reference Java '),
(28, 'digitalelectronics.jpg', 'Electronics', 'Anil. K. Maini', 'Digital Electronics'),
(29, 'advancedelectronicpracticals.jpg', 'Electronics', 'A B Bhattacharya', 'Advanced Electronics practicals'),
(30, 'circuitsandsystems.jpg', 'Electronics', 'Owen Bishop', 'Electronics Circuits and Systems'),
(31, 'basicmechanicalengineering.jpg', 'Mechanical', 'S. Chand', 'Basic Mechanical Engineering'),
(32, 'mechanicalengneeringdrawing.jpg', 'Mechanical', 'Sankar Prasad Dey', 'Mechanical Engineering Drawing'),
(33, 'mechanicalengineeringscience.jpg', 'Mechanical', 'K. R. GopalaKrishna', 'Mechanical Engineering Science'),
(34, 'machinedesign.jpg', 'Mechanical', 'Robert L Norton', 'Machine Design'),
(35, 'basiccivilengineering.jpg', 'Civil', 'S. Chand', 'Basics of Civil Engineering'),
(36, 'handbookofcivilengineering.jpg', 'Civil', 'Tyler.G.Hicks', 'Handbook of Civil Engineering'),
(37, 'civilengineeringdrawing.jpg', 'Civil', 'V.Sikka', 'Civil Engineering Drawing'),
(38, 'objectivesofcivilengineering.jpg', 'Civil', 'V.S.Murty', 'Objectives of Civil Engineering'),
(39, 'radiofrequency.jpg', 'Electronics', 'Jon B Hagen', 'Radio Frequency'),
(40, 'sumita.jpg', 'Computer Science', 'Sumita Arora', 'Computer '),
(41, 'androiddev.jpg', 'Computer Science', 'Mark L', 'Android Development'),
(43, 'cambridge.jpg', 'Computer Science', 'balaguruswamy', 'random book name');

-- --------------------------------------------------------

--
-- Table structure for table `libreg`
--

CREATE TABLE `libreg` (
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `libreg`
--

INSERT INTO `libreg` (`Username`, `Password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3'),
('rogink13', '1b246b7b75854fa30632a09265ed6ca8'),
('rogue', '3605c251087b88216c9bca890e07ad9c'),
('sample', '5e8ff9bf55ba3508199d22e984129be6'),
('u16co080', '771337e726dae420f0b28449e39e6e5a');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `Book_Name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `Username`, `image`, `subject`, `author`, `Book_Name`, `date`) VALUES
(2, 'u16co080', 'balaguru.jpg', 'Computer Science', 'BalaguruSwamy', 'Programming in Ansi C', '2018-11-19 11:33:05'),
(3, 'u16co080', 'javabook.jpg', 'Computer Science', 'Herbert Schildt', 'The Complete Reference Java ', '2018-11-19 11:33:07'),
(4, 'u16co080', 'sumita.jpg', 'Computer Science', 'Sumita Arora', 'Computer ', '2018-11-19 11:33:09'),
(5, 'u16co080', 'androiddev.jpg', 'Computer Science', 'Mark L', 'Android Development', '2018-11-19 11:33:10'),
(6, 'rogue', 'balaguru.jpg', 'Computer Science', 'BalaguruSwamy', 'Programming in Ansi C', '2019-03-28 13:29:21'),
(7, 'rogink13', 'balaguru.jpg', 'Computer Science', 'BalaguruSwamy', 'Programming in Ansi C', '2019-03-28 13:29:23'),
(8, 'rogink13', 'javabook.jpg', 'Computer Science', 'Herbert Schildt', 'The Complete Reference Java ', '2019-03-28 13:29:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookentries`
--
ALTER TABLE `bookentries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `libreg`
--
ALTER TABLE `libreg`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookentries`
--
ALTER TABLE `bookentries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
