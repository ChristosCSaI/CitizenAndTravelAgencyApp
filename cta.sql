-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 04:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cta`
--

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `afm` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`afm`, `email`, `first_name`, `last_name`, `id`) VALUES
('111222333', 'chris@uom.edu.gr', 'Christos', 'Christodoulou', 1),
('123456789', 'mariavas@gmail.com', 'Maria', 'Papadopoulou', 2),
('456123789', 'dai17085@uom.edu.gr', 'Apostolos', 'Nikolaidhs', 3),
('123456789', 'elena@uom.edu.gr', 'Eleni', 'Petaloti', 4),
('123456789', 'vasilis@uom.edu.gr', 'Vasileios', 'Lagopoulos', 5),
('999888777', 'dimnikol@outlook.com', 'Dimitris', 'Nikolaou', 6),
('654654654', 'antonia@gmail.com', 'Antonia', 'Charalampidou', 7),
('111999888', 'nikoletaPan@hotmail.com', 'Nikoleta', 'Panagiotidou', 8),
('156156156', 'hatzigian@gmail.com', 'Giannis', 'Hatzinikolaou', 9),
('434434434', 'margiagk@outlook.com', 'Marina', 'Giagkoglou', 10);

-- --------------------------------------------------------

--
-- Table structure for table `excursion`
--

CREATE TABLE `excursion` (
  `id` bigint(20) NOT NULL,
  `arrival_location` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `departure_location` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `travel_agency_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `excursion`
--

INSERT INTO `excursion` (`id`, `arrival_location`, `capacity`, `departure_location`, `description`, `end_date`, `name`, `price`, `start_date`, `travel_agency_id`) VALUES
(1, 'ΜΕΤΕΩΡΑ', 23, 'ΑΘΗΝΑ', 'Mαγευτικό ταξίδι στα Μετέωρα', '2024-02-15', 'ΜΕΤΕΩΡΑ', 200, '2024-02-11', 11),
(2, 'ΣΑΝΤΟΡΙΝΗ', 22, 'ΘΕΣΣΑΛΟΝΙΚΗ', 'Mαγευτικό ταξίδι στην Σαντορίνη', '2024-05-04', 'ΣΑΝΤΟΡΙΝΗ', 500, '2024-04-29', 11),
(3, 'ΜΥΚΟΝΟΣ', 25, 'ΠΑΤΡΑ', 'Mαγευτικό ταξίδι στην Μύκονο', '2024-07-16', 'ΜΥΚΟΝΟΣ', 750, '2024-07-11', 11),
(4, 'ΗΡΑΚΛΕΙΟ', 22, 'ΓΙΑΝΝΕΝΑ', 'Mαγευτικό ταξίδι στο Ηράκλειο', '2024-08-15', 'ΗΡΑΚΛΕΙΟ', 350, '2024-08-11', 11),
(5, 'ΤΡΙΚΑΛΑ', 22, 'ΑΘΗΝΑ', 'Mαγευτικό ταξίδι στα Τρίκαλα', '2024-03-11', 'ΤΡΙΚΑΛΑ', 200, '2024-03-08', 11),
(6, 'ΑΡΑΧΩΒΑ', 25, 'ΑΘΗΝΑ', 'Mαγευτικό ταξίδι στην Αράχωβα', '2024-10-14', 'ΑΡΑΧΩΒΑ', 320, '2024-10-11', 12),
(7, 'ΠΗΛΙΟ', 23, 'ΘΕΣΣΑΛΟΝΙΚΗ', 'Mαγευτικό ταξίδι στο Πήλιο', '2024-10-01', 'ΠΗΛΙΟ', 280, '2024-09-29', 12),
(8, 'ΦΛΩΡΙΝΑ', 25, 'ΠΑΤΡΑ', 'Mαγευτικό ταξίδι στην Φλώρινα', '2024-12-10', 'ΦΛΩΡΙΝΑ', 250, '2024-12-07', 12),
(9, 'ΜΕΤΣΟΒΟ', 25, 'ΛΑΡΙΣΑ', 'Mαγευτικό ταξίδι στο Μέτσοβο', '2024-12-14', 'ΜΕΤΣΟΒΟ', 350, '2024-12-11', 12),
(10, 'ΚΑΡΠΕΝΗΣΙ', 18, 'ΘΕΣΣΑΛΟΝΙΚΗ', 'Mαγευτικό ταξίδι στο Καρπενήσι', '2024-03-11', 'ΚΑΡΠΕΝΗΣΙ', 160, '2024-03-08', 12),
(11, 'ΒΕΡΟΛΙΝΟ', 25, 'ΑΘΗΝΑ', 'Mαγευτικό ταξίδι στο Βερολίνο', '2024-10-18', 'ΒΕΡΟΛΙΝΟ', 420, '2024-10-13', 13),
(12, 'ΒΑΡΚΕΛΩΝΗ', 21, 'ΘΕΣΣΑΛΟΝΙΚΗ', 'Mαγευτικό ταξίδι στη Βαρκελώνη', '2024-09-15', 'ΒΑΡΚΕΛΩΝΗ', 280, '2024-09-12', 13),
(13, 'ΠΑΡΙΣΙ', 21, 'ΠΑΤΡΑ', 'Mαγευτικό ταξίδι στο Παρίσι', '2024-10-12', 'ΠΑΡΙΣΙ', 500, '2024-10-07', 13),
(14, 'ΛΟΝΔΙΝΟ', 25, 'ΑΘΗΝΑ', 'Mαγευτικό ταξίδι στο Λονδίνο', '2024-12-16', 'ΛΟΝΔΙΝΟ', 480, '2024-12-11', 13),
(15, 'ΡΩΜΗ', 23, 'ΘΕΣΣΑΛΟΝΙΚΗ', 'Mαγευτικό ταξίδι στη Ρώμη', '2024-03-12', 'ΡΩΜΗ', 220, '2024-03-08', 13);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` bigint(20) NOT NULL,
  `persons` int(11) NOT NULL,
  `citizen_id` bigint(20) DEFAULT NULL,
  `excursion_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `persons`, `citizen_id`, `excursion_id`) VALUES
