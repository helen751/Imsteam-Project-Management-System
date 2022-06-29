-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 31.11.39.61:3306
-- Creato il: Giu 28, 2022 alle 10:08
-- Versione del server: 5.7.33-36-log
-- Versione PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Sql1579061_1`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `date_registered` date DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `account`
--

INSERT INTO `account` (`id`, `date_registered`, `firstname`, `lastname`, `email`, `username`, `password`, `status`, `role_id`) VALUES
(6, '2021-09-20', 'admin', 'admin', 'postmaster@imsteam.eu', 'admin@123', '484e065bd84d0c9312614534fdc1f73d', 'active', 1),
(57, '2022-06-07', 'Mariagiulia', 'Telesio', 'm.telesio@imsmanagement.eu', 'm.telesio', '6c1df24e7faa37d3a3c1ab4841d5c622', 'active', 2),
(58, '2022-06-07', 'Davide', 'Impero', 'info@imsmanagement.eu', 'd.impero', '6c1df24e7faa37d3a3c1ab4841d5c622', 'active', 4),
(59, '2022-06-07', 'Caterina', 'Prada', 'c.prada@imsmanagement.eu', 'c.prada.client', '6c1df24e7faa37d3a3c1ab4841d5c622', 'active', 3),
(60, '2022-06-07', 'Marco', 'Mogliotti', 's.russo@augentes.eu', 's.russo.collaborator', '6c1df24e7faa37d3a3c1ab4841d5c622', 'active', 4),
(61, '2022-06-07', 'Helena', 'Okereke', 'okerekehelenugoeze@gmail.com', 'hi', '49f68a5c8493ec2c0bf489821c21fc3b', 'active', 2),
(62, '2022-06-07', 'Peter', 'Okereke', 'lotannaokereke@gmail.com', 'hi2', '3a17b2790e0fb6f9a94400d70b9d81bf', 'active', 3),
(63, '2022-06-07', 'Helenus', 'Okereke', 'okerekehelen505@gmail.com', 'helen', 'c4efd5020cb49b9d3257ffa0fbccc0ae', 'active', 4),
(64, '2022-06-07', 'nancy', 'gold', 'nancy@gmail.com', 'hi22', '49f68a5c8493ec2c0bf489821c21fc3b', 'active', 4),
(65, '2022-06-08', 'Micheal', 'Pan', 'mary@gmail.com', 'Mary', 'c4efd5020cb49b9d3257ffa0fbccc0ae', 'active', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `other_details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `activity`
--

