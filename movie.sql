-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 06:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied_actor`
--

CREATE TABLE `applied_actor` (
  `jId` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `movie` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applied_actor`
--

INSERT INTO `applied_actor` (`jId`, `user`, `movie`, `image`, `status`) VALUES
(18, 1, 16, 'love_story_adult.jpg', 'pending..'),
(19, 1, 16, 'comedy_1.jpg', 'pending..');

-- --------------------------------------------------------

--
-- Table structure for table `movietb`
--

CREATE TABLE `movietb` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(110) NOT NULL,
  `category` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `char_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movietb`
--

INSERT INTO `movietb` (`movie_id`, `movie_name`, `category`, `image`, `char_desc`) VALUES
(9, 'a day with sun', 8, 'pexels-los-muertos-crew-8459411.jpg', 'four men and two women with 178 height and 67 weight no experience'),
(14, 'data', 5, 'action_5.jpg', 'action'),
(15, 'nightmare', 4, 'horor.jpg', 'the nightmare movie'),
(16, 'love ain\'t money', 7, 'love_story_kids.jpg', 'some romance ');

-- --------------------------------------------------------

--
-- Table structure for table `movie_category`
--

CREATE TABLE `movie_category` (
  `catgryId` int(11) NOT NULL,
  `category_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_category`
--

INSERT INTO `movie_category` (`catgryId`, `category_name`) VALUES
(3, 'Love story'),
(4, 'Horor'),
(5, 'action'),
(6, 'drama'),
(7, 'romance'),
(8, 'comedy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `province` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fname`, `lname`, `email`, `phone`, `height`, `weight`, `gender`, `province`, `experience`, `password`, `status`, `role`) VALUES
(1, 'keke', 'clodia', 'keke@gmail.com', '0789832321', 179, 70, 'female', 'kigali', 'Currently playing', '123', 'Aproved', 2),
(4, '', '', 'admin@gmail.com', '', 0, 0, '', '', '', 'admin', 'admin', 1),
(7, 'Nduwayo', 'Aimable', 'nduwayoaima@gmail.com', '0780694509', 180, 30, 'male', 'kigali', 'Currently playing', 'nana', 'Aproved', 2),
(8, 'damour', 'emmanuel', 'damour@gmail.com', '0787878909', 180, 70, 'male', 'kigali', 'never played', '123', 'rejected', 2),
(9, 'damour', 'emmanuel', 'damour@gmail.com', '0787878909', 180, 70, 'male', 'kigali', 'never played', '123', 'rejected', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied_actor`
--
ALTER TABLE `applied_actor`
  ADD PRIMARY KEY (`jId`);

--
-- Indexes for table `movietb`
--
ALTER TABLE `movietb`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `movie_category`
--
ALTER TABLE `movie_category`
  ADD PRIMARY KEY (`catgryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied_actor`
--
ALTER TABLE `applied_actor`
  MODIFY `jId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `movietb`
--
ALTER TABLE `movietb`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `movie_category`
--
ALTER TABLE `movie_category`
  MODIFY `catgryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movietb`
--
ALTER TABLE `movietb`
  ADD CONSTRAINT `movietb_ibfk_1` FOREIGN KEY (`category`) REFERENCES `movie_category` (`catgryId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
