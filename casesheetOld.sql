-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 09, 2011 at 04:51 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1116 ;

--
-- Dumping data for table `casesheet`
--

INSERT INTO `casesheet` (`caseid`, `railway`, `coachNo`, `coachType`, `dateCommission`, `depot`, `division`, `equipment`, `equipmentNo`, `manufacturer`, `description`, `dateFailure`, `complainant`, `icfComments`, `closed`, `fileUploaded`, `createTime`, `dateRegisteration`, `dateActionTaken`, `updateTime`, `updateUser`) VALUES
(1001, 14, '09163', 73, '2009-10-31', 'SBC', 46, 75, '', '117', 'Alternator defective. (PP side)', '2010-06-01', 2, 'Your complaint has been registered', 'false', 'false', NULL, '0000-00-00', '0000-00-00', NULL, NULL),
(1002, 14, '09002', 61, '2010-03-26', 'SBC', 46, 75, '', '117', 'Alternator defcetive.', '2010-09-02', 2, 'Your complaint has been registered', 'false', 'false', NULL, NULL, NULL, NULL, NULL),
(1003, 5, '071580', 73, '2007-09-26', 'Mumbai Central', 39, 7, 'One', '15', 'Compressor Tripping due to internal fault.', '2007-10-11', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 10:11:00 AM', NULL, NULL, NULL, NULL),
(1004, 8, 'SCR 07658', 69, '2007-08-31', 'Secundrabad TL depot', 25, 5, '2', '11', 'Fan PCB defective.', '2007-12-05', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 10:17:17 AM', NULL, NULL, NULL, NULL),
(1005, 9, 'ECoR 07052', 57, '2007-09-07', 'Bhubaneswar Ac depot', 64, 7, '1', '15', 'Compressor winding IR zero.(earthed)', '2007-11-17', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 10:23:18 AM', NULL, NULL, NULL, NULL),
(1006, 2, 'ER 13021', 1, '2006-12-19', 'Tikiapara EMU car shed ', 19, 49, '9484', '89', 'Stand by Circuit not working and its fuse blowing.', '2007-08-30', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 10:28:39 AM', NULL, NULL, NULL, NULL),
(1007, 2, 'ER 13020', 2, '2006-11-27', 'Tikiapara EMU car shed ', 19, 18, '06824041, 06824047, 06824', '45', 'Input fuse blowing & output voltage is low.', '2007-11-28', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 10:42:00 AM', NULL, NULL, NULL, NULL),
(1008, 1, 'ER 13023', 1, '2006-12-18', 'Howrah EMU car shed', 1, 50, '03070271', '90', 'No output voltage.', '2007-04-03', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 11:21:27 AM', NULL, NULL, NULL, NULL),
(1009, 4, 'CR 07604 , ', 69, '2007-06-13', 'Mumbai TL depot ', 36, 51, 'ICE 080411', '91', 'Alternator pulley jammed.', '2007-09-17', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 11:24:40 AM', NULL, NULL, NULL, NULL),
(1010, 4, 'CR 07606', 69, '2007-09-04', 'Mumbai TL depot ', 36, 52, '13074, 13087', '92', 'Reverse polarity.', '2007-09-26', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 11:35:26 AM', NULL, NULL, NULL, NULL),
(1011, 4, 'CR 07614', 69, '2007-09-01', 'Mumbai TL Depot', 36, 8, '0707008', '20', 'OVP Tripping and No generation', '2007-10-02', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 12:31:52 PM', NULL, NULL, NULL, NULL),
(1012, 4, 'CR 07619', 1, '2007-09-14', 'Mumbai TL Depot', 36, 2, '07063E7681', '3', 'No generation.', '2007-10-10', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 02:49:22 PM', NULL, NULL, NULL, NULL),
(1013, 4, 'CR 07611', 69, '2007-09-05', 'Mumbai TL depot', 36, 28, 'FB 154', '56', 'Coil Burnt.', '2007-12-10', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 02:52:21 PM', NULL, NULL, NULL, NULL),
(1014, 4, 'CR 07602', 69, '2007-07-13', 'Mumbai TL Depot', 36, 5, '07/56453', '11', 'PCB defective', '2007-10-03', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 02:54:38 PM', NULL, NULL, NULL, NULL),
(1015, 12, 'NWR 07603', 69, '2007-11-10', 'TL depot ', 52, 8, '070506E', '23', 'No generation.', '2008-02-18', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 02:59:55 PM', NULL, NULL, NULL, NULL),
(1016, 6, 'NR 20087', 1, '2007-07-04', 'Delhi EMU Car Shed ', 7, 41, '000', '81', 'Energy not recording.', '2007-11-16', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 03:07:07 PM', NULL, NULL, NULL, NULL),
(1017, 7, 'SR 07494', 65, '2007-07-31', 'BBQ TL depot ', 28, 76, '705003', '124', 'No generation.', '2008-02-20', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 03:57:18 PM', NULL, NULL, NULL, NULL),
(1018, 1, 'ER 13034', 1, '2007-09-20', 'Howrah EMU car shed', 1, 29, '27090', '60', 'VCB not Tripping.', '2007-12-17', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 03:59:52 PM', NULL, NULL, NULL, NULL),
(1019, 1, 'ER 13037', 1, '2007-12-12', 'Howrah EMU car shed', 1, 43, '07.05.01.646', '83', 'IR value of motor is Zero.', '2008-03-10', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 04:02:10 PM', NULL, NULL, NULL, NULL),
(1020, 3, 'NFR 07051', 57, '2007-03-02', 'Guwahati AC Coaching Shed', 16, 16, '000', '39', 'Booster card faulty.', '2008-04-07', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 04:05:15 PM', NULL, NULL, NULL, NULL),
(1021, 12, 'NWR 07181', 73, '2007-11-20', 'AC depot NWR', 49, 46, '000', '86', 'Winding Burnt.', '2008-04-11', 2, 'Your complaint has been registered', 'false', 'false', '10 Feb, 2011 04:44:00 PM', NULL, NULL, NULL, NULL),
(1022, 5, 'WR C0008', 11, '2008-01-01', 'Kandivili EMU car Shed ', 39, 39, '000', '77', 'Battery voltage low.', '2008-09-06', 2, 'Your complaint has been registered', 'false', 'false', '11 Feb, 2011 09:57:04 AM', NULL, NULL, NULL, NULL),
(1023, 5, '107C002,006', 18, '2007-11-30', 'Kandivili EMU car Shed ', 39, 28, '000', '58', 'Winding burnt.', '2008-09-06', 2, 'Your complaint has been registered', 'false', 'false', '11 Feb, 2011 10:13:09 AM', NULL, NULL, NULL, NULL),
(1024, 5, '107C001-002', 18, '2007-11-12', 'Kandivili ', 39, 54, '42 Nos', '95', 'Blade Jammed, overheating.', '2008-09-06', 2, 'Your complaint has been registered', 'false', 'false', '11 Feb, 2011 10:15:51 AM', NULL, NULL, NULL, NULL),
(1025, 8, 'SC 07001', 61, '2008-07-15', 'SC', 25, 16, '08036', '41', 'Inverter not switching ON', '2008-08-21', 2, 'Your complaint has been registered', 'false', 'false', '11 Feb, 2011 02:48:00 PM', NULL, NULL, NULL, NULL),
(1026, 1, 'ER 13034', 1, '2007-09-20', 'Howrah EMU car shed', 1, 29, '000', '59', 'VCB not tripping', '2007-12-17', 2, 'Your complaint has been registered', 'false', 'false', '11 Feb, 2011 05:02:41 PM', NULL, NULL, NULL, NULL),
(1027, 3, 'NF 07026', 63, '2008-02-15', 'Guwahati AC Coaching Shed', 13, 16, '000', '40', 'Not Working', '2008-04-25', 2, 'Your complaint has been registered', 'false', 'false', '11 Feb, 2011 05:06:08 PM', NULL, NULL, NULL, NULL),
(1028, 16, 'NE 07052', 2, '2008-04-30', 'Ghorakpur AC Coaching she', 16, 2, '000', '4', 'Not Working', '2008-06-06', 2, 'Your complaint has been registered', 'false', 'false', '11 Feb, 2011 05:08:28 PM', NULL, NULL, NULL, NULL),
(1029, 4, 'CR 07616', 69, '2007-09-26', 'Mumbai Central TL Depot', 36, 55, '000', '96', 'Not working', '2008-07-15', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 10:34:31 AM', NULL, NULL, NULL, NULL),
(1030, 4, 'CR 08703', 77, '2008-03-18', 'Miraj TL Depot', 35, 52, '000', '93', 'Electrolyte oozing out.', '2008-07-03', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 10:52:06 AM', NULL, NULL, NULL, NULL),
(1031, 7, 'SR 08051', 2, '2008-07-23', 'BBQ TL depot ', 28, 16, '08018', '41', 'IGBT, Booster card defective.', '2008-07-25', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 10:54:13 AM', NULL, NULL, NULL, NULL),
(1032, 1, 'ER 13041', 1, '2008-01-02', 'Sealdah EMU Car shed', 4, 60, '145', '101', 'Container crack .', '2008-06-28', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 11:27:33 AM', NULL, NULL, NULL, NULL),
(1033, 2, '078127', 63, '2008-07-05', 'SER AC depot ', 2, 7, '000', '15', 'Control panel contact pin defective.', '2008-07-10', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 03:30:41 PM', NULL, NULL, NULL, NULL),
(1034, 2, '078058', 73, '2008-05-12', 'SER AC depot ', 19, 75, '070806B', '119', 'ET Burnt.', '2008-07-15', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 03:34:47 PM', NULL, NULL, NULL, NULL),
(1035, 2, 'SER 078056', 73, '2008-05-07', 'SER AC depot ', 19, 7, '000', '15', 'Control panel harness cable earthed ( PP side ).', '2008-08-18', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 03:39:56 PM', NULL, NULL, NULL, NULL),
(1036, 1, 'ER 13027', 1, '2007-01-22', 'Howrah EMU car shed', 1, 58, '1360806', '99', 'Smoke Emission from CHT.', '2008-05-12', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 03:41:36 PM', NULL, NULL, NULL, NULL),
(1037, 4, 'CR 07603', 69, '2007-09-29', 'CR TL Depot ', 36, 55, '000', '96', 'Emergency Lights not working', '2008-07-15', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 03:57:01 PM', NULL, NULL, NULL, NULL),
(1038, 1, 'ER 13049', 1, '2008-08-14', 'Howrah EMU car shed', 1, 35, '000', '71', 'Abnormal sound.', '2008-11-28', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:01:21 PM', NULL, NULL, NULL, NULL),
(1039, 2, 'SER 078062', 57, '2008-01-02', 'SER AC depot ', 19, 2, '070808A', '5', 'NO Generation.', '2008-12-01', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:05:27 PM', NULL, NULL, NULL, NULL),
(1040, 4, 'CR 07608', 69, '2007-10-02', 'Matunga TL depot', 36, 8, '0702E7493', '21', 'NO Generation.', '2008-04-25', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:07:54 PM', NULL, NULL, NULL, NULL),
(1041, 14, 'SWR 08001', 63, '2008-08-02', 'SBC AC depot ', 46, 16, '08026', '41', 'Inverter not Switching ON.', '2008-09-25', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:35:24 PM', NULL, NULL, NULL, NULL),
(1042, 14, 'SWR 08051', 2, '2008-08-02', 'SBC AC depot ', 46, 16, '08030', '41', 'Inverter not Switching ON.', '2008-09-25', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:38:30 PM', NULL, NULL, NULL, NULL),
(1043, 1, 'ER 07418', 65, '2007-11-10', 'Howrah TL Depot', 1, 8, '0601013', '20', 'No Generation.', '2008-04-11', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:47:47 PM', NULL, NULL, NULL, NULL),
(1044, 7, 'SR 08055', 57, '2008-08-27', 'BBQ TL depot ', 28, 59, '06/07', '100', 'Specific gravity not improving.', '2008-12-19', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:49:49 PM', NULL, NULL, NULL, NULL),
(1045, 1, 'ER 13041', 1, '2008-01-12', 'Sealdah EMU Car shed', 4, 60, '000', '101', 'Cell 1& 5 container crack.', '2008-06-28', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:52:47 PM', NULL, NULL, NULL, NULL),
(1046, 9, 'SECR 08051', 2, '2008-09-13', 'Bubhaneshwar AC Depot', 64, 2, '0807E3814', '3', 'No Generation.', '2008-09-22', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:55:01 PM', NULL, NULL, NULL, NULL),
(1047, 1, 'ER 13038', 1, '2007-12-12', 'Howrah EMU car shed', 1, 18, '07-102487', '45', 'Not working.', '2008-12-11', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:57:19 PM', NULL, NULL, NULL, NULL),
(1048, 1, 'ER 13043', 1, '2008-02-08', 'Howrah EMU car shed', 71, 35, '160EMU', '70', 'Main field earthed ', '2009-01-12', 2, 'Your complaint has been registered', 'false', 'false', '14 Feb, 2011 04:59:06 PM', NULL, NULL, NULL, NULL),
(1049, 9, 'ECoR 08051', 2, '2008-05-13', 'Bhubaneshwar AC Depot ', 64, 16, '2007D10727/15', '40', 'Inverter not switching ON.', '2009-01-29', 2, 'Your complaint has been registered', 'false', 'false', '16 Feb, 2011 11:56:26 AM', NULL, NULL, NULL, NULL),
(1050, 1, 'ER 07601', 2, '2007-11-28', 'Howrah AC Depot ', 1, 55, '000, Maave Electronics', '96', 'LED Emergency Lights not glowing.', '2009-01-29', 2, 'Your complaint has been registered', 'false', 'false', '16 Feb, 2011 12:20:51 PM', NULL, NULL, NULL, NULL),
(1051, 7, 'SR 07351', 2, '2007-09-26', 'BBQ AC Depot', 28, 64, '000', '106', 'Inverter not working', '2009-01-20', 2, 'Your complaint has been registered', 'false', 'false', '16 Feb, 2011 12:25:24 PM', NULL, NULL, NULL, NULL),
(1052, 2, 'SER 09843', 65, '2009-02-03', 'Howrah TL Depot', 19, 76, '000', '124', 'RRU not Working.', '2009-02-17', 2, 'Your complaint has been registered', 'false', 'false', '16 Feb, 2011 12:41:31 PM', NULL, NULL, NULL, NULL),
(1053, 14, 'SWR 08607', 79, '2009-04-22', 'SBC TL Depot', 46, 8, '000', '23', 'Alternator bearing noise.', '2009-04-28', 2, 'Your complaint has been registered', 'false', 'false', '16 Feb, 2011 12:49:19 PM', NULL, NULL, NULL, NULL),
(1054, 9, 'ECoR 09151', 73, '2009-01-27', 'ECoR AC Depot ', 64, 61, '000', '102', 'Control Unit not Working.', '2009-05-01', 2, 'Your complaint has been registered', 'false', 'false', '16 Feb, 2011 03:00:41 PM', NULL, NULL, NULL, NULL),
(1055, 10, 'EC 09407', 65, '2009-02-25', 'TL depot ', 67, 10, '000', '30', 'Inverter not working', '2009-05-02', 2, 'Your complaint has been registered', 'false', 'false', '16 Feb, 2011 03:16:43 PM', NULL, NULL, NULL, NULL),
(1056, 13, 'SEC 08801', 59, '2009-04-14', 'Bhubaneshwar TL Depot ', 59, 10, '000', '27', 'Tripping after one minute without load.', '2009-06-23', 2, 'Your complaint has been registered', 'false', 'false', '16 Feb, 2011 04:35:58 PM', NULL, NULL, NULL, NULL),
(1057, 9, 'ECoR 09054', 57, '2009-04-25', 'ECoR AC Depot ', 64, 16, '000', '42', 'Tripping frequently after 4 to 5hrs of operation.', '2009-07-14', 2, 'Your complaint has been registered', 'false', 'false', '16 Feb, 2011 04:39:20 PM', NULL, NULL, NULL, NULL),
(1058, 1, 'ER 13051', 1, '2009-04-22', 'Liluah EMU Car shed ', 4, 62, '000', '103', 'Converter -I not working', '2009-04-23', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 10:53:22 AM', NULL, NULL, NULL, NULL),
(1059, 2, 'SER 098216', 65, '2009-05-10', 'Howrah TL Depot', 19, 10, '000', '29', 'Inverter not working', '2009-05-15', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 10:55:42 AM', NULL, NULL, NULL, NULL),
(1060, 2, 'SER 09405', 65, '2009-02-19', 'Howrah TL Depot', 4, 76, '08113C8518', '123', '3Nos Power Diodes connecting cables burnt.', '2009-04-25', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 10:59:27 AM', NULL, NULL, NULL, NULL),
(1061, 9, 'ECoR 08051', 2, '2008-05-11', 'Bhubaneswar Ac depot', 64, 72, 'HBL make', '114', '12Nos of cells defective.', '2008-06-07', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 11:40:32 AM', NULL, NULL, NULL, NULL),
(1062, 9, 'ECoR 08051', 2, '2008-05-11', 'ECoR AC Depot ', 64, 2, '08027E3757', '3', 'NO output.', '2008-12-26', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 11:44:30 AM', NULL, NULL, NULL, NULL),
(1063, 9, 'ECoR 08051', 2, '2008-05-11', 'ECoR AC Depot ', 64, 16, '2008D10817122', '40', 'Inverter not working.', '2009-02-25', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 12:18:23 PM', NULL, NULL, NULL, NULL),
(1064, 15, 'WCR 08801', 59, '2009-03-23', 'Jabalpur TL Depot ', 55, 10, '0169', '27', 'INVERTER NOT WORKING.', '2009-05-25', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 12:20:58 PM', NULL, NULL, NULL, NULL),
(1065, 2, 'SER 098427', 65, '2009-05-30', 'Howrah TL Depot', 19, 10, '08278', '30', 'No output.', '2009-05-31', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 02:54:02 PM', NULL, NULL, NULL, NULL),
(1066, 2, 'SER 098427', 65, '2009-05-30', 'Howrah TL Depot', 19, 10, '08278', '30', 'No output.', '2009-05-31', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 02:54:02 PM', NULL, NULL, NULL, NULL),
(1067, 2, 'SER 098218', 67, '2009-05-12', 'Howrah TL Depot', 19, 10, '000', '30', 'No output.', '2009-05-15', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 02:56:28 PM', NULL, NULL, NULL, NULL),
(1068, 2, 'SER 098220', 67, '2009-05-12', 'Howrah TL Depot', 71, 8, '000', '22', 'ET found Burnt.', '2009-05-13', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 02:58:13 PM', NULL, NULL, NULL, NULL),
(1069, 2, 'SER 098216', 67, '2009-05-12', 'Howrah TL Depot', 19, 64, '000', '105', 'Not Working.', '2009-05-13', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 02:59:59 PM', NULL, NULL, NULL, NULL),
(1070, 9, 'ECoR 09406', 65, '2009-02-28', 'ECoR TL Depot ', 64, 10, '000', '30', 'No Output.', '2009-06-07', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 03:01:47 PM', NULL, NULL, NULL, NULL),
(1071, 13, 'SEC 08801', 59, '2009-04-14', 'SEC TL Depot ', 59, 10, '110V-230V', '27', 'Tripping after one minute without load.', '2009-06-23', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 03:23:42 PM', NULL, NULL, NULL, NULL),
(1072, 2, 'ECoR 09054', 2, '2009-04-25', 'AC Depot ECoR', 19, 16, '000', '42', 'Tripping Frequently.', '2009-07-14', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 03:25:42 PM', NULL, NULL, NULL, NULL),
(1073, 12, 'NWR 08801', 59, '2009-07-01', 'NWR TL Depot', 52, 10, '000', '29', 'No output.', '2009-07-02', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 03:30:57 PM', NULL, NULL, NULL, NULL),
(1074, 10, 'EC 09411', 65, '2009-01-22', 'EC TL Depot', 69, 10, '000', '30', 'No Output.', '2009-06-13', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 04:43:01 PM', NULL, NULL, NULL, NULL),
(1075, 18, 'KRSWR 08701', 77, '2009-07-09', 'Madgoan TL Depot', 72, 8, '000', '22', 'Not Working.', '2009-07-30', 2, 'Your complaint has been registered', 'false', 'false', '17 Feb, 2011 04:45:31 PM', NULL, NULL, NULL, NULL),
(1076, 9, 'ECoR 08051', 2, '2008-05-11', 'ECoR AC Depot ', 64, 77, '000', '129', 'ERRU not Working.', '2008-07-25', 2, 'Your complaint has been registered', 'false', 'false', '18 Feb, 2011 09:44:48 AM', NULL, NULL, NULL, NULL),
(1077, 9, 'ECoR 09054', 2, '2009-04-25', 'ECoR AC Depot ', 64, 16, '000', '42', 'PP side Inverter tripping Interminently.', '2009-08-13', 2, 'Your complaint has been registered', 'false', 'false', '18 Feb, 2011 09:47:17 AM', NULL, NULL, NULL, NULL),
(1078, 7, 'SR 14016', 1, '2009-08-22', 'Avadi EMU Car shed ', 28, 35, '000', '72', 'OIl leaking from Transformer oil Cooler.', '2009-08-23', 2, 'Your complaint has been registered', 'false', 'false', '18 Feb, 2011 09:49:25 AM', NULL, NULL, NULL, NULL),
(1079, 7, 'SR 09207', 67, '2009-10-12', 'BBQ TL depot ', 28, 51, 'Stone india', '91', 'Stator winding earthed', '2009-10-17', 2, 'Your complaint has been registered', 'false', 'false', '18 Feb, 2011 10:44:54 AM', NULL, NULL, NULL, NULL),
(1080, 2, 'SER 098803', 59, '2009-11-14', 'SER TL depot ', 19, 10, '110vdc - 110vac', '30', 'NO output.', '2009-11-21', 2, 'Your complaint has been registered', 'false', 'false', '18 Feb, 2011 10:47:20 AM', NULL, NULL, NULL, NULL),
(1081, 10, 'ECR 08026', 63, '2009-01-22', 'ECR AC depot  ', 69, 2, '000', '3', 'No output', '2009-12-18', 2, 'Your complaint has been registered', 'false', 'false', '18 Feb, 2011 10:58:30 AM', NULL, NULL, NULL, NULL),
(1082, 4, 'CR 09054', 2, '2009-09-09', 'Matunga AC Depot ', 36, 7, '000', '19', 'Condenser Motor Earthed .( ABB make)', '2009-12-08', 2, 'Your complaint has been registered', 'false', 'false', '19 Feb, 2011 10:07:11 AM', NULL, NULL, NULL, NULL),
(1083, 6, 'NR 20202 ', 1, '2009-05-04', 'NDLS EMU car shed ', 7, 43, '000', '83', 'Main compressor nor working. (NR 13055)', '2009-11-20', 2, 'Your complaint has been registered', 'false', 'false', '19 Feb, 2011 10:09:38 AM', NULL, NULL, NULL, NULL),
(1084, 7, 'SR 09606', 65, '2009-11-29', 'BBQ TL depot ', 28, 51, 'Stone India', '91', 'Alternator not working.', '2009-12-18', 2, 'Your complaint has been registered', 'false', 'false', '19 Feb, 2011 10:11:38 AM', NULL, NULL, NULL, NULL),
(1085, 6, 'NR 09984', 63, '2010-01-04', 'NDLS AC Depot ', 7, 66, '000', '108', '2KVA Transformer Internal Short ( Lambda make).', '2010-01-23', 2, 'Your complaint has been registered', 'false', 'false', '19 Feb, 2011 10:17:20 AM', NULL, NULL, NULL, NULL),
(1086, 17, 'EC 08029', 63, '2009-01-31', 'Dharbhanga.', 71, 67, '1', '109', 'Battery low voltage', '2009-12-25', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 11:14:11 AM', NULL, NULL, NULL, NULL),
(1087, 17, 'EC 08026', 63, '2009-01-22', 'Dharbhanga.', 71, 2, '1', '3', 'PP SIDE RRU FREQUENTLY NO GENERATION.', '2009-12-12', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 11:19:04 AM', NULL, NULL, NULL, NULL),
(1088, 17, ' SEC 0981', 59, '2009-11-14', 'BILASPUR.', 71, 10, '1', '30', 'NO OUTPUT FROM INVERTER', '2010-01-03', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 11:23:38 AM', NULL, NULL, NULL, NULL),
(1089, 17, 'SER 098154', 73, '2009-12-08', 'Santragachi.', 71, 68, '1', '110', 'PUMP NOT WORKING.', '2010-01-18', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 11:36:46 AM', NULL, NULL, NULL, NULL),
(1090, 17, 'ECoR 09056', 57, '2009-03-28', 'Bhubaneshwar', 71, 16, '1', '42', 'INVERTER  NOT WORKING.', '2010-03-13', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 11:40:22 AM', NULL, NULL, NULL, NULL),
(1091, 17, 'SECR 09051', 57, '2010-01-23', 'Bilaspur.', 71, 16, '1', '42', 'INVERTER  NO OUTPUT', '2010-04-18', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 11:43:36 AM', NULL, NULL, NULL, NULL),
(1092, 17, 'ECR 08801', 59, '2009-03-26', 'Darbhanga.', 71, 10, '1', '29', 'INVERTER  NOT WORKING.', '2009-03-28', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 11:48:17 AM', NULL, NULL, NULL, NULL),
(1093, 17, 'NR 13055', 1, '2009-03-30', 'Gazhiabad.', 71, 69, '1', '111', 'Driver’s LED Indication Panel Internal Short  Circuit.     ', '2010-04-05', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 11:52:05 AM', NULL, NULL, NULL, NULL),
(1094, 17, 'SER 098152', 73, '2009-12-05', 'Santragachi.', 71, 16, '1', '41', 'NO OUTPUT FROM INVERTER', '2010-04-20', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 12:02:05 PM', NULL, NULL, NULL, NULL),
(1095, 17, 'SER 098618,', 71, '2010-03-08', 'Santragachi.', 71, 10, '1', '30', 'NO OUTPUT FROM INVERTER', '2010-04-15', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 12:07:55 PM', NULL, NULL, NULL, NULL),
(1096, 17, 'ECoR 09060', 1, '2010-02-21', 'Vishakapattinam.', 71, 7, '', '13', 'RMPU CONDENSOR MOTOR (ABB Make) NOT WORKING AND TIMERS & CONTACTORS MALFUNCTIONING.\r\n', '2010-05-21', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 12:15:46 PM', NULL, NULL, NULL, NULL),
(1097, 17, 'SR 14013', 1, '2009-07-20', 'Velachery, Chennai', 71, 70, '11550 ', '112', 'HEAD LIGHT DC-DC CONVERTER CONVERTER – I DEFECTIVE    ', '2010-06-10', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 12:18:57 PM', NULL, NULL, NULL, NULL),
(1098, 17, 'ER 10051', 2, '2010-02-22', 'Chitpur  depot, Kolkatta ', 71, 71, '0912-13-239', '113', '3Nos of 2KVA TRANSFORMER COIL BURNT', '2010-06-06', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 12:21:34 PM', NULL, NULL, NULL, NULL),
(1099, 17, 'ECR 08802', 59, '2009-04-16', 'Darbhanga.', 71, 8, '', '23', 'NO GENERATION& PHASE WINDING INSULATION WEAK. ', '2010-05-16', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 12:26:43 PM', NULL, NULL, NULL, NULL),
(1100, 17, 'ECR 08052', 2, '2009-02-16', 'Darbhanga.', 71, 77, '08057C16089', '129', 'NO GENERATION. ', '2010-07-12', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 12:28:50 PM', NULL, NULL, NULL, NULL),
(1101, 17, 'SR 14016', 1, '2009-08-18', 'Tambaram.', 71, 35, 'R07.J 391', '71', 'MOTOR UNUSUAL SOUND. ', '2010-08-23', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 03:19:58 PM', NULL, NULL, NULL, NULL),
(1102, 17, 'SER 098606', 1, '2009-07-11', 'HATIA.', 71, 10, '', '29', 'BOTH INVERTERS DEFECTIVE', '2010-07-30', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 03:34:52 PM', NULL, NULL, NULL, NULL),
(1103, 17, 'ECoR 09060', 2, '2010-02-21', 'Vishakapattanam.', 71, 16, '', '42', 'NPP SIDE  INVERTER  NOT WORKING.', '2010-06-24', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 03:41:06 PM', NULL, NULL, NULL, NULL),
(1104, 17, 'SER 108416', 65, '2010-04-13', 'Santaragachi.', 71, 10, '', '30', 'BOTH  INVERTERS  NO OUTPUT.', '2010-04-28', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 03:44:51 PM', NULL, NULL, NULL, NULL),
(1105, 17, 'CR 10051', 57, '2010-06-28', 'Pune.', 71, 7, '', '18', '3 Pole MCB one contact element open and Thermal overload relay not Working.', '2010-09-18', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 03:49:29 PM', NULL, NULL, NULL, NULL),
(1106, 17, 'ECoR 09060', 57, '2010-02-12', 'Waltair.', 71, 72, '', '114', '1No VRLA BATTERY DEFECTIVE.', '2010-09-09', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 03:51:52 PM', NULL, NULL, NULL, NULL),
(1107, 17, 'SECR 20003', 32, '2010-06-01', 'Moti Bagh, Nagpur.', 71, 62, '', '103', '     HEAD LIGHT DC-DC CONVERTER NOT WORKING.', '2010-09-20', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 03:54:12 PM', NULL, NULL, NULL, NULL),
(1108, 17, 'SECR 20003', 32, '2010-05-05', 'Moti Bagh, Nagpur.', 71, 73, 'LAX-2000 D3', '115', 'SPEED RECORDER NOT WORKING.', '2010-09-20', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 03:56:54 PM', NULL, NULL, NULL, NULL),
(1109, 17, 'SER 098152', 73, '2010-12-14', 'Santragachi, ', 71, 16, '', '41', 'MCCB DEFECTIVE.', '0000-00-00', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 04:00:23 PM', NULL, NULL, NULL, NULL),
(1110, 17, 'SER 098618', 69, '2010-03-08', 'Santragachi, ', 71, 10, '', '30', '2.5KVA INVERTER NOT WORKING.', '2010-10-29', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 04:04:16 PM', NULL, NULL, NULL, NULL),
(1111, 17, 'WR 107B141', 11, '2010-10-12', 'Kandivili.', 71, 34, 'R102024', '68', 'HEAVY OIL LEAKAGE AND PISTON HOUSING CRACKED.', '2010-10-12', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 04:09:39 PM', NULL, NULL, NULL, NULL),
(1112, 17, 'WR 104047', 69, '2010-04-13', 'RAJKOT', 71, 10, 'W2K 5810259', '30', '2.5KVA INVERTER NOT WORKING.', '2010-10-15', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 04:12:03 PM', NULL, NULL, NULL, NULL),
(1113, 17, 'ECoR 09060', 57, '2010-02-12', 'Waltair', 71, 7, '', '14', 'CONDENSER MOTOR -I NOT WORKING.', '2010-09-15', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 04:25:16 PM', NULL, NULL, NULL, NULL),
(1114, 17, 'SWR 09163', 73, '2009-11-05', 'Bangalore.', 71, 75, '', '117', 'PP SIDE ALTERNATOR DEFECTIVE.     ', '2010-06-10', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 04:27:12 PM', NULL, NULL, NULL, NULL),
(1115, 17, 'SWR 09002', 61, '2010-09-02', 'Bangalore.', 71, 75, '', '117', 'ALTERNATOR DEFECTIVE.     ', '2010-09-02', 2, 'Your complaint has been registered', 'false', 'false', '25 Feb, 2011 04:29:19 PM', NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
