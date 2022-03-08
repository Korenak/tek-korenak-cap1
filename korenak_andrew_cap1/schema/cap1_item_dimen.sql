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
-- Table structure for table `item_dimen`
--

DROP TABLE IF EXISTS `item_dimen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_dimen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int DEFAULT NULL,
  `i_desc` varchar(45) DEFAULT NULL,
  `url` text,
  `manufacturer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_dimen_fk_idx` (`item_id`),
  CONSTRAINT `item_dimen_fk` FOREIGN KEY (`item_id`) REFERENCES `item_normal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_dimen`
--

LOCK TABLES `item_dimen` WRITE;
/*!40000 ALTER TABLE `item_dimen` DISABLE KEYS */;
INSERT INTO `item_dimen` VALUES (1,1,'Gator XUV 590M','https://e-marketing.deere.com/store/landpro-equipmentalexander-ny/ViewAllProducts.do','John Deere'),(2,2,'CUV82','https://www.cat.com/en_US/products/new/equipment/utility-vehicles/utility-vehicles/1000034280.html','Cat'),(3,3,'1025R Sub-Compact Tractor','https://e-marketing.deere.com/store/landpro-equipmentalexander-ny/ViewAllProducts.do','John Deere'),(4,4,'CT1021 Sub-Compact Tractor','https://www.bobcat.com/tractors/models/ct1021/features','Bobcat'),(5,5,'UV34 Gas','https://www.bobcat.com/utility-products/utv/UV34/UV34-gas-utv','Bobcat'),(6,6,'ZT2000 Zero Turn Mower','https://www.bobcat.com/mowers/zero-turn-mowers/zt2000','Bobcat'),(7,7,'S70 Skid Steer Loader','https://www.bobcat.com/loaders/skid-steer-loaders/models/s70/features','Bobcat'),(8,8,'Z930M Ztrack','https://e-marketing.deere.com/store/landpro-equipmentalexander-ny/ViewAllProducts.do','John Deere'),(9,9,'ESP: Gator XUV 590M','https://e-marketing.deere.com/store/landpro-equipmentalexander-ny/ViewAllProducts.do','John Deere'),(10,10,'ESP: CUV82','https://www.cat.com/en_US/products/new/equipment/utility-vehicles/utility-vehicles/1000034280.html','Cat'),(11,11,'ESP: 1025R Sub-Compact Tractor','https://e-marketing.deere.com/store/landpro-equipmentalexander-ny/ViewAllProducts.do','John Deere'),(12,12,'ESP: CT1021 Sub-Compact Tractor','https://www.bobcat.com/tractors/models/ct1021/features','Bobcat'),(13,13,'ESP: UV34 Gas','https://www.bobcat.com/utility-products/utv/UV34/UV34-gas-utv','Bobcat'),(14,14,'ESP: ZT2000 Zero Turn Mower','https://www.bobcat.com/mowers/zero-turn-mowers/zt2000','Bobcat'),(15,15,'ESP: S70 Skid Steer Loader','https://www.bobcat.com/loaders/skid-steer-loaders/models/s70/features','Bobcat'),(16,16,'ESP: Z930M Ztrack','https://e-marketing.deere.com/store/landpro-equipmentalexander-ny/ViewAllProducts.do','John Deere');
/*!40000 ALTER TABLE `item_dimen` ENABLE KEYS */;
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
