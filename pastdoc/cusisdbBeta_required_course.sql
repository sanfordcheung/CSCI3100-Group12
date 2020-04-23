-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: cusisdbBeta
-- ------------------------------------------------------
-- Server version	8.0.19
use cusisdbBeta;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

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
/*!40000 ALTER TABLE `required_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-20 14:24:36
