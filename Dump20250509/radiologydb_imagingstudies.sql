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
-- Table structure for table `imagingstudies`
--

DROP TABLE IF EXISTS `imagingstudies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagingstudies` (
  `StudyID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int NOT NULL,
  `RadiologistID` int NOT NULL,
  `StudyType` varchar(100) NOT NULL,
  `StudyDate` date NOT NULL,
  `RadiographerID` int NOT NULL,
  PRIMARY KEY (`StudyID`),
  KEY `PatientID` (`PatientID`),
  KEY `RadiologistID` (`RadiologistID`),
  CONSTRAINT `imagingstudies_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  CONSTRAINT `imagingstudies_ibfk_2` FOREIGN KEY (`RadiologistID`) REFERENCES `radiologists` (`RadiologistID`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagingstudies`
--

LOCK TABLES `imagingstudies` WRITE;
/*!40000 ALTER TABLE `imagingstudies` DISABLE KEYS */;
INSERT INTO `imagingstudies` VALUES (1,1,1,'MRI Brain','2025-05-01',0),(2,2,2,'CT Chest','2025-05-02',0),(3,3,1,'X-ray Hand','2025-05-03',0),(4,1,1,'MRI Brain','2025-05-01',0),(5,2,2,'CT Chest','2025-05-02',0),(6,3,1,'X-ray Hand','2025-05-03',0),(7,1,1,'MRI Brain','2025-05-01',0),(8,2,2,'CT Chest','2025-05-02',0),(9,3,1,'X-ray Hand','2025-05-03',0),(10,1,1,'MRI Brain','2025-05-01',0),(11,2,2,'CT Chest','2025-05-02',0),(12,3,1,'X-ray Hand','2025-05-03',0),(13,1,1,'MRI Brain','2025-05-01',0),(14,2,2,'CT Chest','2025-05-02',0),(15,3,1,'X-ray Hand','2025-05-03',0),(16,1,1,'MRI Brain','2025-05-01',0),(17,2,2,'CT Chest','2025-05-02',0),(18,3,1,'X-ray Hand','2025-05-03',0),(19,1,1,'MRI Brain','2025-05-01',0),(20,2,2,'CT Chest','2025-05-02',0),(21,3,1,'X-ray Hand','2025-05-03',0),(134,1,12,'MRI Brain Scan','2025-05-05',6),(135,2,11,'Chest X-ray','2025-05-06',5),(136,3,1,'CT Abdomen Scan','2025-05-07',7),(137,23,2,'Ultrasound','2025-05-08',4),(138,24,7,'Mammography','2025-05-09',2),(139,25,5,'X-ray Spine','2025-05-10',3),(140,26,6,'Nuclear Medicine Scan','2025-05-11',1);
/*!40000 ALTER TABLE `imagingstudies` ENABLE KEYS */;
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
