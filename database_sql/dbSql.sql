-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: TwinShips
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `sensordata`
--

DROP TABLE IF EXISTS `sensordata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sensordata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ship_id` int(11) NOT NULL,
  `fart` float DEFAULT NULL,
  `kurs` varchar(4) DEFAULT NULL,
  `gps_koordinater` float DEFAULT NULL,
  `vindretning` int(3) DEFAULT NULL,
  `vindstyrke` int(5) DEFAULT NULL,
  `temperatur` int(2) DEFAULT NULL,
  `omdrejninger` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sensordata_fk0` (`ship_id`),
  CONSTRAINT `sensordata_fk0` FOREIGN KEY (`ship_id`) REFERENCES `skibsdata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sensordata`
--

LOCK TABLES `sensordata` WRITE;
/*!40000 ALTER TABLE `sensordata` DISABLE KEYS */;
INSERT INTO `sensordata` VALUES (1,1,20,'nord',59329300,29,12,20,2000),(2,2,10,'nord',66543300,98,5,10,1530);
/*!40000 ALTER TABLE `sensordata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skibsdata`
--

DROP TABLE IF EXISTS `skibsdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skibsdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(128) DEFAULT NULL,
  `navn` varchar(128) DEFAULT NULL,
  `hjemhavn` varchar(255) DEFAULT NULL,
  `kaldesignal` varchar(255) DEFAULT NULL,
  `unikt_mmsi_nummer` int(255) DEFAULT NULL,
  `anvendelse` varchar(255) DEFAULT NULL,
  `brt_bt` float DEFAULT NULL,
  `laengde` int(255) DEFAULT NULL,
  `maks_antal_om_bord` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `skibsdata_fk0` (`user_id`),
  CONSTRAINT `skibsdata_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skibsdata`
--

LOCK TABLES `skibsdata` WRITE;
/*!40000 ALTER TABLE `skibsdata` DISABLE KEYS */;
INSERT INTO `skibsdata` VALUES (1,2,'PolarExpressen','Gaabense','DOKELF',1239483,'Skibet er ude af drift',14,23,45),(2,2,'MS Hane','Onsevig','DEMFE',2123939,'Skibet anvendes som turkutter',10,15,15),(3,1,'PolarExpressen','Gaabense','DOKELF',1239483,'Skibet er ude af drift',14,23,45),(4,1,'PolarExpressen','Gaabense','DOKELF',1239483,'Skibet er ude af drift',14,23,45),(6,1,'PolarExpressen','Gaabense','DOKELF',1239483,'Skibet er ude af drift',14,23,45);
/*!40000 ALTER TABLE `skibsdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brugernavn` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','password'),(2,'user','kodeord');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-17 16:28:44
