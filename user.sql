-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: user
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
-- Table structure for table `course_history`
--

DROP TABLE IF EXISTS `course_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_history` (
  `sid` varchar(10) NOT NULL,
  `course_id` char(8) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  PRIMARY KEY (`course_id`,`sid`)
); #ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_history`
--

LOCK TABLES `course_history` WRITE;
/*!40000 ALTER TABLE `course_history` DISABLE KEYS */;
INSERT INTO `course_history` VALUES ('1155000001',1111,'Data Structure'),('1155104429',1111,'Data Structure'),('1155124427',1111,'Data Structure'),('1155124428',1111,'Data Structure'),('1155000001',2222,'Software Engineering'),('1155104429',2222,'Software Engineering'),('1155124427',2222,'Software Engineering'),('1155124428',2222,'Software Engineering');
/*!40000 ALTER TABLE `course_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `required_course`
--

DROP TABLE IF EXISTS `required_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `required_course` (
  `sid` varchar(10) NOT NULL,
  `course_id` char(8) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `taken` varchar(1) NOT NULL,
  PRIMARY KEY (`taken`,`course_id`,`sid`),
  KEY `SID_idx` (`sid`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `required_course`
--

LOCK TABLES `required_course` WRITE;
/*!40000 ALTER TABLE `required_course` DISABLE KEYS */;
INSERT INTO `required_course` VALUES ('1155104429',1111,'Data Structure','N'),('1155124428',1111,'Data Structure','N'),('1155104429',2222,'Software Engineering','N'),('1155124427',2222,'Software Engineering','N'),('1155000001',1111,'Data Sturcture','Y'),('1155124427',1111,'Data Sturcture','Y'),('1155000001',2222,'Software Engineering','Y'),('1155124428',2222,'Software Engineering','Y');
/*!40000 ALTER TABLE `required_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('1155000001','748211','Dragon','1155000001@link.cuhk.edu.hk',4,'Playing',0,'CS GO',NULL),('1155104429','135790','Pheonix','1155124429@link.cuhk.edu.hk',3,'Physics',20,'Quantum mechanics',NULL),('1155124427','123456','KUANG, Yurui','1155124427@link.cuhk.edu.hk',2,'Computer Science',60,'N/A',NULL),('1155124428','654321','KUANG, Yutui','1155124428@link.cuhk.edu.hk',2,'Music',40,'Piano',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