INSERT INTO `activity` (`id`, `code`, `project_id`, `start_date`, `end_date`, `other_details`) VALUES
(43, '0535', 43, '2022-05-01', '2022-06-07', ''),
(44, '1340781', 44, '2022-06-01', '2022-06-30', ''),
(45, '431bc38', 45, '2022-06-01', '2022-06-30', ''),
(46, '9dd0ad', 46, '2022-06-08', '2022-06-10', ''),
(47, '03342db8', 47, '2022-06-10', '2022-06-22', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `cost`
--

CREATE TABLE `cost` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `monthly_cost` double DEFAULT NULL,
  `monthly_net` double DEFAULT NULL,
  `extra_time_h_cost` double DEFAULT NULL,
  `extra_time_h_net` double DEFAULT NULL,
  `extra_cost` double DEFAULT NULL,
  `daily_price` double DEFAULT NULL,
  `extra_time_h_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `cost`
--

INSERT INTO `cost` (`id`, `project_id`, `client_id`, `employee_id`, `monthly_cost`, `monthly_net`, `extra_time_h_cost`, `extra_time_h_net`, `extra_cost`, `daily_price`, `extra_time_h_price`) VALUES
(30, 43, 59, 58, 4200, 3050, 50, 30, NULL, 540, 70),
(31, 44, 59, 60, 3000, 1000, 30, 15, NULL, 230, 50),
(32, 45, 59, 58, 3000, 1000, 0, 0, NULL, 240, 0),
(33, 46, 62, 63, 33, 23, 22, 45, NULL, 44, 33),
(34, 47, 62, 64, 32, 45, 654, 53, 33, 32, 54);

-- --------------------------------------------------------

--
-- Struttura della tabella `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `expense_code` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `invoice` varchar(150) DEFAULT NULL,
  `invoice_details` varchar(255) DEFAULT NULL,
  `approved` varchar(10) NOT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `expense`
--

INSERT INTO `expense` (`id`, `employee_id`, `project_id`, `date`, `amount`, `expense_code`, `description`, `invoice`, `invoice_details`, `approved`, `category`) VALUES
(1, 58, 43, '2022-06-01', 20, '', '', 'uploads/RICEVUTE APRILE 2022.PDF', NULL, 'Yes', 'Restaurant'),
(2, 58, 43, '2022-06-02', 25, '', '', 'uploads/Screenshot 2022-06-07 at 15.40.49.png', NULL, 'Yes', 'Restaurant'),
(3, 60, 44, '2022-06-02', 50, '', '', 'uploads/Screenshot 2022-06-07 at 15.52.41.png', NULL, 'Yes', 'Restaurant'),
(4, 58, 43, '2022-05-11', 20, '', '', 'uploads/Screenshot 2022-06-07 at 15.59.08.png', NULL, 'Yes', 'Restaurant'),
(5, 63, 46, '2022-06-07', 120, '', '', 'uploads/NATIONAL CHILDREN DESK WEBSITE (1).docx', NULL, 'Yes', 'egg'),
(6, 64, 47, '2022-06-07', 120, '', '', 'uploads/excel_data (2).xls', NULL, 'Yes', 'hand'),
(7, 64, 47, '2022-07-08', 100, '', '', 'uploads/excel_data (1).xls', NULL, 'Yes', 'hand'),
(8, 64, 47, '2022-07-08', 100, '', '', 'uploads/excel_data.xls', NULL, 'No', 'hand'),
(9, 63, 46, '2022-06-15', 900, '', '', 'uploads/CAC RECEIPT - GOZEN IT SOLUTIONS LIMITED.pdf', NULL, 'No', 'egg'),
(10, 63, 46, '2022-06-16', 455, '', '', 'uploads/1654088054586_image001.png', NULL, 'No', 'dove'),
(11, 63, 46, '2022-06-09', 120, '', '', 'uploads/NATIONAL CHILDREN DESK WEBSITE.docx1654684272', NULL, 'No', 'egg'),
(13, 58, 43, '2022-06-02', 100, '', '', 'uploads/1654690528_Screenshot 2022-06-08 at 14.15.16.png', NULL, 'Yes', 'Fuel'),
(14, 58, 43, '2022-06-06', 150, '', '', 'uploads/1654691004_image.jpg', NULL, 'Yes', 'Restaurant'),
(15, 58, 43, '2022-04-06', 50, '', '', 'uploads/1654861779_Screenshot 2022-06-10 at 13.49.19.png', NULL, 'No', 'Restaurant');

-- --------------------------------------------------------

--
-- Struttura della tabella `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `project_code` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `location` varchar(200) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `other_details` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `morning_from` time DEFAULT NULL,
  `morning_to` time DEFAULT NULL,
  `afternoon_from` time DEFAULT NULL,
  `afternoon_to` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `project`
--

INSERT INTO `project` (`id`, `project_code`, `name`, `location`, `employee_id`, `manager_id`, `date`, `start_date`, `end_date`, `other_details`, `category`, `morning_from`, `morning_to`, `afternoon_from`, `afternoon_to`) VALUES
(43, '0535', 'Geico_006', 'Berlin', 58, 59, '2022-06-07', '2022-05-01', '2022-06-08', '', 'Restaurant,Fuel,Other', '09:00:00', '13:00:00', '14:00:00', '18:00:00'),
(44, '1340781', 'Sina_010', 'Milan', 60, 59, '2022-06-07', '2022-06-01', '2022-06-30', '', 'Restaurant,Visa,Fuel', '08:00:00', '13:00:00', '14:00:00', '17:00:00'),
(45, '431bc38', 'Geico_006bis', 'Berlin', 58, 59, '2022-06-07', '2022-06-01', '2022-06-30', '', '-', '08:00:00', '13:00:00', '14:00:00', '17:00:00'),
(46, '9dd0ad', 'web design9', 'enugu', 63, 62, '2022-06-07', '2022-06-08', '2022-06-10', '', 'egg,dove', '05:25:00', '11:25:00', '16:25:00', '21:25:00'),
(47, '03342db8', 'my fav', 'lagos', 64, 62, '2022-06-07', '2022-06-10', '2022-06-22', '', 'hand,goat', '10:27:00', '13:27:00', '15:27:00', '19:27:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'staff'),
(3, 'client'),
(4, 'employee');

-- --------------------------------------------------------

--
-- Struttura della tabella `timesheet`
--

CREATE TABLE `timesheet` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date` date NOT NULL DEFAULT '2021-07-01',
  `m_time_from` time DEFAULT NULL,
  `m_time_to` time DEFAULT NULL,
  `a_time_from` time DEFAULT NULL,
  `a_time_to` time DEFAULT NULL,
  `e_time_from` time DEFAULT NULL,
  `e_time_to` time DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `date_submitted` date DEFAULT NULL,
  `approved` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `timesheet`
--

INSERT INTO `timesheet` (`id`, `employee_id`, `date`, `m_time_from`, `m_time_to`, `a_time_from`, `a_time_to`, `e_time_from`, `e_time_to`, `comments`, `activity_id`, `date_submitted`, `approved`) VALUES
(1, 60, '2022-06-01', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(2, 60, '2022-06-02', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(3, 60, '2022-06-03', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(4, 60, '2022-06-05', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(5, 60, '2022-06-06', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(6, 60, '2022-06-07', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(7, 60, '2022-06-08', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(8, 60, '2022-06-09', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(9, 60, '2022-06-14', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(10, 60, '2022-06-13', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(11, 60, '2022-05-01', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(12, 60, '2022-05-02', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(13, 60, '2022-05-03', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(14, 60, '2022-05-04', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(15, 60, '2022-05-05', '08:00:00', '13:00:00', '14:00:00', '17:00:00', '00:00:00', '00:00:00', '', 44, '2022-06-07', 'Yes'),
(19, 63, '2022-06-21', '05:25:00', '11:25:00', '16:25:00', '21:25:00', '00:00:00', '00:00:00', '', 46, '2022-06-08', 'Yes'),
(20, 63, '2022-06-14', '05:25:00', '11:25:00', '16:25:00', '21:25:00', '00:00:00', '00:00:00', '', 46, '2022-06-09', 'No'),
(21, 63, '2022-07-13', '05:25:00', '11:25:00', '16:25:00', '21:25:00', '00:00:00', '00:00:00', '', 46, '2022-06-09', 'No');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indici per le tabelle `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_ibfk_2` (`project_id`);

--
-- Indici per le tabelle `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `cost_ibfk_4` (`project_id`);

--
-- Indici per le tabelle `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `expense_ibfk_3` (`project_id`);

--
-- Indici per le tabelle `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_id` (`manager_id`),
  ADD KEY `employee_id` (`employee_id`) USING BTREE;

--
-- Indici per le tabelle `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `timesheet`
--
ALTER TABLE `timesheet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `timesheet_ibfk_2` (`activity_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT per la tabella `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT per la tabella `cost`
--
ALTER TABLE `cost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT per la tabella `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT per la tabella `timesheet`
--
ALTER TABLE `timesheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Limiti per la tabella `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activity_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_id3` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `cost`
--
ALTER TABLE `cost`
  ADD CONSTRAINT `cost_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cost_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cost_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cost_ibfk_4` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cost_ibfk_5` FOREIGN KEY (`client_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cost_ibfk_6` FOREIGN KEY (`employee_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `expense`
--
ALTER TABLE `expense`
  ADD CONSTRAINT `expense_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_ibfk_3` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_ibfk_4` FOREIGN KEY (`employee_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_id2` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `timesheet`
--
ALTER TABLE `timesheet`
  ADD CONSTRAINT `activity_id` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `timesheet_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `account` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `timesheet_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
