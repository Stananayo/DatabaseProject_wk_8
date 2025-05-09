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
-- Table structure for table `radiographers`
--

DROP TABLE IF EXISTS `radiographers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `radiographers` (
  `RadiographerID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Specialization` varchar(100) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  PRIMARY KEY (`RadiographerID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Phone` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radiographers`
--

LOCK TABLES `radiographers` WRITE;
/*!40000 ALTER TABLE `radiographers` DISABLE KEYS */;
INSERT INTO `radiographers` VALUES (1,'Dr. Peter Obi','MRI Specialist','peter.obi@example.com','08011112222'),(2,'Dr. Aisha Suleiman','X-ray Technologist','aisha.suleiman@example.com','08022223333'),(3,'Dr. Emmanuel Okafor','CT Scan Expert','emmanuel.okafor@example.com','08033334444'),(4,'Dr. Fatima Bello','Ultrasound/Sonographer','fatima.bello@example.com','08044445555'),(5,'Dr. Samuel Ade','Mammography Specialist','samuel.ade@example.com','08055556666'),(6,'Dr. Chika Eze','Interventional Radiology','chika.eze@example.com','08066667777'),(7,'Mr. Musa Garba','Nuclear Medicine','musa.garba@example.com','08077778888'),(8,'Dr. Victor Nwosu','Fluoroscopy Expert','victor.nwosu@example.com','08044443333');
/*!40000 ALTER TABLE `radiographers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 20:39:17
