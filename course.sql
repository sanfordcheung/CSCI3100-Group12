-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: coursedb
-- ------------------------------------------------------
-- Server version	8.0.19

use cusisdb;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_info` (
  `course_id` char(8) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credit` tinyint unsigned NOT NULL,
  `department` varchar(100) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
/*!40000 ALTER TABLE `course_info` DISABLE KEYS */;
INSERT INTO `course_info` VALUES ('CSCI1130','Introducing to Computing Using Java',3,'Computer Science and Engineering',NULL),('CSCI3100','Software Engineering',3,'Computer Science and Engineering',NULL);
/*!40000 ALTER TABLE `course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_session_list`
--

DROP TABLE IF EXISTS `course_session_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_session_list` (
  `course_id` char(8) NOT NULL,
  `session_id` char(8) NOT NULL,
  PRIMARY KEY (`session_id`,`course_id`),
  UNIQUE KEY `session_id_UNIQUE` (`session_id`)
); #ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_session_list`
--

LOCK TABLES `course_session_list` WRITE;
/*!40000 ALTER TABLE `course_session_list` DISABLE KEYS */;
INSERT INTO `course_session_list` VALUES ('CSCI1130',6966),('CSCI3100',8431),('CSCI1130',8661);
/*!40000 ALTER TABLE `course_session_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_info`
--

DROP TABLE IF EXISTS `session_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_info` (
  `session_id` char(8) NOT NULL,
  `session_code` varchar(4) NOT NULL,
  `quota` smallint unsigned NOT NULL,
  `vacancy` smallint unsigned NOT NULL,
  `venue` varchar(45) NOT NULL DEFAULT 'TBA',
  `lecturer` varchar(45) NOT NULL DEFAULT 'TBA',
  `session_hour` tinyint unsigned NOT NULL,
  `session_time_1` datetime NOT NULL,
  `session_time_2` datetime DEFAULT NULL,
  `session_time_3` datetime DEFAULT NULL,
  `evalutaion` double DEFAULT NULL,
  `schedule` varchar(1000) DEFAULT NULL,
  `commment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_id_UNIQUE` (`session_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_info`
--

LOCK TABLES `session_info` WRITE;
/*!40000 ALTER TABLE `session_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_tutorial_list`
--

DROP TABLE IF EXISTS `session_tutorial_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_tutorial_list` (
  `session_id` char(8) NOT NULL,
  `tutorial_id` char(8) NOT NULL,
  PRIMARY KEY (`tutorial_id`,`session_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_tutorial_list`
--

LOCK TABLES `session_tutorial_list` WRITE;
/*!40000 ALTER TABLE `session_tutorial_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_tutorial_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial_info`
--

DROP TABLE IF EXISTS `tutorial_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorial_info` (
  `tutorial_id` char(8) NOT NULL,
  `tutorial_code` varchar(4) NOT NULL,
  `tutorial_hour` tinyint unsigned NOT NULL,
  `tutorial_time_1`  datetime NOT NULL,
  `tutorial_time_2` datetime DEFAULT NULL,
  `tutorial_time_3` datetime DEFAULT NULL,
  `quota` smallint unsigned NOT NULL,
  `vacancy` smallint unsigned NOT NULL,
  `venue` varchar(45) NOT NULL DEFAULT 'TBA',
  PRIMARY KEY (`tutorial_id`),
  UNIQUE KEY `tutorial_id_UNIQUE` (`tutorial_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial_info`
--

LOCK TABLES `tutorial_info` WRITE;
/*!40000 ALTER TABLE `tutorial_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorial_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `conflict_list`
--

DROP TABLE IF EXISTS `conflict_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conflict_list` (
  `course_id` char(8) NOT NULL,
  `conflict_id` char(8) NOT NULL,
  PRIMARY KEY (`course_id`,`conflict_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conflict_list`
--

LOCK TABLES `conflict_list` WRITE;
/*!40000 ALTER TABLE `conflict_list` DISABLE KEYS */;
INSERT INTO `conflict_list` VALUES ('CSCI1130','CSCI1030'),('CSCI1130','CSCI1110'),('CSCI1130','CSCI1120'),('CSCI1130','CSCI1510'),('CSCI1130','CSCI1520'),('CSCI1130','CSCI1530'),('CSCI1130','CSCI1540'),('CSCI1130','ESTR1100'),('CSCI1130','ESTR1102'),('CSCI3100','ENGG3820'),('CSCI3100','ESTR3308'),('CSCI3100','IERG3080');
/*!40000 ALTER TABLE `conflict_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corequisit_list`
--

DROP TABLE IF EXISTS `corequisite_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corequisite_list` (
  `course_id` char(8) NOT NULL,
  `corequisite_id` char(8) NOT NULL,
  `group` char(1) NOT NULL,
  PRIMARY KEY (`course_id`,`corequisite_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corequisit_list`
--

LOCK TABLES `corequisite_list` WRITE;
/*!40000 ALTER TABLE `corequisite_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `corequisite_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prerequisit_list`
--

DROP TABLE IF EXISTS `prerequisite_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prerequisite_list` (
  `course_id` char(8) NOT NULL,
  `prerequisite_id` char(8) NOT NULL,
  `group` char(1) NOT NULL,
  PRIMARY KEY (`course_id`,`prerequisite_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prerequisit_list`
--

LOCK TABLES `prerequisite_list` WRITE;
/*!40000 ALTER TABLE `prerequisite_list` DISABLE KEYS */;
INSERT INTO `prerequisite_list` VALUES ('CSCI3100','CSCI1110'),('CSCI3100','CSCI1120');
/*!40000 ALTER TABLE `prerequisite_list` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2020-03-25 21:58:52
