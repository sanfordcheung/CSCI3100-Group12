drop database if exists cusisdbBeta;
create database cusisdbBeta;
use cusisdbBeta;

-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: cusisdbBeta
-- ------------------------------------------------------
-- Server version	8.0.19

use cusisdbBeta;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `confirm`;
CREATE TABLE `cusisdbBeta`.`confirm` (
  `code` VARCHAR(8) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`code`));


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
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEA1333', 'Multiculturalism and China', '2', 'Dept of Anthropology', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEA2180', 'Chinese Culture and Society', '3', 'Dept of Anthropology', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEA2334', 'China Today', '3', 'Dept of Anthropology', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEB1570', 'Consciousness', '3', 'Dept of Psychology', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEB2222', 'Natural Hazards', '3', 'Dept of Geo & Resource Mgt', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEC1670', 'Politics and Mass Media', '3', 'Dept of Govern & Public Admin', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGED1111', 'Logic', '2', 'Dept of Philosophy', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGED1112', 'Logic and Argumentation', '3', 'Dept of Philosophy', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGFN1000', 'In Dialogue With Nature', '3', 'Office of University GE', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGFN1001', 'In Dialogue with Nature (Cross-institutional)', '3', 'Office of University GE', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGFH1000', 'In Dialogue With Humanity', '3', 'Office of University GE', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1100', 'Introduction to Engineering Design', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1110', 'Problem Solving By Programming', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1310', 'Engineering Physics: Electromagnetics, Optics and Modern Physics', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1410', 'Linear Algebra and Vector Calculus for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG2020', 'Digital Logic and Systems', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG2430', 'Probability and Statistics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG2440', 'Discrete Mathematics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR1002', 'Problem Solving By Programming', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR1003', 'Engineering Physics: Electromagnetics, Optics and Modern Physics', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR1004', 'Linear Algebra and Vector Calculus for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR2002', 'Probability and Statistics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR2004', 'Discrete Mathematics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('MATH1510', 'Calculus for Engineers', '3', 'Dept of Mathematics', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('PHYS1003', 'General Physics for Engineers', '3', 'Dept of Physics', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('PHYS1110', 'Engineering Physics: Mechanics and Thermodynamics', '3', 'Dept of Physics', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1820', 'Engineering Internship', '1', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG3802', 'Introduction to Engineering Entrepreneurship', '1', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG3803', 'Engineering Entrepreneurship Development Project', '2', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CHEM1380', 'Basic Chemistry for Engineers', '3', 'Dept of Chemistry', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('LSCI1001', 'Basic Concepts in Biological Sciences', '3', 'School of Life Sciences', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('LSCI1003', 'Life Sciences for Engineers', '3', 'School of Life Sciences', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI1020', 'Hands-on Introduction to C++', '1', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI1030', 'Hands-on Introduction to Java', '1', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI1510', 'Computer Principles and C Programming', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI1520', 'Computer Principles and C++ Programming', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI1530', 'Computer Principles and Java Programming', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI2100', 'Data Structures', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI2520', 'Data Structures and Applications', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI2720', 'Building Web Applications', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3100', 'Software Engineering', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3150', 'Introduction to Operating Systems', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3170', 'Introduction to Database Systems', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3180', 'Principles of Programming Languages', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3250', 'Computers and Society', '2', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3251', 'Engineering Practicum', '1', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3280', 'Introduction to Multimedia Systems', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3290', 'Computational Imaging and Vision', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3310', 'Mobile Computing and Applications Development', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3320', 'Fundamentals of Machine Learning', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI4120', 'Principles of Computer Game Software', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI4140', 'Open-source Software Project Development', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI4190', 'Introduction to Social Networks', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI4430', 'Data Communication and Computer Networks', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI1540', 'Fundamental Computing with C++', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI1580', 'Visual Programming', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI2040', 'Introduction to Python', '2', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI2510', 'Computer Organization', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3130', 'Formal Languages and Automata Theory', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3190', 'Introduction to Discrete Mathematics and Algorithms', '3', 'Dept of Computer Science and Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CSCI3160', 'Design and Analysis of Algorithms', '3', 'Dept of Computer Science and Engineering', 'N/A');
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
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI1020', '8428');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI1030', '8171');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI1510', '5255');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI1520 ', '5257');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI1530', '5696');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI2100 ', '6424');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI2100 ', '6425');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI2100 ', '5368');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI2100 ', '6124');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI2100 ', '6788');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI2520', '6634');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI2720', '6943');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3100 ', '8431');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3150', '6586');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3170 ', '8466');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3180', '8469');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3250 ', '8167');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3251', '8210');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3280', '8471');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3290', '7316');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3310', '8168');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3320', '6452');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI4120', '8164');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI4140', '5760');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI4190', '5481');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI4430', '8073');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI1540', '6965');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI1580', '8478');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI2040', '5832');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI2510', '7651');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3130', '8506');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3160', '8508');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI3190', '6537');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CSCI2040', '8700');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CHEM1380', '5638');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1110', '6765');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1110', '6766');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1310', '6706');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1820', '4973');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1820', '7706');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1820', '4974');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG2020', '6875');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG2430', '5846');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG2430', '7780');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG2440', '6501');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG2440', '7995');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG3802', '6135');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ESTR1002', '5813');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ESTR1003', '8076');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ESTR2002', '7545');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ESTR2004', '7866');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('LSCI1001', '6644');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('LSCI1003', '7550');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('MATH1510', '6599');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('PHYS1003', '6136');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('PHYS1003', '6076');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('PHYS1110', '6617');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGEA2180', '7101');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGEA2334', '5967');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGEA2334', '5968');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGEB2222', '6291');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGED1111', '8367');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGED1111', '8368');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGED1111', '6738');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGED1112', '8369');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGED1112', '6960');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGFH1000', '5375');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGFH1000', '6653');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGFN1000', '6908');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGFN1000', '9095');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGFN1001', '9086');
UNLOCK TABLES;

--
-- Table structure for table `session_info`
--

