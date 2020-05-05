-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2020 at 09:49 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bat_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `batt_data`
--

CREATE TABLE `batt_data` (
  `primary_key` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `batt_id` int(11) NOT NULL,
  `voltage` int(11) NOT NULL,
  `current` int(11) NOT NULL,
  `temperature` int(11) NOT NULL,
  `SOH` int(11) NOT NULL,
  `SOC` int(11) NOT NULL,
  `bms_rtc` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batt_identity`
--

CREATE TABLE `batt_identity` (
  `batt_id` int(11) NOT NULL,
  `manufacturer` int(11) NOT NULL,
  `max_voltage` int(11) NOT NULL,
  `min_voltage` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `date_of_mfg` int(11) NOT NULL COMMENT 'date of manufacturing'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batt_data`
--
ALTER TABLE `batt_data`
  ADD PRIMARY KEY (`primary_key`);

--
-- Indexes for table `batt_identity`
--
ALTER TABLE `batt_identity`
  ADD PRIMARY KEY (`batt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batt_data`
--
ALTER TABLE `batt_data`
  MODIFY `primary_key` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
