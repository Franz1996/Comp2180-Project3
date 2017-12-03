-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2016 at 01:46 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cheapomail`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(10) UNSIGNED NOT NULL,
  `recipient_ids` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `date_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `recipient_ids`, `sender_id`, `subject`, `body`, `date_sent`) VALUES
(1, 2, 1, 'COMP2190: Project 3', 'The project has been posted', '2017-11-24 22:16:00'),
(2, 1, 3, 'How is life?', 'School is ruining it', '2017-11-20 14:30:00'),
(3, 4, 2, 'Wanna go to the beach?', 'nope...not going to dutty hellshire', '2017-11-18 15:47:00'),
(4, 2, 1, 'INFO2180: Project 3 SQL Code Draft', 'How does this look?', '2017-11-24 11:54:00'),
(5, 1, 4, 'We rollin out later', 'Where you going?', '2017-11-21 16:13:00'),


-- --------------------------------------------------------

--
-- Table structure for table `message_read`
--

CREATE TABLE `message_read` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_ids` int(10) UNSIGNED NOT NULL,
  `reader_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(200) NOT NULL,
  `Password_digest` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--
--to markers
--password for Franz Arnold=password1
--password for Mariah Carey=password2
--password for Jordan Dear=password3
--password for Jamal Dixon=password4
--
--

INSERT INTO `users` (`ID`, `firstname`, `lastname`, `username`, `Password_digest`, `salt`) VALUES
(1, 'Franz', 'Arnold', 'franzarnold@cheapomail.com', '498c01e3746add255c55c978bf3c3749', '500670543'),
(2, 'Mariah', 'Carey', 'mariahcarey@cheapomail.com', '187f1b0c67968e620df3b8563313b2e0', '1562199594'),
(3, 'Jordan', 'Deer', 'jordandeer@cheapomail.com', '160cffeb071855fc71d18b2b5263417a', '1877903583'),
(4, 'Jamal', 'Dixon', 'jamaldixon@cheapomail.com', 'acdeb6bd56c6731fc8ed7f7a6e9fe58b', '1421823913');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message_read`
--
ALTER TABLE `message_read`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `message_read`
--
ALTER TABLE `message_read`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
