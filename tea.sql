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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `dateOfCart` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,'2022-06-11 13:23:44'),(2,2,'2022-05-11 13:23:44');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Пуэр'),(2,'Улун'),(3,'Зеленый чай'),(4,'Красный чай'),(5,'Белый чай'),(6,'Желтый чай'),(7,'Жасминовый чай'),(8,'Японский чай'),(9,'Травяной чай'),(10,'Индийский чай'),(11,'Неочай'),(12,'Синий чай');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_tea`
--

DROP TABLE IF EXISTS `category_tea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_tea` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `tea_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `tea_id` (`tea_id`),
  CONSTRAINT `category_tea_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `category_tea_ibfk_2` FOREIGN KEY (`tea_id`) REFERENCES `tea` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_tea`
--

LOCK TABLES `category_tea` WRITE;
/*!40000 ALTER TABLE `category_tea` DISABLE KEYS */;
INSERT INTO `category_tea` VALUES (1,1,3),(2,1,2),(3,1,4),(5,2,5),(6,3,6),(7,1,7),(8,8,8);
/*!40000 ALTER TABLE `category_tea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Влад','Гученко','some@mail.ru','88005553535'),(2,'Василий','Иванов','some@mail.ru','88001233535'),(3,'Иван','Иванов','another@mail.ru','88001233144'),(4,'Людмила','Чикина','qwerty@gmail.com','89103213154'),(5,'Петр','Первый','pochta@gmail.com','89531233266'),(6,'Владислав','Гученко','guchvlado324@gmail.com','89998885623');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `dateOfDelivery` datetime NOT NULL,
  `courier` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,'Москва. Красная площадь 1','2022-06-11 13:23:44','Андрей'),(2,'Москва. Красная Пресня 1','2022-06-13 19:11:00','Людмила');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_cart`
--

DROP TABLE IF EXISTS `delivery_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `delivery_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `delivery_id` (`delivery_id`),
  CONSTRAINT `delivery_cart_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `delivery_cart_ibfk_2` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_cart`
--

LOCK TABLES `delivery_cart` WRITE;
/*!40000 ALTER TABLE `delivery_cart` DISABLE KEYS */;
INSERT INTO `delivery_cart` VALUES (1,2,2),(2,1,1);
/*!40000 ALTER TABLE `delivery_cart` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea`
--

LOCK TABLES `tea` WRITE;
/*!40000 ALTER TABLE `tea` DISABLE KEYS */;
INSERT INTO `tea` VALUES (1,'Цзинмай Шэнтай Шэн Ча','Букет готового чая свежий',100),(2,'Иу Цяому Шу Ча','Шу пуэр «Иу Цяому» («Чайные деревья гор Иу») сделан в 2019 году по заказу компании Мойчай.ру из сырья весеннего урожая 2012 года.',5391),(3,'Булан Чунь Шу','Букет готового чая зрелый, орехово-древесный с нотками овсяного печенья, сухих северных ягод и пряных трав. Аромат глубокий и теплый, пряно-древесный. Вкус плотный, бархатистый, сладковатый, с нюансами специй и легкой горчинкой.',5123),(4,'Шу Пуэр У Цзи','Шу Пуэр из сырья пятого сорта, собранного в чайном регионе Мэнхай.',516),(5,'Най Сян Цзинь Сюань','Знаменитый «Молочный Улун»,  который в русскоязычном чайном сообществе также называют «Огненный цветок с молочным ароматом». Это единственный искусственно ароматизированный чай в нашей коллекции, «Бэйлис» среди чаёв, изготовленный по многочисленным просьбам покупателей на основе первосортного улуна из Аньси. Обработан в процессе ферментации пищевым ароматизатором тайваньского производства (похожим образом делают цветочные чаи). Отдельно хотим заметить, что натурально ароматизированного «Молочного Улуна» не бывает.',548),(6,'Гаоцзи Лунцзин','Высшего сорта «Колодец дракона» из провинции Гуйчжоу, весеннего урожая 2022 г.',2900),(7,'Цзинмай Шэнтай Шэн Ча','В сухом виде: длинные, тонкие, бурые жгутики чайных листиков и почек. Аромат сдержанный, пряно-травянистый. Настой прозрачный, виноградного оттенка.',890),(8,'Сенча Окумидори','Окумидори – название культивара, выведенного в 70-е годы ХХ века путем скрещивания сортов ябукита и сидзуока дзайрай. Это поздний сорт, отличающийся невысокой терпкостью и свежестью аромата готового чая. Весенний урожай 2021 года.',3370);
/*!40000 ALTER TABLE `tea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tea_cart`
--

DROP TABLE IF EXISTS `tea_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tea_cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `tea_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`),
  KEY `tea_id` (`tea_id`),
  CONSTRAINT `tea_cart_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `tea_cart_ibfk_2` FOREIGN KEY (`tea_id`) REFERENCES `tea` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea_cart`
--

LOCK TABLES `tea_cart` WRITE;
/*!40000 ALTER TABLE `tea_cart` DISABLE KEYS */;
INSERT INTO `tea_cart` VALUES (1,1,1),(2,1,2),(3,1,5),(4,2,2),(5,2,5),(6,2,3),(7,2,4);
/*!40000 ALTER TABLE `tea_cart` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping events for database 'tea_store'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 11:36:33
