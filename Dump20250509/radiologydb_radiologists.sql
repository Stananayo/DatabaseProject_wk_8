-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: radiologydb
-- ------------------------------------------------------
-- Server version	8.4.5

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
-- Table structure for table `radiologists`
--

DROP TABLE IF EXISTS `radiologists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `radiologists` (
  `RadiologistID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Specialization` varchar(100) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  PRIMARY KEY (`RadiologistID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Phone` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radiologists`
--

LOCK TABLES `radiologists` WRITE;
/*!40000 ALTER TABLE `radiologists` DISABLE KEYS */;
INSERT INTO `radiologists` VALUES (1,'Dr. Alex Brown','MRI Specialist','alex.brown@example.com','08011122334'),(2,'Dr. Linda White','CT Scan Expert','linda.white@example.com','08022233445'),(5,'Dr. John Smith','Neuroradiology','john.smith@example.com','08011111111'),(6,'Dr. Susan Lee','Chest Imaging','susan.lee@example.com','08022222222'),(7,'Dr. Ahmed Bello','Abdominal Imaging','ahmed.bello@example.com','08033333333'),(11,'Dr. Helen Okeke','Musculoskeletal Radiology','helen.okeke@example.com','08088889999'),(12,'Dr. Ibrahim Lawal','Cardiac Imaging','ibrahim.lawal@example.com','08077776666');
/*!40000 ALTER TABLE `radiologists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 20:39:18
