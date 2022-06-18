-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: tea_store
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `tea_photo`
--

DROP TABLE IF EXISTS `tea_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tea_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `tea_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tea_id` (`tea_id`),
  CONSTRAINT `tea_photo_ibfk_1` FOREIGN KEY (`tea_id`) REFERENCES `tea` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea_photo`
--

LOCK TABLES `tea_photo` WRITE;
/*!40000 ALTER TABLE `tea_photo` DISABLE KEYS */;
INSERT INTO `tea_photo` VALUES (1,'https://moychay.ru/system/product_ng_fotos/39190/medium/42d99a7d6fade2133525f918e07be11f78cdf889/moychay_60388.jpg?1654784088',1),(2,'https://moychay.ru/system/product_fotos/images/000/493/893/medium/2V1A7550_%D0%BA%D0%BE%D0%BF%D0%B8%D1%8F.jpg?1631462299',2),(3,'https://moychay.ru/system/product_fotos/images/000/453/384/medium/_MG_2207.jpg?1559904063',3),(4,'https://moychay.ru/system/product_ng_fotos/36949/medium/eddf3869d10d97fd518f49bc2382d212e2191268/moychay_47776.jpg?1642701409',4),(5,'https://moychay.ru/system/product_fotos/images/000/296/183/medium/250_3.jpg?1492815540',5),(6,'https://moychay.ru/system/product_fotos/images/000/454/324/medium/_MG_5996.jpg?1562083335',6);
/*!40000 ALTER TABLE `tea_photo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 10:35:59
