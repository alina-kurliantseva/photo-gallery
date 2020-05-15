-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2019 at 07:25 PM
-- Server version: 5.6.35
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photo_gallery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author`, `body`) VALUES
(7, 82, 'Alina Kurliantseva', 'So Beautiful!');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `alternate_text` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `description`, `file_name`, `alternate_text`, `type`, `size`) VALUES
(82, 'flowers', '', '', 'commercial-photography-8-sm.jpg', '', 'image/jpeg', 92989),
(83, 'flowers', '', '', 'commercial-photography-6-sm.jpg', '', 'image/jpeg', 183353),
(84, 'flowers', '', '', 'commercial-photography-4-sm.jpg', '', 'image/jpeg', 123922),
(85, 'flowers', '', '', 'commercial-photography-7-sm.jpg', '', 'image/jpeg', 112650),
(86, 'flowers', '', '', 'event-photography-4-sm.jpg', '', 'image/jpeg', 165235),
(87, '', '', '', 'event-photography-9-sm.jpg', '', 'image/jpeg', 88723),
(88, '', '', '', 'event-photography-8-sm.jpg', '', 'image/jpeg', 115933),
(89, '', '', '', 'event-photography-5-sm.jpg', '', 'image/jpeg', 180086),
(90, '', '', '', 'event-photography-6-sm.jpg', '', 'image/jpeg', 108006),
(91, '', '', '', 'event-photography-7-sm.jpg', '', 'image/jpeg', 118866),
(92, '', '', '', 'event-photography-10-sm.jpg', '', 'image/jpeg', 111549),
(93, '', '', '', 'event-photography-11-sm.jpg', '', 'image/jpeg', 97665),
(94, '', '', '', 'event-photography-12-sm.jpg', '', 'image/jpeg', 80988),
(95, '', '', '', 'commercial-photography-1-sm.jpg', '', 'image/jpeg', 129134),
(96, '', '', '', 'commercial-photography-2-sm.jpg', '', 'image/jpeg', 116874),
(97, '', '', '', 'commercial-photography-3-sm.jpg', '', 'image/jpeg', 134016),
(98, '', '', '', 'commercial-photography-5-sm.jpg', '', 'image/jpeg', 306042),
(99, '', '', '', 'commercial-photography-9-sm.jpg', '', 'image/jpeg', 87875),
(100, '', '', '', 'commercial-photography-10-sm.jpg', '', 'image/jpeg', 554989),
(101, '', '', '', 'commercial-photography-11-sm.jpg', '', 'image/jpeg', 552570),
(102, '', '', '', 'commercial-photography-12-sm.jpg', '', 'image/jpeg', 197892),
(103, '', '', '', 'event-photography-1-sm.jpg', '', 'image/jpeg', 204203),
(104, '', '', '', 'event-photography-2-sm.jpg', '', 'image/jpeg', 225579),
(105, '', '', '', 'event-photography-3-sm.jpg', '', 'image/jpeg', 187627);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(22, 'alina_kurliantseva', '2505', 'ALINA', 'KURLIANTSEVA', 'commercial-photography-4-sm.jpg'),
(23, 'alina_yildir', '2505', 'ALINA', 'YILDIR', 'commercial-photography-7-sm.jpg'),
(24, 'tanil_yildir', '2505', 'TANIL', 'YILDIR', 'commercial-photography-6-sm.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
