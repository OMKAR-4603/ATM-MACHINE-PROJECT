-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2024 at 08:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `ACCOUNT_NO` int(11) DEFAULT NULL,
  `TRANSACTION_ID` int(11) NOT NULL,
  `DEPOSITS` int(11) DEFAULT NULL,
  `WITHDRAWLS` int(11) DEFAULT NULL,
  `CURRENT_BALANCE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`ACCOUNT_NO`, `TRANSACTION_ID`, `DEPOSITS`, `WITHDRAWLS`, `CURRENT_BALANCE`) VALUES
(202411401, 101, 0, 0, 0),
(2024111402, 102, 100000, 60000, 40000),
(2024111403, 103, 0, 0, 0),
(202411404, 104, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) DEFAULT NULL,
  `NAME` varchar(30) NOT NULL,
  `ACCOUNT_NO` int(11) NOT NULL,
  `PASSWORD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `NAME`, `ACCOUNT_NO`, `PASSWORD`) VALUES
(101, 'NIKHIL SHELAR', 202411401, 1234),
(104, 'PAVAN PATHAK', 202411404, 2134),
(102, 'OMKAR DHONDE', 2024111402, 4321),
(103, 'RUSHI SHINDE', 2024111403, 1243);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TRANSACTION_ID`),
  ADD KEY `ACCOUNT_NO` (`ACCOUNT_NO`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ACCOUNT_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`ACCOUNT_NO`) REFERENCES `user` (`ACCOUNT_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
