-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: curdop_joindatabase
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `emp_depno_des`
--

DROP TABLE IF EXISTS `emp_depno_des`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_depno_des` (
  `emp_id` int NOT NULL,
  `dep_id` int NOT NULL,
  `designation` varchar(50) NOT NULL,
  PRIMARY KEY (`dep_id`),
  KEY `emp_id` (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_depno_des`
--

LOCK TABLES `emp_depno_des` WRITE;
/*!40000 ALTER TABLE `emp_depno_des` DISABLE KEYS */;
INSERT INTO `emp_depno_des` VALUES (1001,1,'MANAGER'),(1002,2,'ANALYST'),(1003,3,'CLERK'),(1004,4,'SALES EXCUTIVE'),(1005,5,'SALES MAN'),(1006,6,'OFFICE BOY');
/*!40000 ALTER TABLE `emp_depno_des` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_hiredate_salary`
--

DROP TABLE IF EXISTS `emp_hiredate_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_hiredate_salary` (
  `emp_id` int NOT NULL,
  `emp_depno` int DEFAULT NULL,
  `emp_hiredate` date NOT NULL,
  `emp_salary` decimal(10,2) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `emp_depno` (`emp_depno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_hiredate_salary`
--

LOCK TABLES `emp_hiredate_salary` WRITE;
/*!40000 ALTER TABLE `emp_hiredate_salary` DISABLE KEYS */;
INSERT INTO `emp_hiredate_salary` VALUES (1001,1,'2019-01-03',30000.00),(1002,2,'2019-01-05',25000.00),(1003,3,'2019-05-02',20000.00),(1004,4,'2019-05-06',27000.00),(1005,5,'2020-01-02',25000.00),(1006,6,'2019-02-01',15000.00);
/*!40000 ALTER TABLE `emp_hiredate_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_personal`
--

DROP TABLE IF EXISTS `emp_personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_personal` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) NOT NULL,
  `emp_email` varchar(50) NOT NULL,
  `emp_contact` varchar(20) NOT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `emp_id` (`emp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_personal`
--

LOCK TABLES `emp_personal` WRITE;
/*!40000 ALTER TABLE `emp_personal` DISABLE KEYS */;
INSERT INTO `emp_personal` VALUES (1001,'Varunkumar','varun1232gmail.com','7865479868'),(1002,'Vikaram Raghav','vikiraghav123@gmail.com','6752345670'),(1003,'Aravindh','aravindh123@gmail.com','8975431478'),(1004,'Cheziyan','chezhiya12@gmail.com','8975431415'),(1005,'Sakthi','sakthi13@gmail.com','8975431400');
/*!40000 ALTER TABLE `emp_personal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-09 22:32:47
