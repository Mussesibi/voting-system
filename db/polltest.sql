-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 11:04 AM
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
-- Database: `polltest.sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginusers`
--

CREATE TABLE `loginusers` (
  `id` int(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rank` varchar(80) NOT NULL DEFAULT 'voter',
  `status` varchar(10) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `loginusers`
--

INSERT INTO `loginusers` (`id`, `username`, `password`, `rank`, `status`) VALUES
(47, 'helllo', 'b373c043b854b0ebb97afe9b0ba47059', 'voter', 'ACTIVE'),
(46, 'jaha', 'e3df9353ab12391b79865f25a0d7068e', 'voter', 'ACTIVE'),
(45, 'action', '1ace9555f0aafb4fe1e75309e8f79e4d', 'voter', 'ACTIVE'),
(44, 'arjun', '451d3eb1573c7ebb70c08dfee9766509', 'voter', 'ACTIVE'),
(43, 'niku19', 'ac61ebbe84c06debaa78c0a832330164', 'voter', 'ACTIVE'),
(42, 'ejjhed', 'b3f70c0d1b269668e937741a5d5797ab', 'voter', 'ACTIVE'),
(41, 'Anirban', '9a7108cfaa7f51efb5fcda9e9d4b7a90', 'voter', 'ACTIVE'),
(40, 'dnddd', 'b5d165334b465a7fc42310750430b3f9', 'voter', 'ACTIVE'),
(48, 'x.lopa', '827ccb0eea8a706c4c34a16891f84e7b', 'voter', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `prisdents`
--

CREATE TABLE `prisdents` (
  `lan_id` int(100) NOT NULL,
  `fullname` varchar(10) NOT NULL,
  `about` varchar(255) NOT NULL,
  `votecount` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prisdents`
--

INSERT INTO `prisdents` (`lan_id`, `fullname`, `about`, `votecount`) VALUES
(1, 'John', '65Y', 5),
(2, 'Obama', '50Y', 7),
(3, 'Eignel', '56Y', 21),
(4, 'Richard', '43Y', 17),
(5, 'Namard', '42Y', 4);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'NOTVOTED',
  `voted` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`firstname`, `lastname`, `username`, `status`, `voted`) VALUES
('sdjdjdj', 'djdjddjj', 'helllo', 'VOTED', 'python'),
('Anirban', 'oodoododo', 'jaha', 'NOTVOTED', NULL),
('Anirban', 'Dutta', 'action', 'VOTED', 'php'),
('Anirban', 'Dutta', 'arjun', 'NOTVOTED', NULL),
('janemaan', 'lohiid', 'niku19', 'VOTED', 'c++'),
('asdhk', 'ddddnd', 'ejjhed', 'NOTVOTED', NULL),
('Anirban', 'Dutta', 'Anirban', 'VOTED', 'java'),
('ndndnd', 'dhbhdd', 'dnddd', 'NOTVOTED', NULL),
('Salem', 'Aljaberi', 'x.lopa', 'VOTED', 'John');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginusers`
--
ALTER TABLE `loginusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `prisdents`
--
ALTER TABLE `prisdents`
  ADD PRIMARY KEY (`lan_id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginusers`
--
ALTER TABLE `loginusers`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `prisdents`
--
ALTER TABLE `prisdents`
  MODIFY `lan_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
