-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: coursedb
-- ------------------------------------------------------
-- Server version	8.0.19

use cusisdb;

--
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info` (
  `course_id` char(8) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credit` tinyint unsigned NOT NULL,
  `department` varchar(100) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEA2180', 'Chinese Culture and Society', '3', 'Dept of Anthropology', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEA2334', 'China Today', '3', 'Dept of Anthropology', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEB1570', 'Consciousness', '3', 'Dept of Psychology', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEB2222', 'Natural Hazards', '3', 'Dept of Geo & Resource Mgt', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEC1670', 'Politics and Mass Media', '3', 'Dept of Govern & Public Admin', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGED1111', 'Logic', '2', 'Dept of Philosophy', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGED1112', 'Logic and Argumentation', '3', 'Dept of Philosophy', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGFN1000', 'In Dialogue With Nature', '3', 'Office of University GE', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGFN1001', 'In Dialogue with Nature (Cross-institutional)', '3', 'Office of University GE', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGFH1000', 'In Dialogue With Humanity', '3', 'Office of University GE', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1100', 'Introduction to Engineering Design', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1110', 'Problem Solving By Programming', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1310', 'Engineering Physics: Electromagnetics, Optics and Modern Physics', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1410', 'Linear Algebra and Vector Calculus for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG2020', 'Digital Logic and Systems', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG2430', 'Probability and Statistics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG2440', 'Discrete Mathematics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR1002', 'Problem Solving By Programming', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR1003', 'Engineering Physics: Electromagnetics, Optics and Modern Physics', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR1004', 'Linear Algebra and Vector Calculus for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR2002', 'Probability and Statistics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR2004', 'Discrete Mathematics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('MATH1510', 'Calculus for Engineers', '3', 'Dept of Mathematics', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('PHYS1003', 'General Physics for Engineers', '3', 'Dept of Physics', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('PHYS1110', 'Engineering Physics: Mechanics and Thermodynamics', '3', 'Dept of Physics', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1820', 'Engineering Internship', '1', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG3802', 'Introduction to Engineering Entrepreneurship', '1', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG3803', 'Engineering Entrepreneurship Development Project', '2', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CHEM1380', 'Basic Chemistry for Engineers', '3', 'Dept of Chemistry', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('LSCI1001', 'Basic Concepts in Biological Sciences', '3', 'School of Life Sciences', 'N/A');
INSERT INTO `cusisdb`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('LSCI1003', 'Life Sciences for Engineers', '3', 'School of Life Sciences', 'N/A');
UNLOCK TABLES;

--
-- Table structure for table `course_session_list`
--

DROP TABLE IF EXISTS `course_session_list`;
CREATE TABLE `course_session_list` (
  `course_id` char(8) NOT NULL,
  `session_id` char(8) NOT NULL,
  PRIMARY KEY (`session_id`,`course_id`),
  UNIQUE KEY `session_id_UNIQUE` (`session_id`)
); #ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course_session_list`
--

LOCK TABLES `course_session_list` WRITE;
INSERT INTO `course_session_list` VALUES ('CSCI1130',6966),('CSCI3100',8431),('CSCI1130',8661);
UNLOCK TABLES;

--
-- Table structure for table `session_info`
--

DROP TABLE IF EXISTS `session_info`;
CREATE TABLE `session_info` (
  `session_id` char(8) NOT NULL,
  `session_code` varchar(4) NOT NULL,
  `quota` smallint unsigned NOT NULL,
  `vacancy` smallint unsigned NOT NULL,
  `lecturer` varchar(45) NOT NULL DEFAULT 'TBA',
  `session_hour` tinyint unsigned NOT NULL,
  `venue_1` varchar(45) NOT NULL DEFAULT 'TBA',
  `venue_2` varchar(45) DEFAULT NULL,
  `venue_3` varchar(45) DEFAULT NULL,
  `session_start_time_1` datetime NOT NULL,
  `session_start_time_2` datetime DEFAULT NULL,
  `session_start_time_3` datetime DEFAULT NULL,
  `session_end_time_1` datetime NOT NULL,
  `session_end_time_2` datetime DEFAULT NULL,
  `session_end_time_3` datetime DEFAULT NULL,
  `evalutaion` double DEFAULT NULL,
  `schedule` varchar(1000) DEFAULT NULL,
  `commment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_id_UNIQUE` (`session_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `session_info`
--

LOCK TABLES `session_info` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `session_tutorial_list`
--

DROP TABLE IF EXISTS `session_tutorial_list`;
CREATE TABLE `session_tutorial_list` (
  `session_id` char(8) NOT NULL,
  `tutorial_id` char(8) NOT NULL,
  PRIMARY KEY (`tutorial_id`,`session_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `session_tutorial_list`
--

LOCK TABLES `session_tutorial_list` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `tutorial_info`
--

DROP TABLE IF EXISTS `tutorial_info`;
CREATE TABLE `tutorial_info` (
  `tutorial_id` char(8) NOT NULL,
  `tutorial_code` varchar(4) NOT NULL,
  `tutorial_hour` tinyint unsigned NOT NULL,
  `tutorial_start_time_1`  datetime NOT NULL,
  `tutorial_start_time_2` datetime DEFAULT NULL,
  `tutorial_start_time_3` datetime DEFAULT NULL,
  `tutorial_end_time_1`  datetime NOT NULL,
  `tutorial_end_time_2` datetime DEFAULT NULL,
  `tutorial_end_time_3` datetime DEFAULT NULL,
  `quota` smallint unsigned NOT NULL,
  `vacancy` smallint unsigned NOT NULL,
  `venue_1` varchar(45) NOT NULL DEFAULT 'TBA',
   `venue_2` varchar(45) DEFAULT NULL,
  `venue_3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tutorial_id`),
  UNIQUE KEY `tutorial_id_UNIQUE` (`tutorial_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tutorial_info`
--

LOCK TABLES `tutorial_info` WRITE;
UNLOCK TABLES;

--
-- Table structure for table `conflict_list`
--

DROP TABLE IF EXISTS `conflict_list`;
CREATE TABLE `conflict_list` (
  `course_id` char(8) NOT NULL,
  `conflict_id` char(8) NOT NULL,
  `conflict_major` char(40) NOT NULL,
  PRIMARY KEY (`course_id`,`conflict_id`,`conflict_major`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conflict_list`
--

LOCK TABLES `conflict_list` WRITE;
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1020', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1030', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1110', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1120', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1130', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1510', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1540', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'ESTR1002', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1310', 'ESTR1003', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1410', 'ESTR1004', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG2430', 'ESTR2002', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG2440', 'CSCI2110', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG2440', 'ESTR2004', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1020', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1030', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1110', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1120', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1130', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1510', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1540', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'ESTR1002', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1003', 'ENGG1310', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1004', 'ENGG1410', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR2002', 'ENGG2430', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR2004', 'ENGG2440', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('LSCI1001', 'LSCI1003', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('LSCI1003', 'LSCI1001', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEA1333', 'N/A', 'Anthropology');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEA2180', 'UGEA2334', 'Anthropology');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEA2334', 'UGEA2180', 'Anthropology');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEB1570', 'N/A', 'Psychology');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEB2222', 'N/A', 'Geography and Resource Management');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEC1670', 'N/A', 'Government and Public Administration');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGED1111', 'UGED1112', 'Philosophy');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGED1112', 'UGED1111', 'Philosophy');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGFN1000', 'UGFN1001', 'N/A');
INSERT INTO `cusisdb`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGFN1001', 'UGFN1000', 'N/A');
UNLOCK TABLES;

--
-- Table structure for table `corequisit_list`
--

DROP TABLE IF EXISTS `corequisite_list`;
CREATE TABLE `corequisite_list` (
  `course_id` char(8) NOT NULL,
  `corequisite_id` char(8) NOT NULL,
  `group` char(1) NOT NULL,
  PRIMARY KEY (`course_id`,`corequisite_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `corequisit_list`
--

LOCK TABLES `corequisite_list` WRITE;
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA1333', '1', 'UGFH1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA1333', '2', 'UGFN1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA1333', '2', 'UGFN1001');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2180', '1', 'UGFH1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2180', '2', 'UGFN1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2180', '2', 'UGFN1001');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2334', '1', 'UGFH1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2334', '2', 'UGFN1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2334', '2', 'UGFN1001');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB1570', '1', 'UGFH1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB1570', '2', 'UGFN1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB1570', '2', 'UGFN1001');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB2222', '1', 'UGFH1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB2222', '2', 'UGFN1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB2222', '2', 'UGFN1001');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEC1670', '1', 'UGFH1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEC1670', '2', 'UGFN1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEC1670', '2', 'UGFN1001');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1111', '1', 'UGFH1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1111', '2', 'UGFN1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1111', '2', 'UGFN1001');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1112', '1', 'UGFH1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1112', '2', 'UGFN1000');
INSERT INTO `cusisdb`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1112', '2', 'UGFN1001');
UNLOCK TABLES;

--
-- Table structure for table `prerequisit_list`
--

DROP TABLE IF EXISTS `prerequisite_list`;
CREATE TABLE `prerequisite_list` (
  `course_id` char(8) NOT NULL,
  `prerequisite_id` char(8) NOT NULL,
  `group` char(1) NOT NULL,
  PRIMARY KEY (`course_id`,`prerequisite_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prerequisit_list`
--

LOCK TABLES `prerequisite_list` WRITE;
INSERT INTO `cusisdb`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('ENGG3803', 'ENGG3802', '1');
INSERT INTO `cusisdb`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('ENGG1410', 'MATH1510', '1');
INSERT INTO `cusisdb`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('ESTR1004', 'MATH1510', '1');
UNLOCK TABLES;

-- Dump completed on 2020-03-25 21:58:52
