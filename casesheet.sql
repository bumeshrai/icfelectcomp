-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2011 at 02:37 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
