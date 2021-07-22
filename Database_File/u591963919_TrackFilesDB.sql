-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2021 at 10:07 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u591963919_TrackFilesDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `general_announcement`
--

CREATE TABLE `general_announcement` (
  `id` int(11) NOT NULL,
  `message_title` varchar(255) NOT NULL,
  `message_body` mediumtext NOT NULL,
  `sender` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_announcement`
--

INSERT INTO `general_announcement` (`id`, `message_title`, `message_body`, `sender`, `date`) VALUES
(1, 'Easter Break !!', 'There would be an Easter break on 29th April 2021', 'Peter', '2021-04-13 01:27:06'),
(2, 'Christmas  Break', 'There would be a general christmas break on 20th December, this year', 'priscilla', '2021-05-08 22:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `public_messages`
--

CREATE TABLE `public_messages` (
  `Msg_ID` int(11) NOT NULL,
  `Sender` tinytext NOT NULL,
  `Message` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `public_messages`
--

INSERT INTO `public_messages` (`Msg_ID`, `Sender`, `Message`, `date`) VALUES
(1, 'Alex', 'Alex is here', '2021-04-13 01:26:02'),
(2, 'Peter', 'Hellow All', '2021-05-04 00:25:39'),
(3, 'priscilla', 'priscilla is also here', '2017-05-05 22:37:05'),
(4, 'priscilla', 'Hellow All', '2021-05-08 22:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_uploads`
--

CREATE TABLE `tbl_general_uploads` (
  `id` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_general_uploads`
--

INSERT INTO `tbl_general_uploads` (`id`, `file_name`, `file_type`, `file_size`, `file_path`, `date`) VALUES
(1, '1.HowtoImproveBathroomVentilationProblems.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '12280', 'uploads/1.HowtoImproveBathroomVentilationProblems.docx', '2021-05-31 19:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`ID`, `first_name`, `last_name`, `status`, `Time`) VALUES
(1, 'alex', 'Asciencio', 'online', '2021-05-31 15:10:30'),
(2, 'Track1234', 'Admin', 'online', '2021-06-02 07:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `users_security_keys`
--

CREATE TABLE `users_security_keys` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `users_fname` varchar(255) NOT NULL,
  `users_lname` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'not_used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_security_keys`
--

INSERT INTO `users_security_keys` (`id`, `password`, `users_fname`, `users_lname`, `status`) VALUES
(1, '0688D', 'Alex', 'Asciencio', 'used'),
(3, '0661', 'priscilla', 'appah', 'used');

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `Users_ID` int(11) NOT NULL,
  `user_fname` varchar(255) NOT NULL,
  `user_lname` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `Profile_Picture` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`Users_ID`, `user_fname`, `user_lname`, `Password`, `department`, `position`, `Profile_Picture`, `date`) VALUES
(1, 'Track1234', 'Admin', 'Track@1234', 'Administrator', 'Administrator', 'IMG_100887.jpg', '2021-04-13 01:24:56'),
(4, 'Alex', 'Asciencio', '1234', '', '', '', '2021-05-31 15:10:02'),
(5, 'Daniel', 'Memba', '1234', '', '', '', '2021-05-31 21:28:29');



--
-- Table structure for table `uploaded_files`
--

CREATE TABLE `uploaded_files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `new_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uploaded_files`
--

INSERT INTO `uploaded_files` (`id`, `name`, `new_name`) VALUES
(1, 'text-animation.zip', '2711201606481769text-animation.zip'),
(2, 'TL.png', '2711201606481879TL.png'),
(3, 'TL.png', '2711201606482588TL.png'),
(4, 'TL.png', '2711201606482604TL.png'),
(5, 'TL.png', '2711201606482636TL.png'),
(6, 'text-animation.zip', '2711201606483139text-animation.zip');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `general_announcement`
--
ALTER TABLE `general_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_messages`
--
ALTER TABLE `public_messages`
  ADD PRIMARY KEY (`Msg_ID`);

--
-- Indexes for table `tbl_general_uploads`
--
ALTER TABLE `tbl_general_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users_security_keys`
--
ALTER TABLE `users_security_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`Users_ID`);

  --
-- Indexes for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `general_announcement`
--
ALTER TABLE `general_announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `public_messages`
--
ALTER TABLE `public_messages`
  MODIFY `Msg_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_general_uploads`
--
ALTER TABLE `tbl_general_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_security_keys`
--
ALTER TABLE `users_security_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `Users_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

--
-- AUTO_INCREMENT for table `uploaded_files`
--
ALTER TABLE `uploaded_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;