DROP TABLE IF EXISTS `session_info`;
CREATE TABLE `session_info` (
  `session_id` char(8) NOT NULL,
  `session_code` varchar(4) ,
  `quota` smallint unsigned NOT NULL,
  `vacancy` smallint unsigned NOT NULL,
  `lecturer` varchar(45) NOT NULL DEFAULT 'TBA',
  `venue_1` varchar(45) NOT NULL DEFAULT 'TBA',
  `venue_2` varchar(45) DEFAULT NULL,
  `venue_3` varchar(45) DEFAULT NULL,
  `session_start_time_1` datetime NOT NULL,
  `session_start_time_2` datetime DEFAULT NULL,
  `session_start_time_3` datetime DEFAULT NULL,
  `session_end_time_1` datetime NOT NULL,
  `session_end_time_2` datetime DEFAULT NULL,
  `session_end_time_3` datetime DEFAULT NULL,
  `evaluation` double DEFAULT NULL,
  `schedule` varchar(2000) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `popularity` INT DEFAULT 0,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_id_UNIQUE` (`session_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `session_info`
--

LOCK TABLES `session_info` WRITE;
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('8428', '50', '13', 'Dr. CHEONG Chi Hong', 'LSB LT2', '2020-04-16 13:30:00', '2020-04-16 14:15:00', 'This course aims to provide an intensive hands-on introduction to the C++ programming language.  Topics include the basic C++ language syntax, variable declaration, basic operators, program flow and control, defining and using functions, file and operating system interface.  Specific key features of the C++ programming language such as object-oriented methodology, class templates, encapsulation, inheritance, polymorphism, etc. will be highlighted.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('8171', '50', '23', 'Dr. CHEONG Chi Hong', 'ERB 703', '2020-04-14 13:30:00', '2020-04-14 14:15:00', 'This course aims to provide an intensive hands-on introduction to the Java programming language.  Topics include the basic Java language syntax, variable declaration, basic operators, program flow and control, defining and using functions, file and operating system interface.  Specific key features of the Java programming language such as object-oriented methodology, class templates, encapsulation, inheritance, polymorphism, etc. will be highlighted.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5255', '80', '38', 'Dr. LAW Yat Chui', 'ERB 803', 'ERB 803', '2020-04-13 14:30:00', '2020-04-14 14:30:00', '2020-04-13 15:15:00', '2020-04-14 16:15:00', 'This course introduces computer programming in C.  Students will learn the functional elements of a computer system, modern programming concepts, problem solving and creation of computer applications.  Students will be able to apply these computing skills in various disciplines.  This course also provides a foundation to further study in advanced computing topics.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5257', '120', '25', 'Dr. LAW Yat Chui', 'LSK LT3', 'LSB LT3', '2020-04-13 10:30:00', '2020-04-14 11:30:00', '2020-04-13 12:15:00', '2020-04-14 12:15:00', 'This course introduces computer programming in C++.  Students will learn the functional elements of a computer system, object-oriented programming concepts, problem solving and creation of computer applications.  Students will be able to apply these computing skills in various disciplines.  This course also provides a foundation to further study in advanced computing topics.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5696', '60', '8', 'Mr. FUNG Ping Fu', 'ERB 404', 'LSB C1', '2020-04-13 14:30:00', '2020-04-14 14:30:00', '2020-04-13 16:15:00', '2020-04-14 15:15:00', 'This course introduces computer programming in Java.  Students will learn the functional elements of a computer system, modern programming concepts, problem solving and creation of computer applications.  Students will be able to apply these computing skills in various disciplines.  This course also provides a foundation to further study in advanced computing topics.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6424', 'A', '80', '8', 'Professor King Kuo Chin Irwin', 'ERB LT', 'ERB LT', '2020-04-13 16:30:00', '2020-04-15 11:30:00', '2020-04-13 17:15:00', '2020-04-15 13:15:00', 'This course introduces the concept of abstract data types and the advantages of data abstraction. Various commonly used abstract data types including vector, list, stack, queue, tree, and set and their implementations using different data structures (array, pointer based structures, linked list, 2-3 tree, B-tree, etc.) will be discussed. Sample applications such as searching, sorting, etc., will also be used to illustrate the use of data abstraction in computer programming. Analysis of the performance of searching and sorting algorithms. Application of data structure principles.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6425', 'B', '125', '28', 'Professor LEUNG Ho Fung', 'LSB LT1', 'LSB LT6', '2020-04-14 12:30:00', '2020-04-15 11:30:00', '2020-04-14 13:15:00', '2020-04-15 13:15:00', 'This course introduces the concept of abstract data types and the advantages of data abstraction. Various commonly used abstract data types including vector, list, stack, queue, tree, and set and their implementations using different data structures (array, pointer based structures, linked list, 2-3 tree, B-tree, etc.) will be discussed. Sample applications such as searching, sorting, etc., will also be used to illustrate the use of data abstraction in computer programming. Analysis of the performance of searching and sorting algorithms. Application of data structure principles.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5368', 'C', '0', '0', 'Professor WANG Sibo', 'MMW LT2', 'MMW LT2', '2020-04-13 12:30:00', '2020-04-16 16:30:00', '2020-04-13 14:15:00', '2020-04-16 17:15:00', 'This course introduces the concept of abstract data types and the advantages of data abstraction. Various commonly used abstract data types including vector, list, stack, queue, tree, and set and their implementations using different data structures (array, pointer based structures, linked list, 2-3 tree, B-tree, etc.) will be discussed. Sample applications such as searching, sorting, etc., will also be used to illustrate the use of data abstraction in computer programming. Analysis of the performance of searching and sorting algorithms. Application of data structure principles.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6124', 'D', '100', '56', 'Professor CHENG Hong', 'LHC 104', 'LSB LT5', '2020-04-13 13:30:00', '2020-04-15 13:30:00', '2020-04-13 15:15:00', '2020-04-15 14:15:00', 'This course introduces the concept of abstract data types and the advantages of data abstraction. Various commonly used abstract data types including vector, list, stack, queue, tree, and set and their implementations using different data structures (array, pointer based structures, linked list, 2-3 tree, B-tree, etc.) will be discussed. Sample applications such as searching, sorting, etc., will also be used to illustrate the use of data abstraction in computer programming. Analysis of the performance of searching and sorting algorithms. Application of data structure principles.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`, `comment`) VALUES ('6788', 'E', '140', '10', 'Dr. HUI Ka Yu', 'ERB LT', 'ERB 1004', '2020-04-13 12:30:00', '2020-04-16 12:30:00', '2020-04-13 14:15:00', '2020-04-16 13:15:00', 'This course introduces the concept of abstract data types and the advantages of data abstraction. Various commonly used abstract data types including vector, list, stack, queue, tree, and set and their implementations using different data structures (array, pointer based structures, linked list, 2-3 tree, B-tree, etc.) will be discussed. Sample applications such as searching, sorting, etc., will also be used to illustrate the use of data abstraction in computer programming. Analysis of the performance of searching and sorting algorithms. Application of data structure principles.', 'For IERGN students, MIEGN students, BBA+ERG (New Curriculum) students, and IERGN minor');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6634', '60', '11', 'Professor CHAN Lai Wan', 'KKB 101', 'ERB 407', '2020-04-14 14:30:00', '2020-04-16 10:30:00', '2020-04-14 16:15:00', '2020-04-16 11:15:00', 'This course introduces the concept of abstract data types and the advantages of data abstraction. Various commonly used abstract data types including vector, list, stack, queue, tree, and set and their implementations using different data structures (array, pointer based structures, linked list, 2-3 tree, B-tree, etc.) will be discussed. Sample applications such as searching, sorting, etc., will also be used to illustrate the use of data abstraction in computer programming. Analysis of the performance of searching and sorting algorithms. Application of data structure principles.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6943', '100', '3', 'Dr. CHAW Chuck Jee', 'LSB LT5', 'LSB LT5', '2020-04-13 12:30:00', '2020-04-16 14:30:00', '2020-04-13 14:15:00', '2020-04-16 15:15:00', 'The course is concerned with the development of web applications. The major topics include 1) Building blocks of web applications, 2) Client-side technologies, 3) Server-side technologies, and 4) Web application design and securities issues.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8431', '250', '49', 'Professor LYU Rung Tsong Michale', 'LHC LT', 'LSB LT1', '2020-04-13 11:30:00', '2020-04-14 10:30:00', '2020-04-13 12:15:00', '2020-04-14 12:15:00', 'This course introduces software life-cycles: system modelling, requirements analysis and specifications, design techniques, implementation methodology, testings, maintenance and engineering laboratory. Analytical tools: software metrics, system performance measurement and evaluation. Management techniques: estimations, planning, project management, communication skills and documentations. Introductions to CASE tools and security.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6586', '100', '39', 'Professor SHAO Zili', 'LSB LT5', 'LSB LT5', '2020-04-14 10:30:00', '2020-04-15 11:30:00', '2020-04-14 12:15:00', '2020-04-15 12:15:00', 'This course introduces the various internal components of an operating system, including process and thread management, memory management, file system, security, and synchronization.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8466', '120', '40', 'Professor WONG Man Hon', 'LSK LT1', 'LHC LT', '2020-04-15 10:30:00', '2020-04-16 10:30:00', '2020-04-15 11:15:00', '2020-04-16 12:15:00', 'This course introduces the concepts and principles of database management systems. Subjects include: basic concepts, system structures, data models, database languages (SQL in particular), relational database normalization, file systems, indexing, query processing, concurrency control and recovery schemes.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8469', '200', '48', 'Professor LEE Ho Man', 'ERB LT', 'LHC LT', '2020-04-13 14:30:00', '2020-04-15 15:30:00', '2020-04-13 16:15:00', '2020-04-15 16:15:00', 'This course introduces, analyses and evaluates the important concepts found in current programming languages. The concepts are illustrated by contrasting their appearances in different languages. Major topics include: concepts, paradigms and implementation techniques.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('8167', '240', '64', 'Dr. CHAU Chuck Jee', 'LSB LT1', '2020-04-14 14:30:00', '2020-04-14 16:15:00', 'This course studies social, legal, ethical issues of information technology in society. Problems related to privacy, computer crimes, freedom of speech, intellectual property, professionalism, health, safety will be discussed. Local and global examples will be used to illustrate the issues.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('8210', 'P01', '240', '63', 'Dr. CHAW Chuck Jee', 'LSB LT1', '2020-04-14 13:30:00', '2020-04-14 14:15:00', 'Industrial and professional workshops or seminars as required by the Major programme.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8471', '100', '25', 'Professor WONG Tien Tsin', 'LSB LT6', 'LSB LT6', '2020-04-16 09:30:00', '2020-04-17 09:30:00', '2020-04-16 10:15:00', '2020-04-17 11:15:00', 'This course covers the design and implementation of modern multimedia systems. Topics include multimedia systems design, multimedia data representation, multimedia hardware and software, multimedia communication and networking, multimedia programming and multimedia information systems.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7316', '80', '22', 'Professor WONG Tien Tsin', 'LPN LT', 'YIA LT7', '2020-04-15 16:30:00', '2020-04-16 14:30:00', '2020-04-15 17:15:00', '2020-04-16 16:15:00', 'It is an emerging new field created by the convergence of computer graphics, computer vision and machine learning. Its main purpose is to overcome the limitations of the traditional camera by using computational techniques to produce a richer, more vivid, perhaps more perceptually meaningful representation of our visual world. The content of this course is to study ways in which samples from the real world (images and video) can be used to generate compelling computer imagery. We will learn how to acquire, represent, and render scenes from digitized photographs. The following topics will be covered: cameras, image formation and models; image manipulation (warping, morphing, mosaicing, matting, compositing); data-driven synthesis; visual perception; high dynamic range imaging and tone mapping; image-based lighting; non-photorealistic rendering; and other applications in machine vision.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8168', '60', '1', 'Dr CHUI Yim Pan', 'LSK 210', 'LSK 304', '2020-04-14 14:30:00', '2020-04-15 12:30:00', '2020-04-14 15:15:00', '2020-04-15 14:15:00', 'This course aims at introducing various development considerations in mobile applications. Topics include: Fundamental concepts in user interface design, mobile file systems, networking and security issues, energy saving consideration in mobile application development. Graphics programming on mobile devices such as OpenGL ES will also be discussed.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6452', '150', '15', 'Professor LUI Chi Shing John', 'LSK LT3', 'LSK LT1', '2020-04-14 08:30:00', '2020-04-15 08:30:00', '2020-04-14 10:15:00', '2020-04-15 09:15:00', 'The first part introduces basic methods, including minimum error versus maximum likelihood, parametric versus nonparametric estimation, linear regression, factor analysis, Fisher analysis, singular value decomposition, clustering analysis, Gaussian Mixture, EM algorithm, spectral clustering, nonnegative matrix factorization. The second part provides an introduction on small sample size learning, consisting of model selection criteria, RPCL learning, automatic model selection during learning, regularization and sparse learning.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8164', '60', '31', 'Dr. OR Siu Hang', 'ERB 803', 'LHC G04', '2020-04-13 16:30:00', '2020-04-16 16:30:00', '2020-04-13 18:15:00', '2020-04-16 17:15:00', 'This course aims at establishing the principles, techniques and tools in the design and development of computer game software with focus on the real time performance consideration. Topics include: stages in computer game development, concept of game engine, rendering considerations, physics effects, artificial intelligence (AI), audio effects, scripting and environment for game project development.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5760', '100', '86', 'Professor MENG Wei', 'BMS G18', 'SC L4', '2020-04-13 09:30:00', '2020-04-14 15:30:00', '2020-04-13 11:15:00', '2020-04-14 16:15:00', 'This course is to introduce techniques in developing software projects. Topics include leveraging the web server, the database server, and the scripting languages, such as the LAMP (Linux, Apache, MySQL, PHP) platform, to develop software projects, advanced debugging techniques, and performance tuning techniques. Also, this course will introduce the knowledge on software licensing, such as the GNU public license (GPL) and the Berkeley Software Distribution (BSD) license. Last but not least, this course emphasizes in arousing the creativity and fun in developing software projects.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5481', '0', '0', 'Professor CHAN Lai Wan', 'LSB LT5', 'LSB LT5', '2020-04-14 12:30:00', '2020-04-16 13:30:00', '2020-04-14 14:15:00', '2020-04-16 14:15:00', 'This course introduces how the social, technological, and natural worlds are connected, and how these relationships can be modeled as high dimensional graphs. The use of algorithmic approach to study these large scale networks so as to shed light on their connections and intrinsic properties will be employed. Topics include:1) how opinions, personal interests, idea, news and political movements spread via social networks; 2) how to maintain the robustness of the world wide web; 3) why we observe fragility in some of our electrical networks; 4) understand the formation process of large scale online social networks like Facebook; 5) how to perform effective product advertisement in large scale online social networks; and 6) how information or virus can be propagated in these large scale online social networks. This course aims to provide simple but fundamental theories on how one can understand the formation and interaction on these social networks.  This course is multi-disciplinary in nature, and it is suitable for engineering, science, mathematics, economics or business students.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8073', '120', '54', 'Professor LEE Pak Chine', 'LSK LT4', 'TYW LT', '2020-04-13 12:30:00', '2020-04-14 16:30:00', '2020-04-13 14:15:00', '2020-04-14 17:15:00', 'This course aims to introduce fundamental concepts and technologies in computer networking. The course adopts a top-down approach introducing the TCP/IP networking stack. The design of the contemporary communication applications will be studied. The fundamental concepts in implementing the reliable transport protocols, such as TCP, will be taught in this course. Design issues of TCP, such as the sliding window protocol and the congestion control, will also be included. This course will also focus on the IP network and the routing algorithms used in the Internet. Last, the design issues in the data link layer (e.g., Ethernet), including the medium access control, will be introduced.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6965', '150', '2', 'Dr. LAW Yat Chiu', 'LSB LT1', 'LSK LT3', '2020-09-07 12:30:00', '2020-09-02 16:30:00', '2020-09-07 14:15:00', '2020-09-02 17:15:00', 'This course introduces fundamental computing principles, problem-solving methods and algorithm development, simple data structures, illustrative applications. The C++ programming language will be used.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8478', '60', '30', 'Dr. CHEONG Chi Hong', 'ERB 803', 'ERB 803', '2020-09-07 11:30:00', '2020-09-03 14:30:00', '2020-09-07 12:15:00', '2020-09-03 16:15:00', 'This course introduces computer application programming using a visual programming environment.  Students will learn visual programming principles, modern programming concepts, and problem solving techniques.  There will be learning examples and hands-on exercises for the understanding and creation of GUI-based computer applications in areas such as data processing, statistical analysis, financial reporting, etc.  Students will be able to apply these computing skills in building practical computer applications for various disciplines.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`, `comment`) VALUES ('5832', 'A', '120', '23', 'Professor LUI Chi Shing John', 'LSK LT4', '2020-09-02 09:30:00', '2020-09-02 11:15:00', 'This course aims to provide an intensive hands-on introduction to the Python scripting language. Topics include the basic Python language syntax, variable declaration, basic operators, programme flow and control, defining and using functions, file and operating system interface. Specific key features of the Python scripting language such as object-oriented support, functional programming support, lambda function, list comprehension, high level dynamic data types, embedding within applications, module creation etc. will be highlighted. Special topics include using Python for web/data access, animation, as well as using Python to develop a web crawler.', 'Not for SEEM Major.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`, `comment`) VALUES ('8700', 'B', '95', '32', 'Dr. OR Siu Hang', 'LHC 104', '2020-09-01 09:30:00', '2020-09-01 11:15:00', 'This course aims to provide an intensive hands-on introduction to the Python scripting language. Topics include the basic Python language syntax, variable declaration, basic operators, programme flow and control, defining and using functions, file and operating system interface. Specific key features of the Python scripting language such as object-oriented support, functional programming support, lambda function, list comprehension, high level dynamic data types, embedding within applications, module creation etc. will be highlighted. Special topics include using Python for web/data access, animation, as well as using Python to develop a web crawler.', 'For SEEM (New Curriculum) Major students.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7651', NULL, '55', '1', 'Professor YANG Ming Chang', 'ERB 404', 'ERB 404', '2020-09-07 12:30:00', '2020-09-01 12:30:00', '2020-09-07 14:15:00', '2020-09-01 13:15:00', 'This course is designed to provide the basic knowledge of computer organization and assembly language programming. Functions and structures of the basic building blocks: CPU, memory unit and input/output units will be introduced. Assembly language programming is used as a tool to study the internal coding of information, number representation, arithmetic operations and the flow of information within a microcomputer.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8506', NULL, '170', '17', 'Professor CHAN Siu On', 'TYW LT', 'LSK LT5', '2020-09-07 16:30:00', '2020-09-02 17:30:00', '2020-09-07 18:15:00', '2020-09-02 18:15:00', 'This course introduces Deterministic and nondeterminisitic finite automata, regular expressions, context-free grammars, pushdown automata, context-sensitive grammars, parsing of LR(O) and LR(K) languages, Turing machines and computability.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8508', NULL, '170', '1', 'Professor TAO Yufei', 'ERB LT', 'ERB LT', '2020-09-02 11:30:00', '2020-09-03 12:30:00', '2020-09-02 12:15:00', '2020-09-03 14:15:00', 'This course introduces the basics of algorithm analysis: correctness and time complexity. Techniques for designing efficient algorithms: greedy method, divide and conquer, and dynamic programming. Fundamental graph algorithms: graph traversals, minimum spanning trees and shortest paths. Introduction to complexity theory: polynomial-time reductions and NP-completeness.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6537', NULL, '60', '17', 'Professor YOUNG Fung Yu', 'LSB LT3', 'LSB C2', '2020-09-07 15:30:00', '2020-09-01 14:30:00', '2020-09-07 16:15:00', '2020-09-01 16:15:00', 'This course introduces logic, combinatorics, recurrence relations and graph theory. Design and analysis of algorithms: greedy method, divide and conquer, and dynamic programming. Fundamental algorithms including sorting, graph algorithms, number-theoretic algorithms and numerical algorithms. Introduction to NP-completeness.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('4973', 'A', '30', '27', 'Professor Wong Tien Tsin', 'N/A', '2020-04-13 00:00:00', '2020-04-13 00:00:00', 'The objective of the course is to enable students to have a basic understanding of the practical aspects of the engineering profession. Prior to the enrolment of this course, students must have completed not less than 8 weeks of full-time internship approved by the Faculty of Engineering.  To be qualified for award of the subject credit, the student must submit a report, within the semester of enrolment, summarizing what he or she has done and learnt during the internship, together with a testimonial from the corresponding employer. Pass or fail of the course will be determined by the professor-in-charge, based on the report and the testimonial submitted.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('4974', 'C', '30', '30', 'Professor CHOW Sze Ming', 'N/A', '2020-04-13 00:00:00', '2020-04-13 00:00:00', 'The objective of the course is to enable students to have a basic understanding of the practical aspects of the engineering profession. Prior to the enrolment of this course, students must have completed not less than 8 weeks of full-time internship approved by the Faculty of Engineering.  To be qualified for award of the subject credit, the student must submit a report, within the semester of enrolment, summarizing what he or she has done and learnt during the internship, together with a testimonial from the corresponding employer. Pass or fail of the course will be determined by the professor-in-charge, based on the report and the testimonial submitted.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('5375', 'A', '125', '8', 'Dr. YU Chi Chung', 'ELB LT1', '2020-04-17 13:30:00', '2020-04-17 14:15:00', 'The course invites students to investigate the problem of \"humanity\"—i.e., what it means to be human—at two levels: human as an individual and human as a social being. Students will be engaged in a direct dialogue with literary writers, philosophers and social reformers who address three fundamental questions: What is it that makes a \"good\" life for me? What is it that makes a \"good\" society for everyone? How do I make possible such a \"good\" life and \"good\" society?');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5638', 'C', '200', '112', 'Professor TSUI Chit', 'MMW LT1', 'ERB LT', '2020-04-14 14:30:00', '2020-04-16 16:30:00', '2020-04-14 16:15:00', '2020-04-16 17:15:00', 'This is primarily for students in engineering faculty requiring a one-semester introductory in general chemistry at a fundamental level. It includes the study of atomic structure, bonding, periodic trends in physical properties, molecular geometry, stoichiometry, states of matter, thermodynamics, chemical equilibrium, acid/base chemistry, electrochemistry and kinetics.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5813', ' ', '50', '0', 'Professor FU Chi Wing', 'ERB 909', '2020-09-02 16:30:00', '2020-09-04 15:30:00', '2020-09-02 18:15:00', '2020-09-04 16:15:00', 'This is a computer-programming course to equip students with software knowledge and skills to solve engineering problems.  Students will learn fundamental programming concepts in C, such as data representation and variables, operators and expressions, flow-control statements, functions, arrays, structures, pointer basics, input/ output handling, etc.  In addition to lectures and e-learning, students will work in labs to practise solving problems and complete an engineering software project.  The course will cover various problem solving methods such as incremental development, divide-and-conquer, debugging technique, finite-state machine, etc.  Through practices, students will acquire skills to define problems and specifications, to perform modelling and simulation, to develop software system prototypes, to carry out verification, validation, and performance analysis.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5846', 'A', '180', '35', 'Professor Andrej BOGDANOV', 'TYW LT', 'ERB LT', '2020-04-13 09:30:00', '2020-04-15 09:30:00', '2020-04-13 10:15:00', '2020-04-15 11:15:00', 'Fundamental probability concepts: probability and events; expectation, variance, moments, moment generating functions; single variate distributions. Multivariate probability: conditional probability, joint probability; Bayes’ Theorem; conditional expectation, covariance; multivariate distributions, functions of random variables. Central limit theorems, law of large number. Statistics: estimation, sample size and applications.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('5967', 'A', '80', '33', 'Dr. CHEN Ju Chen', 'NAH 114', '2020-04-14 14:30:00', '2020-04-14 17:15:00', 'China is looming large on the global scene and our everyday life. It is a rising power that is changing the world order. It is a land of promising opportunities that attracts an immense amount of capital and talents from overseas. Not to mention that a large part of the stuff we consume are produced in China. However, China is still—at least nominally—a socialist country that continues to embrace one-party rule and political censorship. This course addresses a host of issues that are salient in understanding China and its position in the contemporary world. It is primarily informed by an anthropological perspective that is particularly good at making sense of macro-level issues through studying day-to-day details and processes in a small locale. The course also draws from disciplines other than anthropology—for example, history—and some of the finest journalist writings on China. The overall intention is to provide a well-rounded and nuanced understanding of China today. This course starts with examining China\'s revolution-packed modern history and the making of the powerful Communist Party to prepare student\'s learning. Throughout the semester, the course covers classical anthropological topics on family, kinship, religion, education, ethnicity, identity, and morality. While anthropological holistic and comparative perspective helps students to reflect on Chinese culture with alternative views, this course also addresses how these cultural and social institutions interact with global processes such as modernization and late capitalist development. The class does so by introducing emerging social concerns including unofficial culture, the popularization of religion, environmental challenges, sexuality and LGBTQ identities, and mental health and the pursuit of happiness.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`,`popularity`) VALUES ('6076', 'B', '120', '33', 'Dr. XU Lei', 'SC L1', 'YIA LT4', '2020-09-03 10:30:00', '2020-09-05 11:30:00', '2020-09-03 11:15:00', '2020-09-05 13:15:00', 'This non-calculus-based course covers some essential concepts in mechanics, heat, electricity and magnetism.  It is designed for engineering students to get an overview on what physics is about.  Selected topics include: Newton’s laws of motion, Archimedes’ principle, fluid flow, temperature and heat, laws of thermodynamics, electric field and potential, current and circuits, and electromagnetic waves.  The course is suitable for Engineering students without HKDSE physics or Combined Science with a physics component, or with permission of instructor.',1);
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('5968', 'B', '96', '25', 'Dr. CHEN Ju Chen', 'NAH 12', '2020-04-15 14:30:00', '2020-04-15 17:15:00', 'China is looming large on the global scene and our everyday life. It is a rising power that is changing the world order. It is a land of promising opportunities that attracts an immense amount of capital and talents from overseas. Not to mention that a large part of the stuff we consume are produced in China. However, China is still—at least nominally—a socialist country that continues to embrace one-party rule and political censorship. This course addresses a host of issues that are salient in understanding China and its position in the contemporary world. It is primarily informed by an anthropological perspective that is particularly good at making sense of macro-level issues through studying day-to-day details and processes in a small locale. The course also draws from disciplines other than anthropology—for example, history—and some of the finest journalist writings on China. The overall intention is to provide a well-rounded and nuanced understanding of China today. This course starts with examining China\'s revolution-packed modern history and the making of the powerful Communist Party to prepare student\'s learning. Throughout the semester, the course covers classical anthropological topics on family, kinship, religion, education, ethnicity, identity, and morality. While anthropological holistic and comparative perspective helps students to reflect on Chinese culture with alternative views, this course also addresses how these cultural and social institutions interact with global processes such as modernization and late capitalist development. The class does so by introducing emerging social concerns including unofficial culture, the popularization of religion, environmental challenges, sexuality and LGBTQ identities, and mental health and the pursuit of happiness.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6136', 'A', '84', '19', 'Dr. LEUNG Hoi Tik Alvin', 'ERB LT', 'BMS G18', '2020-09-02 10:30:00', '2020-09-03 09:30:00', '2020-09-02 12:15:00', '2020-09-03 10:15:00', 'This non-calculus-based course covers some essential concepts in mechanics, heat, electricity and magnetism.  It is designed for engineering students to get an overview on what physics is about.  Selected topics include: Newton’s laws of motion, Archimedes’ principle, fluid flow, temperature and heat, laws of thermodynamics, electric field and potential, current and circuits, and electromagnetic waves.  The course is suitable for Engineering students without HKDSE physics or Combined Science with a physics component, or with permission of instructor.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6291', 'B', '150', '71', 'Professor NG Sai Leung, Dr. Wang Lang', 'YIA LT7', '2020-04-17 15:30:00', '2020-04-17 18:15:00', 'This course examines the physical and human dimensions of natural hazards such as earthquakes, tsunamis, typhoons, floods and landslides, soil erosion and desertification. The focus will be on the causes of major natural hazards, their geographical distribution, risk and disaster to human society, and human response to prepare, prevent and mitigate negative impacts. Study of the interaction between society and natural hazards will help students better understand the man-environment relationship. An issue-based approach will be adopted to address a wide variety of geological, meteorological, hydrological, ecological, and technological hazards. While the coverage will be broad and global, case studies of threats, occurrence and consequences of natural hazards in Hong Kong and Mainland China will be emphasized.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6501', 'A', '190', '103', 'Professor CAI Leizhen', 'SC L1', 'ERB LT', '2020-09-02 10:30:00', '2020-09-04 13:30:00', '2020-09-02 12:15:00', '2020-09-04 14:15:00', 'Set theory, functions, relations, combinatorics, graph theory, algebraic systems, propositional and predicate logic.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6599', 'J', '80', '30', 'Dr. XIAO Jingjing', 'LSB LT4', 'LSB LT4', '2020-04-14 16:30:00', '2020-04-16 14:30:00', '2020-04-14 18:15:00', '2020-04-16 15:15:00', 'This course is designed for engineering students who need to acquire skills in calculus as a crash introduction to the mathematics used in engineering.  The course emphasizes on the technique of computation without theoretical discussion.  Students are expected to have mathematics background equivalent to HKDSE with Extended Module I or II.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6617', 'G', '80', '35', 'Dr. CHENG Kai Ming', 'MMW LT2', 'MMW LT2', '2020-04-13 14:30:00', '2020-04-15 14:30:00', '2020-04-13 16:15:00', '2020-04-15 15:15:00', 'This is an introductory calculus-based engineering physics course covering topics in mechanics and thermodynamics.  Topics include:  Use of vectors in mechanics, force and motion, free-body diagrams, work and energy, potential energy and conservation of energy, momentum and impulse, torque, essential ideas in rotation, equilibrium, gravitation, ideal fluids, oscillations, waves and sound, elementary concepts of thermodynamics and heat transfer mechanisms.  Contents will be supplemented by discussions on applications relevant to engineering.  The course is suitable for Engineering students with HKDSE physics or Combined Science with a physics component, or with permission of instructor.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6653', 'C', '150', '9', 'Dr. LEUNG Cheuk Hang', 'ELB LT3', '2020-04-17 13:30:00', '2020-04-17 14:15:00', 'The course invites students to investigate the problem of \"humanity\"—i.e., what it means to be human—at two levels: human as an individual and human as a social being. Students will be engaged in a direct dialogue with literary writers, philosophers and social reformers who address three fundamental questions: What is it that makes a \"good\" life for me? What is it that makes a \"good\" society for everyone? How do I make possible such a \"good\" life and \"good\" society?');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6706', 'B', '90', '1', 'Professor ZHAO Ni', 'LSB LT6', 'LSK LT4', '2020-04-14 14:30:00', '2020-04-16 16:30:00', '2020-04-14 16:15:00', '2020-04-16 17:15:00', 'This is an introductory calculus-based engineering physics course covering topics in electromagnetics, optics and modern physics. Topics in electromagnetics include: electric and magnetic properties, Coulomb’s law, Gauss’ law, electromagnetic energy and forces, Biot-Savart law, electromagnetic fields and Maxwell’s equations, propagation of plane electromagnetic waves. Topics in optics include: optical interference, interferometers, optical diffraction. Topics in modern physics include: wave-particle duality, momentum and energy of photons and electrons, electronic states and energy bands, electrical conduction in metals and semiconductors.  Contents will be supplemented by discussions on applications relevant to engineering.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6738', 'C', '80', '1', 'Dr. KOU Kei Chun', 'SC L2', '2020-04-13 14:30:00', '2020-04-13 16:15:00', 'This course is designed to develop the student\'s ability to analyze and critically evaluate arguments from a logical point of view. It will provide students with a basic understanding of such concepts as reasons, implication, validity, and fallacies. Students will learn the logical principles of deductive and inductive inferences and the techniques of applying them for determining the validity of arguments. Elements of good reasoning from an informal perspective will also be covered.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6765', 'A', '112', '1', 'Dr. CHUI Yim Pan', 'YIA LT4', 'LSK LT3', '2020-09-02 14:30:00', '2020-09-04 10:30:00', '2020-09-02 16:15:00', '2020-09-04 11:15:00', 'This is a computer-programming course to equip students with software knowledge and skills to solve engineering problems.  Students will learn fundamental programming concepts in C, such as data representation and variables, operators and expressions, flow-control statements, functions, arrays, structures, pointer basics, input/ output handling, etc.  In addition to lectures and e-learning, students will work in labs to practise solving problems and complete an engineering software project.  The course will cover various problem solving methods such as incremental development, divide-and-conquer, debugging technique, finite-state machine, etc.  Through practices, students will acquire skills to define problems and specifications, to perform modelling and simulation, to develop software system prototypes, to carry out verification, validation, and performance analysis.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6766', 'B', '141', '1', 'Dr. HO Marco', 'LSK LT4', 'ERB LT', '2020-09-02 14:30:00', '2020-09-04 10:30:00', '2020-09-02 16:15:00', '2020-09-04 11:15:00', 'This is a computer-programming course to equip students with software knowledge and skills to solve engineering problems.  Students will learn fundamental programming concepts in C, such as data representation and variables, operators and expressions, flow-control statements, functions, arrays, structures, pointer basics, input/ output handling, etc.  In addition to lectures and e-learning, students will work in labs to practise solving problems and complete an engineering software project.  The course will cover various problem solving methods such as incremental development, divide-and-conquer, debugging technique, finite-state machine, etc.  Through practices, students will acquire skills to define problems and specifications, to perform modelling and simulation, to develop software system prototypes, to carry out verification, validation, and performance analysis.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6875', ' ', '220', '36', 'Dr. SUM Kwok Wing', 'LSB LT1', 'TYW LT', '2020-09-03 10:30:00', '2020-09-04 16:30:00', '2020-09-03 11:15:00', '2020-09-04 18:15:00', 'This course introduces the digital concepts; number systems; operations and codes; logic gates; Boolean algebra and logic simplification; combinational logic; functions of combinational logic; flip-flops and related devices; counters; finite state machines; programmable logic devices - programming and sequential logic applications; memory and storage; integrated circuit technologies.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6908', 'A', '125', '35', 'Dr. YIP Lo Ming', 'YIA LT3', '2020-04-17 13:30:00', '2020-04-17 14:15:00', 'This course is an intellectual pursuit across various natural sciences including the two most fundamental ones, physical and biological sciences. Ancient Greek philosophers took the lead in exploring the physical world and the world of life with reason and hence laid the foundations of natural science. This human enquiry into Nature leads to a reflection on the human understanding of Nature and the humans’ place in Nature.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`, `popularity`) VALUES ('6960', 'B', '80', '46', 'Dr. KWOK Pak Nin', 'CYT 203', '2020-04-16 10:30:00', '2020-04-16 12:15:00', 'This course is designed to develop the student\'s ability to analyze and critically evaluate arguments from a logical point of view. It will provide students with a basic understanding of such concepts as reasons, implication, validity, and fallacies. Students will learn the logical principles of deductive and inductive inferences and the techniques of applying them for determining the validity of arguments. Elements of good reasoning from an informal perspective will also be covered.',1);
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('7101', 'B', '50', '16', 'Dr. KHO Tung Yi', 'NAH 115', '2020-09-03 15:30:00', '2020-09-03 17:15:00', 'This course provides an anthropological approach to China. Discussions concentrate on major cultural and social institutions of China, both traditional and contemporary, such as family, marriage, kinship, lineage and clan, economic system, religion and value orientation.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7545', ' ', '50', '4', 'Professor LONG Zhuoyu', 'ERB 803', 'ERB 803', '2020-04-13 09:30:00', '2020-04-15 09:30:00', '2020-04-13 10:15:00', '2020-04-15 11:15:00', 'Fundamental probability concepts: probability and events; expectation, variance, moments, characteristic functions, moment generating functions; single variate distributions. Multivariate probability: conditional probability, joint probability; Bayes’ Theorem; conditional expectation, covariance; multivariate distributions, functions of random variables. Central limit theorems, law of large number. Random process: definition, stationary and ergodic random processes, Gaussian random processes, white noise. Statistics: estimation, sample size and applications.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7550', ' ', '100', '16', 'Professor NGO Chi Ki Jackey, Dr. SIOW Lam', 'MMW LT2', 'MMW LT2', '2020-09-03 14:30:00', '2020-09-05 15:30:00', '2020-09-03 15:15:00', '2020-09-05 17:15:00', 'This course gives engineering students exposure to some of the basic and essential concepts in biology and biotechnology. Topics include cell structure and energy metabolism, DNA structure and replication, protein structure and function, genetic engineering, stem cell and tissue regeneration, neural biology, cardiovascular system, muscle and skeletal system of animals, microbes and microbial biotechnology. The overall aim of this course is to introduce students with the fundamental ideas and concepts in life sciences especially those with relevance to engineering studies.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('7706', 'B', '30', '27', 'Professor CHOY Chiu Sing', 'N/A', '2020-04-13 00:00:00', '2020-04-13 00:00:00', 'The objective of the course is to enable students to have a basic understanding of the practical aspects of the engineering profession. Prior to the enrolment of this course, students must have completed not less than 8 weeks of full-time internship approved by the Faculty of Engineering.  To be qualified for award of the subject credit, the student must submit a report, within the semester of enrolment, summarizing what he or she has done and learnt during the internship, together with a testimonial from the corresponding employer. Pass or fail of the course will be determined by the professor-in-charge, based on the report and the testimonial submitted.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7780', 'C', '180', '72', 'Dr. LI Yiyang', 'ERB LT', 'TYW LT', '2020-04-13 09:30:00', '2020-04-15 09:30:00', '2020-04-13 10:15:00', '2020-04-15 11:15:00', 'Fundamental probability concepts: probability and events; expectation, variance, moments, moment generating functions; single variate distributions. Multivariate probability: conditional probability, joint probability; Bayes’ Theorem; conditional expectation, covariance; multivariate distributions, functions of random variables. Central limit theorems, law of large number. Statistics: estimation, sample size and applications.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7866', ' ', '65', '6', 'Professor SO Man Cho', 'LSB LT3', 'ERB 803', '2020-09-02 10:30:00', '2020-09-04 13:30:00', '2020-09-02 12:15:00', '2020-09-04 14:15:00', 'Set theory, functions, relations, combinatorics, graph theory, algebraic systems, propositional and predicate logic.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7995', 'B', '175', '38', 'Professor WAI Hoi To', 'YIA LT3', 'ERB LT', '2020-09-02 14:30:00', '2020-09-04 12:30:00', '2020-09-02 16:15:00', '2020-09-04 13:15:00', 'Set theory, functions, relations, combinatorics, graph theory, algebraic systems, propositional and predicate logic.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('8367', 'A', '80', '4', 'Dr. LO Kit Hung', 'KKB 101', '2020-04-16 16:30:00', '2020-04-16 18:15:00', 'This course is designed to develop the student\'s ability to analyze and critically evaluate arguments from a logical point of view. It will provide students with a basic understanding of such concepts as reasons, implication, validity, and fallacies. Students will learn the logical principles of deductive and inductive inferences and the techniques of applying them for determining the validity of arguments. Elements of good reasoning from an informal perspective will also be covered.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('8368', 'B', '80', '1', 'Dr. LO Kit Hung', 'ELB 405', '2020-04-17 13:30:00', '2020-04-17 15:15:00', 'This course is designed to develop the student\'s ability to analyze and critically evaluate arguments from a logical point of view. It will provide students with a basic understanding of such concepts as reasons, implication, validity, and fallacies. Students will learn the logical principles of deductive and inductive inferences and the techniques of applying them for determining the validity of arguments. Elements of good reasoning from an informal perspective will also be covered.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('8369', 'A', '80', '14', 'Dr. KOU Kei Chun', 'SC L5', '2020-04-14 14:30:00', '2020-04-14 16:15:00', 'This course is designed to develop the student\'s ability to analyze and critically evaluate arguments from a logical point of view. It will provide students with a basic understanding of such concepts as reasons, implication, validity, and fallacies. Students will learn the logical principles of deductive and inductive inferences and the techniques of applying them for determining the validity of arguments. Elements of good reasoning from an informal perspective will also be covered.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8706', ' ', '50', '26', 'Professor SHU Ching Tat Chester', 'ERB 804', 'ERB 404', '2020-04-14 14:30:00', '2020-04-16 16:30:00', '2020-04-14 16:15:00', '2020-04-16 17:15:00', 'This is an introductory calculus-based engineering physics course covering topics in electromagnetics, optics and modern physics. Topics in electromagnetics include: electric and magnetic properties, Coulomb’s law, Gauss’ law, electromagnetic energy and forces, Biot-Savart law, electromagnetic fields and Maxwell’s equations, propagation of plane electromagnetic waves. Topics in optics include: optical interference, interferometers, optical diffraction. Topics in modern physics include: wave-particle duality, momentum and energy of photons and electrons, electronic states and energy bands, electrical conduction in metals and semiconductors.  Contents will be supplemented by discussions on applications relevant to engineering.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('9086', 'CD01', '25', '20', 'Dr. NG Ka Leung', 'YIA 506', '2020-05-02 09:30:00', '2020-05-02 13:15:00', 'This course is an intellectual pursuit across various natural sciences including the two most fundamental ones, physical and biological sciences. Ancient Greek philosophers took the lead in exploring the physical world and the world of life with reason and hence laid the foundations of natural science. This human enquiry into Nature leads to a reflection on the human understanding of Nature and the humans’ place in Nature.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('9095', 'B', '50', '3', 'Mr. PONG Sze Ho Cecil', 'YIA 402', '2020-04-17 13:30:00', '2020-04-17 14:15:00', 'This course is an intellectual pursuit across various natural sciences including the two most fundamental ones, physical and biological sciences. Ancient Greek philosophers took the lead in exploring the physical world and the world of life with reason and hence laid the foundations of natural science. This human enquiry into Nature leads to a reflection on the human understanding of Nature and the humans’ place in Nature.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6135', ' ', '60', '44', 'Professor TSANG Hon Ki', 'LPN LT', '2020-09-03 13:30:00',  '2020-09-03 14:15:00', 'The 1-unit course will introduce engineering entrepreneurship and provide the key basic concepts needed in the preparation of technical proposals and business plans.  The course will introduce students to analytical process of evaluating new ideas, and metrics to compare ideas with existing approaches in the market.  The course will include in class discussion of forecasts based on market size estimates, cashflow analysis and technical development plans.  The course objective is to prepare students to develop and present their innovative technical ideas that have potential for practical development as a preliminary entrepreneurship project in the following semester in ENGG3803.  In addition to a formal written proposal to describe their ideas, students will also be asked to present their proposal to the course instructor. Shortlisted proposals will be invited to a second presentation where a panel of experienced engineering entrepreneurs select proposals for further development.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6644', ' ', '100', '4', 'Dr. CHUI Chi Ming Lawrence', 'LSK LT7', '2020-09-03 15:30:00',  '2020-09-03 18:15:00', 'This foundation course is designed for students who have not taken science courses with a biology component at the senior secondary school level. It presents our current understandings on cells and molecules of life, genetics and evolution, organisms and environment, and health and diseases. Those students who have successfully completed this course will have a solid foundation for studying more advanced courses in life sciences.');
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
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8428', '8427');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8171', '8214');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5255', '8429');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5257', '6781');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5257', '6780');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5696', '8430');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6242', '5727');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6424', '7967');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6425', '7624');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6425', '6426');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6788', '7550');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6634', '6633');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6943', '7334');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6943', '6943');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8431', '5490');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8431', '5491');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8431', '5492');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8431', '5493');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6586', '7693');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6586', '7694');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8466', '8467');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8466', '8468');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8469', '6624');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8469', '8470');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8469', '5713');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8471', '8472');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8471', '8473');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7316', '7319');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7316', '9314');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8168', '8173');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6452', '6451');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8164', '8212');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5760', '5761');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5481', '6776');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8073', '8070');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8073', '8072');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8073', '8071');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6965', '6969');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8478', '8479');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5832', '5833');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5832', '6118');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8700', '6314');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7651', '7652');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8506', '8507');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8506', '9300');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8506', '5252');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8506', '5737');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8508', '5736');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8508', '5752');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8508', '8509');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6537', '6538');

INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5638', '6454');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6765', '6768');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6765', '7271');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6766', '6772');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6706', '5976');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6706', '6156');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6875', '5798');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6875', '7812');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6875', '7811');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6875', '7809');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6875', '7810');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5846', '7781');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5846', '8653');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7780', '7782');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6501', '5420');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6501', '5421');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7995', '8024');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5813', '6498');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8706', '8074');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7545', '7547');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7866', '7867');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6599', '6600');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6136', '7591');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6136', '6236');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6076', '7592');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6076', '7594');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6617', '6357');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6617', '7521');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7101', '5795');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7101', '7100');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8369', '8370');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6960', '6964');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5375', '9092');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5375', '6852');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6653', '6651');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6653', '6949');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6908', '6230');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6908', '6232');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('9095', '9094');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('9095', '9093');
UNLOCK TABLES;

--
-- Table structure for table `tutorial_info`
--

DROP TABLE IF EXISTS `tutorial_info`;
CREATE TABLE `tutorial_info` (
  `tutorial_id` char(8) NOT NULL,
  `tutorial_code` varchar(4) NOT NULL,
  `tutorial_start_time_1` datetime NOT NULL,
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
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8427', 'L01', '2020-04-16 15:30:00', '2020-04-16 17:15:00', '50', '13', 'SHB 123');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8214', 'L01', '2020-04-14 14:30:00', '2020-04-14 16:15:00', '50', '23', 'SHB 123');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8429', 'T01', '2020-04-14 16:30:00', '2020-04-14 17:15:00', '80', '38', 'ERB 803');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6780', 'T01', '2020-04-13 09:30:00', '2020-04-13 10:15:00', '70', '30', 'LSB LT3');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6781', 'T02', '2020-04-13 12:30:00', '2020-04-13 13:15:00', '70', '15', 'LSB LT3');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8430', 'T01', '2020-04-14 15:30:00', '2020-04-14 16:15:00', '60', '8', 'LSB C1');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5727', 'AT01', '2020-04-15 17:30:00', '2020-04-15 18:15:00', '80', '30', 'ERB 407');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7967', 'AT02', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '80', '58', 'LHC 103');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7624', 'BT01', '2020-04-15 17:30:00', '2020-04-15 18:15:00', '80', '23', 'LSB LT5');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6426', 'BT02', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '80', '40', 'LSB LT2');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7550', 'ET01', '2020-04-16 13:30:00', '2020-04-16 15:15:00', '140', '10', 'ERB 1004');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6633', 'T01', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '60', '11', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6944', 'T01', '2020-04-16 11:30:00', '2020-04-16 12:15:00', '50', '1', 'SHB 924');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7334', 'T02', '2020-04-16 13:30:00', '2020-04-16 14:15:00', '50', '2', 'SHB 924');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5490', 'T01', '2020-04-13 17:30:00', '2020-04-13 18:15:00', '90', '7', 'LSK LT2');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5491', 'T02', '2020-04-13 17:30:00', '2020-04-13 18:15:00', '90', '64', 'LSK LT3');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5492', 'T03', '2020-04-15 17:30:00', '2020-04-15 18:15:00', '0', '0', 'ERB 706');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5493', 'T04', '2020-04-15 17:30:00', '2020-04-15 18:15:00', '0', '0', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7693', 'L01', '2020-04-16 11:30:00', '2020-04-16 12:15:00', '50', '15', 'SHB 904');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7694', 'L02', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '50', '24', 'SHB 123');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8467', 'T01', '2020-04-15 14:30:00', '2020-04-15 15:15:00', '80', '25', 'SC LT1');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8468', 'T02', '2020-04-16 14:30:00', '2020-04-16 15:15:00', '40', '15', 'ERB 408');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6624', 'T01', '2020-04-14 17:30:00', '2020-04-14 18:15:00', '100', '48', 'LHC LT');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8470', 'T03', '2020-04-16 14:30:00', '2020-04-16 15:15:00', '80', '67', 'ERB 407');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5713', 'T02', '2020-04-15 16:30:00', '2020-04-15 17:15:00', '90', '3', 'LSB LT3');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8472', 'T01', '2020-04-16 10:30:00', '2020-04-16 11:15:00', '70', '21', 'LSB LT6');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8473', 'T02', '2020-04-16 15:30:00', '2020-04-16 16:15:00', '45', '19', 'ERB 713');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7319', 'T01', '2020-04-16 11:30:00', '2020-04-16 12:15:00', '60', '22', 'ERB 803');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('9314', 'T02', '2020-04-14 12:30:00', '2020-04-14 13:15:00', '30', '30', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8173', 'T01', '2020-04-14 15:30:00', '2020-04-14 16:15:00', '60', '1', 'LSK 210');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6451', 'T01', '2020-04-15 09:30:00', '2020-04-15 10:15:00', '150', '15', 'LSK LT1');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8212', 'T01', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '60', '31', 'LHC G04');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5761', 'T01', '2020-04-16 11:30:00', '2020-04-16 12:15:00', '100', '86', 'LSB LT2');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6776', 'T01', '2020-04-15 17:30:00', '2020-04-15 18:15:00', '0', '0', 'LSB LT2');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8070', 'T01', '2020-04-16 08:30:00', '2020-04-16 09:15:00', '40', '31', 'SHB 123');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8072', 'T03', '2020-04-16 12:30:00', '2020-04-16 13:15:00', '40', '5', 'SHB 123');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8071', 'T02', '2020-04-16 11:30:00', '2020-04-16 12:15:00', '40', '18', 'SHB 123');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6969', 'T01', '2020-09-02 17:30:00', '2020-09-02 18:15:00', '150', '2', 'LSK LT3');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8479', 'T01', '2020-09-03 16:30:00', '2020-09-03 17:15:00', '60', '30', 'SHB 123');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5833', 'AL01', '2020-09-03 09:30:00', '2020-09-03 11:15:00', '60', '11', 'SHB 924');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6118', 'AL02', '2020-09-03 14:30:00', '2020-09-03 16:15:00', '60', '12', 'SHB 924');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6314', 'BL01', '2020-09-02 09:30:00', '2020-09-02 11:15:00', '95', '32', 'SHB 924');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7652', 'T01', '2020-09-01 14:30:00', '2020-09-01 15:15:00', '55', '1', 'LSB LT1');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8507', 'T01', '2020-09-01 11:30:00', '2020-09-01 12:15:00', '80', '4', 'ERB LT');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('9300', 'T04', '2020-09-02 10:30:00', '2020-09-02 11:15:00', '30', '30', 'ERB 408');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5252', 'T03', '2020-09-01 17:30:00', '2020-09-01 18:15:00', '60', '41', 'ERB 803');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5737', 'T02', '2020-09-01 16:30:00', '2020-09-01 17:15:00', '60', '2', 'LSB LT5');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5736', 'T01', '2020-09-02 12:30:00', '2020-09-02 13:15:00', '65', '3', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5752', 'T02', '2020-09-02 14:30:00', '2020-09-02 15:15:00', '70', '34', 'ERB 803');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8509', 'T03', '2020-09-02 16:30:00', '2020-09-02 17:15:00', '0', '0', 'LSB LT4');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6538', 't01', '2020-09-07 08:30:00', '2020-09-07 09:15:00', '60', '17', 'LSB C2');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6454', 'CT01', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '200', '112', 'ERB LT');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6768', 'AL01', '2020-09-04 11:30:00', '2020-09-04 12:15:00', '58', '1', 'SHB 904');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7271', 'AL02', '2020-09-04 11:30:00', '2020-09-04 12:15:00', '56', '0', 'SHB 123');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6772', 'BL01', '2020-09-04 11:30:00', '2020-09-04 12:15:00', '141', '1', 'ERB 1004');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5976', 'BT02', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '45', '1', 'ERB 706');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6156', 'BT01', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '45', '0', 'ERB 713');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5798', 'T01', '2020-09-04 11:30:00', '2020-09-04 12:15:00', '50', '2', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7812', 'T05', '2020-09-04 17:30:00', '2020-09-04 18:15:00', '50', '33', 'ERB 401');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7811', 'T04', '2020-09-04 16:30:00', '2020-09-04 17:15:00', '50', '30', 'ERB 401');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7809', 'T02', '2020-09-04 15:30:00', '2020-09-04 16:15:00', '50', '1', 'LSB C1');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7810', 'T03', '2020-09-04 14:30:00', '2020-09-04 15:15:00', '50', '0', 'ERB 712');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7781', 'AT01', '2020-04-13 10:30:00', '2020-04-13 11:15:00', '55', '24', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8653', 'AT02', '2020-04-13 10:30:00', '2020-04-13 11:15:00', '55', '26', 'LSK 306');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7782', 'CT01', '2020-04-13 10:30:00', '2020-04-13 11:15:00', '180', '72', 'ERB LT');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5420', 'AT01', '2020-09-05 10:30:00', '2020-09-05 11:15:00', '50', '27', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5421', 'AT02', '2020-09-05 11:30:00', '2020-09-05 12:15:00', '50', '30', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8024', 'BT01', '2020-09-05 15:30:00', '2020-09-05 17:15:00', '175', '38', 'MMW LT1');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6498', 'L01', '2020-09-04 16:30:00', '2020-09-04 17:15:00', '50', '0', 'ERB 909');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8074', 'T01', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '50', '26', 'LSB C1');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7547', 'T01', '2020-04-13 10:30:00', '2020-04-13 11:15:00', '50', '4', 'ERB 803');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7867', 'T01', '2020-09-05 10:30:00', '2020-09-05 12:15:00', '65', '6', 'ERB 803');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6600', 'JT01', '2020-04-16 15:30:00', '2020-04-16 16:15:00', '80', '30', 'LSB LT4');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7591', 'AT02', '2020-09-03 08:30:00', '2020-09-03 09:15:00', '21', '3', 'ERB 713');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6236', 'AT03', '2020-09-03 08:30:00', '2020-09-03 09:15:00', '21', '6', 'LSB C3');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7592', 'BT01', '2020-09-03 08:30:00', '2020-09-03 09:15:00', '30', '8', 'MMW 704');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7594', 'BT02', '2020-09-03 08:30:00', '2020-09-03 09:15:00', '30', '8', 'MMW 706');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6357', 'GT01', '2020-04-13 16:30:00', '2020-04-13 17:15:00', '40', '2', 'MMW 704');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7521', 'GT02', '2020-04-13 16:30:00', '2020-04-13 17:15:00', '40', '33', 'MMW 706');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5795', 'BT01', '2020-09-03 17:30:00', '2020-09-03 18:15:00', '10', '1', 'NAH 115');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7100', 'BT02', '2020-09-02 14:30:00', '2020-09-02 15:15:00', '10', '0', 'NAH 401');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8370', 'AT01', '2020-04-13 00:00:00', '2020-04-13 00:00:00', '80', '14', 'TBA');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6964', 'BT01', '2020-04-13 00:00:00', '2020-04-13 00:00:00', '80', '46', 'TBA');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('9092', 'AT02', '2020-04-15 10:30:00', '2020-04-15 12:15:00', '25', '2', 'YIA 402');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6852', 'AT01', '2020-04-13 14:30:00', '2020-04-13 16:15:00', '25', '1', 'CYT 215');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6651', 'CT03', '2020-04-15 16:30:00', '2020-04-15 18:15:00', '25', '1', 'WMY 503');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6949', 'CT06', '2020-04-17 09:30:00', '2020-04-17 11:15:00', '25', '3', 'ELB 305');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6230', 'AT01', '2020-04-14 08:30:00', '2020-04-14 10:15:00', '25', '11', 'HYS 501');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6232', 'AT05', '2020-04-15 15:30:00', '2020-04-15 17:15:00', '25', '7', 'HYS 303');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('9094', 'BT01', '2020-04-15 11:30:00', '2020-04-15 13:15:00', '25', '1', 'ELB 305');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('9093', 'BT02', '2020-04-17 09:30:00', '2020-04-17 11:15:00', '25', '2', 'WMY 302');
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
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1020', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1030', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1120', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1130', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1510', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1540', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'ESTR1002', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1310', 'ESTR1003', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1410', 'ESTR1004', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG2430', 'ESTR2002', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG2440', 'CSCI2110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG2440', 'ESTR2004', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1020', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1030', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1120', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1130', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1510', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1540', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'ESTR1002', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1003', 'ENGG1310', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1004', 'ENGG1410', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR2002', 'ENGG2430', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR2004', 'ENGG2440', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('LSCI1001', 'LSCI1003', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('LSCI1003', 'LSCI1001', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEA1333', 'N/A', 'Anthropology');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEA2180', 'UGEA2334', 'Anthropology');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEA2334', 'UGEA2180', 'Anthropology');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEB1570', 'N/A', 'Psychology');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEB2222', 'N/A', 'Geography and Resource Management');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEC1670', 'N/A', 'Government and Public Administration');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGED1111', 'UGED1112', 'Philosophy');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGED1112', 'UGED1111', 'Philosophy');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGFN1000', 'UGFN1001', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGFN1001', 'UGFN1000', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1020', 'CSCI1120', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1020', 'CSCI1520', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1020', 'ESTR1100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1030', 'CSCI1130', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1030', 'CSCI1530', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1030', 'CSCI1102', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'CSCI1010', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'CSCI1120', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'CSCI1130', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'CSCI1520', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'CSCI1530', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'CSCI1540', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'ENGG1100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'ENGG2600', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'ENGG2601', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'ESTR1000', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'ESTR1002', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'ESTR1100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'ESTR1102', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'ESTR2008', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'N/A', 'AISTN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'N/A', 'CENGN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1510', 'N/A', 'CSCIN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'N/A', 'CSCIN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'N/A', 'CENGN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'N/A', 'AISTN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'CSCI1020', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'CSCI1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'CSCI1130', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'CSCI1510', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'CSCI1530', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'CSCI1540', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'ENGG1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'ENGG1100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'ENGG2600', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'ENGG2601', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'ESTR1000', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'ESTR1002', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'ESTR1100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'ESTR1102', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'ESTR2008', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1520', 'CSCI1120', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'CSCI1030', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'CSCI1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'CSCI1130', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'CSCI1510', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'CSCI1520', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'CSCI1540', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'ENGG1100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'ENGG1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'ENGG2600', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'ENGG2601', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'ESTR1000', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'ESTR1002', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'ESTR1100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'ESTR1102', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'ESTR2008', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'CSCI1120', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'N/A', 'CSCIN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'N/A', 'CENGN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1530', 'N/A', 'AISTN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2100', 'ESTR2102', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2100', 'CSCI2520', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2520', 'N/A', 'CSCIN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2520', 'N/A', 'CENGN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2520', 'N/A', 'AISTN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2520', 'CSCI2100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2520', 'ESTR2102', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3100', 'ENGG3820', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3100', 'ESTR3308', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3100', 'IERG3080', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3150', 'ESTR3102', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3180', 'ESTR3106', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3250', 'ENGG2601', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3251', 'ENGG2602', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI4430', 'ESTR3310', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI4430', 'ESTR4120', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI4430', 'IERG3310', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'N/A', 'CSCIN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'N/A', 'CENGN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'CSCI1020', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'CSCI1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'CSCI1120', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'CSCI1130', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'CSCI1510', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'CSCI1520', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'CSCI1530', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'ESTR1100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1540', 'ESTR1102', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1580', 'N/A', 'CSCIN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1580', 'N/A', 'CENGN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1580', 'ENGG1100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1580', 'ENGG1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1580', 'ENGG2600', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1580', 'ENGG2601', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1580', 'ESTR1002', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI1580', 'ESTR2008', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2040', 'CSCI1040', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2040', 'AIST1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2510', 'N/A', 'CSCIN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2510', 'N/A', 'CENGN');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2510', 'CENG2400', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2510', 'ELEG3230', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2510', 'ENGG2020', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2510', 'ESTR2100', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI2510', 'ESTR2104', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3160', 'ESTR3104', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3160', 'CSCI3190', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3190', 'CSCI3160', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3190', 'ENGG2440', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3190', 'ESTR2004', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('CSCI3190', 'ESTR3104', 'N/A');
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
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA1333', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA1333', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA1333', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2180', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2180', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2180', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2334', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2334', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2334', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB1570', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB1570', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB1570', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB2222', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB2222', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB2222', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEC1670', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEC1670', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEC1670', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1111', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1111', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1111', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1112', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1112', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1112', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `corequisite_id`, `group`) VALUES ('CSCI4120', 'CSCI3260', '2');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `corequisite_id`, `group`) VALUES ('CSCI4120', 'CSCI3550', '2');
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
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('ENGG1410', 'MATH1510', '1');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('ENGG3803', 'ENGG3802', '1');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('ESTR1004', 'MATH1510', '1');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2100', 'CSCI1110', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2100', 'CSCI1120', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2100', 'CSCI1130', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2100', 'CSCI1150', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2100', 'CSCI1520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2100', 'CSCI1530', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2100', 'CSCI1540', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2100', 'ENGG1110', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2100', 'ESTR1100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2100', 'ESTR1102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'CSCI1110', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'CSCI1120', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'CSCI1130', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'CSCI1510', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'CSCI1520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'CSCI1540', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'CSCI1530', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'ENGG1110', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'ESTR1002', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'ESTR1100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'ESTR1102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'PHYS2351', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'MATH2210', '3');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2520', 'MATH2220', '3');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'CSCI1110', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'CSCI1120', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'CSCI1130', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'CSCI1510', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'CSCI1520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'CSCI1540', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'CSCI1530', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'ENGG1110', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'ESTR1002', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'ESTR1100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'ESTR1102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'PHYS2351', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'MATH2210', '1');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2720', 'MATH2220', '1');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3100', 'CSCI1110', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3100', 'CSCI1120', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3100', 'CSCI1130', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3100', 'CSCI1510', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3100', 'CSCI1520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3100', 'CSCI1530', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3100', 'CSCI1540', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3100', 'ESTR1100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3100', 'ESTR1102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3150', 'ESTR2102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3150', 'CSCI2100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3150', 'CSCI2520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3170', 'ESTR2102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3170', 'CSCI2100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3170', 'CSCI2520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3180', 'ESTR2102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3180', 'CSCI2100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3180', 'CSCI2520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3290', 'CSCI2100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3290', 'ESTR2102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3310', 'ESTR2102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3310', 'CSCI2100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3310', 'CSCI2520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3320', 'ENGG2040', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3320', 'STAT2001', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3320', 'ESTR2002', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3320', 'ENGG2430', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4120', 'CSCI2100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4120', 'ESTR2102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4120', 'CSCI2520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4140', 'CSCI2100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4140', 'ESTR2102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4140', 'CSCI2520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4190', 'CSCI2100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4190', 'ESTR2102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4190', 'CSCI2520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4430', 'CENG3150', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4430', 'CSCI3150', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI4430', 'ESTR3102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'CSCI1110', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'CSCI1120', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'CSCI1130', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'CSCI1150', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'CSCI1510', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'CSCI1520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'CSCI1530', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'CSCI1540', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'ENGG1110', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'ESTR1002', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'ESTR1100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'ESTR1102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'MATH2210', '3');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'MATH2220', '3');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI2510', 'PHYS2351', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3130', 'CSCI2110', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3130', 'ESTR2004', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3130', 'ENGG2440', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3160', 'CSCI2100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3160', 'CSCI2520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3160', 'ESTR2102', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3160', 'CSCI2110', '4');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3160', 'ENGG2440', '4');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3160', 'ESTR2004', '4');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3190', 'CSCI2100', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3190', 'CSCI2520', '2');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('CSCI3190', 'ESTR2102', '2');
UNLOCK TABLES;

DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `course_id` char(8) NOT NULL COMMENT '四位字母+四位数字 eg. csci3100',
  `session_id` char(8) NOT NULL COMMENT '四位数字  如果任意session都可以，则需要增加多条数据记录',
  `tutorial_id` char(8) DEFAULT NULL COMMENT '四位数字  Null for 所有的tutorial都可以，或者无tutorial',
  `sid` int NOT NULL,
  PRIMARY KEY (`sid`,`session_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert into shopping_cart values("UGED1112", "6960", "6964", "1155000001"), ("PHYS1003", "6076", "7592", "1155000001");

DROP TABLE IF EXISTS `course_history`;
CREATE TABLE `course_history` (
  `sid` varchar(10) NOT NULL,
  `course_id` char(8) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  PRIMARY KEY (`course_id`,`sid`)
); #ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course_history`
--

LOCK TABLES `course_history` WRITE;
INSERT INTO `course_history` VALUES ('1155000001','CHEM1380','Basic Chemistry for Engineers'),
									('1155000001','ENGG1100','Introduction to Engineering Design'),
									('1155124427','ENGG1100','Introduction to Engineering Design'),
                                    ('1155000001','ENGG1110','Problem Solving By Programming'),
                                    ('1155148372','ENGG1110','Problem Solving By Programming'),
                                    ('1155000001','ENGG1410','Linear Algebra and Vector Calculus for Engineers'),
                                    ('1155148372','ENGG1410','Linear Algebra and Vector Calculus for Engineers'),
                                    ('1155000001','ENGG2020','Digital Logic and Systems'),
                                    ('1155124427','ENGG2020','Digital Logic and Systems'),
                                    ('1155000001','ENGG2430','Probability and Statistics for Engineers'),
                                    ('1155000001','ENGG2440','Discrete Mathematics for Engineers'),
                                    ('1155000001','ENGG3802','Introduction to Engineering Entrepreneurship'),
                                    ('1155124427','ESTR1002','Problem Solving By Programming'),
                                    ('1155124427','ESTR1004','Linear Algebra and Vector Calculus for Engineers'),
                                    ('1155124427','ESTR2004','Discrete Mathematics for Engineers'),
                                    ('1155124427','LSCI1003','Life Sciences for Engineers'),
                                    ('1155000001','MATH1510','Calculus for Engineers'),
                                    ('1155124427','MATH1510','Calculus for Engineers'),
                                    ('1155148372','MATH1510','Calculus for Engineers'),
                                    ('1155000001','PHYS1110','Engineering Physics: Mechanics and Thermodynamics'),
                                    ('1155124427','PHYS1110','Engineering Physics: Mechanics and Thermodynamics'),
                                    ('1155148372','PHYS1110','Engineering Physics: Mechanics and Thermodynamics'),
                                    ('1155000001','UGEA2180','Chinese Culture and Society'),
                                    ('1155124427','UGEA2180','Chinese Culture and Society'),
                                    ('1155000001','UGEB1570','Consciousness'),
                                    ('1155000001','UGEC1670','Politics and Mass Media'),
                                    ('1155124427','UGEC1670','Politics and Mass Media'),
                                    ('1155000001','UGED1112','Logic and Argumentation'),
                                    ('1155000001','UGFH1000','In Dialogue With Humanity'),
                                    ('1155124427','UGFH1000','In Dialogue With Humanity'),
                                    ('1155148372','UGFH1000','In Dialogue With Humanity'),
                                    ('1155000001','UGFN1000','In Dialogue With Nature'),
                                    ('1155124427','UGFN1000','In Dialogue With Nature');
UNLOCK TABLES;

--
-- Table structure for table `required_course`
--

DROP TABLE IF EXISTS `required_course`;
CREATE TABLE `required_course` (
  `sid` varchar(10) NOT NULL,
  `course_id` char(8) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `taken` varchar(1) NOT NULL,
  PRIMARY KEY (`taken`,`course_id`,`sid`),
  KEY `SID_idx` (`sid`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `required_course`
--

LOCK TABLES `required_course` WRITE;
/*!40000 ALTER TABLE `required_course` DISABLE KEYS */;
INSERT INTO `required_course` VALUES ('1155148372','ENGG1100','Introduction to Engineering Design','N'),
									 ('1155148372','ENGG1410','Linear Algebra and Vector Calculus for Engineers','N'),
                                     ('1155148372','ENGG2020','Digital Logic and Systems','N'),
                                     ('1155148372','ENGG2430','Probability and Statistics for Engineers','N'),
                                     ('1155148372','ENGG2440','Discrete Mathematics for Engineers','N'),
                                     ('1155124427','ENGG3802','Introduction to Engineering Entrepreneurship','N'),
                                     ('1155148372','ENGG3802','Introduction to Engineering Entrepreneurship','N'),
                                     ('1155124427','ENGG3803','Engineering Entrepreneurship Development Project','N'),
                                     ('1155148372','ENGG3803','Engineering Entrepreneurship Development Project','N'),
                                     ('1155124427','ESTR2002','Probability and Statistics for Engineers','N'),
                                     ('1155148372','UGFN1000','In Dialogue With Nature','N'),
                                     ('1155000001','ENGG1100','Introduction to Engineering Design','Y'),
                                     ('1155124427','ENGG1100','Introduction to Engineering Design','Y'),
                                     ('1155000001','ENGG1110','Problem Solving By Programming','Y'),
                                     ('1155148372','ENGG1110','Problem Solving By Programming','Y'),
                                     ('1155000001','ENGG1410','Linear Algebra and Vector Calculus for Engineers','Y'),
                                     ('1155000001','ENGG2020','Digital Logic and Systems','Y'),
                                     ('1155124427','ENGG2020','Digital Logic and Systems','Y'),
                                     ('1155000001','ENGG2430','Probability and Statistics for Engineers','Y'),
                                     ('1155000001','ENGG2440','Discrete Mathematics for Engineers','Y'),
                                     ('1155000001','ENGG3802','Introduction to Engineering Entrepreneurship','Y'),
                                     ('1155000001','ENGG3803','Engineering Entrepreneurship Development Project','Y'),
                                     ('1155124427','ESTR1002','Problem Solving By Programming','Y'),
                                     ('1155124427','ESTR1004','Linear Algebra and Vector Calculus for Engineers','Y'),
                                     ('1155124427','ESTR2004','Discrete Mathematics for Engineers','Y'),
                                     ('1155000001','MATH1510','Calculus for Engineers','Y'),
                                     ('1155124427','MATH1510','Calculus for Engineers','Y'),
                                     ('1155148372','MATH1510','Calculus for Engineers','Y'),
                                     ('1155000001','PHYS1110','Engineering Physics: Mechanics and Thermodynamics','Y'),
                                     ('1155124427','PHYS1110','Engineering Physics: Mechanics and Thermodynamics','Y'),
                                     ('1155148372','PHYS1110','Engineering Physics: Mechanics and Thermodynamics','Y'),
                                     ('1155000001','UGFH1000','In Dialogue With Humanity','Y'),
                                     ('1155124427','UGFH1000','In Dialogue With Humanity','Y'),
                                     ('1155148372','UGFH1000','In Dialogue With Humanity','Y'),
                                     ('1155000001','UGFN1000','In Dialogue With Nature','Y'),
                                     ('1155124427','UGFN1000','In Dialogue With Nature','Y');
UNLOCK TABLES;

--
-- Table structure for table ``
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `sid` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `year` int,
  `major` varchar(40),
  `available_credit` int,
  `stream` varchar(30),
  `avatar` mediumblob,
  PRIMARY KEY (`sid`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES ('1155000001','748211','Allen','1155000001@link.cuhk.edu.hk',3,'Computer Science',0,'N/A',NULL),('1155124427','135790','Bob','1155124427@link.cuhk.edu.hk',2,'Computer Science',20,'Quantum mechanics',NULL),('1155148372','123456','Charles','1155148372@link.cuhk.edu.hk',1,'Computer Science',60,'N/A',NULL);
UNLOCK TABLES;

use cusisdbBeta;

DROP TABLE IF EXISTS `course_plan`;
CREATE TABLE `course_plan` (
  `course_id` char(8) NOT NULL,
  `session_id` char(8) NOT NULL,
  `credit` tinyint(3) unsigned NOT NULL,
  `preference` tinyint(3) unsigned NOT NULL,
  `tutorial_id` char(8) NOT NULL,
  `tutorial_start_time_1` datetime NOT NULL,
  `tutorial_end_time_1` datetime NOT NULL,
  `session_start_time_1` datetime NOT NULL,
  `session_start_time_2` datetime DEFAULT NULL,
  `session_start_time_3` datetime DEFAULT NULL,
  `session_end_time_1` datetime NOT NULL,
  `session_end_time_2` datetime DEFAULT NULL,
  `session_end_time_3` datetime DEFAULT NULL,
  `sid` varchar(10) NOT NULL,
  `plan_index` char(8) NOT NULL,
  PRIMARY KEY (`sid`,`session_id`,`tutorial_id`,`plan_index`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

update session_info set session_start_time_1 = date_add(session_start_time_1, interval 1 week);
update session_info set session_start_time_2 = date_add(session_start_time_2, interval 1 week);
update session_info set session_start_time_3 = date_add(session_start_time_3, interval 1 week);
update session_info set session_end_time_1 = date_add(session_end_time_1, interval 1 week);
update session_info set session_end_time_2 = date_add(session_end_time_2, interval 1 week);
update session_info set session_end_time_3 = date_add(session_end_time_3, interval 1 week);
