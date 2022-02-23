-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2011 at 02:39 PM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `complaints`
--

-- --------------------------------------------------------

--
-- Table structure for table `casesheet`
--

DROP TABLE IF EXISTS `casesheet`;
CREATE TABLE IF NOT EXISTS `casesheet` (
  `caseid` int(11) NOT NULL AUTO_INCREMENT,
  `railway` int(11) NOT NULL,
  `coachNo` varchar(25) NOT NULL,
  `coachType` int(11) NOT NULL,
  `dateCommission` date NOT NULL,
  `depot` varchar(25) NOT NULL,
  `division` int(11) NOT NULL,
  `equipment` int(11) NOT NULL,
  `equipmentNo` varchar(50) NOT NULL,
  `manufacturer` varchar(25) NOT NULL,
  `description` text,
  `dateFailure` date NOT NULL,
  `complainant` int(11) NOT NULL,
  `icfComments` text,
  `closed` enum('true','false') NOT NULL,
  `fileUploaded` enum('true','false') NOT NULL,
  `createTime` varchar(25) DEFAULT NULL,
  `dateRegisteration` date DEFAULT NULL,
  `dateActionTaken` date DEFAULT NULL,
  `updateTime` date DEFAULT NULL,
  `updateUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`caseid`),
  KEY `FK_casesheet_user` (`complainant`),
  KEY `FK_casesheet_railways` (`railway`),
  KEY `FK_casesheet_coach` (`coachType`),
  KEY `FK_casesheet_division` (`division`),
  KEY `FK_casesheet_equipment` (`equipment`),
  KEY `FK_casesheet_manufacturer` (`manufacturer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1178 ;

--
-- Dumping data for table `casesheet`
--

INSERT INTO `casesheet` (`caseid`, `railway`, `coachNo`, `coachType`, `dateCommission`, `depot`, `division`, `equipment`, `equipmentNo`, `manufacturer`, `description`, `dateFailure`, `complainant`, `icfComments`, `closed`, `fileUploaded`, `createTime`, `dateRegisteration`, `dateActionTaken`, `updateTime`, `updateUser`) VALUES
(1053, 5, '71580', 73, '2007-09-26', 'Mumbai Central', 39, 7, 'One', '15', 'Compressor Tripping due to internal fault.', '2007-11-10', 2, 'Your complaint has been registered', 'false', 'false', '02-10-2011 10,11', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1054, 8, 'SCR 07658', 69, '2007-08-31', 'Secundrabad TL depot', 25, 5, '2', '11', 'Fan PCB defective.', '2007-05-12', 2, 'Your complaint has been registered', 'false', 'false', '02-10-2011 10,17', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1055, 9, 'ECoR 07052', 57, '2007-07-09', 'Bhubaneswar Ac depot', 64, 7, '1', '15', 'Compressor winding IR zero.(earthed)', '2007-11-17', 2, 'Your complaint has been registered', 'false', 'false', '11-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1056, 2, 'ER 13021', 1, '2006-12-19', 'Tikiapara EMU car shed ', 19, 49, '9484', '89', 'Stand by Circuit not working and its fuse blowing.', '2007-08-30', 2, 'Your complaint has been registered', 'false', 'false', '30-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1057, 2, 'ER 13020', 2, '2006-11-27', 'Tikiapara EMU car shed ', 19, 18, '06824041, 06824047, 06824', '45', 'Input fuse blowing & output voltage is low.', '2007-11-28', 2, 'Your complaint has been registered', 'false', 'false', '01-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1058, 1, 'ER 13023', 1, '2006-12-18', 'Howrah EMU car shed', 1, 50, '3070271', '90', 'No output voltage.', '2007-03-04', 2, 'Your complaint has been registered', 'false', 'false', '02-10-2011 11,21', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1059, 4, 'CR 07604 , ', 69, '2007-06-13', 'Mumbai TL depot ', 36, 51, 'ICE 080411', '91', 'Alternator pulley jammed.', '2007-09-17', 2, 'Your complaint has been registered', 'false', 'false', '02-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1060, 4, 'CR 07606', 69, '2007-04-09', 'Mumbai TL depot ', 36, 52, '13074, 13087', '92', 'Reverse polarity.', '2007-09-26', 2, 'Your complaint has been registered', 'false', 'false', '12-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1061, 4, 'CR 07614', 69, '2007-01-09', 'Mumbai TL Depot', 36, 8, '707008', '20', 'OVP Tripping and No generation', '2007-02-10', 2, 'Your complaint has been registered', 'false', 'false', '02-10-2011 12,31', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1062, 4, 'CR 07619', 1, '2007-09-14', 'Mumbai TL Depot', 36, 2, '07063E7681', '3', 'No generation.', '2007-10-10', 2, 'Your complaint has been registered', 'false', 'false', '02-10-2011 14,49', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1063, 4, 'CR 07611', 69, '2007-05-09', 'Mumbai TL depot', 36, 28, 'FB 154', '56', 'Coil Burnt.', '2007-10-12', 2, 'Your complaint has been registered', 'false', 'false', '02-10-2011 14,52', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1064, 4, 'CR 07602', 69, '2007-07-13', 'Mumbai TL Depot', 36, 5, '07/56453', '11', 'PCB defective', '2007-03-10', 2, 'Your complaint has been registered', 'false', 'false', '02-10-2011 14,54', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1065, 12, 'NWR 07603', 69, '2007-10-11', 'TL depot ', 52, 8, '070506E', '23', 'No generation.', '2008-02-18', 2, 'Your complaint has been registered', 'false', 'false', '13-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1066, 6, 'NR 20087', 1, '2007-04-07', 'Delhi EMU Car Shed ', 7, 41, '0', '81', 'Energy not recording.', '2007-11-16', 2, 'Your complaint has been registered', 'false', 'false', '14-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1067, 7, 'SR 07494', 65, '2007-07-31', 'BBQ TL depot ', 28, 76, '705003', '124', 'No generation.', '2008-02-20', 2, 'Your complaint has been registered', 'false', 'false', '03-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1068, 1, 'ER 13034', 1, '2007-09-20', 'Howrah EMU car shed', 1, 29, '27090', '60', 'VCB not Tripping.', '2007-12-17', 2, 'Your complaint has been registered', 'false', 'false', '04-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1069, 1, 'ER 13037', 1, '2007-12-12', 'Howrah EMU car shed', 1, 43, '07.05.01.646', '83', 'IR value of motor is Zero.', '2008-10-03', 2, 'Your complaint has been registered', 'false', 'false', '02-10-2011 16,02', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1070, 3, 'NFR 07051', 57, '2007-02-03', 'Guwahati AC Coaching Shed', 16, 16, '0', '39', 'Booster card faulty.', '2008-07-04', 2, 'Your complaint has been registered', 'false', 'false', '02-10-2011 16,05', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1071, 12, 'NWR 07181', 73, '2007-11-20', 'AC depot NWR', 49, 46, '0', '86', 'Winding Burnt.', '2008-11-04', 2, 'Your complaint has been registered', 'false', 'false', '02-10-2011 16,44', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1072, 5, 'WR C0008', 11, '2008-01-01', 'Kandivili EMU car Shed ', 39, 39, '0', '77', 'Battery voltage low.', '2008-06-09', 2, 'Your complaint has been registered', 'false', 'false', '02-11-2011 09,57', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1073, 5, '107C001-002', 18, '2007-12-11', 'Kandivili ', 39, 54, '42 Nos', '95', 'Blade Jammed, overheating.', '2008-06-09', 2, 'Your complaint has been registered', 'false', 'false', '02-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1074, 5, '107C002,006', 18, '2007-11-30', 'Kandivili EMU car Shed ', 39, 28, '0', '58', 'Winding burnt.', '2008-06-09', 2, 'Your complaint has been registered', 'false', 'false', '02-11-2011 10,13', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1075, 8, 'SC 08052', 2, '2008-07-23', 'SSE/AC/Newdelhi Depot', 7, 16, '0', '41', 'Inverters tripping', '2008-08-17', 2, 'Your complaint has been registered', 'false', 'false', '03-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1076, 8, 'SC 07001', 61, '2008-07-15', 'SC', 25, 16, '8036', '41', 'Inverter not switching ON', '2008-08-21', 2, 'Your complaint has been registered', 'false', 'false', '05-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1077, 1, 'ER 13034', 1, '2007-09-20', 'Howrah EMU car shed', 1, 29, '0', '59', 'VCB not tripping', '2007-12-17', 2, 'Your complaint has been registered', 'false', 'false', '06-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1078, 2, 'SER10636', 1, '2007-11-08', 'EMU Carshed /Tikiapara, H', 19, 35, '', '71', ' Motor burnt ', '2008-05-22', 2, 'Your complaint has been registered', 'false', 'false', '04-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1079, 3, 'NF 07026', 63, '2008-02-15', 'Guwahati AC Coaching Shed', 13, 16, '0', '40', 'Not Working', '2008-04-25', 2, 'Your complaint has been registered', 'false', 'false', '07-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1080, 16, 'NE 07052', 2, '2008-04-30', 'Ghorakpur AC Coaching she', 16, 2, '0', '4', 'Not Working', '2008-06-06', 2, 'Your complaint has been registered', 'false', 'false', '02-11-2011 17,08', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1081, 4, 'CR 07616', 69, '2007-09-26', 'Mumbai Central TL Depot', 36, 55, '0', '96', 'Not working', '2008-07-15', 2, 'Your complaint has been registered', 'false', 'false', '08-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1082, 4, 'CR 08703', 77, '2008-03-18', 'Miraj TL Depot', 35, 52, '0', '93', 'Electrolyte oozing out.', '2008-03-07', 2, 'Your complaint has been registered', 'false', 'false', '14-02-2011 10,52', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1083, 7, 'SR 08051', 2, '2008-07-23', 'BBQ TL depot ', 28, 16, '8018', '41', 'IGBT, Booster card defective.', '2008-07-25', 2, 'Your complaint has been registered', 'false', 'false', '09-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1084, 1, 'ER 13041', 1, '2008-02-01', 'Sealdah EMU Car shed', 4, 60, '145', '101', 'Container crack .', '2008-06-28', 2, 'Your complaint has been registered', 'false', 'false', '15-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1085, 12, 'NWR 07182', 73, '2007-11-20', 'AC Coaching Depot/Jaipur', 51, 53, '', '94', 'Not working  ', '2008-03-22', 2, 'Your complaint has been registered', 'false', 'false', '05-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1086, 12, ' NWR 07028', 63, '2008-02-15', 'AC Coaching Depot/Jaipur', 51, 53, '', '94', 'Not working  ', '2008-06-21', 2, 'Your complaint has been registered', 'false', 'false', '06-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1087, 1, 'ER 13036', 1, '2007-12-25', 'EMUCoachingDepot/Howrah', 1, 29, '', '62', 'VCB is not tripping', '2008-08-04', 2, 'Your complaint has been registered', 'false', 'false', '07-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1088, 7, 'SR 08052', 2, '2008-06-23', 'AC Coaching Depot/Basin b', 28, 2, '', '2', 'Not working  ', '2008-07-24', 2, 'Your complaint has been registered', 'false', 'false', '08-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1089, 1, 'ER 13035', 1, '2007-10-22', 'EMUCoachingDepot/Howrah', 1, 56, '', '97', 'Not working', '2008-07-06', 2, 'Your complaint has been registered', 'false', 'false', '09-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1090, 1, 'ER 13037', 1, '2007-12-12', 'EMUCoachingDepot/Howrah', 1, 43, '07.05.01.646', '83', 'Not working ', '2008-10-03', 2, 'Your complaint has been registered', 'false', 'false', '10-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1091, 7, 'SR 08001', 63, '2008-04-09', 'SSE/AC/BasinBridge Yard/C', 28, 57, '', '98', 'Specfic gravity is not improving', '2008-10-10', 2, 'Your complaint has been registered', 'false', 'false', '11-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1092, 1, 'ER 13044', 1, '2008-08-02', 'EMUCoachingDepot/Howrah', 1, 41, '', '80', 'Not working ', '2008-03-11', 2, 'Your complaint has been registered', 'false', 'false', '12-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1093, 2, 'SER 078051', 2, '2008-01-27', 'SANTRAGACHI/ AC DEPOT/ HO', 19, 7, '', '15', 'Condencer fan blade broken ', '2008-08-07', 2, 'Your complaint has been registered', 'false', 'false', '13-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1094, 2, 'SER 078032', 63, '2008-05-07', 'SER AC depot ', 19, 7, '0', '15', 'Control panel contact pin defective.', '2008-10-07', 2, 'Your complaint has been registered', 'false', 'false', '14-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1095, 2, ' SER 078058', 73, '2008-12-05', 'SER AC depot ', 19, 75, '070806B', '119', 'ET Burnt.', '2008-07-15', 2, 'Your complaint has been registered', 'false', 'false', '16-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1096, 2, 'SER078059', 2, '2008-04-30', 'SANTRAGACHI/ AC DEPOT/ HO', 19, 2, '0', '5', 'Alternator winding earthed', '2008-04-06', 2, 'Your complaint has been registered', 'false', 'false', '15-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1097, 2, 'SER 078056', 73, '2008-07-05', 'SER AC depot ', 19, 7, '0', '15', 'Control panel harness cable earthed ( PP side ).', '2008-08-18', 2, 'Your complaint has been registered', 'false', 'false', '17-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1098, 1, 'ER 13027', 1, '2007-01-22', 'Howrah EMU car shed', 1, 58, '1360806', '99', 'Smoke Emission from CHT.', '2008-12-05', 2, 'Your complaint has been registered', 'false', 'false', '14-02-2011 15,41', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1099, 4, 'CR 07603', 69, '2007-09-29', 'CR TL Depot ', 36, 55, '0', '96', 'Emergency Lights not working', '2008-07-15', 2, 'Your complaint has been registered', 'false', 'false', '10-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1100, 1, 'ER 13049', 1, '2008-08-14', 'Howrah EMU car shed', 1, 35, '0', '71', 'Abnormal sound.', '2008-11-28', 2, 'Your complaint has been registered', 'false', 'false', '11-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1101, 2, 'SER 078062', 57, '2008-02-01', 'SER AC depot ', 19, 2, '070808A', '5', 'NO Generation.', '2008-01-12', 2, 'Your complaint has been registered', 'false', 'false', '16-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1102, 4, 'CR 07608', 69, '2007-02-10', 'Matunga TL depot', 36, 8, '0702E7493', '21', 'NO Generation.', '2008-04-25', 2, 'Your complaint has been registered', 'false', 'false', '18-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1103, 14, 'SWR 08001', 63, '2008-02-08', 'SBC AC depot ', 46, 16, '8026', '41', 'Inverter not Switching ON.', '2008-09-25', 2, 'Your complaint has been registered', 'false', 'false', '19-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1104, 14, 'SWR 08051', 2, '2008-02-08', 'SBC AC depot ', 46, 16, '8030', '41', 'Inverter not Switching ON.', '2008-09-25', 2, 'Your complaint has been registered', 'false', 'false', '20-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1105, 1, 'ER 07418', 65, '2007-10-11', 'Howrah TL Depot', 1, 8, '601013', '20', 'No Generation.', '2008-11-04', 2, 'Your complaint has been registered', 'false', 'false', '17-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1106, 7, 'SR 08055', 57, '2008-08-27', 'BBQ TL depot ', 28, 59, '06-Jul', '100', 'Specific gravity not improving.', '2008-12-19', 2, 'Your complaint has been registered', 'false', 'false', '12-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1107, 1, 'ER 13041', 1, '2008-12-01', 'Sealdah EMU Car shed', 4, 60, '0', '101', 'Cell 1& 5 container crack.', '2008-06-28', 2, 'Your complaint has been registered', 'false', 'false', '21-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1108, 9, 'SECR 08051', 2, '2008-09-13', 'Bubhaneshwar AC Depot', 64, 2, '0807E3814', '3', 'No Generation.', '2008-09-22', 2, 'Your complaint has been registered', 'false', 'false', '13-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1109, 1, 'ER 13038', 1, '2007-12-12', 'Howrah EMU car shed', 1, 18, '07-102487', '45', 'Not working.', '2008-11-12', 2, 'Your complaint has been registered', 'false', 'false', '18-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1110, 1, 'ER 13043', 1, '2008-08-02', 'Howrah EMU car shed', 71, 35, '160EMU', '70', 'Main field earthed ', '2009-12-01', 2, 'Your complaint has been registered', 'false', 'false', '19-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1111, 9, 'ECoR 08051', 2, '2008-05-13', 'Bhubaneshwar AC Depot ', 64, 16, '2007D10727/15', '40', 'Inverter not switching ON.', '2009-01-29', 2, 'Your complaint has been registered', 'false', 'false', '14-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1112, 1, 'ER 07601', 2, '2007-11-28', 'Howrah AC Depot ', 1, 55, '000, Maave Electronics', '137', 'LED Emergency Lights not glowing.', '2009-01-29', 2, 'Your complaint has been registered', 'false', 'false', '15-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1113, 7, 'SR 07351', 2, '2007-09-26', 'BBQ AC Depot', 28, 64, '0', '106', 'Inverter not working', '2009-01-20', 2, 'Your complaint has been registered', 'false', 'false', '16-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1114, 10, 'ECR 09406', 65, '2009-01-22', 'SSE/TL/depot, Mughalsarai', 68, 16, '0', '41', 'Inverter no output', '2009-02-27', 2, 'Your complaint has been registered', 'false', 'false', '20-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1115, 2, 'SER 09843', 65, '2009-03-02', 'Howrah TL Depot', 19, 76, '0', '124', 'RRU not Working.', '2009-02-17', 2, 'Your complaint has been registered', 'false', 'false', '22-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1116, 14, 'SWR 08607', 79, '2009-04-22', 'SBC TL Depot', 46, 8, '0', '23', 'Alternator bearing noise.', '2009-04-28', 2, 'Your complaint has been registered', 'false', 'false', '17-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1117, 9, 'ECoR 09151', 73, '2009-01-27', 'ECoR AC Depot ', 64, 61, '0', '102', 'Control Unit not Working.', '2009-01-05', 2, 'Your complaint has been registered', 'false', 'false', '16-02-2011 15,00', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1118, 10, 'EC 09407', 65, '2009-02-25', 'TL depot ', 67, 10, '0', '30', 'Inverter not working', '2009-02-05', 2, 'Your complaint has been registered', 'false', 'false', '16-02-2011 15,16', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1119, 1, 'ER 13051', 1, '2009-04-22', 'Liluah EMU Car shed ', 4, 62, '0', '103', 'Converter -I not working', '2009-04-23', 2, 'Your complaint has been registered', 'false', 'false', '18-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1120, 2, 'SER 098216', 65, '2009-10-05', 'Howrah TL Depot', 19, 10, '0', '29', 'Inverter not working', '2009-05-15', 2, 'Your complaint has been registered', 'false', 'false', '23-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1121, 2, 'SER 09405', 65, '2009-02-19', 'Howrah TL Depot', 4, 76, '08113C8518', '123', '3Nos Power Diodes connecting cables burnt.', '2009-04-25', 2, 'Your complaint has been registered', 'false', 'false', '19-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1122, 9, 'ECoR 08051', 2, '2008-11-05', 'Bhubaneswar Ac depot', 62, 63, 'HBL make', '104', '12Nos of cells defective.', '2008-07-06', 2, 'Your complaint has been registered', 'false', 'false', '21-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1123, 9, 'ECoR 08051', 2, '2008-11-05', 'Bhubaneswar Ac depot', 62, 2, '08027E3757', '3', 'NO output.', '2008-12-26', 2, 'Your complaint has been registered', 'false', 'false', '24-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1124, 9, 'ECoR 08051', 2, '2008-11-05', 'Bhubaneswar Ac depot', 62, 75, '71175703', '117', 'Inverter not working.', '2009-02-25', 2, 'Your complaint has been registered', 'false', 'false', '25-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1125, 9, 'ECoR 08051', 2, '2008-11-05', 'AC Coaching Depot, Bhuban', 62, 16, '2008D10817122', '40', 'Inverter not working.', '2009-02-25', 2, 'Your complaint has been registered', 'false', 'false', '22-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1126, 15, 'WCR 08801', 59, '2009-03-23', 'Jabalpur TL Depot ', 55, 10, '169', '27', 'INVERTER NOT WORKING.', '2009-05-25', 2, 'Your complaint has been registered', 'false', 'false', '20-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1127, 2, 'SER 098427', 65, '2009-05-30', 'Howrah TL Depot', 19, 10, '8278', '30', 'No output.', '2009-05-31', 2, 'Your complaint has been registered', 'false', 'false', '21-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1128, 2, 'SER 098218', 67, '2009-12-05', 'Howrah TL Depot', 19, 10, '0', '30', 'No output.', '2009-05-15', 2, 'Your complaint has been registered', 'false', 'false', '26-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1129, 2, 'SER 098220', 67, '2009-12-05', 'Howrah TL Depot', 19, 8, '0', '22', 'ET found Burnt.', '2009-05-13', 2, 'Your complaint has been registered', 'false', 'false', '27-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1130, 2, 'SER 098215', 67, '2009-12-05', 'SSE/TL/depot,  SATRAGACHI', 19, 8, '', '22', 'NOT WORKING', '2009-05-15', 2, 'Your complaint has been registered', 'false', 'false', '23-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1131, 2, 'SER 098216', 67, '2009-12-05', 'Howrah TL Depot', 19, 64, '0', '105', 'Not Working.', '2009-05-13', 2, 'Your complaint has been registered', 'false', 'false', '28-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1132, 9, 'ECoR 09406', 65, '2009-02-28', 'ECoR TL Depot ', 64, 10, '0', '30', 'No Output.', '2009-07-06', 2, 'Your complaint has been registered', 'false', 'false', '17-02-2011 15,01', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1133, 13, 'SEC 08801', 59, '2009-04-14', 'SEC TL Depot ', 59, 10, '110V-230V', '27', 'Tripping after one minute without load.', '2009-06-23', 2, 'Your complaint has been registered', 'false', 'false', '22-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1134, 2, 'ECoR 09054', 2, '2009-04-25', 'AC Depot ECoR', 19, 16, '0', '42', 'Tripping Frequently.', '2009-07-14', 2, 'Your complaint has been registered', 'false', 'false', '23-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1135, 12, 'NWR 08801', 59, '2009-01-07', 'NWR TL Depot', 52, 10, '0', '29', 'No output.', '2009-02-07', 2, 'Your complaint has been registered', 'false', 'false', '24-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1136, 10, 'EC 09411', 65, '2009-01-22', 'EC TL Depot', 69, 10, '0', '30', 'No Output.', '2009-06-13', 2, 'Your complaint has been registered', 'false', 'false', '24-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1137, 18, 'KRSWR 08701', 77, '2009-09-07', 'Madgoan TL Depot', 72, 8, '0', '22', 'Not Working.', '2009-07-30', 2, 'Your complaint has been registered', 'false', 'false', '29-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1138, 9, 'ECoR 08051', 2, '2008-11-05', 'ECoR AC Depot ', 64, 77, '0', '129', 'ERRU not Working.', '2008-07-25', 2, 'Your complaint has been registered', 'false', 'false', '30-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1139, 9, 'ECoR 09054', 2, '2009-04-25', 'ECoR AC Depot ', 64, 16, '0', '42', 'PP side Inverter tripping Interminently.', '2009-08-13', 2, 'Your complaint has been registered', 'false', 'false', '25-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1140, 7, 'SR 14016', 1, '2009-08-22', 'Avadi EMU Car shed ', 28, 35, '0', '72', 'OIl leaking from Transformer oil Cooler.', '2009-08-23', 2, 'Your complaint has been registered', 'false', 'false', '26-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1141, 7, 'SR 09207', 67, '2009-12-10', 'BBQ TL depot ', 28, 51, 'Stone india', '136', 'Stator winding earthed', '2009-10-17', 2, 'Your complaint has been registered', 'false', 'false', '31-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1142, 2, 'SER 098803', 59, '2009-11-14', 'SER TL depot ', 19, 10, '110vdc - 110vac', '30', 'NO output.', '2009-11-21', 2, 'Your complaint has been registered', 'false', 'false', '27-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1143, 10, 'ECR 08026', 63, '2009-01-22', 'ECR AC depot  ', 69, 2, '0', '3', 'No output', '2009-12-18', 2, 'Your complaint has been registered', 'false', 'false', '28-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1144, 4, 'CR 09054', 2, '2009-09-09', 'Matunga AC Depot ', 36, 7, '0', '19', 'Condenser Motor Earthed .( ABB make)', '2009-08-12', 2, 'Your complaint has been registered', 'false', 'false', '25-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1145, 6, 'NR 20202 ', 1, '2009-04-05', 'NDLS EMU car shed ', 7, 43, '0', '83', 'Main compressor nor working. (NR 13055)', '2009-11-20', 2, 'Your complaint has been registered', 'false', 'false', '01-02-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1146, 7, 'SR 09606', 65, '2009-11-29', 'BBQ TL depot ', 28, 51, 'Stone India', '136', 'Alternator not working.', '2009-12-18', 2, 'Your complaint has been registered', 'false', 'false', '29-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1147, 6, 'NR 09984', 63, '2010-04-01', 'NDLS AC Depot ', 7, 66, '0', '108', '2KVA Transformer Internal Short ( Lambda make).', '2010-01-23', 2, 'Your complaint has been registered', 'false', 'false', '02-02-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1148, 17, 'EC 08029', 63, '2009-01-31', 'Dharbhanga.', 65, 67, '1', '109', 'Battery low voltage', '2009-12-25', 2, 'Your complaint has been registered', 'false', 'false', '30-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1149, 17, 'EC 08026', 63, '2009-01-22', 'Dharbhanga.', 65, 2, '1', '3', 'PP SIDE RRU FREQUENTLY NO GENERATION.', '2009-12-12', 2, 'Your complaint has been registered', 'false', 'false', '25-02-2011 11,19', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1150, 17, ' SEC 0981', 59, '2009-11-14', 'BILASPUR.', 61, 10, '1', '30', 'NO OUTPUT FROM INVERTER', '2010-03-01', 2, 'Your complaint has been registered', 'false', 'false', '25-02-2011 11,23', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1151, 17, 'SER 098154', 73, '2009-08-12', 'Santragachi.', 19, 68, '1', '110', 'PUMP NOT WORKING.', '2010-01-18', 2, 'Your complaint has been registered', 'false', 'false', '03-02-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1152, 17, 'ECoR 09056', 57, '2009-03-28', 'Bhubaneshwar', 62, 16, '1', '42', 'INVERTER  NOT WORKING.', '2010-03-13', 2, 'Your complaint has been registered', 'false', 'false', '31-12-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1153, 17, 'SECR 09051', 57, '2010-01-23', 'Bilaspur.', 61, 16, '1', '42', 'INVERTER  NO OUTPUT', '2010-04-18', 2, 'Your complaint has been registered', 'false', 'false', '01-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1154, 17, 'ECR 08801', 59, '2009-03-26', 'Darbhanga.', 65, 10, '1', '29', 'INVERTER  NOT WORKING.', '2009-03-28', 2, 'Your complaint has been registered', 'false', 'false', '02-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1155, 17, 'NR 13055', 1, '2009-03-30', 'Gazhiabad.', 7, 69, '1', '111', 'Driver???s LED Indication Panel Internal Short  Circuit.     ', '2010-05-04', 2, 'Your complaint has been registered', 'false', 'false', '25-02-2011 11,52', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1156, 17, 'SER 098152', 73, '2009-05-12', 'Santragachi.', 19, 16, '1', '41', 'NO OUTPUT FROM INVERTER', '2010-04-20', 2, 'Your complaint has been registered', 'false', 'false', '04-02-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1157, 17, 'SER 098618,', 71, '2010-08-03', 'Santragachi.', 19, 10, '1', '30', 'NO OUTPUT FROM INVERTER', '2010-04-15', 2, 'Your complaint has been registered', 'false', 'false', '05-02-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1158, 17, 'ECoR 09060', 1, '2010-02-21', 'Vishakapattinam.', 64, 7, '', '13', '"RMPU CONDENSOR MOTOR (ABB Make) NOT WORKING AND TIMERS & CONTACTORS MALFUNCTIONING.\r\n"', '2010-05-21', 2, 'Your complaint has been registered', 'false', 'false', '03-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1159, 17, 'SR 14013', 1, '2009-07-20', 'Velachery, Chennai', 28, 70, '11550', '112', 'HEAD LIGHT DC-DC CONVERTER CONVERTER ??? I DEFECTIVE    ', '2010-10-06', 2, 'Your complaint has been registered', 'false', 'false', '25-02-2011 12,18', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1160, 17, 'ER 10051', 2, '2010-02-22', 'Chitpur  depot, Kolkatta ', 4, 71, '0912-13-239', '113', '3Nos of 2KVA TRANSFORMER COIL BURNT', '2010-06-06', 2, 'Your complaint has been registered', 'false', 'false', '25-02-2011 12,21', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1161, 17, 'ECR 08802', 59, '2009-04-16', 'Darbhanga.', 65, 8, '', '23', 'NO GENERATION& PHASE WINDING INSULATION WEAK. ', '2010-05-16', 2, 'Your complaint has been registered', 'false', 'false', '04-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1162, 17, 'ECR 08052', 2, '2009-02-16', 'Darbhanga.', 65, 77, '08057C16089', '129', 'NO GENERATION. ', '2010-12-07', 2, 'Your complaint has been registered', 'false', 'false', '25-02-2011 12,28', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1163, 17, 'SR 14016', 1, '2009-08-18', 'Tambaram.', 28, 35, 'R07.J 391', '71', 'MOTOR UNUSUAL SOUND. ', '2010-08-23', 2, 'Your complaint has been registered', 'false', 'false', '05-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1164, 17, 'SER 098606', 1, '2009-11-07', 'HATIA.', 19, 10, '', '29', 'BOTH INVERTERS DEFECTIVE', '2010-07-30', 2, 'Your complaint has been registered', 'false', 'false', '06-02-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1165, 17, 'ECoR 09060', 2, '2010-02-21', 'Vishakapattanam.', 62, 16, '', '42', 'NPP SIDE  INVERTER  NOT WORKING.', '2010-06-24', 2, 'Your complaint has been registered', 'false', 'false', '07-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1166, 17, 'SER 108416', 65, '2010-04-13', 'Santaragachi.', 19, 10, '', '30', 'BOTH  INVERTERS  NO OUTPUT.', '2010-04-28', 2, 'Your complaint has been registered', 'false', 'false', '08-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1167, 17, 'CR 10051', 57, '2010-06-28', 'Pune.', 38, 7, '', '18', '3 Pole MCB one contact element open and Thermal overload relay not Working.', '2010-09-18', 2, 'Your complaint has been registered', 'false', 'false', '09-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1168, 17, 'ECoR 09060', 57, '2010-12-02', 'Waltair.', 62, 72, '', '114', '1No VRLA BATTERY DEFECTIVE.', '2010-09-09', 2, 'Your complaint has been registered', 'false', 'false', '26-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1169, 17, 'SECR 20003', 32, '2010-01-06', 'Moti Bagh, Nagpur.', 60, 62, '', '103', '     HEAD LIGHT DC-DC CONVERTER NOT WORKING.', '2010-09-20', 2, 'Your complaint has been registered', 'false', 'false', '07-02-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1170, 17, 'SECR 20003', 32, '2010-05-05', 'Moti Bagh, Nagpur.', 60, 73, 'LAX-2000 D3', '115', 'SPEED RECORDER NOT WORKING.', '2010-09-20', 2, 'Your complaint has been registered', 'false', 'false', '08-02-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1171, 17, 'SER 098152', 73, '2010-12-14', 'Santragachi, ', 19, 16, '', '41', 'MCCB DEFECTIVE.', '2007-01-01', 2, 'Your complaint has been registered', 'false', 'false', '10-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1172, 17, 'SER 098618', 69, '2010-08-03', 'Santragachi, ', 19, 10, '', '30', '2.5KVA INVERTER NOT WORKING.', '2010-10-29', 2, 'Your complaint has been registered', 'false', 'false', '09-02-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1173, 17, 'WR 107B141', 11, '2010-12-10', 'Kandivili.', 39, 34, 'R102024', '68', 'HEAVY OIL LEAKAGE AND PISTON HOUSING CRACKED.', '2010-12-10', 2, 'Your complaint has been registered', 'false', 'false', '27-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1174, 17, 'WR 104047', 69, '2010-04-13', 'RAJKOT', 40, 10, 'W2K 5810259', '30', '2.5KVA INVERTER NOT WORKING.', '2010-10-15', 2, 'Your complaint has been registered', 'false', 'false', '06-01-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1175, 17, 'ECoR 09060', 57, '2010-12-02', 'Waltair', 62, 7, '', '14', 'CONDENSER MOTOR -I NOT WORKING.', '2010-09-15', 2, 'Your complaint has been registered', 'false', 'false', '10-02-2012 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1176, 17, 'SWR 09163', 73, '2009-05-11', 'Bangalore.', 46, 75, '', '117', 'PP SIDE ALTERNATOR DEFECTIVE.     ', '2010-10-06', 2, 'Your complaint has been registered', 'false', 'false', '28-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0),
(1177, 17, 'SWR 09002', 61, '2010-02-09', 'Bangalore.', 46, 75, '', '117', 'ALTERNATOR DEFECTIVE.     ', '2010-02-09', 2, 'Your complaint has been registered', 'false', 'false', '29-11-2011 10,15', '0000-00-00', '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
CREATE TABLE IF NOT EXISTS `coach` (
  `coachId` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`coachId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`coachId`, `type`) VALUES
(1, 'AC EMU MC'),
(2, 'SG ACCW CB'),
(3, 'AC EMU TC'),
(4, 'SG ACCW LL'),
(9, 'AC MEMU DM'),
(10, 'AC MEMU TC'),
(11, 'ACDC EMU M'),
(18, 'ACDC EMU T'),
(19, 'ANGOLA ART'),
(23, 'ANGOLA DMU'),
(24, 'ANGOLA FC'),
(25, 'ANGOLA FCZ'),
(26, 'ANGOLA RC'),
(27, 'ANGOLA SDC'),
(28, 'ANGOLA SLR'),
(29, 'BAR CONF. '),
(30, 'CAB. CAR-I'),
(32, 'DEMU DPC H'),
(33, 'DEMU DPC J'),
(34, 'DEMU DTC J'),
(35, 'DEMU TC HH'),
(37, 'DEMU TC HH'),
(38, 'DEMU TC1 J'),
(39, 'DETC OB'),
(40, 'DETC US'),
(41, 'EOG LACCW'),
(42, 'EOG SCZAC '),
(43, 'HEALTH CAR'),
(44, 'ICC'),
(45, 'JANSHATABD'),
(46, 'JDCC'),
(47, 'KM DMC'),
(48, 'KM NDMC IN'),
(49, 'KM NDMC MC'),
(51, 'KM TC'),
(52, 'MIL. KIT. '),
(53, 'MLACCW'),
(54, 'NIL'),
(55, 'POWER CAR '),
(56, 'REST. CAR '),
(57, 'SG ACCW CB'),
(58, 'SG ACCW LL'),
(59, 'SG CB'),
(60, 'SG CB CBC'),
(61, 'SG FAC'),
(62, 'SG FAC CBC'),
(63, 'SG FACCW'),
(64, 'SG FACCW C'),
(65, 'SG GS'),
(66, 'SG GS CBC'),
(67, 'SG GSCN'),
(68, 'SG GSCN CB'),
(69, 'SG GSCZ'),
(70, 'SG GSCZ KR'),
(71, 'SG GSCZ CB'),
(72, 'SG GSCZ JS'),
(73, 'SG SCZAC'),
(74, 'SG SCZAC C'),
(75, 'SG SCZAC J'),
(76, 'SG SCZAC L'),
(77, 'SG SLRD'),
(78, 'SG SLRD CB'),
(79, 'SG SR JS'),
(80, 'SG SRD'),
(81, 'SG SRD LLE'),
(82, 'SPA CAR'),
(83, 'SPART DPC1'),
(84, 'SPART DPC2'),
(85, 'SPART TC'),
(86, 'SR'),
(87, 'SR JS'),
(88, 'STAFF CAR '),
(89, 'WCB AC'),
(90, 'WDCB AC'),
(91, 'WDCC AC'),
(92, 'WDCGN AC'),
(93, 'WDCR AC'),
(94, 'WDCT AC'),
(95, 'WDS AC'),
(96, 'WDSRRM'),
(97, 'WLRRM AC'),
(98, 'WMCBAC'),
(99, 'WMCRAC1'),
(100, 'WMCRAC2'),
(101, 'WMCRAC3'),
(102, 'WMCTAC1'),
(103, 'WMCTAC2'),
(104, 'WMCTAC3'),
(105, 'WMCTAC4'),
(106, 'WMSAC'),
(107, 'WMSRRMAC'),
(108, 'WPCB'),
(109, 'WPCRAC 1'),
(110, 'WPCRAC 2'),
(111, 'WPCTAC 1'),
(112, 'WPCTAC 2'),
(113, 'WPCTFAC'),
(114, 'WPSAC'),
(115, 'WPSLAC'),
(116, 'WPSRRMAC'),
(117, 'WMCBAG'),
(118, 'WMCRAC1'),
(119, 'WMCRAC2'),
(120, 'WMCRAC3'),
(121, 'WMCTAC1'),
(122, 'WMCTAC2'),
(123, 'WMCTAC3'),
(124, 'WMCTAC4'),
(125, 'WMSAC'),
(126, 'WMSRRMAC'),
(127, 'WPCB'),
(128, 'WPCRAC1'),
(129, 'WPCRAC2'),
(130, 'WPCTAC1'),
(131, 'WPCTFAC'),
(132, 'WPSAC'),
(133, 'WPSLAC'),
(134, 'WPSRRMAC');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
CREATE TABLE IF NOT EXISTS `division` (
  `divisionId` int(11) NOT NULL AUTO_INCREMENT,
  `zoneId` int(11) NOT NULL,
  `divisionname` varchar(25) NOT NULL,
  PRIMARY KEY (`divisionId`),
  KEY `FK_division_railways` (`zoneId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`divisionId`, `zoneId`, `divisionname`) VALUES
(1, 1, 'Howrah'),
(2, 1, 'Asansol'),
(3, 1, 'Malda'),
(4, 1, 'Sealdah'),
(5, 6, 'Firozpur'),
(6, 6, 'Ambala'),
(7, 6, 'Delhi'),
(8, 6, 'Lucknow'),
(9, 6, 'Moradabad'),
(10, 16, 'Varanasi'),
(11, 16, 'Izzatnagar'),
(12, 16, 'Lucknow'),
(13, 3, 'Katihar'),
(14, 3, 'Lumding'),
(15, 3, 'Rangia'),
(16, 3, 'Alipurduar'),
(17, 3, 'Tinsukia'),
(18, 2, 'Ranchi'),
(19, 2, 'Kharagpur'),
(20, 2, 'Chakradharpur'),
(21, 2, 'Adra'),
(22, 8, 'Vijayawada'),
(23, 8, 'Hyderabad'),
(24, 8, 'Nanded'),
(25, 8, 'Secunderabad'),
(26, 8, 'Guntur'),
(27, 8, 'Guntakal'),
(28, 7, 'Chennai'),
(29, 7, 'Salem'),
(30, 7, 'Madurai'),
(31, 7, 'Trivandrum'),
(32, 7, 'Palakkad'),
(33, 7, 'Tiruchirapalli'),
(34, 4, 'Nagpur'),
(35, 4, 'Solapur'),
(36, 4, 'Mumbai'),
(37, 4, 'Bhusawal'),
(38, 4, 'Pune'),
(39, 5, 'Mumbai'),
(40, 5, 'Rajkot'),
(41, 5, 'Bhavnagar'),
(42, 5, 'Vadodara'),
(43, 5, 'Ahmedabad'),
(44, 5, 'Mumbai Central'),
(45, 5, 'Ratlam'),
(46, 14, 'Bangalore'),
(47, 14, 'Mysore'),
(48, 14, 'Hubli'),
(49, 12, 'Ajmer'),
(50, 12, 'Bikaner'),
(51, 12, 'Jaipur'),
(52, 12, 'Jodhpur'),
(53, 15, 'Kota'),
(54, 15, 'Bhopal'),
(55, 15, 'Jabalpur'),
(56, 11, 'Agra'),
(57, 11, 'Jhansi'),
(58, 11, 'Allahabad'),
(59, 13, 'Raipur'),
(60, 13, 'Nagpur'),
(61, 13, 'Bilaspur'),
(62, 9, 'Khurda'),
(63, 9, 'Sambalpur'),
(64, 9, 'Visakhapatnam'),
(65, 10, 'Samastipur'),
(66, 10, 'Danapur'),
(67, 10, 'Dhanbad'),
(68, 10, 'Mughalsarai'),
(69, 10, 'Sonpur'),
(71, 17, 'ICF'),
(72, 18, 'Madgaon');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
CREATE TABLE IF NOT EXISTS `equipment` (
  `equipId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`equipId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equipId`, `name`) VALUES
(1, 'AC UNITS IN NOSE CONE CABINS'),
(2, 'ALTERNATOR-ERRU 25 KW'),
(3, 'HYDRAULIC LIFTING PLATFORM'),
(4, 'DG SET 7.5 KVA'),
(5, 'BLDC FAN'),
(6, 'BATTERY 1100 AH VRLA'),
(7, 'RMPU'),
(8, 'ALTERNATOR-ERRU 4.5 KW'),
(9, 'RECTIFIER COOLING FAN MOTOR'),
(10, 'INVERTER 2.5KVA'),
(11, 'WATER RAISNG PUMP'),
(12, 'MODIFIED BRL FITTING'),
(13, 'MAIN COMPRESSOR'),
(14, 'LIGHTING ARRESTOR'),
(15, 'DG SET 2 KVA'),
(16, 'INVERTER 25KVA'),
(17, 'RECTIFIER BLOWER MOTOR'),
(18, 'BATTERY CHARGER'),
(19, 'BATTERY LEAD ACID 120 AH'),
(20, 'LED INDICATION PANEL'),
(21, 'INVERTER 5 KVA'),
(22, 'MODULAR SWITCHES'),
(23, 'BATTERY 1100 AH VRLA'),
(24, 'BATTERY 1100 AH FLOODED'),
(25, 'TR. RECTIFIER UNIT - MALGAMATED'),
(26, 'MASTER CONTROLLER'),
(27, 'TAP CHANGER'),
(28, 'RC FAN 110 V DC 400 MM SWEEP'),
(29, 'VACCUM CIRCUIT BREAKER'),
(30, 'RADIATOR MOTOR IMPELLER'),
(31, 'MOBILE CHARGING SOCKETS'),
(32, 'MAIN SILICON RECTIFIER'),
(33, 'BATTERY LEAD ACID 90 AH'),
(34, 'AUXILLARY COMPRESSOR'),
(35, 'TRANS.OIL COOLER RADIATOR MOTOR'),
(36, 'RELAY 110 DC 10A TYPE MM00'),
(37, 'TRACTION AMMETER 0 -1000A'),
(38, 'PANTOGRAPH'),
(39, 'BATTERY LEAD ACID 90 AH'),
(40, 'TWIN BEAM HEAD LIGHT'),
(41, 'ESMON'),
(42, 'CABLE HEAD TERMINATION SYSTEM'),
(43, 'MAIN COMPRESSOR MOTOR'),
(44, 'SMOOTHING REACTOR CHOKE'),
(45, 'DEEPFREEZER 100 LITRES 230V AC'),
(46, 'BATTERY CHARGER 200A'),
(47, 'INVERTER 10 KVA'),
(48, 'ANNUNCIATOR'),
(49, 'LED FLASHER LIGHT'),
(50, 'CVT STABILIZER'),
(51, 'ALTERNATOR- 4.5 KW'),
(52, 'BATTERY LEAD ACID 120 AH'),
(53, 'BATTERY CHARGER 415/24V'),
(54, 'RC FAN 110 V DC 450 MM SWEEP'),
(55, 'LED EMERGENCY LIGHT'),
(56, 'OIL PUMP MOTOR'),
(57, 'BATTERY LEAD ACID 800 AH'),
(58, 'CABLE HEAD'),
(59, 'BATTERY LEAD ACID 1100 AH'),
(60, 'BATTERY LEAD ACID 90 AH'),
(61, 'MICRO PROCESSOR BASED CONTROL UNIT FOR RMPU'),
(62, 'HEAD LIGHT DC-DC CONVERTER'),
(63, '110V/1100AH BATTERY'),
(64, 'INVERTER 100VA'),
(65, 'TRANSFORMER OIL COOLER'),
(66, 'POWER PANEL FOR AC COACH'),
(67, '110/110AH BATTERY VRLA'),
(68, 'WRA PUMP'),
(69, 'LED PANEL'),
(70, 'DC-DC CONVERTER'),
(71, 'POWER PANEL'),
(72, '110/1100AH BATTERY VRLA'),
(73, 'SPEEDOMETER'),
(74, 'AUX COMPRESSOR'),
(75, 'ALTERNATOR 25 KW'),
(76, 'ALTERNATOR-RRU 4.5 KW'),
(77, 'ALTERNATOR-RRU 25 KW'),
(78, 'WORKMANSHIP POOR');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `image_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `mime_type` varchar(255) NOT NULL,
  `file_size` int(11) NOT NULL,
  `file_data` blob NOT NULL,
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `image_id` (`image_id`),
  KEY `filename` (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `images`
--


-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manufId` int(11) NOT NULL AUTO_INCREMENT,
  `equipId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`manufId`),
  KEY `FK_manufacturer_equipment` (`equipId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufId`, `equipId`, `name`) VALUES
(1, 1, 'HINDUSTAN FIBRE'),
(2, 2, 'HMTD'),
(3, 2, 'KEL'),
(4, 2, 'Best & Crompton'),
(5, 2, 'Stesalit'),
(6, 3, 'Hydraulic Actuators'),
(7, 3, 'Vanjax'),
(8, 4, 'India Casting Works'),
(9, 4, 'KEC'),
(10, 5, 'DUBAS'),
(11, 5, 'CGL'),
(12, 6, 'KIRLOSKER'),
(13, 7, 'SIDWAL REFRIGRATION'),
(14, 7, 'INTEC'),
(15, 7, 'Amit Engineers'),
(16, 7, 'Fedders Llyod'),
(17, 7, 'AMBER'),
(18, 7, 'LLOYD ELECTRIC'),
(19, 7, 'DAULAT RAM IND'),
(20, 8, 'HMTD'),
(21, 8, 'KEL'),
(22, 8, 'Stesalit'),
(23, 8, 'STONE INDIA'),
(24, 8, 'Prestech'),
(25, 8, 'P.D.Steels'),
(26, 9, 'ELGI Electric'),
(27, 10, 'DUBAS'),
(28, 10, 'Designs &Prototype'),
(29, 10, 'SIGNOTRON'),
(30, 10, 'ELECTRO WAVES'),
(31, 11, 'CEC'),
(32, 11, 'Kalsi Metal'),
(33, 12, 'Junaid'),
(34, 13, 'KPC'),
(35, 13, 'ELGI EQUIPMENTS'),
(36, 14, 'OBLUM'),
(37, 15, 'Honda siel'),
(38, 16, 'Autometers'),
(39, 16, 'Medha servo'),
(40, 16, 'HIND RECTIFIER'),
(41, 16, 'ELECTRO WAVES'),
(42, 16, 'HI - REL'),
(43, 17, 'HIND RECTIFIER'),
(44, 18, 'Designs Prototype'),
(45, 18, 'RAMYA'),
(46, 18, 'Designs&Prototype'),
(47, 19, 'KIRLOSKER'),
(48, 20, 'RAMYA'),
(49, 21, 'DUBAS'),
(50, 22, 'K.L.D. Trading'),
(51, 23, 'KIRLOSKER'),
(52, 24, 'Mysore Thermo'),
(53, 25, 'Designs &Prototype'),
(54, 26, 'CGL'),
(55, 27, 'BHEL'),
(56, 28, 'LEC'),
(57, 28, 'POLAR'),
(58, 28, 'SPJ Industries'),
(59, 29, 'Autometers'),
(60, 29, 'AREVA'),
(61, 29, 'Biecco'),
(62, 29, 'BOMBARDIER'),
(63, 30, 'NIPPON KHULERS'),
(64, 31, 'Record Electricals'),
(65, 32, 'HIND RECTIFIER'),
(66, 33, 'Exide Ind.'),
(67, 34, 'Airtek '),
(68, 34, 'CEC'),
(69, 35, 'Nippon/CEC'),
(70, 35, 'EIGI ELECTRIC'),
(71, 35, 'CEC'),
(72, 35, 'Asian cooling'),
(73, 36, 'Basic Engineers& Traders'),
(74, 37, 'CGL'),
(75, 38, 'Contrasys'),
(76, 39, 'Kirloskar'),
(77, 39, 'MysoreThermo'),
(78, 39, 'LABCO'),
(79, 40, 'SIGNOTRON'),
(80, 41, 'Laxven'),
(81, 41, 'Stesalit'),
(82, 42, 'Safe system'),
(83, 43, 'EIGI ELECTRIC'),
(84, 44, 'BHEL'),
(85, 45, 'Ref & HomeAppliances'),
(86, 46, 'Designs & Prototype'),
(87, 47, 'Hi-REL'),
(88, 48, 'RAMYA'),
(89, 49, 'Matsushi'),
(90, 50, 'RAMYA'),
(91, 51, 'I C Electricals'),
(92, 52, 'MysoreThermo'),
(93, 52, 'Star Battery'),
(94, 53, 'Designs&Prototype'),
(95, 54, 'Raman Sinhas'),
(96, 55, 'INTRA'),
(97, 56, 'Flow Well Pumps&Meters'),
(98, 57, 'SOUTHERN BATTERIES'),
(99, 58, 'ELASTIMOLD INDIA'),
(100, 59, 'UNITED LEAD OXIDE'),
(101, 60, 'LEAD ACID BATTERY'),
(102, 61, 'Amit Engineers'),
(103, 62, 'Matsushi power Tech'),
(104, 63, 'HBL'),
(105, 64, 'HY - TECH POWER Sys'),
(106, 64, 'SIGNOTRON'),
(107, 65, 'UNITED COOLING SYSTEM'),
(108, 66, 'KONTACT TRADING Co'),
(109, 67, 'MICROTEX'),
(110, 68, 'COIMBATORE COMPRESSOR Pvt Ltd'),
(111, 69, 'RAMYAA ELECTRO GEAR'),
(112, 70, 'MATSUSHI'),
(113, 71, 'RAMYAA ELECTRO GEAR'),
(114, 72, 'EXIDE'),
(115, 73, 'LAXVEN'),
(116, 74, 'COIMBATORE COMPRESSOR Engg Ltd'),
(117, 75, 'KEL'),
(118, 75, 'HMTD'),
(119, 75, 'Stesalit'),
(120, 75, 'Presstech'),
(121, 75, 'I.C.Electrical'),
(122, 75, 'Stone India Ltd.'),
(123, 76, 'KEL'),
(124, 76, 'HMTD'),
(125, 76, 'Stesalit'),
(126, 76, 'Presstech'),
(127, 76, 'I.C.Electrical'),
(128, 76, 'Stone India Ltd.'),
(129, 77, 'KEL'),
(130, 77, 'HMTD'),
(131, 77, 'Stesalit'),
(132, 77, 'Presstech'),
(133, 77, 'I.C.Electrical'),
(134, 77, 'Stone India Ltd.'),
(135, 78, 'ICF'),
(136, 51, 'Stone India Ltd. '),
(137, 55, 'Maave Electronics ');

-- --------------------------------------------------------

--
-- Table structure for table `railways`
--

DROP TABLE IF EXISTS `railways`;
CREATE TABLE IF NOT EXISTS `railways` (
  `zoneId` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(25) NOT NULL,
  PRIMARY KEY (`zoneId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `railways`
--

INSERT INTO `railways` (`zoneId`, `zone`) VALUES
(1, 'ER'),
(2, 'SER'),
(3, 'NFR'),
(4, 'CR'),
(5, 'WR'),
(6, 'NR'),
(7, 'SR'),
(8, 'SCR'),
(9, 'ECOR'),
(10, 'ECR'),
(11, 'NCR'),
(12, 'NWR'),
(13, 'SECR'),
(14, 'SWR'),
(15, 'WCR'),
(16, 'NER'),
(17, 'ICF'),
(18, 'KR');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `userAdmin` enum('true','false') DEFAULT NULL,
  `railway` int(11) NOT NULL,
  `division` int(11) NOT NULL,
  `depot` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `bsnlno` varchar(25) DEFAULT NULL,
  `rlyno` int(11) NOT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `authorised` enum('true','false') NOT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `designation`, `userAdmin`, `railway`, `division`, `depot`, `email`, `bsnlno`, `rlyno`, `mobile`, `fax`, `password`, `authorised`, `lastLoginTime`, `createTime`) VALUES
(1, 'umesh', 'CEE/QCC', 'true', 17, 71, 'ICF', 'ceeqc@icf.railnet.gov.in', '914426287787', 6046300, '919003141302', '914426287787', '5a105e8b9d40e1329780d62ea2265d8a', 'true', '2011-03-11 14:37:56', '2011-01-31 11:27:21'),
(2, 'hvrkmurthy', 'SSE/L', 'true', 17, 71, 'ICF FUR', 'hvrkmurthy@yahoo.com', '26146337', 46337, '09003149153', '26260982', '8493f7bdf8f59250818b34f2c9d92c6d', 'true', '2011-02-25 15:12:55', '2011-02-05 12:29:09'),
(3, 'dummyswr', 'SSE', 'false', 14, 48, 'SSE/AC/UBL', 'hvrkmurthy@yahoo.com', '', 65555, '', '', 'ac860d067d4a317435cea94466769a0b', 'true', '2011-02-08 10:07:00', '2011-02-08 09:53:22'),
(4, 'dummywr', 'SSE', 'false', 5, 39, 'Mahalakshmi', 'dummies@gmail.com', '', 25566, '', '', 'fc6a6bc8b9646d25bccad02c7299f2f5', 'false', '2011-02-09 17:16:29', '2011-02-09 17:16:29'),
(5, 'dummycr', 'SSE/L', 'false', 4, 36, 'Kurla', 'hvrkmurthy@yahoo.com', '', 41111, '', '', '7e4b2af8783d66c7992b8a688f3d2e19', 'false', '2011-02-10 10:23:48', '2011-02-10 10:23:48'),
(6, 'dummysr', 'SSE/L', 'false', 7, 28, 'BBQ', 'hvrkmurthy@yahoo.com', '', 89624, '', '', '6e2641df43ddbbe36971589c38d661da', 'false', '2011-02-10 10:32:08', '2011-02-10 10:32:08'),
(7, 'Rajendran', 'edpm', 'false', 17, 71, 'accounts', 'edpm@icf.railnet.gov.in', '', 47166, '9003141117', '', '60332af3c9a37d35aa4a32a466a54e1b', 'false', '2011-03-10 17:12:19', '2011-03-10 17:12:19');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
