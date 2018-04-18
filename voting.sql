-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: kavya
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate` (
  `id` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `section` varchar(5) DEFAULT NULL,
  `vote_count` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES ('2015cse057','Jaya','1',1),('2015cse031','Chandan','1',0),('2015cse060','Kaushik','2',0),('2015cse163','Aparna','3',1),('2015cse160','Vaishnavi','3',0),('2015cse091','Nidhisha','2',1);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_id` int(15) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('Kavya',1),('Pooja',2),('Kaushik',3),('Nikita',4),('Chandan',5),('Epshita',6),('Manoj',7),('Namratha',8),('Shruthi',9),('Akshitha',10);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` varchar(20) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `section` varchar(5) DEFAULT NULL,
  `voted` int(2) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('2015cse017','Amulya','amulya','1',0),('2015cse042','Epshita','epshita','1',0),('2015cse062','Kavya','kavya','2',1),('2015cse099','Pooja','pooja','2',1),('2015cse147','Shwetha','shwetha','3',1),('2015cse148','Triveni','triveni','3',0);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order1`
--

DROP TABLE IF EXISTS `order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order1` (
  `customer_id` int(11) DEFAULT NULL,
  `order_id` int(15) NOT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `pk` (`customer_id`),
  CONSTRAINT `pk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES (1,1,'2012-06-17'),(2,2,'2030-04-17'),(3,3,'2018-10-17'),(4,4,'2019-04-17'),(5,5,'2018-01-17'),(6,6,'2001-01-17'),(7,7,'2002-12-17'),(8,8,'2011-02-17'),(9,9,'2005-02-17'),(10,10,'2015-04-17');
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_line` (
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(15) DEFAULT NULL,
  `quantity` int(15) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  KEY `pk4` (`product_id`),
  KEY `pk5` (`order_id`),
  CONSTRAINT `pk4` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `pk5` FOREIGN KEY (`order_id`) REFERENCES `order1` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line`
--

LOCK TABLES `order_line` WRITE;
/*!40000 ALTER TABLE `order_line` DISABLE KEYS */;
INSERT INTO `order_line` VALUES (1,1,4,'Ready'),(2,2,1,'Waiting'),(3,3,7,'Waiting'),(4,4,9,'Waiting'),(5,5,10,'Ready'),(6,6,2,'Ready'),(7,7,3,'Waiting'),(8,8,4,'Waiting'),(9,9,5,'Ready'),(10,10,2,'Waiting');
/*!40000 ALTER TABLE `order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `standard_price` decimal(10,2) DEFAULT NULL,
  `product_id` int(15) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (222.30,1),(100.00,2),(100.77,3),(666.00,4),(500.00,5),(464.89,6),(563.00,7),(943.00,8),(1083.00,9),(519.00,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-18 13:43:41
