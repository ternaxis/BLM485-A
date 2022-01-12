-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 06:24 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_manager'
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lists`
--

CREATE TABLE `tbl_lists` (
  `list_id` int(10) UNSIGNED NOT NULL,
  `list_name` varchar(50) NOT NULL,
  `list_description` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lists`
--

INSERT INTO `tbl_lists` (`list_id`, `list_name`, `list_description`) VALUES
(1, 'To Do', '                         All the tasks that must be done soon.                     '),
(2, 'Doing', '                            All the Tasks that are currently being done.                      '),
(3, 'Done', 'All the Tasks that are completed                       '),
(7, 'Shopping', 'Tasks for Shopping');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tasks`
--

CREATE TABLE `tbl_tasks` (
  `task_id` int(10) UNSIGNED NOT NULL,
  `task_name` varchar(150) NOT NULL,
  `task_description` text NOT NULL,
  `list_id` int(11) NOT NULL,
  `priority` varchar(10) NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tasks`
--

INSERT INTO `tbl_tasks` (`task_id`, `task_name`, `task_description`, `list_id`, `priority`, `deadline`) VALUES
(2, 'Icon tasarımı', '                   Acil                        ', 1, 'High', '2022-01-03'),
(3, 'Alışveriş listesi', 'Alanacaklar                      ', 3, 'Medium', '2022-01-12'),
(4, 'Web sitesi tasarla', 'Ön sayfa tasarımı', 1, 'Medium', '2022-01-11'),
(5, 'Application Development', 'All the tasks', 1, 'Low', '2022-01-03'),
(6, 'Ev temizliği', 'pencereler, banyolar...', 2, 'Medium', '2022-01-19'),
(7, 'Oyun geliştirme kursuna başla', 'udemyden dersleri izle', 3, 'Low', '2022-01-26'),
(8, 'kulaklık al', 'Logitech g433', 1, 'Medium', '2022-01-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_lists`
--
ALTER TABLE `tbl_lists`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `tbl_tasks`
--
ALTER TABLE `tbl_tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_lists`
--
ALTER TABLE `tbl_lists`
  MODIFY `list_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_tasks`
--
ALTER TABLE `tbl_tasks`
  MODIFY `task_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
