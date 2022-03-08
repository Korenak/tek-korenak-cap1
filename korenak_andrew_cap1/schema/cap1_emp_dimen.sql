CREATE DATABASE  IF NOT EXISTS `cap1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cap1`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: cap1
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `emp_dimen`
--

DROP TABLE IF EXISTS `emp_dimen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_dimen` (
  `id` int NOT NULL,
  `emp_id` int DEFAULT NULL,
  `team_lead` varchar(45) DEFAULT NULL,
  `pay_grade_id` int DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `emp_dimen_fk_idx` (`emp_id`),
  KEY `emp_diment_fk2_idx` (`pay_grade_id`),
  KEY `emp_dimen_fk3_idx` (`region_id`),
  CONSTRAINT `emp_dimen_fk` FOREIGN KEY (`emp_id`) REFERENCES `employee_normal` (`id`),
  CONSTRAINT `emp_dimen_fk3` FOREIGN KEY (`region_id`) REFERENCES `norm_region` (`id`),
  CONSTRAINT `emp_diment_fk2` FOREIGN KEY (`pay_grade_id`) REFERENCES `norm_pay` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_dimen`
--

LOCK TABLES `emp_dimen` WRITE;
/*!40000 ALTER TABLE `emp_dimen` DISABLE KEYS */;
INSERT INTO `emp_dimen` VALUES (1,1,'Evans, Gina',2,1),(2,2,'Lawson, Harry',1,1),(3,3,'Bachmann, Jane',3,1),(4,4,'Clement, Beverly',4,2),(5,5,'Allen, Maude',2,2);
/*!40000 ALTER TABLE `emp_dimen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-08 13:45:34
