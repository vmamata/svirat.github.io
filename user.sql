-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2019 at 04:48 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `agree`
--

CREATE TABLE `agree` (
  `id` int(11) NOT NULL,
  `user_handle` varchar(30) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_handle` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friend`
--

CREATE TABLE `friend` (
  `id` int(11) NOT NULL,
  `sender_handle` varchar(30) NOT NULL,
  `receiver_handle` varchar(30) NOT NULL,
  `accepted` varchar(1) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_handle` varchar(30) NOT NULL,
  `receiver_handle` varchar(30) NOT NULL,
  `time` datetime NOT NULL,
  `body` text NOT NULL,
  `viewed` varchar(1) NOT NULL,
  `opened_time` datetime NOT NULL,
  `opened` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender_handle`, `receiver_handle`, `time`, `body`, `viewed`, `opened_time`, `opened`) VALUES
(54, 'bot', 'viratsingh', '2019-10-22 19:43:35', 'Hello! Welcome to the site! :)', 'y', '0000-00-00 00:00:00', '0'),
(55, 'bot', 'visiter', '2019-10-22 19:44:49', 'Hello! Welcome to the site! :)', 'n', '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `receiver_handle` varchar(30) NOT NULL,
  `sender_handle` varchar(30) NOT NULL,
  `info` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `viewed` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_handle` varchar(30) NOT NULL,
  `text` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `handle` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `sign_up_time` datetime NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `deactivated` varchar(1) NOT NULL,
  `latest_login_time` datetime DEFAULT NULL,
  `latest_logout_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `handle`, `first_name`, `last_name`, `email`, `password`, `sign_up_time`, `profile_pic`, `deactivated`, `latest_login_time`, `latest_logout_time`) VALUES
(172, 'bot', 'Media', 'Bot', 'bot@bot.com', '961289b696ae03b4987bb4602020c0ad', '2019-10-22 19:35:00', './assets/img/default_profile_pic.png', 'n', '2019-10-22 19:35:00', '0000-00-00 00:00:00'),
(173, 'viratsingh', 'Virat', 'Singh', 'svirat@gmail.com', '961289b696ae03b4987bb4602020c0ad', '2019-10-22 19:43:35', './assets/img/default_profile_pic.png', 'n', '2019-10-22 19:43:35', '0000-00-00 00:00:00'),
(174, 'visiter', 'New', 'Visiter', 'visit@visit.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-10-22 19:44:49', './assets/img/default_profile_pic.png', 'n', '2019-10-22 19:44:49', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agree`
--
ALTER TABLE `agree`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_handle` (`user_handle`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_handle` (`user_handle`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_handle_1` (`sender_handle`),
  ADD KEY `user_handle_2` (`receiver_handle`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userhandle` (`receiver_handle`),
  ADD KEY `userhandlec` (`sender_handle`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userhandle1` (`receiver_handle`),
  ADD KEY `userhandle2` (`sender_handle`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_handle` (`user_handle`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `USERNAME` (`handle`),
  ADD UNIQUE KEY `EMAIL` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agree`
--
ALTER TABLE `agree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `friend`
--
ALTER TABLE `friend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agree`
--
ALTER TABLE `agree`
  ADD CONSTRAINT `agree_ibfk_1` FOREIGN KEY (`user_handle`) REFERENCES `user` (`handle`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `agree_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_handle`) REFERENCES `user` (`handle`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `friend`
--
ALTER TABLE `friend`
  ADD CONSTRAINT `friend_ibfk_1` FOREIGN KEY (`sender_handle`) REFERENCES `user` (`handle`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `friend_ibfk_2` FOREIGN KEY (`receiver_handle`) REFERENCES `user` (`handle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `userhandle` FOREIGN KEY (`receiver_handle`) REFERENCES `user` (`handle`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userhandlec` FOREIGN KEY (`sender_handle`) REFERENCES `user` (`handle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `userhandle1` FOREIGN KEY (`receiver_handle`) REFERENCES `user` (`handle`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userhandle2` FOREIGN KEY (`sender_handle`) REFERENCES `user` (`handle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_handle`) REFERENCES `user` (`handle`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
