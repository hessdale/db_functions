-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_functions
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dealership`
--

DROP TABLE IF EXISTS `dealership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealership` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date_established` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealership`
--

LOCK TABLES `dealership` WRITE;
/*!40000 ALTER TABLE `dealership` DISABLE KEYS */;
INSERT INTO `dealership` VALUES (1,'Stealership1','North','2020-02-02'),(2,'Stealership2','South','2020-02-01'),(3,'Stealership3','West','2020-02-03');
/*!40000 ALTER TABLE `dealership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `for_sale_cars`
--

DROP TABLE IF EXISTS `for_sale_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `for_sale_cars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dealership_id` int(10) unsigned DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `make` varchar(30) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `for_sale_cars_FK` (`dealership_id`),
  CONSTRAINT `for_sale_cars_FK` FOREIGN KEY (`dealership_id`) REFERENCES `dealership` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `for_sale_cars`
--

LOCK TABLES `for_sale_cars` WRITE;
/*!40000 ALTER TABLE `for_sale_cars` DISABLE KEYS */;
INSERT INTO `for_sale_cars` VALUES (1,1,16000,'Ford','Fusion',2008),(2,2,18000,'Ford','Fusion',2007),(3,3,12000,'Ford','Fusion',2006),(4,2,18000,'Ford','Fusion',2005),(5,3,11000,'Ford','Fusion',2004),(6,1,16000,'Ford','Fusion',2003),(7,2,16000,'Ford','Fusion',2002),(8,1,13000,'Ford','Fusion',2009),(9,1,12000,'Ford','Fusion',2010),(10,3,17000,'Ford','Fusion',2008),(11,2,14000,'Ford','Fusion',2009),(12,2,14000,'Ford','Fusion',2004),(13,2,19000,'Ford','Fusion',2005),(14,1,13000,'Ford','Fusion',2006),(15,1,16000,'Ford','Fusion',2007);
/*!40000 ALTER TABLE `for_sale_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_functions'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 19:07:43
