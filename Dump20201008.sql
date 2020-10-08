-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: crickdom-database.cwipoeagfwn1.us-east-1.rds.amazonaws.com    Database: club_cricket
-- ------------------------------------------------------
-- Server version	8.0.13

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='';

--
-- Table structure for table `baller_record`
--

DROP TABLE IF EXISTS `baller_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baller_record` (
  `baller_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `overs` decimal(5,2) NOT NULL,
  `num_runs_against` int(11) NOT NULL,
  `wicket` int(11) NOT NULL,
  `hat_trick` int(11) NOT NULL,
  `selected_player_id` int(11) NOT NULL,
  `balling_points` decimal(5,2) NOT NULL,
  `num_of_wides` int(11) NOT NULL,
  `num_of_nos` int(11) NOT NULL,
  `avg_speed` int(11) NOT NULL,
  PRIMARY KEY (`baller_record_id`),
  KEY `fk_baller_record_selected_player1_idx` (`selected_player_id`),
  CONSTRAINT `FK16c4yu2lxk9xvhe9rv55wh0l8` FOREIGN KEY (`selected_player_id`) REFERENCES `selected_player` (`selected_player_id`),
  CONSTRAINT `fk_baller_record_selected_player1` FOREIGN KEY (`selected_player_id`) REFERENCES `selected_player` (`selected_player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baller_record`
--

LOCK TABLES `baller_record` WRITE;
/*!40000 ALTER TABLE `baller_record` DISABLE KEYS */;
INSERT INTO `baller_record` VALUES (9,5.00,40,1,0,115,-0.33,2,0,0),(10,10.00,60,3,0,136,2.00,2,2,0),(11,0.00,0,0,0,134,0.00,0,0,0),(12,2.00,20,1,0,116,-0.67,0,0,0),(13,0.00,0,0,0,125,0.00,0,0,0),(14,5.00,40,1,0,124,-0.33,0,0,0),(15,4.00,30,1,0,123,-0.25,0,0,0),(16,10.00,30,3,1,122,2.50,0,0,0),(17,1.00,6,0,0,117,-1.00,0,0,0),(18,3.00,5,0,0,118,-0.28,0,0,0),(19,0.00,0,0,0,119,0.00,0,0,0),(20,0.00,0,0,0,121,0.00,0,0,0),(21,0.00,0,0,0,120,0.00,0,0,0),(22,2.00,10,0,0,135,-0.83,0,0,0),(23,0.00,0,0,0,127,0.00,0,0,0),(24,0.00,0,0,0,132,0.00,0,0,0),(25,10.00,60,2,0,131,1.00,0,3,0),(26,0.00,70,2,0,126,0.00,0,0,0),(27,8.00,60,2,0,133,0.75,0,2,0),(28,10.00,49,3,0,130,2.18,0,0,0),(29,1.00,11,1,0,128,-0.83,0,1,0),(30,2.00,22,1,0,129,-0.83,1,2,0),(31,3.00,25,1,0,147,-0.39,0,0,0),(32,0.00,0,0,0,158,0.00,0,0,0),(33,5.00,45,2,0,153,0.50,2,1,0),(34,3.00,34,2,0,159,0.11,0,2,0),(35,5.00,44,2,0,180,0.53,2,2,0),(36,10.00,44,3,0,176,2.27,0,1,0),(37,5.00,34,1,0,160,-0.13,2,2,0),(38,5.00,40,2,0,138,0.67,1,0,0),(39,0.00,0,0,0,161,0.00,0,0,0),(40,5.00,44,1,0,162,-0.47,0,0,0),(41,0.00,0,0,0,169,0.00,0,0,0),(42,2.00,10,3,0,163,2.17,2,1,0),(43,20.00,33,4,0,164,3.73,5,2,0),(44,0.00,0,0,0,165,0.00,0,0,0),(45,6.00,80,2,0,170,-0.22,5,3,0),(46,15.00,102,3,1,171,1.87,0,1,0),(47,20.00,53,5,2,172,4.56,8,5,0),(48,50.00,350,8,1,173,6.83,5,2,0),(49,0.00,0,0,0,174,0.00,0,0,0),(50,3.00,50,2,0,175,-0.78,3,1,0),(51,2.00,23,0,0,177,-1.92,0,2,0),(52,0.00,0,0,0,166,0.00,0,0,0),(53,18.00,180,4,1,167,2.33,4,2,0),(54,5.00,20,0,0,178,-0.67,3,2,0),(55,0.00,0,0,0,168,0.00,0,0,0),(56,0.00,0,0,0,203,0.00,0,0,0),(57,2.00,20,1,0,137,-0.67,1,2,0),(58,4.00,20,1,0,139,0.17,0,2,0),(59,0.00,0,0,0,148,0.00,0,0,0),(60,3.00,48,0,0,140,-2.67,1,2,0),(61,0.00,0,0,0,149,0.00,0,0,0),(62,2.00,22,1,0,141,-0.83,4,0,0),(63,5.00,29,3,1,150,2.03,0,1,0),(64,0.00,0,0,0,151,0.00,0,0,0),(65,0.00,0,0,0,152,0.00,0,0,0),(66,6.00,45,4,1,143,2.75,0,2,0),(67,2.00,15,0,0,154,-1.25,0,0,0);
/*!40000 ALTER TABLE `baller_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baller_score`
--

DROP TABLE IF EXISTS `baller_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baller_score` (
  `baller_score_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_count` int(11) NOT NULL,
  `overs` decimal(5,2) NOT NULL,
  `wicket` int(11) NOT NULL,
  `avg_speed` decimal(6,3) NOT NULL,
  `wide_ball` int(11) NOT NULL,
  `no_ball` int(11) NOT NULL,
  `num_of_runs_aginst` int(11) NOT NULL,
  `hat_trick` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `match_type_id` int(11) NOT NULL,
  `points` decimal(6,3) NOT NULL,
  PRIMARY KEY (`baller_score_id`),
  KEY `fk_baller_score_player1_idx` (`player_id`),
  KEY `fk_baller_score_match_type1_idx` (`match_type_id`),
  CONSTRAINT `FK68yt83e2cjs02l9woj8s0g39f` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  CONSTRAINT `FKra0ycatkensy1g5jxwrtlfdvy` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `fk_baller_score_match_type1` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `fk_baller_score_player1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baller_score`
--

LOCK TABLES `baller_score` WRITE;
/*!40000 ALTER TABLE `baller_score` DISABLE KEYS */;
INSERT INTO `baller_score` VALUES (7,1,5.00,1,0.000,2,0,40,0,40,1,-0.333),(8,1,10.00,3,0.000,4,4,120,0,41,1,2.500),(9,1,0.00,0,0.000,0,0,0,0,19,1,0.000),(10,1,2.00,1,0.000,0,0,20,0,37,1,-0.667),(11,1,0.00,0,0.000,0,0,0,0,3,1,0.000),(12,1,5.00,1,0.000,0,0,40,0,4,1,-0.333),(13,2,8.00,2,0.000,0,0,60,0,31,1,-0.500),(14,1,10.00,3,0.000,0,0,30,1,7,1,2.500),(15,1,1.00,0,0.000,0,0,6,0,38,1,-1.000),(16,1,3.00,0,0.000,0,0,5,0,9,1,-0.278),(17,1,0.00,0,0.000,0,0,0,0,8,1,0.000),(18,1,0.00,0,0.000,0,0,0,0,2,1,0.000),(19,1,0.00,0,0.000,0,0,0,0,1,1,0.000),(20,1,2.00,0,0.000,0,0,10,0,26,1,-0.833),(21,1,0.00,0,0.000,0,0,0,0,24,1,0.000),(22,1,0.00,0,0.000,0,0,0,0,27,1,0.000),(23,1,10.00,2,0.000,0,3,60,0,25,1,1.000),(24,2,0.00,2,0.000,0,0,70,0,14,1,0.000),(25,1,8.00,2,0.000,0,2,60,0,29,1,0.750),(26,1,10.00,3,0.000,0,0,49,0,18,1,2.183),(27,1,1.00,1,0.000,0,1,11,0,28,1,-0.833),(28,1,2.00,1,0.000,1,2,22,0,30,1,-0.833),(29,1,3.00,1,0.000,0,0,25,0,3,3,-0.389),(30,1,0.00,0,0.000,0,0,0,0,15,3,0.000),(31,1,5.00,2,0.000,2,1,45,0,16,3,0.500),(32,1,3.00,2,0.000,0,2,34,0,40,2,0.111),(33,1,5.00,2,0.000,2,2,44,0,40,2,0.533),(34,1,10.00,3,0.000,0,1,44,0,27,2,2.267),(35,1,5.00,1,0.000,2,2,34,0,37,2,-0.133),(36,1,5.00,2,0.000,1,0,40,0,37,3,0.667),(37,1,0.00,0,0.000,0,0,0,0,38,2,0.000),(38,1,5.00,1,0.000,0,0,44,0,9,2,-0.467),(39,1,0.00,0,0.000,0,0,0,0,3,2,0.000),(40,1,2.00,3,0.000,2,1,10,0,8,2,2.167),(41,1,20.00,4,0.000,5,2,33,0,1,2,3.725),(42,1,0.00,0,0.000,0,0,0,0,2,2,0.000),(43,1,6.00,2,0.000,5,3,80,0,14,2,-0.222),(44,1,15.00,3,0.000,0,1,102,1,24,2,1.867),(45,1,20.00,5,0.000,8,5,53,2,28,2,4.558),(46,1,50.00,8,0.000,5,2,350,1,30,2,6.833),(47,1,0.00,0,0.000,0,0,0,0,18,2,0.000),(48,1,3.00,2,0.000,3,1,50,0,25,2,-0.778),(49,1,2.00,0,0.000,0,2,23,0,29,2,-1.917),(50,1,0.00,0,0.000,0,0,0,0,7,2,0.000),(51,1,18.00,4,0.000,4,2,180,1,31,2,2.333),(52,1,5.00,0,0.000,3,2,20,0,19,2,-0.667),(53,1,0.00,0,0.000,0,0,0,0,4,2,0.000),(54,1,2.00,1,0.000,1,2,20,0,40,3,-0.667),(55,1,4.00,1,0.000,0,2,20,0,38,3,0.167),(56,1,0.00,0,0.000,0,0,0,0,10,3,0.000),(57,1,3.00,0,0.000,1,2,48,0,9,3,-2.667),(58,1,0.00,0,0.000,0,0,0,0,20,3,0.000),(59,1,2.00,1,0.000,4,0,22,0,8,3,-0.833),(60,1,5.00,3,0.000,0,1,29,1,22,3,2.033),(61,1,0.00,0,0.000,0,0,0,0,11,3,0.000),(62,1,0.00,0,0.000,0,0,0,0,39,3,0.000),(63,1,6.00,4,0.000,0,2,45,1,2,3,2.750),(64,1,2.00,0,0.000,0,0,15,0,21,3,-1.250);
/*!40000 ALTER TABLE `baller_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baller_type`
--

DROP TABLE IF EXISTS `baller_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baller_type` (
  `baller_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`baller_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baller_type`
--

LOCK TABLES `baller_type` WRITE;
/*!40000 ALTER TABLE `baller_type` DISABLE KEYS */;
INSERT INTO `baller_type` VALUES (1,'Right arm pace/seam bowling'),(2,'Left arm pace/seam bowling'),(3,'Right-arm spin bowling'),(4,'Left-arm spin bowling'),(5,'Not Specify');
/*!40000 ALTER TABLE `baller_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batman_record`
--

DROP TABLE IF EXISTS `batman_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batman_record` (
  `batman_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `runs` int(11) NOT NULL,
  `face_ball` int(11) NOT NULL,
  `not_out` tinyint(4) NOT NULL,
  `four` int(11) NOT NULL,
  `six` int(11) NOT NULL,
  `selected_player_id` int(11) NOT NULL,
  `half_sentury` tinyint(1) NOT NULL,
  `sentury` tinyint(1) NOT NULL,
  `double_sentury` tinyint(1) NOT NULL,
  `triple_sentury` tinyint(1) NOT NULL,
  `fourble_sentury` tinyint(1) NOT NULL,
  `fiveble_sentury` tinyint(1) NOT NULL,
  `batting_points` decimal(5,2) NOT NULL,
  `strike_rate` decimal(6,3) NOT NULL,
  PRIMARY KEY (`batman_record_id`),
  KEY `fk_batman_record_selected_player1_idx` (`selected_player_id`),
  CONSTRAINT `FK8rptl70i3c4dry6n5tdswp8bg` FOREIGN KEY (`selected_player_id`) REFERENCES `selected_player` (`selected_player_id`),
  CONSTRAINT `fk_batman_record_selected_player1` FOREIGN KEY (`selected_player_id`) REFERENCES `selected_player` (`selected_player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batman_record`
--

LOCK TABLES `batman_record` WRITE;
/*!40000 ALTER TABLE `batman_record` DISABLE KEYS */;
INSERT INTO `batman_record` VALUES (10,30,12,0,3,6,115,0,0,0,0,0,0,1.50,2.500),(11,40,30,0,3,1,134,0,0,0,0,0,0,2.00,1.333),(12,40,50,1,3,2,116,0,0,0,0,0,0,2.01,0.800),(13,1,3,0,0,0,125,0,0,0,0,0,0,0.05,0.333),(14,40,30,0,2,2,124,0,0,0,0,0,0,2.00,1.333),(15,0,0,0,0,0,123,0,0,0,0,0,0,0.00,0.000),(16,0,0,0,0,0,122,0,0,0,0,0,0,0.00,0.000),(17,0,55,0,3,3,117,0,0,0,0,0,0,0.00,0.000),(18,40,30,0,3,1,118,0,0,0,0,0,0,2.00,1.333),(19,60,60,1,5,1,119,0,0,0,0,0,0,3.01,1.000),(20,60,55,1,5,2,121,0,0,0,0,0,0,3.01,1.091),(21,30,32,0,2,0,120,0,0,0,0,0,0,1.50,0.938),(22,0,0,0,0,0,136,0,0,0,0,0,0,0.00,0.000),(23,40,30,1,4,0,135,0,0,0,0,0,0,2.01,1.333),(24,54,44,0,3,1,127,0,0,0,0,0,0,2.70,1.227),(25,80,50,0,5,2,132,0,0,0,0,0,0,4.00,1.600),(26,55,44,0,4,1,131,0,0,0,0,0,0,2.75,1.250),(27,0,0,0,0,0,126,0,0,0,0,0,0,0.00,0.000),(28,12,4,1,0,0,133,0,0,0,0,0,0,0.61,3.000),(29,4,1,0,0,0,130,0,0,0,0,0,0,0.20,4.000),(30,66,78,0,6,1,128,0,0,0,0,0,0,3.30,0.846),(31,76,55,0,2,2,129,0,0,0,0,0,0,3.80,1.382),(32,50,30,0,4,1,147,0,0,0,0,0,0,2.50,1.667),(33,40,20,0,2,1,158,0,0,0,0,0,0,2.00,2.000),(34,0,0,0,0,0,153,0,0,0,0,0,0,0.00,0.000),(35,40,30,0,2,2,159,0,0,0,0,0,0,2.00,1.333),(36,0,66,1,4,4,180,0,0,0,0,0,0,0.01,0.000),(37,0,0,0,0,0,176,0,0,0,0,0,0,0.00,0.000),(38,40,50,0,3,1,160,0,0,0,0,0,0,2.00,0.800),(39,0,0,0,0,0,138,0,0,0,0,0,0,0.00,0.000),(40,40,50,1,2,1,161,0,0,0,0,0,0,2.01,0.800),(41,80,110,0,6,2,162,0,0,0,0,0,0,4.00,0.727),(42,50,55,0,2,1,169,0,0,0,0,0,0,2.50,0.909),(43,785,100,0,3,0,163,0,0,0,0,0,0,39.25,7.850),(44,450,120,0,20,8,164,0,0,0,0,0,0,22.50,3.750),(45,230,50,0,10,8,165,0,0,0,0,0,0,11.50,4.600),(46,500,180,0,10,6,170,0,0,0,0,0,0,25.00,2.778),(47,20,6,0,3,0,171,0,0,0,0,0,0,1.00,3.333),(48,538,54,0,5,3,172,0,0,0,0,0,0,26.90,9.963),(49,45,38,0,2,0,173,0,0,0,0,0,0,2.25,1.184),(50,85,32,0,3,1,174,0,0,0,0,0,0,4.25,2.656),(51,105,25,0,5,2,175,0,0,0,0,0,0,5.25,4.200),(52,200,20,0,6,3,177,0,0,0,0,0,0,10.00,10.000),(53,56,20,0,4,2,166,0,0,0,0,0,0,2.80,2.800),(54,0,0,0,0,0,167,0,0,0,0,0,0,0.00,0.000),(55,69,48,0,3,1,178,0,0,0,0,0,0,3.45,1.438),(56,10,12,0,0,0,168,0,0,0,0,0,0,0.50,0.833),(57,50,15,0,4,2,203,0,0,0,0,0,0,2.50,3.333),(58,25,10,0,2,1,137,0,0,0,0,0,0,1.25,2.500),(59,56,15,0,2,3,139,0,0,0,0,0,0,2.80,3.733),(60,35,18,0,3,2,148,0,0,0,0,0,0,1.75,1.944),(61,45,23,0,3,3,140,0,0,0,0,0,0,2.25,1.957),(62,18,20,0,0,0,149,0,0,0,0,0,0,0.90,0.900),(63,65,30,0,4,2,141,0,0,0,0,0,0,3.25,2.167),(64,18,15,0,0,0,150,0,0,0,0,0,0,0.90,1.200),(65,55,26,0,5,1,151,0,0,0,0,0,0,2.75,2.115),(66,63,45,0,5,2,152,0,0,0,0,0,0,3.15,1.400),(67,12,15,0,0,0,143,0,0,0,0,0,0,0.60,0.800),(68,53,30,0,4,0,154,0,0,0,0,0,0,2.65,1.767);
/*!40000 ALTER TABLE `batman_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batman_score`
--

DROP TABLE IF EXISTS `batman_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batman_score` (
  `batman_score_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_count` int(11) NOT NULL,
  `not_out` int(11) NOT NULL,
  `face_ball` int(11) NOT NULL,
  `runs` int(11) NOT NULL,
  `four` int(11) NOT NULL,
  `six` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `match_type_id` int(11) NOT NULL,
  `points` decimal(6,3) NOT NULL,
  `half_sentury` int(11) NOT NULL,
  `sentury` int(11) NOT NULL,
  `double_sentury` int(11) NOT NULL,
  `triple_sentury` int(11) NOT NULL,
  `fourble_sentury` int(11) NOT NULL,
  `fiveble_sentury` int(11) NOT NULL,
  `strike_rate` decimal(6,3) NOT NULL,
  PRIMARY KEY (`batman_score_id`),
  KEY `fk_batman_score_player1_idx` (`player_id`),
  KEY `fk_batman_score_match_type1_idx` (`match_type_id`),
  CONSTRAINT `FK9ek0o0g1x8l4b67p77xnq3v4g` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `FKbr0drwdbcmlxvcwmp0ijviafj` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  CONSTRAINT `fk_batman_score_match_type1` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `fk_batman_score_player1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batman_score`
--

LOCK TABLES `batman_score` WRITE;
/*!40000 ALTER TABLE `batman_score` DISABLE KEYS */;
INSERT INTO `batman_score` VALUES (14,1,0,12,30,3,6,40,1,1.500,0,0,0,0,0,0,2.500),(15,1,0,30,40,3,1,19,1,2.000,0,0,0,0,0,0,1.333),(16,1,1,50,40,3,2,37,1,2.005,0,0,0,0,0,0,0.800),(17,1,0,3,1,0,0,3,1,0.050,0,0,0,0,0,0,0.333),(18,1,0,30,40,2,2,4,1,2.000,0,0,0,0,0,0,1.333),(19,1,0,0,0,0,0,31,1,0.000,0,0,0,0,0,0,0.000),(20,1,0,0,0,0,0,7,1,0.000,0,0,0,0,0,0,0.000),(21,1,0,55,0,3,3,38,1,0.000,0,0,0,0,0,0,0.000),(22,1,0,30,40,3,1,9,1,2.000,0,0,0,0,0,0,1.333),(23,1,1,60,60,5,1,8,1,3.005,0,0,0,0,0,0,1.000),(24,1,1,55,60,5,2,2,1,3.005,0,0,0,0,0,0,1.091),(25,1,0,32,30,2,0,1,1,1.500,0,0,0,0,0,0,0.938),(26,1,0,0,0,0,0,30,1,0.000,0,0,0,0,0,0,0.000),(27,1,1,30,40,4,0,26,1,2.005,0,0,0,0,0,0,1.333),(28,1,0,44,54,3,1,24,1,2.700,0,0,0,0,0,0,1.227),(29,1,0,50,80,5,2,27,1,4.000,0,0,0,0,0,0,1.600),(30,1,0,44,55,4,1,25,1,2.750,0,0,0,0,0,0,1.250),(31,2,0,15,50,4,2,14,1,2.500,0,0,0,0,0,0,1.667),(32,1,1,4,12,0,0,29,1,0.605,0,0,0,0,0,0,3.000),(33,1,0,1,4,0,0,18,1,0.200,0,0,0,0,0,0,4.000),(34,1,0,78,66,6,1,28,1,3.300,0,0,0,0,0,0,0.846),(35,1,0,55,76,2,2,30,1,3.800,0,0,0,0,0,0,1.382),(36,1,0,30,50,4,1,3,3,2.500,0,0,0,0,0,0,1.667),(37,1,0,20,40,2,1,15,3,2.000,0,0,0,0,0,0,2.000),(38,1,0,0,0,0,0,16,3,0.000,0,0,0,0,0,0,0.000),(39,1,0,30,40,2,2,40,2,2.000,0,0,0,0,0,0,1.333),(40,1,1,66,0,4,4,41,2,0.005,0,0,0,0,0,0,0.000),(41,1,0,0,0,0,0,27,2,0.000,0,0,0,0,0,0,0.000),(42,1,0,50,40,3,1,37,2,2.000,0,0,0,0,0,0,0.800),(43,1,0,0,0,0,0,37,3,0.000,0,0,0,0,0,0,0.000),(44,1,1,50,40,2,1,38,2,2.005,0,0,0,0,0,0,0.800),(45,1,0,110,80,6,2,9,2,4.000,0,0,0,0,0,0,0.727),(46,1,0,55,50,2,1,3,2,2.500,0,0,0,0,0,0,0.909),(47,1,0,100,785,3,0,8,2,39.250,0,0,0,0,0,0,7.850),(48,1,0,120,450,20,8,1,2,22.500,0,0,0,0,0,0,3.750),(49,1,0,50,230,10,8,2,2,11.500,0,0,0,0,0,0,4.600),(50,1,0,180,500,10,6,14,2,25.000,0,0,0,0,0,0,2.778),(51,1,0,6,20,3,0,24,2,1.000,0,0,0,0,0,0,3.333),(52,1,0,54,538,5,3,28,2,26.900,0,0,0,0,0,0,9.963),(53,1,0,38,45,2,0,30,2,2.250,0,0,0,0,0,0,1.184),(54,1,0,32,85,3,1,18,2,4.250,0,0,0,0,0,0,2.656),(55,1,0,25,105,5,2,25,2,5.250,0,0,0,0,0,0,4.200),(56,1,0,20,200,6,3,29,2,10.000,0,0,0,0,0,0,10.000),(57,1,0,20,56,4,2,7,2,2.800,0,0,0,0,0,0,2.800),(58,1,0,0,0,0,0,31,2,0.000,0,0,0,0,0,0,0.000),(59,1,0,48,69,3,1,19,2,3.450,0,0,0,0,0,0,1.438),(60,1,0,12,10,0,0,4,2,0.500,0,0,0,0,0,0,0.833),(61,1,0,10,25,2,1,40,3,1.250,0,0,0,0,0,0,2.500),(62,1,0,15,56,2,3,38,3,2.800,0,0,0,0,0,0,3.733),(63,1,0,18,35,3,2,10,3,1.750,0,0,0,0,0,0,1.944),(64,1,0,23,45,3,3,9,3,2.250,0,0,0,0,0,0,1.957),(65,1,0,20,18,0,0,20,3,0.900,0,0,0,0,0,0,0.900),(66,1,0,30,65,4,2,8,3,3.250,0,0,0,0,0,0,2.167),(67,1,0,15,18,0,0,22,3,0.900,0,0,0,0,0,0,1.200),(68,1,0,26,55,5,1,11,3,2.750,0,0,0,0,0,0,2.115),(69,1,0,45,63,5,2,39,3,3.150,0,0,0,0,0,0,1.400),(70,1,0,15,12,0,0,2,3,0.600,0,0,0,0,0,0,0.800),(71,1,0,30,53,4,0,21,3,2.650,0,0,0,0,0,0,1.767);
/*!40000 ALTER TABLE `batman_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batman_type`
--

DROP TABLE IF EXISTS `batman_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batman_type` (
  `batman_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`batman_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batman_type`
--

LOCK TABLES `batman_type` WRITE;
/*!40000 ALTER TABLE `batman_type` DISABLE KEYS */;
INSERT INTO `batman_type` VALUES (1,'Left Side'),(2,'Right Side'),(3,'Not Specify');
/*!40000 ALTER TABLE `batman_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `club` (
  `club_id` int(11) NOT NULL AUTO_INCREMENT,
  `club_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reg_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `club_logo` varchar(255) DEFAULT NULL,
  `manager_id` int(11) NOT NULL,
  `fail_match` int(11) DEFAULT NULL,
  `grow_match` int(11) DEFAULT NULL,
  `win_match` int(11) DEFAULT NULL,
  PRIMARY KEY (`club_id`),
  KEY `fk_club_manager1_idx` (`manager_id`),
  CONSTRAINT `FKqii10stvyxnrykvomtyxf7naj` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`),
  CONSTRAINT `fk_club_manager1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (2,'Lankan Cricket Club ','20/3 , Kota Road, Borella.','0779566854','lankancricketclub@gmail.com','2020-08-01',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',45,NULL,NULL,NULL),(3,'Colombo Cricket Club','12/2 , Highlevel Road, Colombo 3','0778956641','colmbocricketclub@gmail.com','2020-07-25',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',43,NULL,NULL,NULL),(5,'club2 ','club2@gmail.com','0112578963','club2@gmal.com','2020-06-22',0,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',3,NULL,NULL,NULL),(6,'S20 Club','N0 20,main road,Rathnapura','0778956645','s20@gmail.com','2020-07-04',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',22,NULL,NULL,NULL),(7,'Colts Cricket Club','No 12 , panadura.','0778956689','coltsclub@gmail.com','2020-07-05',0,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',32,NULL,NULL,NULL),(8,'Balangoda Club','test1clubAddress','0772536789','test1club@gmail.com','2020-07-05',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',33,NULL,NULL,NULL),(9,'Mozilo Club','No 12, Malabe.','0115614489','moziloclub@gmail.com','2020-07-05',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',34,NULL,NULL,NULL),(10,'Roz Club','No 20, Matara','0778945589','roz@gmail.com','2020-07-05',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',35,NULL,NULL,NULL),(11,'MoziXl Club','12,Homagama','0115689963','mozxi@gmail.com','2020-07-05',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',36,NULL,NULL,NULL),(12,'CC Club','No 12, Homagama.','0778569989','cc@gmail.com','2020-07-05',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',37,NULL,NULL,NULL),(13,'DoubleP','Balangoda','0452536789','doublep@gmail.com','2020-07-05',0,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',38,NULL,NULL,NULL),(14,'VinDoc','Homagama ,pitipana','0112536789','vindoc@gmail.com','2020-07-05',0,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',39,NULL,NULL,NULL),(15,'Nugegoda Cricket Club','No 12, Nugegoda.','0778563389','nugegoda@gmail.com','2020-07-06',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',42,NULL,NULL,NULL),(16,'DD Club','No 20, Homagama.','0778956696','dd@gmail.com','2020-07-29',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',47,NULL,NULL,NULL),(17,'Test Club','12/2 , Highlevel Road, Colombo 5','0778954712','test@gmail.com','2020-08-02',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',48,0,0,0),(19,'Atlas Club','No 43, Panadura.','0778945596','atlas@gmail.com','2020-10-07',1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/club%2Fflag-button-round-250.png?alt=media&token=d3e15c36-104a-44bb-ba84-fed70903fc5e',49,NULL,NULL,NULL);
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_payment`
--

DROP TABLE IF EXISTS `club_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `club_payment` (
  `club_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `date` varchar(45) NOT NULL,
  `payment_for_year` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  PRIMARY KEY (`club_payment_id`),
  KEY `fk_club_payment_club1_idx` (`club_id`),
  CONSTRAINT `FKqtwdi429u5snjqgvu7nivuscs` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  CONSTRAINT `fk_club_payment_club1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_payment`
--

LOCK TABLES `club_payment` WRITE;
/*!40000 ALTER TABLE `club_payment` DISABLE KEYS */;
INSERT INTO `club_payment` VALUES (2,1200,'2020-06-22',2020,3),(3,1200,'2020-07-05',2020,8),(4,1200,'2020-07-05',2020,9),(5,1200,'2020-07-05',2020,10),(6,1200,'2020-07-06',2020,6),(9,1200,'2020-07-06',2020,2),(10,1200,'2020-07-11',2020,11),(11,1200,'2020-07-11',2020,12),(12,1200,'2020-07-29',2020,16),(13,1200,'2020-08-01',2020,17),(14,2400,'2020-10-07',2021,12),(15,1200,'2020-10-07',2020,15),(16,1200,'2020-10-07',2020,19);
/*!40000 ALTER TABLE `club_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_ranking`
--

DROP TABLE IF EXISTS `club_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `club_ranking` (
  `club_ranking_id` int(11) NOT NULL AUTO_INCREMENT,
  `points` double NOT NULL,
  `rating` double NOT NULL,
  `num_match` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `match_type_id` int(11) NOT NULL,
  PRIMARY KEY (`club_ranking_id`),
  KEY `fk_club_ranking_club1_idx` (`club_id`),
  KEY `fk_club_ranking_match_type1_idx` (`match_type_id`),
  CONSTRAINT `FK20w4j1dtbnsokrlxn5nc6s6xw` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  CONSTRAINT `FKewv6q6ktn1rvq89l1bhmy3xdx` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `fk_club_ranking_club1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  CONSTRAINT `fk_club_ranking_match_type1` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_ranking`
--

LOCK TABLES `club_ranking` WRITE;
/*!40000 ALTER TABLE `club_ranking` DISABLE KEYS */;
INSERT INTO `club_ranking` VALUES (101,50,50,1,2,1),(102,0,0,4,2,2),(103,50,50,1,2,3),(104,-10,-5,2,3,1),(105,0,0,4,3,2),(106,0,0,0,3,3),(107,0,0,0,5,1),(108,0,0,0,5,2),(109,0,0,0,5,3),(110,0,0,0,6,1),(111,0,0,0,6,2),(112,0,0,0,6,3),(113,0,0,0,7,1),(114,0,0,0,7,2),(115,0,0,0,7,3),(116,-90,-90,1,8,1),(117,0,0,0,8,2),(118,-50,-50,1,8,3),(119,0,0,0,9,1),(120,0,0,0,9,2),(121,0,0,0,9,3),(122,0,0,0,10,1),(123,0,0,0,10,2),(124,0,0,0,10,3),(125,0,0,0,11,1),(126,0,0,0,11,2),(127,0,0,0,11,3),(128,0,0,0,12,1),(129,0,0,0,12,2),(130,0,0,0,12,3),(131,0,0,0,13,1),(132,0,0,0,13,2),(133,0,0,0,13,3),(134,0,0,0,14,1),(135,0,0,0,14,2),(136,0,0,0,14,3),(137,0,0,0,15,1),(138,0,0,0,15,2),(139,0,0,0,15,3),(140,0,0,0,16,1),(141,0,0,0,16,2),(142,0,0,0,16,3),(143,0,0,0,17,1),(144,0,0,0,17,2),(145,0,0,0,17,3),(147,0,0,0,19,1),(148,0,0,0,19,2),(149,0,0,0,19,3);
/*!40000 ALTER TABLE `club_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fielding_record`
--

DROP TABLE IF EXISTS `fielding_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fielding_record` (
  `fielding_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `catch` int(11) NOT NULL,
  `selected_player_id` int(11) NOT NULL,
  `fielding_points` decimal(5,2) NOT NULL,
  PRIMARY KEY (`fielding_record_id`),
  KEY `fk_fielding_record_selected_player1_idx` (`selected_player_id`),
  CONSTRAINT `FK4x9ubpl5ckeg2grw9du48r0rt` FOREIGN KEY (`selected_player_id`) REFERENCES `selected_player` (`selected_player_id`),
  CONSTRAINT `fk_fielding_record_selected_player1` FOREIGN KEY (`selected_player_id`) REFERENCES `selected_player` (`selected_player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fielding_record`
--

LOCK TABLES `fielding_record` WRITE;
/*!40000 ALTER TABLE `fielding_record` DISABLE KEYS */;
INSERT INTO `fielding_record` VALUES (10,0,115,1.17),(11,0,134,2.00),(12,0,116,1.34),(13,0,125,0.05),(14,0,124,1.67),(15,0,123,-0.25),(16,1,122,2.50),(17,0,117,-1.00),(18,0,118,1.72),(19,0,119,3.01),(20,0,121,3.01),(21,3,120,1.50),(22,0,136,2.00),(23,0,135,1.17),(24,2,127,2.70),(25,3,132,4.00),(26,1,131,3.75),(27,1,126,0.00),(28,0,133,1.36),(29,0,130,2.38),(30,1,128,2.47),(31,1,129,2.97),(32,1,147,2.11),(33,0,158,2.00),(34,1,153,0.50),(35,0,159,2.11),(36,1,180,0.54),(37,2,176,2.27),(38,1,160,1.87),(39,0,138,0.67),(40,1,161,2.01),(41,0,162,3.53),(42,0,169,2.50),(43,5,163,41.42),(44,8,164,26.23),(45,10,165,11.50),(46,10,170,24.78),(47,5,171,2.87),(48,2,172,31.46),(49,12,173,9.08),(50,2,174,4.25),(51,2,175,4.47),(52,3,177,8.08),(53,8,166,2.80),(54,4,167,2.33),(55,1,178,2.78),(56,2,168,0.50),(57,2,203,2.50),(58,2,137,0.58),(59,1,139,2.97),(60,2,148,1.75),(61,1,140,-0.42),(62,0,149,0.90),(63,0,141,2.42),(64,2,150,2.93),(65,3,151,2.75),(66,1,152,3.15),(67,3,143,3.35),(68,0,154,1.40);
/*!40000 ALTER TABLE `fielding_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fielding_score`
--

DROP TABLE IF EXISTS `fielding_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fielding_score` (
  `fielding_id` int(11) NOT NULL AUTO_INCREMENT,
  `num_catches` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `match_type_id` int(11) NOT NULL,
  `points` decimal(6,3) NOT NULL,
  PRIMARY KEY (`fielding_id`),
  KEY `fk_fielding_player1_idx` (`player_id`),
  KEY `fk_fielding_match_type1_idx` (`match_type_id`),
  CONSTRAINT `FK11v54l0uj66exgsys9hhojdvx` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `FKm5hll1tpfks05xdjvgetqr7df` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  CONSTRAINT `fk_fielding_match_type1` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `fk_fielding_player1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fielding_score`
--

LOCK TABLES `fielding_score` WRITE;
/*!40000 ALTER TABLE `fielding_score` DISABLE KEYS */;
INSERT INTO `fielding_score` VALUES (7,0,40,1,1.167),(8,0,19,1,2.000),(9,0,37,1,1.338),(10,0,3,1,0.050),(11,0,4,1,1.667),(12,0,31,1,-0.250),(13,1,7,1,2.500),(14,0,38,1,-1.000),(15,0,9,1,1.722),(16,0,8,1,3.005),(17,0,2,1,3.005),(18,3,1,1,1.500),(19,0,26,1,2.000),(20,0,26,1,1.172),(21,2,24,1,2.700),(22,3,27,1,4.000),(23,1,25,1,3.750),(24,3,14,1,2.500),(25,0,29,1,1.355),(26,0,18,1,2.383),(27,1,28,1,2.467),(28,1,30,1,2.967),(29,1,3,3,2.111),(30,0,15,3,2.000),(31,1,16,3,0.500),(32,0,40,2,2.111),(33,1,41,2,0.538),(34,2,27,2,2.267),(35,1,37,2,1.867),(36,0,37,3,0.667),(37,1,38,2,2.005),(38,0,9,2,3.533),(39,0,3,2,2.500),(40,5,8,2,41.417),(41,8,1,2,26.225),(42,10,2,2,11.500),(43,10,14,2,24.778),(44,5,24,2,2.867),(45,2,28,2,31.458),(46,12,30,2,9.083),(47,2,18,2,4.250),(48,2,25,2,4.472),(49,3,29,2,8.083),(50,8,7,2,2.800),(51,4,31,2,2.333),(52,1,19,2,2.783),(53,2,4,2,0.500),(54,2,40,3,0.583),(55,1,38,3,2.967),(56,2,10,3,1.750),(57,1,9,3,-0.417),(58,0,20,3,0.900),(59,0,8,3,2.417),(60,2,22,3,2.933),(61,3,11,3,2.750),(62,1,39,3,3.150),(63,3,2,3,3.350),(64,0,21,3,1.400);
/*!40000 ALTER TABLE `fielding_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`manager_id`),
  KEY `fk_manager_user_idx` (`user_id`),
  CONSTRAINT `FKlx8n4x9vqj3lqv8cj9ienwrv6` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_manager_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (3,6),(4,7),(5,8),(22,45),(32,55),(33,56),(34,72),(35,74),(36,75),(37,85),(38,87),(39,88),(40,89),(42,91),(43,92),(44,93),(45,94),(46,95),(47,96),(48,97),(49,108);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_record`
--

DROP TABLE IF EXISTS `match_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_record` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `club_one_id` int(11) NOT NULL,
  `club_two_id` int(11) NOT NULL,
  `captain_club_one` int(11) NOT NULL,
  `captain_club_two` int(11) NOT NULL,
  `club_one_mark` int(11) NOT NULL,
  `club_two_mark` int(11) NOT NULL,
  `club_one_wicket` int(11) NOT NULL,
  `club_two_wicket` int(11) NOT NULL,
  `tournement_round` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `start_time` varchar(10) NOT NULL,
  `win_team_id` int(11) NOT NULL,
  `sponsor` varchar(255) NOT NULL,
  `match_type_id` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `stadium_id` int(11) NOT NULL,
  `referee_id` int(11) NOT NULL,
  `umpire_one_id` int(11) NOT NULL,
  `umpire_two_id` int(11) NOT NULL,
  `umpire_three_id` int(11) NOT NULL,
  `toss_win_team` int(11) NOT NULL,
  `club_one_vice_captain` int(11) NOT NULL,
  `club_two_vice_captain` int(11) NOT NULL,
  `club_one_keper` int(11) NOT NULL,
  `club_two_keper` int(11) NOT NULL,
  `man_ofthe_match` int(11) NOT NULL,
  `club_one_overs` decimal(5,2) NOT NULL,
  `club_two_overs` decimal(5,2) NOT NULL,
  `state` int(4) DEFAULT NULL,
  `test_match_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`match_id`),
  KEY `fk_match_match_type1_idx` (`match_type_id`,`referee_id`,`tournament_id`,`stadium_id`),
  KEY `fk_match_2_idx` (`stadium_id`),
  KEY `fk_match_3_idx` (`tournament_id`),
  KEY `fk_match_4_idx` (`referee_id`),
  CONSTRAINT `FK32fehfwj1u2hehrek6pe3w7sy` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`),
  CONSTRAINT `FK6now8gl0sxyn8r2hdpsdn6ngm` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`stadium_id`),
  CONSTRAINT `FK8h2uovv1jq7xh8tmaagkwntio` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `FKrchd2ms8etomowsrg5x1i9a2` FOREIGN KEY (`referee_id`) REFERENCES `referee` (`referee_id`),
  CONSTRAINT `fk_match_1` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `fk_match_2` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`stadium_id`),
  CONSTRAINT `fk_match_3` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`),
  CONSTRAINT `fk_match_4` FOREIGN KEY (`referee_id`) REFERENCES `referee` (`referee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_record`
--

LOCK TABLES `match_record` WRITE;
/*!40000 ALTER TABLE `match_record` DISABLE KEYS */;
INSERT INTO `match_record` VALUES (63,2,3,37,14,250,200,5,10,1,'2020-08-01','2020-08-01','10:50',2,'Dialog',1,10,1,1,21,32,33,2,38,18,0,0,14,40.00,45.00,1,0),(64,2,8,37,10,180,150,9,10,1,'2020-08-21','2020-08-21','10:10',2,'Dialog',3,10,2,1,21,32,33,8,38,22,0,0,17,20.00,18.00,1,0),(65,2,3,37,14,136,41,5,6,1,'2020-08-24','2020-08-26','11:00',2,'Dialog',2,10,2,1,21,32,33,2,38,18,0,0,40,27.00,17.00,1,65),(76,2,3,37,14,0,0,0,0,2,'2020-10-06','2020-10-06','10:30',0,'Dialog',1,10,1,1,21,32,33,0,38,18,0,0,0,0.00,0.00,0,0),(77,3,8,14,10,250,200,10,9,2,'2020-08-02','2020-08-02','10:00',3,'Dialog',1,10,1,1,21,32,33,3,18,22,0,0,14,48.00,50.00,1,0),(78,2,3,40,14,0,0,0,0,1,'2020-10-07','2020-10-07','10:00',0,'Dialog',1,12,1,1,32,33,21,0,38,30,0,0,0,0.00,0.00,0,0),(79,2,3,40,14,0,0,0,0,1,'2020-10-03','2020-10-03','09:30',0,'Dialog',1,12,1,1,32,21,33,0,38,30,0,0,0,0.00,0.00,0,0);
/*!40000 ALTER TABLE `match_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_type`
--

DROP TABLE IF EXISTS `match_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_type` (
  `match_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_type` varchar(45) NOT NULL,
  PRIMARY KEY (`match_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_type`
--

LOCK TABLES `match_type` WRITE;
/*!40000 ALTER TABLE `match_type` DISABLE KEYS */;
INSERT INTO `match_type` VALUES (1,'One Day'),(2,'3 4 Days'),(3,'T-Twenty');
/*!40000 ALTER TABLE `match_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `special_type` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `baller_type_id` int(11) NOT NULL,
  `batman_type_id` int(11) NOT NULL,
  PRIMARY KEY (`player_id`),
  KEY `fk_player_user1_idx` (`user_id`),
  KEY `fk_player_club1_idx` (`club_id`),
  KEY `fk_player_baller_type1_idx` (`baller_type_id`),
  KEY `fk_player_batman_type1_idx` (`batman_type_id`),
  CONSTRAINT `FKgjxg5igs4a59ugf9qc1m2aux6` FOREIGN KEY (`batman_type_id`) REFERENCES `batman_type` (`batman_type_id`),
  CONSTRAINT `FKh60stqlv4r5dk5hp5gcwvo0n7` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  CONSTRAINT `FKj57d4kgk8qu7i73lu7xsbq8fb` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKr4nj9dmhkkbo2upsdv6f29cm1` FOREIGN KEY (`baller_type_id`) REFERENCES `baller_type` (`baller_type_id`),
  CONSTRAINT `fk_player_baller_type1` FOREIGN KEY (`baller_type_id`) REFERENCES `baller_type` (`baller_type_id`),
  CONSTRAINT `fk_player_batman_type1` FOREIGN KEY (`batman_type_id`) REFERENCES `batman_type` (`batman_type_id`),
  CONSTRAINT `fk_player_club1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  CONSTRAINT `fk_player_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,1,16,2,4,2),(2,2,17,2,1,1),(3,3,36,2,4,1),(4,2,37,2,1,1),(7,2,40,2,4,2),(8,1,57,2,1,1),(9,1,58,2,1,1),(10,1,59,8,2,1),(11,1,60,8,3,1),(12,2,61,8,3,1),(13,3,62,8,2,2),(14,1,63,3,1,1),(15,3,64,8,3,1),(16,2,65,8,3,1),(17,2,66,8,2,2),(18,2,67,3,2,1),(19,3,68,3,1,1),(20,1,69,8,3,2),(21,2,70,8,3,2),(22,1,71,8,2,2),(23,2,73,9,4,3),(24,1,76,3,3,2),(25,2,77,3,2,1),(26,3,78,3,2,2),(27,2,79,3,3,2),(28,1,80,3,4,2),(29,2,81,3,1,1),(30,1,82,3,2,2),(31,2,83,2,2,1),(32,1,84,9,3,2),(33,1,86,9,3,1),(34,1,98,17,1,2),(35,2,99,17,2,1),(36,1,100,17,4,2),(37,1,101,2,2,2),(38,1,102,2,4,1),(39,2,103,8,4,2),(40,1,104,2,2,1),(41,3,105,3,3,2);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referee`
--

DROP TABLE IF EXISTS `referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referee` (
  `referee_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`referee_id`),
  KEY `fk_referee_user1_idx` (`user_id`),
  CONSTRAINT `FKbqijrlb8li4o6yof6v6tmv0ju` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_referee_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referee`
--

LOCK TABLES `referee` WRITE;
/*!40000 ALTER TABLE `referee` DISABLE KEYS */;
INSERT INTO `referee` VALUES (1,26),(2,27),(3,34),(4,106),(5,107);
/*!40000 ALTER TABLE `referee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selected_player`
--

DROP TABLE IF EXISTS `selected_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selected_player` (
  `selected_player_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `state` int(4) DEFAULT NULL,
  PRIMARY KEY (`selected_player_id`),
  KEY `fk_selected_player_match1_idx` (`match_id`),
  KEY `fk_selected_player_player1_idx` (`player_id`),
  CONSTRAINT `FK20hgxlmgekaretm6eyj9h7o2p` FOREIGN KEY (`match_id`) REFERENCES `match_record` (`match_id`),
  CONSTRAINT `FKcpkrdo8cp6seekh08y0fl44iq` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  CONSTRAINT `fk_selected_player_match1` FOREIGN KEY (`match_id`) REFERENCES `match_record` (`match_id`),
  CONSTRAINT `fk_selected_player_player1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selected_player`
--

LOCK TABLES `selected_player` WRITE;
/*!40000 ALTER TABLE `selected_player` DISABLE KEYS */;
INSERT INTO `selected_player` VALUES (115,63,40,1),(116,63,37,1),(117,63,38,1),(118,63,9,1),(119,63,8,1),(120,63,1,1),(121,63,2,1),(122,63,7,1),(123,63,31,1),(124,63,4,1),(125,63,3,1),(126,63,14,1),(127,63,24,1),(128,63,28,1),(129,63,30,1),(130,63,18,1),(131,63,25,1),(132,63,27,1),(133,63,29,1),(134,63,19,1),(135,63,26,1),(136,63,41,1),(137,64,40,1),(138,64,37,1),(139,64,38,1),(140,64,9,1),(141,64,8,1),(142,64,1,0),(143,64,2,1),(144,64,7,0),(145,64,31,0),(146,64,4,0),(147,64,3,1),(148,64,10,1),(149,64,20,1),(150,64,22,1),(151,64,11,1),(152,64,39,1),(153,64,16,1),(154,64,21,1),(155,64,12,0),(156,64,17,0),(157,64,13,0),(158,64,15,1),(159,65,40,1),(160,65,37,1),(161,65,38,1),(162,65,9,1),(163,65,8,1),(164,65,1,1),(165,65,2,1),(166,65,7,1),(167,65,31,1),(168,65,4,1),(169,65,3,1),(170,65,14,1),(171,65,24,1),(172,65,28,1),(173,65,30,1),(174,65,18,1),(175,65,25,1),(176,65,27,1),(177,65,29,1),(178,65,19,1),(179,65,26,0),(180,65,41,1),(181,76,40,0),(182,76,37,0),(183,76,38,0),(184,76,9,0),(185,76,8,0),(186,76,1,0),(187,76,2,0),(188,76,7,0),(189,76,31,0),(190,76,4,0),(191,76,3,0),(192,76,14,0),(193,76,24,0),(194,76,28,0),(195,76,30,0),(196,76,18,0),(197,76,25,0),(198,76,27,0),(199,76,29,0),(200,76,19,0),(201,76,26,0),(202,76,41,0),(203,77,14,1),(204,77,24,0),(205,77,28,0),(206,77,30,0),(207,77,18,0),(208,77,25,0),(209,77,27,0),(210,77,29,0),(211,77,19,0),(212,77,26,0),(213,77,41,0),(214,77,10,0),(215,77,20,0),(216,77,22,0),(217,77,11,0),(218,77,39,0),(219,77,16,0),(220,77,21,0),(221,77,12,0),(222,77,17,0),(223,77,13,0),(224,77,15,0),(225,78,40,0),(226,78,37,0),(227,78,38,0),(228,78,9,0),(229,78,8,0),(230,78,1,0),(231,78,2,0),(232,78,7,0),(233,78,31,0),(234,78,4,0),(235,78,3,0),(236,78,14,0),(237,78,24,0),(238,78,28,0),(239,78,30,0),(240,78,18,0),(241,78,25,0),(242,78,27,0),(243,78,29,0),(244,78,19,0),(245,78,26,0),(246,78,41,0),(247,79,40,0),(248,79,37,0),(249,79,38,0),(250,79,9,0),(251,79,8,0),(252,79,1,0),(253,79,2,0),(254,79,7,0),(255,79,31,0),(256,79,4,0),(257,79,3,0),(258,79,14,0),(259,79,24,0),(260,79,28,0),(261,79,30,0),(262,79,18,0),(263,79,25,0),(264,79,27,0),(265,79,29,0),(266,79,19,0),(267,79,26,0),(268,79,41,0);
/*!40000 ALTER TABLE `selected_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor` (
  `sponsor_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `responsible_person` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`sponsor_id`),
  KEY `fk_sponsor_user1_idx` (`user_id`),
  CONSTRAINT `FKeg1yb720xhf5qpue267823fvr` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_sponsor_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (1,'cascas','asdasdasd',37),(2,'Spike','Mr.Wimukthi',106),(3,'Coca cola','Mr Ajantha',107),(4,'Lala','Mr. Anurada',69);
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor_club`
--

DROP TABLE IF EXISTS `sponsor_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor_club` (
  `sponsor_club_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `sponsor_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  PRIMARY KEY (`sponsor_club_id`),
  KEY `fk_sponsor_club_sponsor1_idx` (`sponsor_id`),
  KEY `fk_sponsor_club_club1_idx` (`club_id`),
  CONSTRAINT `fk_sponsor_club_club1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  CONSTRAINT `fk_sponsor_club_sponsor1` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`sponsor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor_club`
--

LOCK TABLES `sponsor_club` WRITE;
/*!40000 ALTER TABLE `sponsor_club` DISABLE KEYS */;
INSERT INTO `sponsor_club` VALUES (1,0,4,8);
/*!40000 ALTER TABLE `sponsor_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor_player_club`
--

DROP TABLE IF EXISTS `sponsor_player_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sponsor_player_club` (
  `sponsor_player_club` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `details` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sponsor_club_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  PRIMARY KEY (`sponsor_player_club`),
  KEY `fk_sponsor_player_club_sponsor_club1_idx` (`sponsor_club_id`),
  KEY `fk_sponsor_player_club_player1_idx` (`player_id`),
  CONSTRAINT `fk_sponsor_player_club_player1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  CONSTRAINT `fk_sponsor_player_club_sponsor_club1` FOREIGN KEY (`sponsor_club_id`) REFERENCES `sponsor_club` (`sponsor_club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor_player_club`
--

LOCK TABLES `sponsor_player_club` WRITE;
/*!40000 ALTER TABLE `sponsor_player_club` DISABLE KEYS */;
/*!40000 ALTER TABLE `sponsor_player_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stadium` (
  `stadium_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) NOT NULL,
  `num_people` int(11) NOT NULL,
  `contact_num` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`stadium_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES (1,'Keththarama',4000,'0112536789','Colombo'),(2,'Suriyawewa',5000,'0472536789','Hambanthota');
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament`
--

DROP TABLE IF EXISTS `tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament` (
  `tournament_id` int(11) NOT NULL AUTO_INCREMENT,
  `tournament_name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `registration_closing_date` date DEFAULT NULL,
  PRIMARY KEY (`tournament_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (10,'August Summer','2020-07-31','2020-08-29','2020-07-20'),(11,'July Summer','2020-06-30','2020-07-28','2020-06-24'),(12,'October Summer','2020-10-01','2020-10-20','2020-09-27'),(13,'November Summer','2020-11-07','2020-11-25','2020-10-30');
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament_club`
--

DROP TABLE IF EXISTS `tournament_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament_club` (
  `tournament_club_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  PRIMARY KEY (`tournament_club_id`),
  KEY `fk_tournement_club_tournement1_idx` (`tournament_id`),
  KEY `fk_tournement_club_club1_idx` (`club_id`),
  CONSTRAINT `FK5m7jcx4whyoirgtcboiyltpcs` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`),
  CONSTRAINT `FK6049qtakmf3mif7nr3tyxgiit` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  CONSTRAINT `fk_tournament_club_club1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament_club`
--

LOCK TABLES `tournament_club` WRITE;
/*!40000 ALTER TABLE `tournament_club` DISABLE KEYS */;
INSERT INTO `tournament_club` VALUES (25,1,10,2),(26,1,10,3),(27,1,10,8),(28,1,12,2),(29,1,12,3);
/*!40000 ALTER TABLE `tournament_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament_club_captain`
--

DROP TABLE IF EXISTS `tournament_club_captain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament_club_captain` (
  `tournament_club_captain_id` int(11) NOT NULL AUTO_INCREMENT,
  `captain_id` int(11) NOT NULL,
  `vice_captain_id` int(11) NOT NULL,
  `tournament_club_id` int(11) NOT NULL,
  PRIMARY KEY (`tournament_club_captain_id`),
  KEY `fk_tournament_club_captain_tournament_club1_idx` (`tournament_club_id`),
  CONSTRAINT `FKol9xxdpwiioj33dlqn9jwh769` FOREIGN KEY (`tournament_club_id`) REFERENCES `tournament_club` (`tournament_club_id`),
  CONSTRAINT `fk_tournament_club_captain_tournament_club1` FOREIGN KEY (`tournament_club_id`) REFERENCES `tournament_club` (`tournament_club_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament_club_captain`
--

LOCK TABLES `tournament_club_captain` WRITE;
/*!40000 ALTER TABLE `tournament_club_captain` DISABLE KEYS */;
INSERT INTO `tournament_club_captain` VALUES (4,37,38,25),(5,14,18,26),(6,10,22,27),(7,40,38,28),(8,14,30,29);
/*!40000 ALTER TABLE `tournament_club_captain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament_club_player`
--

DROP TABLE IF EXISTS `tournament_club_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament_club_player` (
  `tournament_club_player_id` int(11) NOT NULL AUTO_INCREMENT,
  `tournament_club_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  PRIMARY KEY (`tournament_club_player_id`),
  KEY `fk_tournement_club_player_tournement_club1_idx` (`tournament_club_id`),
  KEY `fk_tournement_club_player_player1_idx` (`player_id`),
  CONSTRAINT `FK873ekl1p487e2esr3h0squovn` FOREIGN KEY (`tournament_club_id`) REFERENCES `tournament_club` (`tournament_club_id`),
  CONSTRAINT `FKext9ji8spa6wqnd7mmrl21xan` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`),
  CONSTRAINT `fk_tournament_club_player_player1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament_club_player`
--

LOCK TABLES `tournament_club_player` WRITE;
/*!40000 ALTER TABLE `tournament_club_player` DISABLE KEYS */;
INSERT INTO `tournament_club_player` VALUES (242,27,10),(243,27,20),(244,27,22),(245,27,11),(246,27,39),(247,27,16),(248,27,21),(249,27,12),(250,27,17),(251,27,13),(252,27,15),(253,25,40),(254,25,37),(255,25,38),(256,25,9),(257,25,8),(258,25,1),(259,25,2),(260,25,7),(261,25,31),(262,25,4),(263,25,3),(264,26,14),(265,26,24),(266,26,28),(267,26,30),(268,26,18),(269,26,25),(270,26,27),(271,26,29),(272,26,19),(273,26,26),(274,26,41),(275,28,40),(276,28,37),(277,28,38),(278,28,9),(279,28,8),(280,28,1),(281,28,2),(282,28,7),(283,28,31),(284,28,4),(285,28,3),(286,29,14),(287,29,24),(288,29,28),(289,29,30),(290,29,18),(291,29,25),(292,29,27),(293,29,29),(294,29,19),(295,29,26),(296,29,41);
/*!40000 ALTER TABLE `tournament_club_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournement`
--

DROP TABLE IF EXISTS `tournement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournement` (
  `tournement_id` int(11) NOT NULL AUTO_INCREMENT,
  `end_date` datetime(6) DEFAULT NULL,
  `registration_closing_date` datetime(6) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `tournement_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tournement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournement`
--

LOCK TABLES `tournement` WRITE;
/*!40000 ALTER TABLE `tournement` DISABLE KEYS */;
/*!40000 ALTER TABLE `tournement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umpire`
--

DROP TABLE IF EXISTS `umpire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umpire` (
  `umpire_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_match` int(11) NOT NULL,
  `correct_decision` int(11) NOT NULL,
  `wrong_decision` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`umpire_id`),
  KEY `fk_umpire_user1_idx` (`user_id`),
  CONSTRAINT `FK8osypyfp1ewwr7ft5rjh4gq8t` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `fk_umpire_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umpire`
--

LOCK TABLES `umpire` WRITE;
/*!40000 ALTER TABLE `umpire` DISABLE KEYS */;
INSERT INTO `umpire` VALUES (1,0,0,0,21),(2,0,0,0,32),(3,0,0,0,33);
/*!40000 ALTER TABLE `umpire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umpire_has_match`
--

DROP TABLE IF EXISTS `umpire_has_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `umpire_has_match` (
  `umpire_id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  PRIMARY KEY (`umpire_id`,`match_id`),
  KEY `fk_umpire_has_match_match1_idx` (`match_id`),
  KEY `fk_umpire_has_match_umpire1_idx` (`umpire_id`),
  CONSTRAINT `fk_umpire_has_match_match1` FOREIGN KEY (`match_id`) REFERENCES `match_record` (`match_id`),
  CONSTRAINT `fk_umpire_has_match_umpire1` FOREIGN KEY (`umpire_id`) REFERENCES `umpire` (`umpire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umpire_has_match`
--

LOCK TABLES `umpire_has_match` WRITE;
/*!40000 ALTER TABLE `umpire_has_match` DISABLE KEYS */;
/*!40000 ALTER TABLE `umpire_has_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `name_with_initial` varchar(255) NOT NULL,
  `nic` varchar(10) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `reg_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `role` tinyint(4) NOT NULL,
  `profile_image` longtext,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Amal','Don Amal Perera','D.A Perea','972345432V','0774523345','admin@gmail.com','$2a$10$.r818361tfZWasQWu.shpu8thdraosJosTwPAanKnHsSMmw5.saJG','No 20, Kottawa.','2020-05-18',1,1,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/user%2F1?alt=media&token=48be77f3-4d73-47bd-8af4-c940f956706f'),(6,'PPathirana01','Phanwatte Pathirana Wikaramasinhe','P. Pathirana Wikramasinhe','123456789v','0772536789','manager1@gmail.com','$2a$10$BD3QzcGDUwBCqz5i5YaPGuLhHcyQehZE6stPf.UhapuSQmn4EJj7.','No 39, Denagama,Bandarawela','2020-05-27',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(7,'Rana','Don Ranatunge','D. Ranatunga','985698542V','0773015569','ranathunga@gmail.com','$2a$10$Z7zzeCCQbgVTIPaSJ2/3HOxhLifmIlhbNsafcPaNaBk2Ev1f6ZtgO','rana@gmail.com','2020-05-30',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(8,'Dayapala','Don Dayapala','D Dasun','956958742V','0775698856','dasun@gmail.com','$2a$10$4kPoYUd7jp9uL00t70GP5e1fywzHvaw2D4SNlRGQanXRMrGCR18wu','No 20 Homagama','2020-05-30',1,2,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/user%2F8?alt=media&token=03f1ab36-90c3-45b3-a154-1f1329285bf6'),(12,'Yohan','Yhawattage Yohan wikramathilake','Y.Y.Wikramathilake','123258789v','0775869789','umpire1@gmail.com','$2a$10$Y/QzYQJRjotGhk7ml4NWz.vLKngo6SDdDH1Pzq6..sOrLh0vG7rca','Pallebedda,Pabahinna','2020-06-16',1,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(16,'Kumara','Kumara Sangakkara','S.M Kumara','956965842V','0775635569','kumara@gmail.com','$2a$10$u2KIsWFXPrfU8IwzdG4omOUYtyujPNa7/wfZQYQQbhRj2qhswhyN6','No 5/22, Temple road, Katugasthota','2020-07-03',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(17,'Mahela','Mahela Jayawardana','J Mahela','655965842V','0775685532','mahela@gmail.com','$2a$10$CB91lwIICdz7Jgcy1fti0.yvbi/loCsWqj6PWG2nfypRlk9c6OEXO','No 7, Samagi mawatha , Ytiyana','2020-06-25',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(21,'Mdhushan','Tharidu Madushan','Tharidu Madushan','121212142v','0772525870','adasdb@dasdasd.com','$2a$10$XQ.WveqbfxS7ubENZSJ8Gumm4fVAnk23/zxnQZ0.bGQfWAYA9qCIu','Welimaluwa ,Lellopitiya','2020-06-17',1,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(23,'Ajantha','Jayarathnalage Ajantha kularathne','J Ajantha Kularathne','2536789v','0772536789','refree1@gmail.com','$2a$10$sEbWEZFTEU7IzMGvf3MWp.hSM1Fm.LdsNc4eEhGuiSGt0W24XO45.','No 22, Rathmalawinne, Pambahinna','2020-06-18',1,5,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(24,'IsharaJ','Bowatte Ishara Sampath','B.I.Sampath','1253698v','0772536789','asdasdas@asadsasd.acas','$2a$10$3mdXyTuRIpltXac66DFrRO5gtdnkJ7yBOeWpwjee9EAdcCiIHIyqK','No 1/22 Ellepola , Yatiunthota','2020-06-18',1,5,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(26,'VimJaya','Welange Vimukthi Jayasanke','W Vimukthi Jayasanke','1245789v','0778596789','vimukthijayasanke@gmail.com','$2a$10$.r818361tfZWasQWu.shpu8thdraosJosTwPAanKnHsSMmw5.saJG','No 23, Temple roade , Katuwatta','2020-06-18',1,5,'https://firebasestorage.googleapis.com/v0/b/crickdom-3accd.appspot.com/o/user%2F26?alt=media&token=4b528fee-d37e-4dc1-bc29-d985a83ed4ab'),(27,'SunilP','Yahalawela Sunil Perera','Y.Sunil Perera','78693696v','0778956963','sunilPerera@gmail.com','$2a$10$z4Z/cmEzS6Y3olSEX.yJQu7QhnCrDq/iiz5aYbLzdGjq1npEJPQx2','No 9, Malwatta para , Kohuwala','2020-06-18',1,5,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(32,'Kasun5','Kasun Chandrathilaka','K. Chandrathilaka','845825421V','0775248521','kasunch@gmail.com','$2a$10$s7f8NB6yppNtaY0i7UTfOeKvWxEP50WHO/Ng31aVsMgRHqXSGLp9O','No 44, Jayarathne mawatha, Balangoda','2020-06-19',1,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(33,'Virajsd','Viraj Samarasinghe','V. Samarasinghe','804785214V','0756325874','virajs@gmail.com','$2a$10$DMcUQyF97X70dIROG0vcCOqyLm7eceG2b7cPWsbPaOCAjIzNInqKq','No: 6, temple road, Maligawaththa.','2020-06-19',1,3,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(34,'ThushanLiyanage','Karunarathnage Thushan Liyanage','K Thushan Liyanage','1122334444','0772536789','thushanliyanage@gmail.com','$2a$10$gvWxMJMCjEcSBQEOPMjy5ehsjjIkgWSuBNeD2ACU.7euUXPbix5D2','No 4, Kahawatta main streat , Kahawatte','2020-06-19',1,5,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(35,'Guest','Guest User','Guest','000000000V','0000000000','guest@gmail.com','$2a$10$KUY5FZfoUuaOzFKbXZ6gyOk.3ErD4GKdqSuDesQyugMbfHfuZ7i6O','No 3, Malwaththa para, Kohuwala','2020-01-02',1,7,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(36,'Nimal','Nimal Abe','A.S Nimal','985658452v','0778956645','nimal@gmail.com','$2a$10$iZ8OxBRxRhOxF.nuDBjZ9ObQ6Ycpv95bGI9QYcf0yQgeSjkLnOhD6','No 3, Dutugemunu mawatha,Kdana','2020-06-25',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(37,'Kaluwitharana','Ramesh Kaluwitharana','R Kaluwitharana','895685974V','0778956634','ramesh@gmail.com','$2a$10$a942MY8eoPfuSsIswOXr4eMHQAKhSZmNut7aDCs4LqUIB2/SKdQ5m','No 7/11 Priyantha willa, Kirimetithenna','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(40,'Malinga','Lasith Malinga','L Malinga','845815621V','0778956645','malinga@gmail.com','$2a$10$HBnNUFcqnjEVV62N9Q0DwO7bsbi.6VZiHbHVovzSrrAQiXMotnzJi','No 3, Dewala para, Aluthnuwara','2020-06-25',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(45,'Supun','S Supun Chandimal','S Supun Chandimal','969589852V','0778956689','manager6@gmail.com','$2a$10$PINRdQgNj/rNrQedGu8rQ.yqyTOgflquvu9u0LKhKq6XDJ7eDhyc6','No 20, Main Streen,Rathnapura','2020-07-04',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(55,'Athukorala','Namal Athukorala','N. Athukorala','950650485V','0778945589','athukorala@gmail.com','$2a$10$Tei2Kk6PHZFNNdOZs1svne.qgDREiw7aQPiK9X4WFTtilxQALp2K6','No 20, Homagama.','2020-07-05',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(56,'managertest','Dasun Gayan','D Gayan','000121245V','0772536789','test1@gmail.com','$2a$10$yfkwSm3tgiMhG.FQ2pO5Z.gFOLkgzXMC8qGs9IUQ9ErAwNtinrowa','No 5/11,main street , Balangoda','2020-07-05',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(57,'Kaman','Saman Kamal','S.A Kamlan','956568421V','0778956689','kaman@gmail.com','$2a$10$cz30nptim6nwDabUD.FLWe6Jk4vgEBKde2i.yN3vxUmQlLsQOYrh2','0778956689','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(58,'player1test','player1test','player1test','001245987V','0775869789','player1test@gmail.com','$2a$10$.CRw7XMPW8JaCMzPihNwE.ElVP8Ru6jARGN9UnbBkdY9RZuLH7eiC','0775869789','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(59,'player01','player01','player01','001212122V','0775869789','player01@gmail.com','$2a$10$oAQ83Ik13RW3d1PW0L3WzeY8xd2AoqdU4qzUjJw.iPqMRGKJU.yLa','0775869789','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(60,'player02','player02','player2','000121245V','0774859678','player02@gmail.com','$2a$10$QYC.sGiSm8idBMGzt9xSk.s7VCaBgreB.XHKyCPmvCCLTaDmMw4my','0774859678','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(61,'player3','player3','player3','001425781v','0772536950','player03@gmail.com','$2a$10$see1ZgvCljqSSaUkyKnUj.EeTKijm2qPCE/vyPmBeZFWwaOao/DS6','077253695','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(62,'player4','player4','player4','001254785V','0775869785','player04@gmail.com','$2a$10$X2zri4Q6Ejd6GOin8EI6Le4aJlWMg7/mRx5Yku7vmlqFXZHfRvfk6','0775869785','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(63,'Lanka ','Akna Anil','A.D Akan','956895842V','0778956645','akna@gmail.com','$2a$10$4rLAsUbZ69i1UDvi2BmMn.JSBlNQ4iPrKaVNWSUgXBUdbqmeoJAb2','0778956645','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(64,'player4','player4','player4','001232564V','0775869789','player05@gmail.com','$2a$10$R4Z9f.xMGQjnd7MLE1NoYeRCREyflm1Fz7L2Sy0BdFoEMFdWqVP5i','0775869789','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(65,'palyer6','palyer6','palyer6','002121452V','0775367890','player06@gmail.com','$2a$10$9yTX0rU2nV1IrFYjmADlzOLfKBwxT3d.2qLhofWO4zRY7gz8qYNLC','077536789','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(66,'player7','player7','player7','112255452V','0774758698','player07@gmail.com','$2a$10$I9hKa5oKITiBtWCjxrKYzuS10XH6ketNSycLwBfc9/6DEReB.7Txy','0774758698','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(67,'Adil','Nkskajsjak','Nawan','965458952V','0778945532','adil@gmail.com','$2a$10$WRvLO4JUH9jtzMkO2S4zB.MXpPVF5pEZFAbqHsKszy3/bBp.Bxyhy','0778945532','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(68,'Kashan','Kashan Kamal','Kamal','954856213V','0778952236','kashan@gmail.com','$2a$10$JyKdZcPorAjm8RQdekKRXOH.y3UQUDZTdo8JKtJn8AFSwXlbtKIsm','0778952236','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(69,'player08','player08','player08','001122554V','0774858698','sponsor@gmail.com','$2a$10$.r818361tfZWasQWu.shpu8thdraosJosTwPAanKnHsSMmw5.saJG','0774858698','2020-07-05',1,7,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(70,'player09','player09','player09','000144121V','0775869789','player09@gmail.com','$2a$10$D7d28f0yalOADPrEZVev2OpK1O/tiSE8Dp/JscQPPgXlvIK3oK3Gq','0775869789','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(71,'player10','player10','player10','112233452V','0772536789','player10@gmail.com','$2a$10$7DzsJP3hjcJnFOBxcZsIqORs5ct1zqIBJOeDqwcXFR8MgPRNWG99u','0772536789','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(72,'Asanka ','Asanka sujeewa Nayanajeeth','D.M.A.S Nayanajeeths','920158967V','011561442','asanka@gmail.com','$2a$10$K290V/.l1UxZ/Pz8zkpGCeFIcDN3qmH35ooS9dy5fQs9/hLeBbTwK','No 20 , Colombo.','2020-07-05',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(73,'Nuwan','Nuwan Madhusanka','D.M.N Madhusanka','956965846V','0778965523','nuwan3@gmail.com','$2a$10$uBQpOGkqmTElxdVIs/w9Z.E8dMNOq//rnC9cqgg.9Ue3vxC8vBL/2','0778965523','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(74,'Lal Madhusanka','Lal Madhusanka','L.Madhusanka','985632154V','0778956696','lal@gmail.com','$2a$10$WPyPLlLgAfDjVysutK5Tp.q2iU6N/ClwjISQGNkizUUx76PYYgZnG','No 20 Maharagama','2020-07-05',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(75,'Nuwan Madhua','NUwan Madhusanka','D.M.N Madhusanka','980150455V','0778945596','nuwan4@gmail.com','$2a$10$r/rFZS1Rp.yw8L4irgoyy.bbCYD.uBXjwXqAjARq5gItFcXHfspa6','No 12, Homagama.','2020-07-05',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(76,'player100','player100','player100','123499999v','0772536927','player100@gmail.com','$2a$10$DI8PK34XxyPdrbSqXxBlp..PYL0OmzWdG6nOfQc6lO2TkWHUBgZLa','0772536927','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(77,'player101','player101','player101','123123123V','0772536995','player101@gmail.com','$2a$10$wVCZc9m.yelzWSmatCpYcutXorUxJLM11nmYq8VVPgH3SJndPCeY.','0772536995','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(78,'player102','player102','player102','123321123V','0775869789','player102@gmail.com','$2a$10$N/6Ch2i3YR5b.JXFjQwXWOapYCig05GpDWyAJgjdDY8zKAn1vT0oK','0775869789','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(79,'player103','player103','player103','011011011v','0112536789','player103@gmail.com','$2a$10$qtKTI5oWD5lFnpFxEloOeO2Y8KbWJw.Xt1a7kVImRS3XswgzRU.cS','0112536789','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(80,'player104','player104','player104','100100100v','0775869789','player104@gmail.com','$2a$10$lpl1CK.jV0TYrn4yc33ENOmWW8BUJ7OOR7zLXzfSPUZirU.CPy2gC','0775869789','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(81,'player105','player105','player105','100210022V','0778989693','player105@gmail.com','$2a$10$6.dtNBt288OKf5NWSun6Iu8ceKDvtAnKRhQ8tl9POBIdvtL8Wh2dS','0778989693','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(82,'player106','player106','player106','411411411v','0775869789','player106@gmail.com','$2a$10$FVVSBKsD872NaqOkscEnTOb6o8tkj1e0Gghv46l/Ml4xz73g4Y90e','0775869789','2020-07-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(83,'Ishara','Ishara Umayanga','M.G Ishara','956365874V','0778965596','ishara@gmail.com','$2a$10$BDYU374Zy.RJ2AuGwbC5YeBGrrAX85EKaHHOjp0PA/jkT881c5Lwe','0778965596','2020-07-06',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(84,'player200','player200','player200','212121212v','0772536950','player200@gmail.com','$2a$10$MxJ5KR1NxW7fbu9CHbmOeuMN0tSdZthClzOXKDyfenlQhoLP9ZkFK','0772536950','2020-07-05',0,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(85,'Randika','Randika Indumal','R. Indumal','985695214V','0778945589','nuwanrulz1998@gmail.com','$2a$10$CRcpXNOpWR2Zs8ju2iD/7uQTtfAr/34w4p8Ym3y5MW9B5kfOtBi0C','No 20, Kottawa.','2020-07-05',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(86,'player201','player201','player201','975869789v','0778596789','player201@gmail.com','$2a$10$DlhELiRqE233XCw9ty0uA./ARC46UrqrNiEpy0lQi/2lCK.qo//zW','0778596789','2020-07-05',0,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(87,'indunil','udula inndunil','U Indunil','972372560v','0767359286','2017cs162@stu.ucsc.cmb.ac.lk','$2a$10$j0JeQv2fa9bL21RXBId5vuusue1Vrld5AeLfZxe4DOG8wufJG6eRe','Balangoda','2020-07-05',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(88,'jayanathSen','jayanath senanayake','J senanayake','912536969v','0712536789','drivolearners@gmail.com','$2a$10$Mf6JJKO7npCeZng27Fps1e0YKNqHzB3wdPYvVFUezbe07iN96V82m','Maharagama','2020-07-05',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(89,'Lakmal ','Lakmal Perera','L. Perera','985696521V','0778945596','lakmal@gmail.com','$2a$10$YaiX5F3SDWwrkfvi7BjCSupUNQDjpJJzow7kSiLZokdZzgfjTq5Da','No 20, Homagama.','2020-07-06',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(91,'Rathnayaka','Ramesh Rathnayaka','R.Rathnayaka','950150485V','0778956696','rathnayaka@gmail.com','$2a$10$v7ZqQQ.4vifL5/f9raSrEehcWqUzyQLcY8T006L6cycZKaWiBlaX.','No 20, Homagama','2020-07-06',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(92,'Ruwan','Ruwan Gunawardana','R. Ruwan','921234389V','5414646941','ruwan@gmail.com','$2a$10$.r818361tfZWasQWu.shpu8thdraosJosTwPAanKnHsSMmw5.saJG','asdfdfdfdd','2020-07-14',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(93,'Chamara','Chamara Perera','C Perera','936787657V','9595848514','chamara@gmail.com','$2a$10$2sVEAK/5lYvO0VgCKFIfjuK3NanzKBa2MhDhGM2qXwQN0XsMIRpEK','sdfdfdffd','2020-07-14',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(94,'Alwis','Alwis Perera','A Perera','945676878V','0715241785','rucha@gmail.com','$2a$10$KUY5FZfoUuaOzFKbXZ6gyOk.3ErD4GKdqSuDesQyugMbfHfuZ7i6O','Galagedara,Piliyandala','2020-07-14',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(95,'Sampath','Jayahinghe','S. Jayasinghe','000000004V','0775241236','sampath@gmail.com','$2a$10$c2yljpGtyd74FKbAvDeamufRbMdD.Do8siylU5sXcDAH2Z1BvYGTS','Kahawatta, Rathnapura','2020-07-22',0,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(96,'Nuwkska','jkskaskasakska','D.M.S Jasakl','987897657V','0778945563','manuka@gmail.com','$2a$10$mIGLHY4nzaYwZdxCVnUEu.t9ol/aX3MaXk.o4t6mmUQJhB6uWJdEm','No 10, Homagama.','2020-07-29',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(97,'kasun','Nimal Silva','S Nimal ','962545623V','0715246985','kasuns@gmail.com','$2a$10$Zd13hZ4AKbV0st17ni62k.h6aHn43m9WrwO/n6N1Km5wKFPE0cIAe','Kahathuduwa, Balangoda','2020-08-01',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(98,'Kasun','Rathnayake','K. Rathnayake','961852417V','0779652412','kasunr@gmail.com','$2a$10$C1gecTEF4H9iOYImOULc5O00T7Hciqk7BR6u4RAEF2990FkcwYARa','0779652412','2020-08-02',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(99,'Nimal ','Kumara','N. Kumara','961852415V','0778541236','nimalk@gmail.com','$2a$10$PaukEzXx.iuKwD8cvCFRY.1x/u/ozOAQntKnSBWDjLhWAspAj0ru2','0778541236','2020-08-02',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(100,'Namal','Silva','N. Silva','961852418V','0778541234','namals@gmail.com','$2a$10$AzlX.XKx.PqrfZDyhUUt9OOWcXM7TfbWNkUcs/z0vGg1Kq.lJxzFu','0778541234','2020-08-02',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(101,'Nimal','Jayanath Nimal','J Nimal','236985369v','0772536789','jayanathNimal@gmail.com','$2a$10$a0owqH/5HiTMI7dHaFTrx.RqqBQFKKQFIKp2zQsWYzIYoGi9Puwwq','0772536789','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(102,'Aravinda','Lal Aravinda','L. Aravinda','458956984V','0778956685','aravinda@gmail.com','$2a$10$l6xU9.M4jdQtYD4Tyz2J7OUHuUWNIIFFI2NRgq4JAcWSXzw0hbNL.','0778956685','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(103,'KasunW','Kasun Wikramathilake','K.Wikramathilake','972389256v','0778958369','kasunK@gmail.com','$2a$10$dzbOYSubA.q0BOOzZs.x2uvJbPjDNuzju0AWLWdeIGjYgid.lmCom','0778958369','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(104,'Asithija','Aruna sithija','A sithija','985236952v','0712536789','asithija@gmail.com','$2a$10$.HT8KCxj4sdkDyYEbyU6v.tj4etyk/Mf0SpAqpRwLjOSgbPBbAFQC','0712536789','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(105,'SSadun','Sadun Smeera','S sameera','975236982v','0775869789','ssdun@gmail.com','$2a$10$f/Du7KlpZCsClcLFzpUOWOSA.y8a3g80OW75oRw6SeEJFVKEBo.8i','0775869789','2020-10-05',1,4,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(106,'SunilW','Sunil Wimukthi','S Wimukthi','375289635v','0778596789','sunilw@gmail.com','$2a$10$KUY5FZfoUuaOzFKbXZ6gyOk.3ErD4GKdqSuDesQyugMbfHfuZ7i6O','Pambahinna, Balangoda','2020-10-05',0,7,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(107,'AKarunaThilake','Ajantha KarunaThilake','A Karunathilake','936896345v','0712356789','ajanthakaruna@gmail.com','$2a$10$8t7NCYc.5ZFP08R0Sueu/e6sFYZ5Rj.mL8zJDKdN4HCC.TpIYQlwq','Watawala, Klawana','2020-10-05',1,7,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU'),(108,'Aruna','Aruna Perera','P.Aruna','956985632V','0778945596','aruna@gmail.com','$2a$10$XV7IBcBL8gCsao8nhkta9OHx7HazH4zzG/yu4XpfijEl98lXw3fdW','No 20, Homagama','2020-10-07',1,2,'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcUe1moupzaLWXiANaYFIt4jys-rl2OeXwOydel1YWIO22vDW6&usqp=CAU');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-08 23:56:35
