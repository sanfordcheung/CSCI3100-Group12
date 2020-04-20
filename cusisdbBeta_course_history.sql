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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_history`
--

LOCK TABLES `course_history` WRITE;
/*!40000 ALTER TABLE `course_history` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `course_history` ENABLE KEYS */;
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
