-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: user
-- ------------------------------------------------------
-- Server version	8.0.19
use cusisdb;

--
-- Table structure for table `course_history`
--

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
INSERT INTO `course_history` VALUES ('1155000001',1111,'Data Structure'),('1155104429',1111,'Data Structure'),('1155124427',1111,'Data Structure'),('1155124428',1111,'Data Structure'),('1155000001',2222,'Software Engineering'),('1155104429',2222,'Software Engineering'),('1155124427',2222,'Software Engineering'),('1155124428',2222,'Software Engineering');
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
INSERT INTO `required_course` VALUES ('1155104429',1111,'Data Structure','N'),('1155124428',1111,'Data Structure','N'),('1155104429',2222,'Software Engineering','N'),('1155124427',2222,'Software Engineering','N'),('1155000001',1111,'Data Sturcture','Y'),('1155124427',1111,'Data Sturcture','Y'),('1155000001',2222,'Software Engineering','Y'),('1155124428',2222,'Software Engineering','Y');
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `sid` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `year` int NOT NULL,
  `major` varchar(40) NOT NULL,
  `available_credit` int NOT NULL,
  `stream` varchar(30) NOT NULL,
  `avatar` mediumblob,
  PRIMARY KEY (`sid`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES ('1155104583','748211','Allen','1155104583@link.cuhk.edu.hk',3,'Computer Science',0,'N/A',NULL),('1155124427','135790','Bob','1155124427@link.cuhk.edu.hk',2,'Computer Science',20,'Quantum mechanics',NULL),('1155148372','123456','Charles','1155148372@link.cuhk.edu.hk',1,'Computer Science',60,'N/A',NULL);
UNLOCK TABLES;
