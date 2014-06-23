-- MySQL dump 10.13  Distrib 5.6.13, for Linux (x86_64)
--
-- Host: localhost    Database: airlines_development
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `airplanes`
--

DROP TABLE IF EXISTS `airplanes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airplanes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airplanes`
--

LOCK TABLES `airplanes` WRITE;
/*!40000 ALTER TABLE `airplanes` DISABLE KEYS */;
INSERT INTO `airplanes` VALUES (1,'Airbus A-310',NULL,NULL),(2,'Boeing 737',NULL,NULL),(3,'British Aerospace BAe 121',NULL,NULL),(4,'BAe 146',NULL,NULL),(5,'Concorde',NULL,NULL),(6,'Fokker F28',NULL,NULL),(7,'Ilyushin IL-86',NULL,NULL),(8,'Lockheed L-1011',NULL,NULL),(9,'McDonnell-Douglas DC-9',NULL,NULL),(10,'Yakovlev Yak-42',NULL,NULL);
/*!40000 ALTER TABLE `airplanes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (5,'Adults',0,NULL,NULL),(6,'Children',-15,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Tegucigalpa',NULL,NULL),(2,'San Pedro Sula',NULL,NULL),(3,'New York',NULL,NULL),(4,'Los Angeles',NULL,NULL),(5,'Chicago',NULL,NULL),(6,'Houston',NULL,NULL),(7,'Philadelphia',NULL,NULL),(8,'Dallas',NULL,NULL),(9,'Detroit',NULL,NULL),(10,'Washington',NULL,NULL),(11,'Las Vegas',NULL,NULL),(12,'Atlanta',NULL,NULL),(13,'New Orleans',NULL,NULL),(14,'Orlando',NULL,NULL),(15,'Pittsburgh',NULL,NULL),(16,'Columbus',NULL,NULL),(17,'Rochester',NULL,NULL),(18,'Knoxville',NULL,NULL),(19,'Jackson',NULL,NULL),(20,'Santa Clarita',NULL,NULL),(21,'Garden Grove',NULL,NULL),(22,'Fort Lauderdale',NULL,NULL),(23,'Vancouver',NULL,NULL),(24,'Springfield',NULL,NULL),(25,'San Jose CR',NULL,NULL),(26,'San Salvador ES',NULL,NULL),(27,'Madrid ESP',NULL,NULL),(28,'Bogota COL',NULL,NULL),(29,'Buenos Aires ARG',NULL,NULL),(30,'Lima PER',NULL,NULL),(31,'Rio de Janeiro BR',NULL,NULL),(32,'Curitiba BR',NULL,NULL),(33,'Caracas VNZ',NULL,NULL),(34,'La Paz BOL',NULL,NULL),(35,'Santiago CHL',NULL,NULL),(36,'Mexico DF MEX',NULL,NULL),(37,'Guatemala GUA',NULL,NULL),(38,'Managua NIC',NULL,NULL),(39,'Santo Domingo RD',NULL,NULL),(40,'San Juan PR',NULL,NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_types`
--

DROP TABLE IF EXISTS `class_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_types`
--

LOCK TABLES `class_types` WRITE;
/*!40000 ALTER TABLE `class_types` DISABLE KEYS */;
INSERT INTO `class_types` VALUES (1,'First Class',20,NULL,NULL),(2,'Business',10,NULL,NULL),(3,'Economy',0,NULL,NULL),(4,'Premium Economy',-15,NULL,NULL);
/*!40000 ALTER TABLE `class_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `passport_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credit_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exp_credit_card` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_clients_on_email` (`email`),
  UNIQUE KEY `index_clients_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'edilson.gonza@unitec.edu','$2a$10$piyOF1XXozx9pVWhVHVVkeZVTOOA2ruqWL0FEJF5HdVqqptHRWTzu',NULL,NULL,NULL,1,'2014-06-15 15:05:58','2014-06-15 15:05:58','190.4.53.113','190.4.53.113','Edilson','Fernando','Gonzalez','2014-06-15','12312','Honduras','12312','2014-06-27','2014-06-15 15:05:57','2014-06-15 15:05:58',1),(2,'reynaldo.narvaez@unitec.edu','$2a$10$guyqalbFvp3qA9PP6TNyI.WsWxUTyia3g4PJ4lBHOPiArNB6U8u92',NULL,NULL,NULL,1,'2014-06-22 23:56:49','2014-06-22 23:56:49','190.99.4.198','190.99.4.198','Reynaldo','Narvaez','Nuñez','1993-05-06','0C123','Honduras','5689347852496853','2016-12-23','2014-06-22 23:56:48','2014-06-22 23:56:49',1);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departure_city_id` int(11) DEFAULT NULL,
  `arrival_city_id` int(11) DEFAULT NULL,
  `airplane_id` int(11) DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `schedules_unique` (`departure_city_id`,`arrival_city_id`,`airplane_id`,`departure_time`,`arrival_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,5,39,3,'15:30:00','20:10:00',105,NULL,NULL),(2,20,8,1,'08:15:00','12:05:00',310,NULL,NULL),(3,1,2,5,'10:00:00','10:45:00',50,NULL,NULL),(4,2,1,5,'11:00:00','11:45:00',50,NULL,NULL),(5,30,4,7,'11:00:00','18:45:00',500,NULL,NULL),(6,1,12,8,'09:00:00','13:45:00',550,NULL,NULL),(7,2,13,9,'10:00:00','14:45:00',350,NULL,NULL),(8,3,5,10,'01:15:00','03:45:00',210,NULL,NULL),(9,5,25,1,'05:15:00','07:45:00',100,NULL,NULL),(10,8,5,2,'06:15:00','08:45:00',150,NULL,NULL),(11,9,4,3,'07:15:00','10:11:00',210,NULL,NULL),(12,11,6,4,'11:25:00','14:11:00',387,NULL,NULL),(13,11,7,5,'11:30:00','12:11:00',400,NULL,NULL),(14,12,27,6,'17:35:00','20:15:00',600,NULL,NULL),(15,13,23,7,'17:35:00','20:15:00',600,NULL,NULL),(16,14,20,8,'18:35:00','20:15:00',200,NULL,NULL),(17,15,9,9,'18:35:00','20:15:00',200,NULL,NULL),(18,15,10,10,'14:25:00','16:15:00',800,NULL,NULL),(19,16,21,1,'14:25:00','16:15:00',800,NULL,NULL),(20,17,11,2,'03:25:00','06:15:00',400,NULL,NULL),(21,17,22,3,'04:25:00','06:15:00',400,NULL,NULL),(22,19,14,4,'04:25:00','06:15:00',1200,NULL,NULL),(23,21,22,5,'04:25:00','06:15:00',1200,NULL,NULL),(24,21,17,5,'01:05:00','03:15:00',1000,NULL,NULL),(25,22,26,6,'01:05:00','03:15:00',1000,NULL,NULL),(26,23,28,7,'01:05:00','03:15:00',1800,NULL,NULL),(27,23,18,8,'01:05:00','03:15:00',1800,NULL,NULL),(28,26,36,9,'02:05:00','04:15:00',1200,NULL,NULL),(29,26,37,10,'03:05:00','06:15:00',1300,NULL,NULL),(30,27,24,1,'16:00:00','18:15:00',800,NULL,NULL),(31,27,30,2,'17:00:00','20:15:00',1100,NULL,NULL),(32,32,29,2,'20:00:00','21:35:00',900,NULL,NULL),(33,34,35,3,'05:00:00','12:35:00',1900,NULL,NULL),(34,34,39,4,'06:00:00','12:35:00',1300,NULL,NULL),(35,35,40,5,'06:00:00','12:35:00',1300,NULL,NULL),(36,37,31,6,'07:00:00','11:35:00',850,NULL,NULL),(37,38,32,7,'10:00:00','12:35:00',1850,NULL,NULL),(38,38,33,8,'11:25:00','12:35:00',750,NULL,NULL),(39,38,39,9,'11:25:00','12:35:00',950,NULL,NULL),(40,40,34,10,'11:35:00','12:35:00',700,NULL,NULL);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules_tickets`
--

DROP TABLE IF EXISTS `schedules_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules_tickets`
--

LOCK TABLES `schedules_tickets` WRITE;
/*!40000 ALTER TABLE `schedules_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140613024553'),('20140613024614'),('20140613024808'),('20140613044343'),('20140613044514'),('20140613052753'),('20140613055622'),('20140614202035'),('20140614203940');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `class_type_id` int(11) DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-23  3:31:56
