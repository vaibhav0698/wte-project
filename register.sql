-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2018 at 08:21 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `message` varchar(200) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`username`, `email`, `contactno`, `message`, `id`) VALUES
('vaibhav', 'vaibhavpp98@gmail.com', '9820519356', 'This website is good for kid\'s learning!', 1),
('anoop', 'anoop@gmail.com', '9988776655', 'Good design!', 2),
('jilow', 'jilowj@gmail.com', '9234567892', 'Good website', 3),
('anoop', 'anoop@gmail.com', '9687451221', 'its a really helpful website.', 4),
('vaibhav', 'vaibhavpp98@gmail.com', '9820519356', 'good website', 5),
('shyam', 'shyam@gmail.com', '9876543210', 'Awesome site', 6),
('vaibhav', 'vaibhavpp98@gmail.com', '9820519356', 'Good job!', 7),
('vaibhav', 'v@gmail.com', '9820519356', 'good website', 8);

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `username` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`username`, `email`, `contactno`, `password`, `id`) VALUES
('vaibhav ', 'vaibhavpp@gmail.com', '9820519356', 'asdfg', 1),
('abc', 'a@shgs.co', '9820519356', 'aaaaa', 2),
('anoop', 'anoop@gmail.com', '9876543210', 'asdfg', 3),
('vaibhav patil', 'vaibhavpp98@gmail.com', '9820519356', 'asdfg', 4),
('rajat', 'rajat@gmail.com', '9876541237', 'asdfg', 5),
('abc', 'abc@gmail.com', '9876543210', 'asdfg', 6),
('viraj', 'viraj@gmail.com', '9820519356', 'asdfg', 7),
('shyam', 'shyam@gmail.com', '9820519356', '12345', 8),
('asdfg', 'a@g.com', '1223456455', 'asdfg', 9),
('vaibhavp', 'vaibhav@g', '98205193', 'admin', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