(1, 2, 1, 1),
(2, 3, 2, 2),
(3, 1, 3, 4),
(4, 4, 4, 12),
(5, 2, 5, 13),
(6, 2, 6, 10),
(7, 2, 7, 7),
(8, 2, 8, 4),
(9, 3, 9, 5),
(10, 2, 10, 15),
(11, 5, 4, 10),
(12, 2, 8, 13);

-- --------------------------------------------------------

--
-- Table structure for table `travel_agency`
--

CREATE TABLE `travel_agency` (
  `afm` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `travel_agency`
--

INSERT INTO `travel_agency` (`afm`, `name`, `owner`, `id`) VALUES
('999888777', 'Sky Explorers', 'Manolhs Nikolaou', 11),
('111222333', 'Greek Adventures', 'Nikos Manwlidhs', 12),
('444555666', 'Global Discover', 'Eleni Dhmopoulou', 13);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `role`, `username`) VALUES
(1, 'ChrisPass', 'citizen', 'chris@uom.edu.gr'),
(2, 'testuser654321', 'citizen', 'mariavas@gmail.com'),
(3, 'FakePass', 'citizen', 'dai17085@uom.edu.gr'),
(4, 'ElenaPass', 'citizen', 'elena@uom.edu.gr'),
(5, 'VasilisPass', 'citizen', 'vasilis@uom.edu.gr'),
(6, 'NikolDim!@', 'citizen', 'dimnikol@outlook.com'),
(7, 'Antonia123!#', 'citizen', 'antonia@gmail.com'),
(8, 'Nikol1996@!', 'citizen', 'nikoletaPan@hotmail.com'),
(9, 'HatziGian1987!', 'citizen', 'hatzigian@gmail.com'),
(10, 'GiagkMar6565!', 'citizen', 'margiagk@outlook.com'),
(11, 'PASS123', 'travel_agency', '999888777'),
(12, 'MYGOODPASSWORD', 'travel_agency', '111222333'),
(13, 'GreekPass123@', 'travel_agency', '444555666');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `excursion`
--
ALTER TABLE `excursion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKaquff9lty18ayy2dlq06dxs3r` (`travel_agency_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh0fr4k0pkjvkkutcum2ghh31q` (`citizen_id`),
  ADD KEY `FKh7o7hf16kp0rkigiaqybc6jvs` (`excursion_id`);

--
-- Indexes for table `travel_agency`
--
ALTER TABLE `travel_agency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `excursion`
--
ALTER TABLE `excursion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `citizen`
--
ALTER TABLE `citizen`
  ADD CONSTRAINT `FKfjkt9xbjvf26s6t19sa0l5cb4` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

--
-- Constraints for table `excursion`
--
ALTER TABLE `excursion`
  ADD CONSTRAINT `FKaquff9lty18ayy2dlq06dxs3r` FOREIGN KEY (`travel_agency_id`) REFERENCES `travel_agency` (`id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FKh0fr4k0pkjvkkutcum2ghh31q` FOREIGN KEY (`citizen_id`) REFERENCES `citizen` (`id`),
  ADD CONSTRAINT `FKh7o7hf16kp0rkigiaqybc6jvs` FOREIGN KEY (`excursion_id`) REFERENCES `excursion` (`id`);

--
-- Constraints for table `travel_agency`
--
ALTER TABLE `travel_agency`
  ADD CONSTRAINT `FKoegewptptxdxpgplur869cyuw` FOREIGN KEY (`id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
