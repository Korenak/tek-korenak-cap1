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
-- Table structure for table `historic_sales`
--

DROP TABLE IF EXISTS `historic_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historic_sales` (
  `index` int DEFAULT NULL,
  `ITEM_CODE` text,
  `EMP_ID` text,
  `Year` int DEFAULT NULL,
  `W0` int DEFAULT NULL,
  `W1` int DEFAULT NULL,
  `W2` int DEFAULT NULL,
  `W3` int DEFAULT NULL,
  `W4` int DEFAULT NULL,
  `W5` int DEFAULT NULL,
  `W6` int DEFAULT NULL,
  `W7` int DEFAULT NULL,
  `W8` int DEFAULT NULL,
  `W9` int DEFAULT NULL,
  `W10` int DEFAULT NULL,
  `W11` int DEFAULT NULL,
  `W12` int DEFAULT NULL,
  `W13` int DEFAULT NULL,
  `W14` int DEFAULT NULL,
  `W15` int DEFAULT NULL,
  `W16` int DEFAULT NULL,
  `W17` int DEFAULT NULL,
  `W18` int DEFAULT NULL,
  `W19` int DEFAULT NULL,
  `W20` int DEFAULT NULL,
  `W21` int DEFAULT NULL,
  `W22` int DEFAULT NULL,
  `W23` int DEFAULT NULL,
  `W24` int DEFAULT NULL,
  `W25` int DEFAULT NULL,
  `W26` int DEFAULT NULL,
  `W27` int DEFAULT NULL,
  `W28` int DEFAULT NULL,
  `W29` int DEFAULT NULL,
  `W30` int DEFAULT NULL,
  `W31` int DEFAULT NULL,
  `W32` int DEFAULT NULL,
  `W33` int DEFAULT NULL,
  `W34` int DEFAULT NULL,
  `W35` int DEFAULT NULL,
  `W36` int DEFAULT NULL,
  `W37` int DEFAULT NULL,
  `W38` int DEFAULT NULL,
  `W39` int DEFAULT NULL,
  `W40` int DEFAULT NULL,
  `W41` int DEFAULT NULL,
  `W42` int DEFAULT NULL,
  `W43` int DEFAULT NULL,
  `W44` int DEFAULT NULL,
  `W45` int DEFAULT NULL,
  `W46` int DEFAULT NULL,
  `W47` int DEFAULT NULL,
  `W48` int DEFAULT NULL,
  `W49` int DEFAULT NULL,
  `W50` int DEFAULT NULL,
  `W51` int DEFAULT NULL,
  KEY `ix_historic_sales_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historic_sales`
--

LOCK TABLES `historic_sales` WRITE;
/*!40000 ALTER TABLE `historic_sales` DISABLE KEYS */;
INSERT INTO `historic_sales` VALUES (0,'PROD_001','EMP244',2020,42,48,38,43,35,39,36,38,49,46,44,25,43,38,34,48,52,67,52,45,64,49,48,72,64,64,30,25,43,23,29,30,31,28,34,34,36,47,24,35,47,34,46,41,34,39,44,46,46,41,57,73),(1,'PROD_001','EMP244',2019,35,34,40,36,45,37,43,47,34,39,33,41,47,40,47,53,44,39,42,41,44,51,47,44,38,32,29,41,27,21,36,27,30,19,46,31,33,29,36,34,25,27,52,36,43,31,37,38,42,28,28,26),(2,'PROD_002','EMP244',2020,36,42,27,33,40,48,38,39,41,39,44,35,53,52,43,45,41,42,43,26,35,29,48,24,33,34,23,24,26,28,32,34,38,40,32,31,50,36,43,42,32,32,38,36,39,32,31,39,23,40,32,14),(3,'PROD_002','EMP244',2019,41,27,27,51,37,38,48,40,39,40,47,31,48,43,37,45,47,39,50,38,38,44,33,27,39,23,22,29,24,36,33,33,32,38,32,30,32,34,41,47,28,26,23,38,36,40,44,39,37,24,27,22),(4,'PROD_003','EMP267',2020,32,41,50,35,36,35,41,33,32,34,38,29,42,52,57,31,34,24,30,38,42,39,50,30,26,36,37,25,31,22,19,40,43,19,33,38,55,33,43,39,29,45,25,32,37,33,35,31,45,32,27,26),(5,'PROD_003','EMP267',2019,21,36,44,47,26,33,30,27,37,34,41,45,41,36,37,43,44,44,35,33,52,40,48,30,36,23,28,22,39,35,17,40,43,36,37,46,30,35,39,38,36,28,29,29,35,41,30,31,35,38,30,22),(6,'PROD_001','EMP267',2020,34,37,26,27,49,48,36,34,28,41,41,35,29,42,41,31,38,27,36,36,39,42,35,38,35,24,32,32,41,33,32,29,45,26,26,35,34,40,33,42,35,37,43,33,28,25,31,44,24,25,43,28),(7,'PROD_001','EMP267',2019,32,48,44,40,31,40,30,45,40,29,45,32,37,36,43,36,34,42,50,36,44,31,50,35,26,27,23,32,37,19,40,34,29,38,42,35,28,29,32,29,26,23,32,33,30,44,47,37,18,36,23,25),(8,'PROD_004','EMP267',2020,31,35,36,44,36,38,36,39,47,39,24,29,46,38,34,26,36,41,57,42,46,31,37,40,27,32,23,28,30,28,31,47,30,30,41,25,22,32,29,32,32,42,30,35,32,28,30,41,40,39,38,21),(9,'PROD_004','EMP267',2019,37,28,42,38,37,35,42,36,30,48,28,39,32,44,36,41,35,39,39,48,32,39,35,39,31,35,31,26,29,36,37,27,26,26,33,39,42,28,21,37,32,36,25,49,36,27,33,41,37,22,33,23),(10,'PROD_002','EMP267',2020,19,53,43,41,39,46,45,31,50,46,39,35,38,29,37,28,32,46,49,28,43,42,46,29,35,20,46,27,29,32,16,37,29,27,36,26,30,37,30,31,25,36,35,32,22,36,30,26,31,29,26,15),(11,'PROD_002','EMP267',2019,31,21,28,39,53,39,25,31,43,40,41,43,47,35,36,34,35,40,54,38,34,34,30,44,33,28,22,24,31,21,41,26,30,44,30,20,28,23,42,21,30,30,45,34,28,37,40,30,33,32,33,25),(12,'PROD_005','EMP267',2020,26,43,46,39,41,31,41,35,44,26,48,46,35,38,39,36,38,35,31,41,43,36,44,27,26,20,35,32,19,39,38,33,24,23,35,28,34,27,24,30,36,30,29,22,36,26,33,44,29,36,27,22),(13,'PROD_005','EMP267',2019,32,34,38,41,24,29,34,47,41,42,28,35,26,32,36,41,35,30,47,20,28,48,43,43,42,27,21,24,25,40,38,31,29,29,33,35,33,27,28,25,35,29,33,31,28,34,38,38,31,38,31,31),(14,'PROD_003','EMP244',2020,38,26,37,43,51,39,42,27,36,45,27,39,37,41,28,45,39,34,40,45,39,35,35,45,32,17,23,28,38,26,36,35,24,24,32,34,30,30,17,27,36,35,33,29,37,20,38,38,32,14,26,20),(15,'PROD_003','EMP244',2019,27,46,31,38,40,40,53,43,45,32,37,32,38,39,28,43,50,39,44,33,35,33,38,26,28,24,21,26,24,33,28,24,24,29,23,30,38,29,23,30,41,30,33,46,30,29,31,32,21,34,31,14),(16,'PROD_006','EMP267',2020,42,34,40,39,47,31,43,40,47,35,38,37,44,27,30,47,39,34,35,30,27,34,29,28,27,28,27,30,27,25,35,25,40,32,28,26,27,32,31,33,32,23,33,29,25,30,40,37,36,29,27,18),(17,'PROD_006','EMP267',2019,32,44,31,38,37,36,30,42,49,46,26,31,39,47,43,50,35,37,32,31,29,45,33,35,29,16,34,28,30,30,17,32,37,31,24,34,33,38,35,28,34,28,32,24,28,22,24,26,33,25,40,15),(18,'PROD_004','EMP244',2020,31,28,41,36,45,25,42,47,36,42,42,37,45,38,40,31,34,28,27,35,40,41,32,31,35,28,19,25,28,21,32,36,29,32,31,20,25,21,38,29,32,32,27,36,31,29,36,26,43,32,35,19),(19,'PROD_004','EMP244',2019,43,34,39,32,45,35,43,44,36,39,37,27,38,34,32,30,47,33,30,26,31,35,22,26,44,18,41,30,22,28,31,21,27,33,39,27,29,22,36,30,29,38,27,29,42,38,30,28,28,30,34,28),(20,'PROD_001','EMP234',2020,31,35,29,42,31,35,28,41,49,41,36,27,39,43,33,47,43,34,43,40,36,35,36,41,35,30,27,30,28,25,47,21,32,41,22,27,27,17,29,22,27,32,34,40,23,36,30,30,26,21,16,24),(21,'PROD_001','EMP234',2019,34,27,28,36,50,28,31,33,34,27,29,33,30,45,35,42,45,37,39,32,40,38,41,40,31,24,31,26,27,23,33,31,33,33,26,19,37,38,38,37,19,33,33,45,29,28,27,32,33,27,29,16),(22,'PROD_007','EMP267',2020,32,28,39,36,47,40,35,39,40,37,38,31,29,41,41,34,33,32,54,36,39,38,39,35,24,21,31,27,33,31,25,27,26,38,25,17,34,29,35,28,22,33,37,20,22,37,39,26,24,29,28,30),(23,'PROD_007','EMP267',2019,26,31,45,36,31,28,28,34,42,40,43,35,30,33,40,45,48,35,30,29,39,41,30,34,28,22,31,29,30,34,26,28,32,31,27,40,33,34,31,19,48,21,31,19,24,32,36,30,33,29,27,29),(24,'PROD_005','EMP244',2020,27,34,43,45,28,35,26,34,38,45,26,49,51,41,34,38,41,38,40,34,47,32,32,38,32,18,20,32,26,35,29,25,27,35,20,28,35,24,26,34,40,31,28,31,17,38,34,28,21,28,30,15),(25,'PROD_005','EMP244',2019,40,38,39,38,39,33,28,44,36,36,23,38,38,41,43,27,38,31,43,32,35,38,48,38,30,21,20,22,24,23,31,23,33,31,39,30,30,34,31,21,21,39,30,29,29,41,35,22,28,29,29,23),(26,'PROD_002','EMP234',2020,32,34,46,30,39,51,28,25,30,32,38,23,41,29,39,38,35,31,44,28,30,38,34,42,29,20,26,30,31,37,41,30,28,30,30,23,48,25,25,26,26,28,27,33,28,45,30,44,29,27,23,22),(27,'PROD_002','EMP234',2019,27,45,40,34,31,35,37,40,40,37,34,25,29,30,42,35,37,42,38,33,38,39,33,41,24,20,25,32,25,32,27,28,34,39,19,32,23,30,33,34,23,28,34,27,39,36,39,35,22,35,16,23),(28,'PROD_008','EMP267',2020,38,27,36,36,35,39,33,29,41,31,37,37,30,35,25,28,42,30,39,30,45,35,32,30,29,25,25,26,26,25,35,24,27,27,44,43,22,35,31,33,35,25,40,43,36,34,32,18,26,35,29,23),(29,'PROD_008','EMP267',2019,25,30,32,47,45,50,40,35,33,33,35,43,41,32,38,40,30,36,27,26,39,38,34,33,24,22,18,36,28,33,27,24,25,30,31,30,19,26,36,28,39,35,37,32,25,31,29,28,37,22,31,26),(30,'PROD_006','EMP244',2020,31,39,50,31,37,30,37,44,35,33,26,32,41,35,35,47,43,45,41,40,29,22,36,25,32,18,22,21,27,30,35,33,32,24,18,35,33,30,24,23,36,27,31,39,38,21,32,33,34,24,22,30),(31,'PROD_006','EMP244',2019,36,44,22,35,34,34,38,34,26,36,33,28,43,38,19,40,41,32,41,36,51,29,29,32,24,23,19,32,26,28,31,22,49,35,29,38,29,31,25,21,22,32,28,31,39,29,29,34,27,40,35,24),(32,'PROD_003','EMP234',2020,36,33,40,46,39,39,26,44,34,34,43,46,36,28,27,44,32,32,39,32,36,39,31,25,33,22,24,22,24,28,27,18,24,27,34,27,35,38,52,32,25,25,22,24,29,35,33,32,34,32,19,18),(33,'PROD_003','EMP234',2019,34,37,29,42,31,36,36,43,29,30,48,34,38,33,28,45,41,33,52,38,29,33,43,34,33,23,25,28,25,23,32,25,36,36,27,25,22,28,24,27,35,30,24,31,31,31,20,33,27,24,30,18),(34,'PROD_007','EMP244',2020,34,30,42,42,29,24,36,42,42,29,42,47,26,30,32,37,40,30,37,33,40,36,22,31,39,24,26,24,27,24,25,43,29,27,34,21,33,30,34,22,22,25,32,32,25,36,36,23,28,43,20,25),(35,'PROD_007','EMP244',2019,35,29,40,32,33,30,36,42,40,44,40,38,34,34,36,38,31,35,44,38,36,41,33,38,31,34,20,24,27,31,25,18,35,19,34,23,20,28,27,34,19,35,18,35,20,34,31,33,30,25,30,18),(36,'PROD_004','EMP234',2020,25,37,42,50,18,32,38,37,33,30,37,20,41,40,39,38,34,32,41,30,40,36,31,33,28,22,22,30,23,31,28,30,34,29,30,32,26,30,31,24,29,27,24,28,30,28,29,34,31,29,25,19),(37,'PROD_004','EMP234',2019,35,37,31,23,37,42,38,34,33,37,34,43,37,32,43,42,41,43,29,33,39,25,32,31,23,19,21,29,21,25,20,29,22,19,37,28,37,27,23,28,42,28,29,32,25,31,21,35,23,33,28,27),(38,'PROD_001','EMP256',2020,26,28,33,32,20,33,42,29,24,32,45,41,35,39,32,36,31,32,48,26,34,30,36,31,34,19,19,27,28,32,21,24,34,26,38,32,26,22,27,32,37,29,32,27,40,33,29,35,30,29,25,20),(39,'PROD_001','EMP256',2019,31,27,37,29,34,39,28,28,30,32,38,37,39,30,40,32,42,29,31,38,35,27,38,36,35,26,22,23,27,31,29,24,30,25,25,27,24,35,30,34,24,21,31,36,27,25,27,34,27,37,31,19),(40,'PROD_008','EMP244',2020,28,23,35,34,33,27,33,27,25,32,40,28,34,24,31,23,27,21,46,29,21,21,27,35,27,24,22,16,19,28,23,14,17,21,16,23,30,20,15,19,20,14,25,18,29,30,30,19,13,25,24,30),(41,'PROD_008','EMP244',2019,17,16,19,20,19,19,29,35,15,27,24,24,34,29,24,29,24,29,22,22,37,32,25,27,50,33,14,11,13,24,16,17,15,17,18,20,19,26,16,24,17,20,26,35,29,22,22,30,29,31,34,39),(42,'PROD_005','EMP234',2020,18,26,12,17,23,15,18,19,33,31,21,32,21,17,29,20,20,23,20,27,20,30,29,33,43,31,9,17,16,17,14,15,13,8,13,25,16,29,17,17,19,19,24,26,21,25,25,24,29,23,34,30),(43,'PROD_005','EMP234',2019,26,16,23,19,29,21,16,14,29,13,20,22,16,26,19,26,23,17,12,20,24,29,24,38,24,27,10,17,10,16,18,21,14,23,21,15,25,15,13,11,21,19,20,15,17,11,12,18,23,22,19,31),(44,'PROD_002','EMP256',2020,24,18,15,21,20,19,21,25,21,13,31,20,23,18,16,18,15,25,23,25,26,9,23,23,22,26,15,16,15,20,13,15,16,17,19,13,14,17,17,15,22,14,23,12,13,12,21,19,11,20,20,20),(45,'PROD_002','EMP256',2019,23,12,16,22,18,18,17,11,28,10,25,24,22,25,12,17,16,33,20,16,20,20,25,24,32,35,13,12,11,10,11,6,10,18,19,19,13,16,11,13,24,15,18,24,14,18,18,13,23,22,23,31),(46,'PROD_006','EMP234',2020,15,26,11,15,19,15,16,19,19,23,24,24,19,26,19,16,20,23,20,9,13,23,28,27,26,27,6,14,13,8,18,16,15,17,7,18,13,17,9,16,16,16,12,18,13,11,20,20,26,26,25,37),(47,'PROD_006','EMP234',2019,16,30,25,11,23,19,27,15,30,23,19,22,16,17,19,20,30,15,24,15,18,16,15,23,20,20,15,11,9,12,21,26,20,12,16,14,11,15,24,14,19,20,19,14,18,13,17,15,11,13,18,20),(48,'PROD_003','EMP256',2020,19,14,17,27,14,18,18,18,14,18,19,17,28,25,21,16,24,26,14,18,20,25,20,21,17,7,21,19,20,14,20,19,16,12,16,20,25,15,18,18,16,15,19,9,27,14,17,12,16,13,19,7),(49,'PROD_003','EMP256',2019,19,20,27,23,19,30,23,23,13,12,14,28,11,15,24,15,25,28,22,17,16,19,21,15,16,18,14,10,14,16,11,16,10,17,17,16,13,22,13,16,14,12,18,22,17,16,21,12,19,16,21,21),(50,'PROD_007','EMP234',2020,16,17,12,10,23,14,23,15,14,18,17,18,11,16,15,18,23,22,23,13,23,22,24,35,23,24,13,18,13,11,17,18,9,10,14,11,14,13,15,18,16,12,19,12,10,18,11,18,21,19,24,22),(51,'PROD_007','EMP234',2019,14,20,15,11,10,20,18,12,18,11,17,18,13,24,11,18,21,12,14,22,15,22,20,21,34,26,13,11,11,16,16,11,9,15,19,14,20,18,17,19,8,15,17,13,10,20,19,15,18,22,26,18),(52,'PROD_004','EMP256',2020,6,13,16,9,18,16,16,12,22,15,18,16,15,15,12,18,19,32,18,27,25,23,19,20,27,21,8,11,9,12,11,11,8,17,20,6,10,16,16,13,10,19,17,14,13,19,19,20,22,22,18,31),(53,'PROD_004','EMP256',2019,12,27,18,22,19,19,25,19,8,15,15,18,15,22,18,16,19,21,18,14,20,15,15,10,22,13,11,20,20,12,10,9,8,12,24,23,11,12,18,8,19,18,18,13,19,13,12,9,20,20,10,10),(54,'PROD_001','EMP290',2020,16,15,27,14,19,12,13,11,17,31,20,16,10,24,23,17,19,16,19,13,11,15,18,17,18,29,12,15,5,18,10,9,16,8,13,10,14,13,13,13,21,16,19,15,13,10,11,16,14,17,21,24),(55,'PROD_001','EMP290',2019,20,11,22,14,15,20,15,17,14,21,16,20,10,14,14,16,18,19,15,17,22,24,21,22,22,21,14,7,7,10,9,11,14,19,6,15,9,15,12,14,19,15,17,16,16,15,14,15,14,14,22,21),(56,'PROD_008','EMP234',2020,9,13,15,18,15,10,10,17,20,14,15,20,12,11,20,17,18,24,15,19,23,20,26,23,34,25,9,11,13,14,8,10,16,14,11,8,10,17,13,17,11,8,12,10,11,23,20,11,17,16,16,27),(57,'PROD_008','EMP234',2019,10,10,10,11,11,11,15,14,20,16,5,16,18,17,19,20,17,15,12,24,23,22,16,17,20,25,9,16,15,10,9,14,13,14,12,6,11,21,14,10,15,14,10,17,21,14,25,20,12,21,25,23),(58,'PROD_005','EMP256',2020,15,11,26,15,13,11,12,10,14,11,18,23,22,16,6,16,20,32,8,24,15,13,30,20,24,17,10,18,15,10,11,9,14,12,7,7,16,12,15,6,14,11,14,18,11,11,11,13,14,16,20,29),(59,'PROD_005','EMP256',2019,15,12,7,16,18,9,15,13,17,22,12,4,14,22,15,15,12,9,13,12,12,10,13,13,27,19,11,4,8,14,16,11,13,10,14,12,4,17,15,11,13,8,7,13,11,9,12,10,17,12,24,25),(60,'PROD_002','EMP290',2020,15,7,10,18,21,8,7,12,13,15,12,15,22,15,8,9,13,16,13,18,16,12,28,15,25,20,8,8,4,4,5,10,9,9,7,12,7,8,12,4,9,6,20,17,9,18,10,14,15,19,20,20),(61,'PROD_002','EMP290',2019,7,7,13,14,11,11,13,17,15,6,7,14,19,16,13,10,11,25,15,9,19,23,12,15,28,9,7,9,10,9,19,12,9,15,6,12,13,9,7,11,11,6,10,10,8,13,9,15,11,16,18,25),(62,'PROD_006','EMP256',2020,7,11,6,12,15,11,10,15,12,7,10,12,12,12,7,13,15,16,19,17,9,16,18,14,22,25,12,4,5,11,10,19,10,10,9,11,8,12,6,15,6,12,20,11,15,14,7,11,15,16,14,14),(63,'PROD_006','EMP256',2019,10,6,6,15,10,14,10,9,12,12,11,13,19,11,16,16,14,14,14,21,11,11,17,18,16,25,8,8,9,2,6,7,10,9,9,5,8,16,15,13,7,8,12,14,12,12,12,13,14,16,19,21),(64,'PROD_003','EMP290',2020,9,12,11,16,8,9,18,12,18,14,13,14,14,15,12,13,15,18,12,18,8,19,13,12,14,15,7,3,12,11,11,9,13,14,13,9,8,5,8,6,8,11,14,11,13,11,8,9,12,18,15,22),(65,'PROD_003','EMP290',2019,23,16,9,11,16,19,23,16,16,18,8,22,11,20,11,12,17,12,13,13,21,13,7,18,12,18,9,6,5,14,9,7,11,6,6,11,9,8,9,4,15,5,7,9,4,4,11,14,12,10,18,13),(66,'PROD_007','EMP256',2020,14,12,9,11,13,12,8,12,13,10,10,17,14,14,25,18,13,22,12,21,15,17,11,15,12,17,11,5,7,7,8,9,5,11,9,8,13,12,7,8,12,7,14,6,3,9,15,8,11,13,12,18),(67,'PROD_007','EMP256',2019,15,12,11,17,10,18,11,16,8,6,11,10,18,10,14,13,13,12,14,10,10,11,14,11,10,17,8,13,6,16,9,4,12,10,19,9,7,5,10,8,11,5,11,13,11,11,11,14,15,16,17,11),(68,'PROD_004','EMP290',2020,10,14,13,11,9,13,19,10,11,12,8,9,18,16,12,8,14,8,14,6,9,14,21,11,13,10,8,7,9,9,20,14,9,6,3,11,7,10,10,7,12,16,11,14,10,11,9,8,20,19,14,15),(69,'PROD_004','EMP290',2019,15,7,15,14,17,7,10,16,11,8,8,10,10,12,10,16,13,10,13,13,18,12,15,9,8,5,11,8,9,10,7,12,12,9,16,11,12,10,6,19,6,12,11,16,12,11,13,8,17,10,10,21),(70,'PROD_008','EMP256',2020,15,12,9,12,14,14,17,14,10,11,19,12,6,12,14,11,9,11,19,15,18,13,17,9,12,12,10,9,13,13,7,11,4,10,10,15,12,9,4,10,8,5,10,8,11,6,8,18,7,10,10,14),(71,'PROD_008','EMP256',2019,13,6,7,9,9,15,13,6,7,10,9,12,11,10,12,14,10,19,11,10,8,17,11,15,29,13,5,8,10,6,8,7,9,11,5,6,8,12,9,12,9,8,10,16,11,8,17,16,8,10,23,21),(72,'PROD_005','EMP290',2020,7,18,11,14,9,16,15,17,8,17,13,11,7,16,16,8,11,12,5,13,8,13,10,7,13,10,7,10,5,7,11,6,10,9,12,11,12,11,9,5,8,17,8,10,6,19,13,11,7,7,18,11),(73,'PROD_005','EMP290',2019,10,11,10,9,9,14,16,12,9,10,10,11,12,18,8,10,18,19,15,10,12,16,13,10,12,14,9,5,9,15,14,7,8,4,12,6,9,6,10,7,10,10,10,9,21,9,7,8,8,8,11,9),(74,'PROD_006','EMP290',2020,7,19,4,9,8,12,11,10,8,16,10,9,14,12,15,15,7,6,10,18,8,9,14,15,17,20,9,8,13,8,3,7,7,8,15,8,10,8,5,3,10,9,7,8,16,8,9,7,7,11,9,16),(75,'PROD_006','EMP290',2019,8,14,14,11,14,12,6,6,7,21,13,13,10,7,18,7,6,14,6,9,11,18,15,9,10,11,7,9,5,9,4,9,12,11,3,8,8,10,12,7,12,15,15,7,10,10,7,12,10,5,9,10),(76,'PROD_007','EMP290',2020,7,10,9,11,5,8,15,14,9,7,16,13,10,14,13,7,18,7,13,11,8,6,12,5,11,8,5,10,5,11,13,7,10,11,5,10,8,9,11,10,4,13,5,21,10,6,7,4,8,16,5,11),(77,'PROD_007','EMP290',2019,10,7,8,13,7,10,12,11,11,8,7,11,6,16,12,8,10,16,17,9,17,12,11,13,18,20,6,5,5,12,4,8,7,4,9,5,9,6,12,7,9,14,9,9,5,12,7,6,5,13,3,11),(78,'PROD_008','EMP290',2020,8,16,9,9,9,10,12,6,15,7,8,15,7,9,15,5,14,11,12,5,6,14,13,16,13,16,10,10,9,8,5,6,6,4,7,6,5,9,7,7,10,5,10,7,13,7,12,7,8,11,12,9),(79,'PROD_008','EMP290',2019,7,6,7,8,10,12,7,10,11,14,10,16,15,13,9,16,5,15,9,9,10,5,11,7,5,6,12,11,14,6,8,7,6,12,3,9,11,14,9,11,11,8,8,5,11,10,7,7,9,7,10,8),(80,'ESP_001','EMP234',2019,4,4,4,6,10,5,4,4,3,2,1,1,0,1,2,3,5,4,4,3,4,5,6,7,6,5,6,4,4,5,8,9,11,9,6,4,6,5,5,4,2,3,2,3,1,1,1,0,0,0,0,0),(81,'ESP_001','EMP234',2020,0,1,1,3,3,4,3,5,7,5,3,2,2,3,3,5,5,5,6,6,6,6,7,9,8,7,6,7,7,6,11,5,7,9,4,5,4,2,4,3,3,4,4,5,3,4,3,3,2,2,2,2),(82,'ESP_001','EMP244',2019,9,8,10,9,11,9,11,11,8,9,7,8,8,7,8,9,7,7,8,9,10,12,12,12,11,9,9,13,9,7,12,9,10,6,14,8,8,7,10,10,8,8,15,10,12,8,10,10,11,7,7,6),(83,'ESP_001','EMP244',2020,10,12,10,11,9,10,10,10,14,11,10,5,7,6,6,9,10,13,10,9,13,10,11,18,17,18,9,8,15,8,11,12,13,10,11,10,9,12,6,9,13,9,13,11,9,10,11,11,10,10,14,17),(84,'ESP_001','EMP256',2019,3,3,4,3,4,3,2,1,1,2,4,5,6,4,4,3,2,2,2,2,2,2,4,4,5,3,3,3,4,5,5,5,7,5,5,5,4,5,4,3,2,2,2,3,2,2,2,2,1,2,2,1),(85,'ESP_001','EMP256',2020,2,3,4,4,3,4,3,2,1,1,1,0,0,1,1,2,2,2,4,2,3,3,4,4,5,3,3,5,6,7,5,7,10,6,7,4,2,2,1,1,1,1,1,0,1,0,0,0,0,0,0,0),(86,'ESP_001','EMP267',2019,6,9,8,8,6,8,6,8,7,5,8,6,6,6,7,5,5,6,7,5,6,5,8,6,5,6,7,11,15,7,13,10,8,10,10,8,5,5,4,3,2,2,4,4,5,7,8,6,3,6,4,4),(87,'ESP_001','EMP267',2020,4,4,2,1,0,5,8,11,12,14,10,6,3,4,4,3,4,3,3,3,4,5,5,7,7,7,11,14,21,14,11,8,8,4,4,4,4,4,3,4,3,5,7,6,6,5,6,8,4,5,8,5),(88,'ESP_001','EMP290',2019,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,1,1,1,1,2,1,2,2,2,0,1,0,0,0,0,0,0,0,0,0,1,1,2,2,1,1,1),(89,'ESP_001','EMP290',2020,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,2,1,1,0,1,1,1,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(90,'ESP_002','EMP234',2019,2,4,4,4,4,3,3,3,2,2,1,0,0,0,1,1,2,1,1,0,0,2,3,5,4,3,3,4,2,4,5,6,9,9,4,6,4,4,3,2,1,1,1,0,0,0,0,0,0,0,0,0),(91,'ESP_002','EMP234',2020,0,0,1,1,1,2,1,1,2,1,1,0,0,1,1,2,3,2,4,2,2,4,4,7,5,4,5,5,6,7,7,5,5,4,3,2,3,2,1,1,1,1,2,2,2,3,2,2,1,1,1,1),(92,'ESP_002','EMP244',2019,6,4,5,9,7,7,8,6,6,5,5,3,3,3,2,3,3,3,4,3,4,5,4,4,7,4,5,7,6,9,8,9,8,9,7,6,6,6,8,9,6,5,4,7,6,7,8,7,7,4,4,3),(93,'ESP_002','EMP244',2020,4,5,4,5,7,8,6,6,7,5,5,3,4,4,3,3,3,4,4,3,4,4,8,5,7,8,5,6,6,7,8,9,10,10,7,6,8,6,7,7,5,5,6,6,6,5,4,5,3,5,4,2),(94,'ESP_002','EMP256',2019,2,1,1,1,1,1,1,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,1,1,2,3,1,1,1,1,2,1,2,3,3,3,2,2,1,1,1,1,1,1,0,0,0,0,1,1,1,1),(95,'ESP_002','EMP256',2020,1,1,1,1,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,2,2,2,2,2,3,2,3,4,3,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(96,'ESP_002','EMP267',2019,2,2,3,5,7,5,3,4,5,4,5,5,6,4,4,4,4,4,4,2,1,2,2,4,3,4,4,6,10,6,11,6,6,8,5,2,3,2,2,1,0,0,1,2,2,3,4,3,4,3,3,2),(97,'ESP_002','EMP267',2020,1,3,1,1,0,4,8,8,17,12,7,3,0,0,0,1,1,1,1,1,1,2,4,3,5,4,14,10,13,12,5,8,4,4,4,3,3,3,2,1,1,2,3,4,4,5,4,3,3,3,3,2),(98,'ESP_002','EMP290',2019,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,1,2,1,2,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1),(99,'ESP_002','EMP290',2020,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(100,'ESP_003','EMP234',2019,4,5,4,6,5,5,5,6,4,3,3,1,0,1,1,2,3,2,4,3,3,4,6,6,7,5,5,5,5,5,8,8,12,11,7,5,4,4,3,3,3,2,2,2,1,1,1,1,0,0,0,0),(101,'ESP_003','EMP234',2020,0,1,1,3,3,3,3,5,4,4,4,3,2,2,3,5,4,4,5,4,5,6,5,5,7,5,5,5,6,7,7,4,6,6,6,4,4,5,6,4,3,3,2,2,3,3,3,2,2,2,1,1),(102,'ESP_003','EMP244',2019,3,7,5,7,8,7,9,7,7,4,4,3,3,3,3,4,5,4,5,4,5,5,7,6,7,6,5,6,6,8,7,6,6,7,5,6,7,6,4,6,8,6,7,9,6,5,6,6,4,6,5,2),(103,'ESP_003','EMP244',2020,5,4,6,8,10,8,8,5,7,8,4,5,4,4,3,4,4,3,4,5,5,5,6,9,7,4,6,7,10,7,10,10,7,6,7,7,5,5,3,5,6,6,6,5,7,4,6,6,5,2,4,3),(104,'ESP_003','EMP256',2019,2,2,3,3,3,4,2,2,1,1,1,3,2,2,2,1,1,1,1,1,1,1,2,2,2,2,2,1,2,3,2,3,2,3,3,3,3,4,2,2,1,1,1,1,1,1,1,1,1,1,1,1),(105,'ESP_003','EMP256',2020,1,1,2,3,2,2,1,1,0,0,0,0,0,1,1,1,1,2,1,1,2,2,2,2,2,1,3,3,3,3,5,5,5,3,3,3,2,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0),(106,'ESP_003','EMP267',2019,4,7,9,11,6,7,6,5,6,5,6,7,7,6,6,7,7,6,5,4,7,5,7,5,6,5,8,7,15,13,6,12,12,9,8,8,4,4,4,3,2,2,3,4,5,6,5,5,6,6,4,3),(107,'ESP_003','EMP267',2020,3,4,3,2,1,4,9,10,13,11,9,4,3,4,5,3,4,3,3,5,5,6,9,6,6,11,14,11,16,10,7,11,9,3,5,5,7,4,5,4,3,6,4,6,8,7,7,6,8,6,5,5),(108,'ESP_003','EMP290',2019,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,1,1,3,1,1,1,1,0,1,0,0,0,0,0,0,0,0,0,0,1,1,2,1,1,0),(109,'ESP_003','EMP290',2020,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(110,'ESP_004','EMP234',2019,4,4,4,3,5,5,4,3,2,2,1,1,0,0,1,2,2,3,2,3,3,3,4,5,4,3,3,4,3,5,5,8,7,6,10,7,8,5,3,3,4,2,2,2,1,1,0,0,0,0,0,0),(111,'ESP_004','EMP234',2020,0,0,1,2,1,2,3,3,3,2,2,1,1,2,2,3,4,4,5,4,6,6,6,7,6,5,5,7,5,7,6,6,7,5,5,4,3,3,3,3,3,3,2,3,3,2,2,2,1,2,1,1),(112,'ESP_004','EMP244',2019,6,6,7,6,10,7,8,7,5,5,4,3,3,3,3,3,4,3,3,3,4,6,4,6,11,4,10,7,5,7,8,6,7,8,9,6,6,4,7,6,6,7,5,5,7,7,6,5,6,6,6,5),(113,'ESP_004','EMP244',2020,5,5,7,7,9,5,8,9,7,7,6,5,4,4,4,3,3,3,3,4,5,6,6,6,8,7,5,6,7,5,9,10,8,9,8,5,5,4,8,6,7,7,6,7,6,5,6,4,7,5,6,3),(114,'ESP_004','EMP256',2019,2,4,3,3,3,2,3,2,1,2,2,3,3,3,2,1,1,2,2,2,2,2,2,2,4,2,2,5,5,3,2,2,2,3,6,5,2,2,3,1,2,2,2,1,2,2,1,1,2,2,1,1),(115,'ESP_004','EMP256',2020,1,2,3,2,3,2,2,1,2,1,1,1,0,1,1,1,1,3,2,4,4,4,4,4,6,5,2,3,2,3,3,3,2,4,4,1,1,2,1,1,1,1,1,1,1,1,0,0,0,0,0,0),(116,'ESP_004','EMP267',2019,4,3,6,6,7,6,7,5,4,7,4,6,5,6,4,4,3,3,3,4,3,4,4,4,4,6,7,8,10,12,11,7,6,5,6,6,5,3,2,2,1,1,1,3,3,3,4,6,6,3,4,2),(117,'ESP_004','EMP267',2020,2,2,1,1,0,3,6,10,16,10,5,3,2,2,1,1,1,2,3,2,3,3,4,6,5,8,7,11,14,11,10,11,5,4,5,2,2,2,2,2,1,3,3,5,6,5,4,5,4,5,5,3),(118,'ESP_004','EMP290',2019,2,1,2,2,2,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,2,1,1,0,0,0,1,1,2,2,2,3,3,2,2,1,1,1,1,2,1,1,1,1,1,1,2,1,4,2,1,2),(119,'ESP_004','EMP290',2020,1,1,0,0,0,0,0,0,0,0,0,1,2,1,1,0,1,0,1,0,0,1,3,2,3,2,1,1,1,1,3,2,2,1,0,1,1,1,0,0,0,0,0,0,0,1,0,0,1,1,1,1),(120,'ESP_005','EMP234',2019,4,3,4,3,5,3,2,2,3,1,1,1,1,1,1,2,2,2,1,2,2,4,4,7,5,5,2,3,2,3,5,6,5,7,6,4,5,3,2,1,2,2,2,1,1,1,0,0,0,0,0,0),(121,'ESP_005','EMP234',2020,0,0,0,1,1,1,2,2,4,4,2,3,2,2,3,2,3,3,3,4,3,6,6,8,11,8,2,4,4,4,3,4,3,2,3,4,2,4,2,2,2,2,3,3,3,3,3,3,3,3,4,3),(122,'ESP_005','EMP244',2019,9,8,9,9,10,8,7,11,9,8,5,7,6,7,8,5,8,7,9,7,8,9,13,11,9,7,6,7,8,8,10,8,11,10,12,9,8,9,8,6,6,11,8,8,8,11,9,6,7,7,7,5),(123,'ESP_005','EMP244',2020,6,8,10,11,7,9,7,9,10,11,6,9,8,7,6,7,7,7,8,7,10,7,8,10,10,5,6,10,8,12,11,10,11,14,7,9,10,7,7,9,10,8,7,8,4,9,8,7,5,7,7,4),(124,'ESP_005','EMP256',2019,2,2,1,3,3,1,2,2,2,3,2,1,3,4,2,1,1,1,1,1,1,1,2,2,4,3,2,1,2,3,4,3,4,3,3,3,1,3,3,2,2,1,1,1,1,1,1,1,2,1,2,2),(125,'ESP_005','EMP256',2020,1,1,3,2,2,1,1,1,1,1,1,1,1,1,0,1,1,2,1,3,2,2,5,4,5,3,2,4,3,2,3,3,4,3,1,1,1,1,1,0,1,1,1,0,0,0,0,0,0,0,0,0),(126,'ESP_005','EMP267',2019,5,5,6,7,4,5,7,9,8,9,6,7,5,6,6,6,5,4,6,2,3,7,7,8,9,7,7,9,11,16,15,11,10,9,9,8,6,4,4,2,2,2,3,4,4,5,6,6,5,6,5,4),(127,'ESP_005','EMP267',2020,3,5,4,2,1,4,9,11,18,9,12,8,3,4,4,4,5,4,4,4,4,5,7,6,6,7,14,16,11,19,15,11,6,5,7,5,5,4,3,3,3,4,4,4,7,5,6,7,5,6,5,4),(128,'ESP_005','EMP290',2019,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,1,1,1,3,4,3,1,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(129,'ESP_005','EMP290',2020,0,1,0,0,0,0,0,0,0,1,1,1,1,2,1,1,1,1,0,1,1,1,1,1,2,2,1,1,0,1,1,1,2,1,1,1,1,1,0,0,0,0,0,1,1,2,1,1,1,1,2,1),(130,'ESP_006','EMP234',2019,4,8,7,3,7,5,7,4,7,5,4,4,2,3,3,4,7,3,5,3,4,4,4,7,7,7,5,4,3,4,8,11,9,5,6,5,4,5,7,4,4,4,4,3,3,2,3,2,2,2,2,2),(131,'ESP_006','EMP234',2020,1,3,2,3,4,3,4,5,5,5,5,5,4,5,4,4,5,6,5,2,4,7,9,9,9,10,2,5,5,3,7,6,6,6,2,5,4,5,2,4,4,4,3,5,3,3,5,5,6,6,6,9),(132,'ESP_006','EMP244',2019,12,15,8,13,13,13,14,12,9,12,10,8,12,10,5,11,11,9,12,11,16,10,10,12,10,10,8,14,12,13,14,10,23,16,12,15,11,12,10,8,8,12,11,12,14,11,10,12,10,14,12,8),(133,'ESP_006','EMP244',2020,10,13,18,11,14,11,14,16,13,11,8,9,11,10,10,13,12,13,12,12,9,7,13,9,13,7,9,9,12,13,16,15,15,11,8,14,12,11,9,8,13,10,11,14,14,7,11,11,11,8,7,10),(134,'ESP_006','EMP256',2019,3,2,2,4,3,3,2,2,2,3,3,4,6,3,4,3,3,3,3,5,2,3,4,5,5,7,2,2,3,1,2,3,4,3,3,2,3,5,4,3,2,2,3,3,3,3,3,3,3,3,4,5),(135,'ESP_006','EMP256',2020,2,3,2,3,4,3,2,3,2,1,2,2,2,2,1,2,3,3,4,4,2,4,5,4,6,7,4,1,2,4,4,8,4,4,3,3,2,3,1,3,1,2,3,2,2,2,1,1,1,2,2,2),(136,'ESP_006','EMP267',2019,10,14,10,13,13,12,10,14,16,15,8,10,13,15,13,14,10,10,8,8,7,12,9,10,9,6,14,13,16,15,8,14,16,12,9,11,10,10,9,6,7,6,7,6,8,6,7,8,11,8,11,4),(137,'ESP_006','EMP267',2020,10,8,8,7,7,8,15,18,25,16,14,11,9,6,7,11,9,8,8,7,6,9,9,9,10,12,14,17,18,14,17,10,13,10,8,7,7,8,7,8,7,6,10,9,9,10,13,11,10,9,8,6),(138,'ESP_006','EMP290',2019,2,3,3,2,3,2,1,1,1,2,1,1,1,1,2,1,1,2,1,2,2,3,2,1,1,2,2,3,2,3,1,3,3,3,1,2,2,2,2,1,2,2,2,1,1,2,1,3,3,1,2,2),(139,'ESP_006','EMP290',2020,1,2,0,1,1,1,1,1,1,2,1,2,3,2,2,2,1,1,1,2,1,1,3,3,4,4,2,2,2,2,1,2,2,2,3,1,1,1,1,0,1,1,1,1,2,1,1,1,1,2,1,2),(140,'ESP_007','EMP234',2019,2,2,2,2,1,3,2,1,1,1,1,0,0,0,0,1,2,1,1,1,1,2,2,3,6,4,2,2,2,3,4,3,3,4,5,3,4,3,2,2,1,1,1,1,0,0,0,0,0,0,0,0),(141,'ESP_007','EMP234',2020,0,0,0,0,1,1,2,1,2,2,1,1,0,1,1,2,3,3,3,2,3,3,4,6,5,5,3,4,3,2,4,4,2,2,3,2,2,2,2,2,2,1,2,1,1,2,1,2,2,2,2,2),(142,'ESP_007','EMP244',2019,6,5,7,6,7,6,7,8,7,6,5,4,2,3,3,4,3,4,5,4,4,6,6,8,7,8,5,6,8,9,7,5,10,5,8,5,4,5,5,7,4,7,3,7,4,6,6,6,5,4,5,3),(143,'ESP_007','EMP244',2020,5,5,8,8,6,5,7,8,8,5,6,6,3,3,3,4,5,4,4,4,5,5,4,6,8,5,6,6,7,6,7,13,9,7,8,4,6,5,6,4,4,5,6,6,5,6,6,4,4,7,3,4),(144,'ESP_007','EMP256',2019,2,2,2,3,2,3,1,2,1,1,2,2,4,2,2,1,1,1,1,1,1,1,2,2,2,3,2,3,1,3,2,1,3,2,4,2,1,1,2,1,1,1,1,1,1,1,1,1,1,2,2,1),(145,'ESP_007','EMP256',2020,2,2,1,2,2,2,1,1,1,1,1,1,1,1,2,1,1,2,1,2,2,2,2,2,2,3,2,1,1,2,2,3,2,3,2,2,2,2,1,1,1,0,1,0,0,0,0,0,0,0,0,0),(146,'ESP_007','EMP267',2019,3,4,6,5,4,4,4,5,6,6,6,5,4,4,4,4,4,3,2,2,3,3,3,3,3,4,7,9,11,11,7,7,7,6,4,5,3,3,2,1,2,1,2,1,2,3,4,4,5,3,3,2),(147,'ESP_007','EMP267',2020,2,1,1,1,0,4,6,11,15,10,7,3,1,1,2,1,2,1,2,1,1,3,4,5,4,5,10,11,16,12,8,6,4,4,2,1,2,1,1,1,0,2,4,3,4,7,6,4,3,4,4,4),(148,'ESP_007','EMP290',2019,1,1,1,2,1,1,1,1,0,0,0,0,0,0,1,1,1,2,2,1,2,1,1,1,1,2,1,1,1,3,1,2,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,2,0,1),(149,'ESP_007','EMP290',2020,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,0,1,2,1,2,2,1,1,1,0,0,0,0,0,0,1,0,0,0,0,0,1,0,1),(150,'ESP_008','EMP234',2019,1,1,1,2,2,2,2,2,2,1,0,0,0,0,1,2,2,1,1,2,1,2,2,3,4,5,2,3,2,2,2,4,4,4,3,1,2,4,2,1,1,1,1,1,1,1,1,1,0,0,0,0),(151,'ESP_008','EMP234',2020,0,0,0,1,1,1,1,1,2,1,1,1,1,1,2,2,2,3,2,3,3,3,5,5,8,6,2,3,3,3,2,2,4,3,2,1,1,2,1,2,1,1,1,1,1,3,2,1,2,2,2,3),(152,'ESP_008','EMP244',2019,2,2,3,4,4,4,5,6,3,4,3,3,3,3,2,3,2,3,2,3,5,5,4,5,11,8,4,3,4,7,5,5,4,5,4,4,3,5,3,5,3,4,5,6,5,4,4,6,5,6,6,6),(153,'ESP_008','EMP244',2020,4,4,6,6,7,5,6,5,5,5,6,3,3,2,3,2,3,2,5,3,2,3,4,6,6,5,5,4,5,7,6,4,5,5,4,5,5,4,3,4,4,3,5,3,5,5,5,3,2,4,4,5),(154,'ESP_008','EMP256',2019,2,1,1,1,1,2,1,0,0,1,1,2,2,1,1,1,1,1,1,1,1,2,1,2,4,2,1,1,1,1,2,2,2,3,1,1,2,2,1,1,1,1,1,1,1,1,1,1,0,1,2,2),(155,'ESP_008','EMP256',2020,1,1,1,1,2,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,2,1,2,1,1,2,2,1,2,3,2,3,1,2,2,2,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(156,'ESP_008','EMP267',2019,4,5,6,9,9,10,8,7,7,6,7,8,8,6,6,6,4,5,3,3,4,5,5,5,4,5,5,12,11,12,9,8,7,8,7,6,3,4,4,2,1,2,3,3,3,4,4,5,6,3,4,3),(157,'ESP_008','EMP267',2020,4,2,2,1,0,4,7,9,17,10,9,6,3,4,3,3,5,4,5,3,5,5,6,6,7,8,9,11,13,11,12,7,5,5,7,6,3,4,3,4,4,3,7,8,8,7,6,3,5,7,5,4),(158,'ESP_008','EMP290',2019,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,2,3,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0),(159,'ESP_008','EMP290',2020,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `historic_sales` ENABLE KEYS */;
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
