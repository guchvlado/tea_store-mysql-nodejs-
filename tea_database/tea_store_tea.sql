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
-- Table structure for table `tea`
--

DROP TABLE IF EXISTS `tea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tea` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea`
--

LOCK TABLES `tea` WRITE;
/*!40000 ALTER TABLE `tea` DISABLE KEYS */;
INSERT INTO `tea` VALUES (1,'Цзинмай Шэнтай Шэн Ча','Букет готового чая свежий',100),(2,'Иу Цяому Шу Ча','Шу пуэр «Иу Цяому» («Чайные деревья гор Иу») сделан в 2019 году по заказу компании Мойчай.ру из сырья весеннего урожая 2012 года.',5391),(3,'Булан Чунь Шу','Букет готового чая зрелый, орехово-древесный с нотками овсяного печенья, сухих северных ягод и пряных трав. Аромат глубокий и теплый, пряно-древесный. Вкус плотный, бархатистый, сладковатый, с нюансами специй и легкой горчинкой.',5123),(4,'Шу Пуэр У Цзи','Шу Пуэр из сырья пятого сорта, собранного в чайном регионе Мэнхай.',516),(5,'Най Сян Цзинь Сюань','Знаменитый «Молочный Улун»,  который в русскоязычном чайном сообществе также называют «Огненный цветок с молочным ароматом». Это единственный искусственно ароматизированный чай в нашей коллекции, «Бэйлис» среди чаёв, изготовленный по многочисленным просьбам покупателей на основе первосортного улуна из Аньси. Обработан в процессе ферментации пищевым ароматизатором тайваньского производства (похожим образом делают цветочные чаи). Отдельно хотим заметить, что натурально ароматизированного «Молочного Улуна» не бывает.',548),(6,'Гаоцзи Лунцзин','Высшего сорта «Колодец дракона» из провинции Гуйчжоу, весеннего урожая 2022 г.',2900);
/*!40000 ALTER TABLE `tea` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 10:35:58
