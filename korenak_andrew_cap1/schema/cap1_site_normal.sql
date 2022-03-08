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
-- Table structure for table `site_normal`
--

DROP TABLE IF EXISTS `site_normal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `site_normal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sales_year` int DEFAULT NULL,
  `sales_week` int DEFAULT NULL,
  `emp_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `number_sold` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `site_normal_fk_idx` (`emp_id`),
  KEY `site_normal_fk2_idx` (`item_id`),
  CONSTRAINT `site_normal_fk` FOREIGN KEY (`emp_id`) REFERENCES `employee_normal` (`id`),
  CONSTRAINT `site_normal_fk2` FOREIGN KEY (`item_id`) REFERENCES `item_normal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_normal`
--

LOCK TABLES `site_normal` WRITE;
/*!40000 ALTER TABLE `site_normal` DISABLE KEYS */;
INSERT INTO `site_normal` VALUES (17,2022,0,1,1,12),(18,2022,0,1,9,6),(19,2022,0,1,2,12),(20,2022,0,1,10,3),(21,2022,0,1,3,32),(22,2022,0,1,11,12),(23,2022,0,1,4,33),(24,2022,0,1,12,15),(25,2022,1,2,5,33),(26,2022,1,2,13,44),(27,2022,1,5,7,23),(28,2022,1,5,15,5),(29,2022,1,4,4,23),(30,2022,1,4,12,33),(31,2022,5,1,1,9),(32,2022,5,1,9,4);
/*!40000 ALTER TABLE `site_normal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-08 13:45:33
