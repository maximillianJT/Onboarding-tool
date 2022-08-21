-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 26, 2022 at 03:01 PM
-- Server version: 5.7.36-0ubuntu0.18.04.1
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hc22_9`
--
CREATE DATABASE IF NOT EXISTS `hc22_9` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hc22_9`;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidateID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`candidateID`, `firstName`, `lastName`, `phoneNumber`, `email`) VALUES
(1, 'John', 'Dough', '07563212366', 'johnDough@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `checkID` int(11) NOT NULL,
  `candidateID` int(11) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobOffers`
--

CREATE TABLE `jobOffers` (
  `jobID` int(11) NOT NULL,
  `candidateID` int(11) NOT NULL,
  `jobType` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `dateStarted` date NOT NULL,
  `assignedTo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `adminLevel` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidateID`);

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`checkID`),
  ADD KEY `Key` (`candidateID`);

--
-- Indexes for table `jobOffers`
--
ALTER TABLE `jobOffers`
  ADD PRIMARY KEY (`jobID`),
  ADD KEY `ForeignKey` (`candidateID`),
  ADD KEY `ForeignKey2` (`assignedTo`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checklist`
--
ALTER TABLE `checklist`
  MODIFY `checkID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobOffers`
--
ALTER TABLE `jobOffers`
  MODIFY `jobID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checklist`
--
ALTER TABLE `checklist`
  ADD CONSTRAINT `Key` FOREIGN KEY (`candidateID`) REFERENCES `candidates` (`candidateID`);

--
-- Constraints for table `jobOffers`
--
ALTER TABLE `jobOffers`
  ADD CONSTRAINT `ForeignKey` FOREIGN KEY (`candidateID`) REFERENCES `candidates` (`candidateID`),
  ADD CONSTRAINT `ForeignKey2` FOREIGN KEY (`assignedTo`) REFERENCES `Users` (`userID`);
--
-- Database: `hc22_9_populated`
--
CREATE DATABASE IF NOT EXISTS `hc22_9_populated` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hc22_9_populated`;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `candidateID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`candidateID`, `firstName`, `lastName`, `email`, `phoneNumber`) VALUES
(2, 'Robinetta', 'Guslon', 'rguslon0@who.int', '7901778439'),
(3, 'Madelene', 'Whitehall', 'mwhitehall1@myspace.com', '3814662038'),
(4, 'Hewie', 'Town', 'htown2@amazon.co.jp', '1574999969'),
(5, 'Solomon', 'Pringer', 'springer3@google.cn', '3011364033'),
(6, 'Theodore', 'Dunsire', 'tdunsire4@yelp.com', '2765645240'),
(7, 'Vittorio', 'Rachuig', 'vrachuig5@wp.com', '3994215840'),
(8, 'Baryram', 'Draayer', 'bdraayer6@youtu.be', '8169077567'),
(9, 'Barrie', 'Lowle', 'blowle7@baidu.com', '6124375950'),
(10, 'Pryce', 'Guitton', 'pguitton8@paypal.com', '8372632178'),
(11, 'Amil', 'Boothby', 'aboothby9@mozilla.com', '5486032732'),
(12, 'Pietra', 'Hallut', 'phalluta@slashdot.org', '8881265801'),
(13, 'Anna-diana', 'Caw', 'acawb@mediafire.com', '3194042559'),
(14, 'Norean', 'Rockhill', 'nrockhillc@mozilla.org', '4002500695'),
(15, 'Nobie', 'Syde', 'nsyded@pcworld.com', '8446356033'),
(16, 'Josepha', 'Harcarse', 'jharcarsee@berkeley.edu', '3629095426'),
(17, 'Tommy', 'Constantine', '07429666932', 'tommy.constantine@ntlworld.com');

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE `checklist` (
  `checkID` int(11) NOT NULL,
  `candidateID` int(11) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`checkID`, `candidateID`, `detail`, `status`) VALUES
(1, 13, 'Laptop', 0),
(9, 3, 'd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobOffers`
--

CREATE TABLE `jobOffers` (
  `jobID` int(11) NOT NULL,
  `candidateID` int(11) NOT NULL,
  `jobType` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `dateStarted` date NOT NULL,
  `assignedTo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobOffers`
--

INSERT INTO `jobOffers` (`jobID`, `candidateID`, `jobType`, `Status`, `dateStarted`, `assignedTo`) VALUES
(1, 11, 'Programmer', 'OnBoarding', '2022-01-12', 1),
(2, 2, 'Programmer', 'OnBoarding', '2022-01-12', 1),
(3, 3, 'Software Engineer', 'OnBoarding', '2022-01-10', 1),
(4, 4, 'Software Engineer', 'OnBoarding', '2022-01-13', 1),
(5, 5, 'HR', 'OnBoarding', '2022-01-14', 1),
(6, 6, 'Programmer', 'OnBoarding', '2022-01-14', 1),
(7, 7, 'Software Engineer', 'OnBoarding', '2022-01-10', 1),
(8, 8, 'HR', 'OnBoarding', '2022-01-13', 1),
(9, 9, 'HR', 'OnBoarding', '2022-01-10', 1),
(10, 10, 'Programmer', 'OnBoarding', '2022-01-13', 1),
(11, 12, 'Software Engineer', 'OnBoarding', '2022-01-10', 1),
(12, 13, 'Programmer', 'OnBoarding', '2022-01-13', 1),
(13, 14, 'HR', 'OnBoarding', '2022-01-14', 1),
(14, 15, 'Software Engineer', 'OnBoarding', '2022-01-10', 1),
(15, 16, 'Programmer', 'OnBoarding', '2022-01-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `trainingID` int(255) NOT NULL,
  `candidateID` int(255) NOT NULL,
  `currentCourse` varchar(255) NOT NULL,
  `percentage` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`trainingID`, `candidateID`, `currentCourse`, `percentage`) VALUES
(1, 2, 'HTML', 25),
(2, 9, 'CSS', 56);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `adminLevel` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`userID`, `firstName`, `lastName`, `username`, `password`, `adminLevel`) VALUES
(1, 'Aggie\r\n', 'Tuke\r\n', 'test', 'changeme', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidateID`);

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`checkID`),
  ADD KEY `Key` (`candidateID`);

--
-- Indexes for table `jobOffers`
--
ALTER TABLE `jobOffers`
  ADD PRIMARY KEY (`jobID`),
  ADD KEY `ForeignKey` (`candidateID`),
  ADD KEY `ForeignKey2` (`assignedTo`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`trainingID`),
  ADD KEY `candidateLink` (`candidateID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `checklist`
--
ALTER TABLE `checklist`
  MODIFY `checkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobOffers`
--
ALTER TABLE `jobOffers`
  MODIFY `jobID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `trainingID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `checklist`
--
ALTER TABLE `checklist`
  ADD CONSTRAINT `Key` FOREIGN KEY (`candidateID`) REFERENCES `candidates` (`candidateID`);

--
-- Constraints for table `jobOffers`
--
ALTER TABLE `jobOffers`
  ADD CONSTRAINT `ForeignKey` FOREIGN KEY (`candidateID`) REFERENCES `candidates` (`candidateID`),
  ADD CONSTRAINT `ForeignKey2` FOREIGN KEY (`assignedTo`) REFERENCES `Users` (`userID`);

--
-- Constraints for table `training`
--
ALTER TABLE `training`
  ADD CONSTRAINT `candidateLink` FOREIGN KEY (`candidateID`) REFERENCES `candidates` (`candidateID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
