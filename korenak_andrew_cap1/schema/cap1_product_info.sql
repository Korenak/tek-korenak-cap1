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
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `index` int DEFAULT NULL,
  `PROD_CODE` text,
  `PROD_NAME` text,
  `URL` text,
  `link` text,
  `Manufacturer` text,
  `Extended Service Plan` text,
  `Warranty Price` int DEFAULT NULL,
  `2019Q1` int DEFAULT NULL,
  `2019Q2` int DEFAULT NULL,
  `2019Q3` int DEFAULT NULL,
  `2019Q4` int DEFAULT NULL,
  `2020Q1` int DEFAULT NULL,
  `2020Q2` int DEFAULT NULL,
  `2020Q3` int DEFAULT NULL,
  `2020Q4` int DEFAULT NULL,
  KEY `ix_product_info_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` VALUES (0,'PROD_001','Gator XUV 590M','https://e-marketing.deere.com/store/landpro-equipmentalexander-ny/ViewAllProducts.do','Gator XUV 590M','John Deere','ESP_001',843,12449,12449,12449,12449,12499,12499,12499,12499),(1,'PROD_002','CUV82','https://www.cat.com/en_US/products/new/equipment/utility-vehicles/utility-vehicles/1000034280.html','CUV82','Cat','ESP_002',843,14786,14786,14786,14786,14998,14998,14998,14998),(2,'PROD_003','1025R Sub-Compact Tractor','https://e-marketing.deere.com/store/landpro-equipmentalexander-ny/ViewAllProducts.do','1025R Sub-Compact Tractor','John Deere','ESP_003',978,14999,14999,14999,14999,15066,15066,15066,15066),(3,'PROD_004','CT1021 Sub-Compact Tractor','https://www.bobcat.com/tractors/models/ct1021/features','CT1021 Sub-Compact Tractor','Bobcat','ESP_004',843,11385,11385,11385,11385,11527,11527,11527,11527),(4,'PROD_005','UV34 Gas ','https://www.bobcat.com/utility-products/utv/UV34/UV34-gas-utv','UV34 Gas ','Bobcat','ESP_005',843,13995,13995,13995,13995,14225,14225,14225,14225),(5,'PROD_006','ZT2000 Zero Turn Mower','https://www.bobcat.com/mowers/zero-turn-mowers/zt2000','ZT2000 Zero Turn Mower','Bobcat','ESP_006',372,4575,4575,4575,4575,4649,4649,4649,4649),(6,'PROD_007','S70 Skid Steer Loader','https://www.bobcat.com/loaders/skid-steer-loaders/models/s70/features','S70 Skid Steer Loader','Bobcat','ESP_007',1027,22987,22987,22987,22987,23120,23120,23120,23120),(7,'PROD_008','Z930M Ztrack','https://e-marketing.deere.com/store/landpro-equipmentalexander-ny/ViewAllProducts.do','Z930M Ztrack','John Deere','ESP_008',843,11589,11589,11589,11589,11689,11689,11689,11689);
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
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
