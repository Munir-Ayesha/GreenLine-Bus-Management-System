-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 09:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenbus`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocation`
--

CREATE TABLE `allocation` (
  `allocation_id` int(11) NOT NULL,
  `bus_no` varchar(6) NOT NULL,
  `driver_id` varchar(5) NOT NULL,
  `route_no` varchar(4) NOT NULL,
  `slot` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allocation`
--

INSERT INTO `allocation` (`allocation_id`, `bus_no`, `driver_id`, `route_no`, `slot`) VALUES
(201, '221AG', '192D', '33RA', 'morning'),
(202, '236SD', '263S', '101', 'evening'),
(203, '467HHD', '433AR', '506', NULL),
(205, '632SS', '485RR', 'c25', NULL),
(4522, '889AF', '997TT', '33RA', 'Morning');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `bus_no` varchar(6) NOT NULL,
  `number_plate` varchar(7) NOT NULL,
  `model_no` varchar(15) DEFAULT NULL,
  `model_year` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`bus_no`, `number_plate`, `model_no`, `model_year`) VALUES
('221AG', '2389-A', 'GLI', 1998),
('236SD', '1111-S', 'T40', 2002),
('467HHD', '4738-SH', 'F11', 2007),
('544SD', '40GK-2', 'JK700', 1990),
('632SS', '6662-Q', 'M12', 2005),
('637AAS', '888-FB', 'XLI1', 2000),
('748FFG', '8288-DG', 'R22', 2007),
('889AF', '76JI-8', '675', 2011),
('DHD874', '9399-KK', 'SM2', 2016),
('EEY253', '5553-H', 'U23', 2008),
('ERU364', '7788-WW', 'S16', 2011),
('FJS364', '7580-DD', 'UU1', 2012),
('HDG37', '7477-D', 'C48', 2011),
('HDS362', '9003-K', 'O33', 2013),
('JFHY63', '3777-FN', 'N221', 2005),
('JSK364', '2222-MM', 'S22', 2006),
('KFH73', '7476-GD', 'W11', 2015),
('LLK34', '2939-IS', 'R333', 2015),
('MMW23', '7732-Y', 'Y11', 2011),
('USD46', '7732-J', 'I60', 2010),
('YFH22', '4938-SJ', '7F7', 2010);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `card_id` int(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `max_capacity` int(11) NOT NULL,
  `balance` int(11) DEFAULT NULL,
  `valid_till` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`card_id`, `type`, `max_capacity`, `balance`, `valid_till`) VALUES
(101, 'platinum', 1500, 500, '2026-10-30'),
(103, 'silver', 500, 400, '2021-12-29'),
(322, 'gold', 1000, 1000, '2021-12-11'),
(324, 'platinum', 1500, 1000, '2025-10-27'),
(761, 'gold', 1000, 500, '2021-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `customer_representative`
--

CREATE TABLE `customer_representative` (
  `login_id` varchar(5) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `counter_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_representative`
--

INSERT INTO `customer_representative` (`login_id`, `transaction_id`, `counter_no`) VALUES
('456NK', 4320, 'A#40'),
('555AA', 388, 'C#59'),
('948', 102, 'G#20'),
('9100', 103, 'S#29'),
('2222', 101, 'U#85');

-- --------------------------------------------------------

--
-- Table structure for table `departure`
--

CREATE TABLE `departure` (
  `departure_id` int(11) NOT NULL,
  `bus_no` varchar(6) NOT NULL,
  `station_no` varchar(4) NOT NULL,
  `route_no` varchar(4) NOT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departure`
--

INSERT INTO `departure` (`departure_id`, `bus_no`, `station_no`, `route_no`, `departure_time`, `arrival_time`) VALUES
(273, '632SS', 'V3', '506', '08:47:37', NULL),
(453, 'DHD874', 'V4', '984', '26:47:37', '22:47:37'),
(654, '748FFG', 'V5', 'c25', NULL, NULL),
(1114, '889AF', 'V1', '33RA', '02:00:00', '14:00:00'),
(3821, 'JSK364', 'V2', '101', '08:00:00', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` varchar(5) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `licence_no` varchar(25) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `cnic` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `first_name`, `last_name`, `licence_no`, `address`, `date_of_birth`, `cnic`) VALUES
('192D', 'Rehmat', 'rajpoot', '2827493-3727-3', 'xyz street', NULL, '42111-6458476-8'),
('263S', 'Kabir', 'Jaan', '29923-4383-3', 'salim square nazimabad', NULL, '42101-9283930-1'),
('433AR', 'Abdul', 'Raza', '3544656-245-443#', 'duniya', '1980-06-17', '42101-2146363-2'),
('485RR', 'Akbar', 'Shah', '473874-8793-33', 'Shamshad colony', '1995-10-18', '42101-3000451-2'),
('838A', 'Razzaq', NULL, '938277-3744-7', NULL, NULL, '42000-0002495-1'),
('997TT', 'Ameer ud din', NULL, '32862-84739-3', NULL, NULL, '42101-462729-4');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passenger_id` varchar(5) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `cnic` varchar(15) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passenger_id`, `first_name`, `last_name`, `cnic`, `address`, `phone`) VALUES
('100RA', 'Ramsha', 'Shahid', '42101-2736451-0', 'NNazimabad', '0321-5738921'),
('101QS', 'Dania', NULL, '42101-7493823-8', NULL, NULL),
('121AS', 'Asiya', 'baig', '42101-3812394-9', 'acghj', '0323-2334666'),
('382H', 'Saad ullah', NULL, '4200-545272-4', 'II chudrigar road', '02135549678'),
('502SS', 'Sasha', 'Sloan', '42101-3847294-9', 'Flat#25, abc Street, XYZ', '0321-9447263'),
('984AS', 'Alia', 'Shahid', '42101-3456582-6', 'NNazimabad', '0321-7482635');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_id` int(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `account_name` varchar(30) DEFAULT NULL,
  `account_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_id`, `type`, `amount`, `account_name`, `account_no`) VALUES
(11, 'cash', 5000, NULL, NULL),
(37, 'meezan bank', 600, 'Karim', 'CBC2037D5399'),
(303, 'Easy paisa', 1100, 'Razia Shamsi', 'NS2827739BBB'),
(774, 'hbl debit card', 1600, 'Sarah farrukh', 'BNN29378193C29'),
(908, 'cash', 1050, 'Sasha', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `resource_manager`
--

CREATE TABLE `resource_manager` (
  `login_id` varchar(5) NOT NULL,
  `allocation_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resource_manager`
--

INSERT INTO `resource_manager` (`login_id`, `allocation_id`, `date`, `time`) VALUES
('888', 201, '2021-08-18', '03:29:21'),
('567BS', 202, '2021-05-20', '16:11:03'),
('564', 203, '2021-11-07', '20:40:51'),
('abc1', 205, '2021-10-18', '12:09:51'),
('5432', 4522, '2021-09-09', '00:00:00'),
('564', 203, '2021-11-07', '20:40:51'),
('abc1', 205, '2021-10-18', '12:09:51'),
('5432', 4522, '2021-09-09', '11:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_no` varchar(4) NOT NULL,
  `route_name` varchar(30) NOT NULL,
  `origin` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_no`, `route_name`, `origin`, `destination`) VALUES
('101', 'Hyderi', 'sakhi hasan', 'board office'),
('33RA', 'sakhi hassan', 'Nagan', 'board'),
('506', 'nazimabad', 'KDA chowarangi', 'gold market'),
('984', 'SADDAR', 'empress market', 'lyari'),
('c25', 'DHA', 'baloch colony', 'clifton');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `login_id` varchar(5) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `cnic` varchar(15) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(12) NOT NULL,
  `staff_type` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`login_id`, `first_name`, `last_name`, `cnic`, `date_of_birth`, `address`, `email`, `phone`, `staff_type`, `password`) VALUES
('1003', 'rahmat ', 'solangi', '42100-3920751-2', '1995-01-20', 'street 24 block i falcon complex', NULL, '03465578555', 'transport controller', 'st222'),
('2222', 'Rabia ', 'Akbar', '42111-6542495-1', '2000-01-19', NULL, NULL, '03025549613', 'customer representative', '4213'),
('243HA', 'Haris', 'Ahmed', '42101-3956451-2', '2002-12-18', 'Street F', 'HarisAhmed@gmail.com', '332588392', 'transport controller', 'Halive'),
('245', 'Nashrah', 'Meraj', '42101-6452196-8', '1999-01-16', NULL, NULL, '03116654924', 'transport controller', '5301'),
('456NK', 'Nida', 'Khalid', '42101-4726493-8', '1994-10-17', 'abc street karachi', 'abc@yahoo.com', '0323-2803847', 'customer represetative', 'nida'),
('5400', 'Ayesha', NULL, '42101-6548752-3', '2002-05-15', NULL, NULL, '03024465789', 'transport controller', '654k'),
('5432', 'dania', 'Ahsan', '42101-5400082-4', '1990-09-25', 'b-24 block c north nazimabad', 'dania23@outlook.com', '03221660576', 'resource manager', 'myname00'),
('555AA', 'Asghar', 'Ali', '42101-2738163-9', '2021-11-23', 'street', 'syedaayesh11@gmail.com', '331', 'customer representative', 'sss'),
('564', 'Ahmed', 'Murtaza', '42100-4546493-8', '1994-06-14', NULL, NULL, '03421154967', 'resource manager', 'lg2000'),
('567BS', 'Basit', 'Shezad', '42101-2118163-4', '1959-06-09', 'duniya', 'shezadBasit11@gmail.com', '0341-2883458', 'resource manager', 'hero123'),
('660', 'Tehseen', NULL, '42101-546000-1', '1990-05-15', 'salim square nazimabad', NULL, '02136640057', 'transport controller', '1645'),
('679', 'mustafa', 'bhatti', '42123-5450042-4', '1996-04-20', 'cb 24 shahbaz avenue', 'mustafa947@gmail.com', '02135549678', 'transport controller', '3333'),
('888', 'Maha', 'Anwar', '42122-5454682-4', '1998-04-20', 'b-102 anwar ahmed khan road ', 'mahavsp@gmail.com', '034652146485', 'resource manager', 'hello32'),
('9100', 'Asma', 'Farhan', '42101-5467985-1', '1995-05-15', 'salim square nazimabad', 'asmaf@gail.com', '02136649857', 'customer representative', '5310'),
('948', 'Fahad', 'Durrani', '42101-5431682-4', '1998-11-20', 'b-65 moin khan road ', 'fahad1223@outlook.com', '03221648576', 'customer representative', '6545'),
('abc1', 'Shawaiz', 'Khan', '42101-3012082-4', '1991-04-20', 'al ghafoor apartment, gulberg', 'khan123@gmail.com', '03332271654', 'resource manager', 'shah32');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `station_no` varchar(4) NOT NULL,
  `station_name` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`station_no`, `station_name`, `area`, `price`) VALUES
('V1', '330', 'KDA', 30),
('V10', 'w30', 'jamshed road', 40),
('V2', 'DASTAGIR', 'block H north nazimabad ', 20),
('V3', 'AJMEER NAGRI', 'nazimabad', 20),
('V4', 'LAAL HAVELI', 'Saddar', 20),
('V5', 'AKBAR COLONY ', 'sher shah', 20),
('V6', 'SHAFI ', 'SHAFI MORH', 20),
('V7', 'DO MINAR', 'DO TALWAR CLIFTON', 40),
('V8', 'SHAHBAZ CHOWK', 'shahr e faisal', 20),
('V9', 'ALAMGIR', 'bahadurabad', 30);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(10) NOT NULL,
  `card_id` int(10) NOT NULL,
  `payment_id` int(5) NOT NULL,
  `purchase_time` datetime NOT NULL,
  `passenger_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `card_id`, `payment_id`, `purchase_time`, `passenger_id`) VALUES
(101, 322, 11, '2021-12-08 12:09:41', '100RA'),
(102, 101, 774, '2021-12-08 12:09:41', '502SS'),
(103, 761, 303, '2021-12-08 12:09:41', '984AS'),
(388, 103, 37, '2021-12-08 12:23:31', '382H'),
(4320, 324, 908, '2021-11-26 08:15:43', '101QS');

-- --------------------------------------------------------

--
-- Table structure for table `transport_controller`
--

CREATE TABLE `transport_controller` (
  `login_id` varchar(5) NOT NULL,
  `departure_id` int(11) NOT NULL,
  `shift` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transport_controller`
--

INSERT INTO `transport_controller` (`login_id`, `departure_id`, `shift`) VALUES
('245', 273, 'Morning'),
('5400', 453, 'Evening'),
('679', 654, 'Night'),
('660', 1114, 'Morning'),
('243HA', 3821, 'Morning');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allocation`
--
ALTER TABLE `allocation`
  ADD PRIMARY KEY (`allocation_id`),
  ADD KEY `bus_no` (`bus_no`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `route_no` (`route_no`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`bus_no`),
  ADD UNIQUE KEY `number_plate` (`number_plate`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `customer_representative`
--
ALTER TABLE `customer_representative`
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `departure`
--
ALTER TABLE `departure`
  ADD PRIMARY KEY (`departure_id`),
  ADD KEY `bus_no` (`bus_no`),
  ADD KEY `station_no` (`station_no`),
  ADD KEY `route_no` (`route_no`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `licence_no` (`licence_no`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passenger_id`),
  ADD UNIQUE KEY `cnic` (`cnic`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `resource_manager`
--
ALTER TABLE `resource_manager`
  ADD KEY `login_id` (`login_id`),
  ADD KEY `allocation_id` (`allocation_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_no`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `cnic` (`cnic`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`station_no`),
  ADD UNIQUE KEY `station_name` (`station_name`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `card_id` (`card_id`),
  ADD KEY `passenger_id` (`passenger_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `transport_controller`
--
ALTER TABLE `transport_controller`
  ADD UNIQUE KEY `departure_id` (`departure_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allocation`
--
ALTER TABLE `allocation`
  ADD CONSTRAINT `allocation_ibfk_1` FOREIGN KEY (`bus_no`) REFERENCES `bus` (`bus_no`),
  ADD CONSTRAINT `allocation_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  ADD CONSTRAINT `allocation_ibfk_3` FOREIGN KEY (`route_no`) REFERENCES `route` (`route_no`);

--
-- Constraints for table `customer_representative`
--
ALTER TABLE `customer_representative`
  ADD CONSTRAINT `customer_representative_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`transaction_id`),
  ADD CONSTRAINT `customer_representative_ibfk_2` FOREIGN KEY (`login_id`) REFERENCES `staff` (`login_id`);

--
-- Constraints for table `departure`
--
ALTER TABLE `departure`
  ADD CONSTRAINT `departure_ibfk_1` FOREIGN KEY (`bus_no`) REFERENCES `bus` (`bus_no`),
  ADD CONSTRAINT `departure_ibfk_2` FOREIGN KEY (`station_no`) REFERENCES `station` (`station_no`),
  ADD CONSTRAINT `departure_ibfk_3` FOREIGN KEY (`route_no`) REFERENCES `route` (`route_no`);

--
-- Constraints for table `resource_manager`
--
ALTER TABLE `resource_manager`
  ADD CONSTRAINT `resource_manager_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `staff` (`login_id`),
  ADD CONSTRAINT `resource_manager_ibfk_2` FOREIGN KEY (`allocation_id`) REFERENCES `allocation` (`allocation_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `card` (`card_id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`passenger_id`) REFERENCES `passenger` (`passenger_id`),
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`payment_id`) REFERENCES `payment_method` (`payment_id`);

--
-- Constraints for table `transport_controller`
--
ALTER TABLE `transport_controller`
  ADD CONSTRAINT `transport_controller_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `staff` (`login_id`),
  ADD CONSTRAINT `transport_controller_ibfk_2` FOREIGN KEY (`departure_id`) REFERENCES `departure` (`departure_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
