-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: club_cricket
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baller_record`
--

DROP TABLE IF EXISTS `baller_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `baller_record` (
  `baller_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `overs` int(11) NOT NULL,
  `num_runs_against` int(11) NOT NULL,
  `catch` int(11) NOT NULL,
  `wicket` int(11) NOT NULL,
  `hat_trick` int(11) NOT NULL,
  `selected_player_id` int(11) NOT NULL,
  PRIMARY KEY (`baller_record_id`),
  KEY `fk_baller_record_selected_player1_idx` (`selected_player_id`),
  CONSTRAINT `fk_baller_record_selected_player1` FOREIGN KEY (`selected_player_id`) REFERENCES `selected_player` (`selected_player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baller_record`
--

LOCK TABLES `baller_record` WRITE;
/*!40000 ALTER TABLE `baller_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `baller_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baller_score`
--

DROP TABLE IF EXISTS `baller_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `baller_score` (
  `baller_score_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_count` int(11) NOT NULL,
  `overs` int(11) NOT NULL,
  `wicket` int(11) NOT NULL,
  `catch` int(11) NOT NULL,
  `avg_speed` double NOT NULL,
  `wide_ball` int(11) NOT NULL,
  `no_ball` int(11) NOT NULL,
  `num_of_runs_aginst` int(11) NOT NULL,
  `hat_trick` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `match_type_id` int(11) NOT NULL,
  PRIMARY KEY (`baller_score_id`),
  KEY `fk_baller_score_player1_idx` (`player_id`),
  KEY `fk_baller_score_match_type1_idx` (`match_type_id`),
  CONSTRAINT `fk_baller_score_match_type1` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `fk_baller_score_player1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baller_score`
--

LOCK TABLES `baller_score` WRITE;
/*!40000 ALTER TABLE `baller_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `baller_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baller_type`
--

DROP TABLE IF EXISTS `baller_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `baller_type` (
  `baller_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`baller_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baller_type`
--

LOCK TABLES `baller_type` WRITE;
/*!40000 ALTER TABLE `baller_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `baller_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batman_record`
--

DROP TABLE IF EXISTS `batman_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batman_record` (
  `batman_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `runs` int(11) NOT NULL,
  `face_ball` int(11) NOT NULL,
  `not_out` tinyint(4) NOT NULL,
  `four` int(11) NOT NULL,
  `six` int(11) NOT NULL,
  `selected_player_id` int(11) NOT NULL,
  PRIMARY KEY (`batman_record_id`),
  KEY `fk_batman_record_selected_player1_idx` (`selected_player_id`),
  CONSTRAINT `fk_batman_record_selected_player1` FOREIGN KEY (`selected_player_id`) REFERENCES `selected_player` (`selected_player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batman_record`
--

LOCK TABLES `batman_record` WRITE;
/*!40000 ALTER TABLE `batman_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `batman_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batman_score`
--

DROP TABLE IF EXISTS `batman_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batman_score` (
  `batman_score_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_count` int(11) NOT NULL,
  `inning_batted` int(11) NOT NULL,
  `not_out` int(11) NOT NULL,
  `face_ball` int(11) NOT NULL,
  `runs` int(11) NOT NULL,
  `four` int(11) NOT NULL,
  `six` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `match_type_id` int(11) NOT NULL,
  PRIMARY KEY (`batman_score_id`),
  KEY `fk_batman_score_player1_idx` (`player_id`),
  KEY `fk_batman_score_match_type1_idx` (`match_type_id`),
  CONSTRAINT `fk_batman_score_match_type1` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `fk_batman_score_player1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batman_score`
--

LOCK TABLES `batman_score` WRITE;
/*!40000 ALTER TABLE `batman_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `batman_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batman_type`
--

DROP TABLE IF EXISTS `batman_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `batman_type` (
  `batman_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`batman_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batman_type`
--

LOCK TABLES `batman_type` WRITE;
/*!40000 ALTER TABLE `batman_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `batman_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `club` (
  `club_id` int(11) NOT NULL AUTO_INCREMENT,
  `club_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_num` varchar(11) NOT NULL,
  `win_match` int(11) NOT NULL,
  `fail_match` int(11) NOT NULL,
  `grow_match` int(11) NOT NULL,
  `reg_date` date NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`club_id`),
  KEY `fk_club_manager1_idx` (`manager_id`),
  CONSTRAINT `fk_club_manager1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fielding`
--

DROP TABLE IF EXISTS `fielding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fielding` (
  `fielding_id` int(11) NOT NULL AUTO_INCREMENT,
  `catch` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `match_type_id` int(11) NOT NULL,
  PRIMARY KEY (`fielding_id`),
  KEY `fk_fielding_player1_idx` (`player_id`),
  KEY `fk_fielding_match_type1_idx` (`match_type_id`),
  CONSTRAINT `fk_fielding_match_type1` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `fk_fielding_player1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fielding`
--

LOCK TABLES `fielding` WRITE;
/*!40000 ALTER TABLE `fielding` DISABLE KEYS */;
/*!40000 ALTER TABLE `fielding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fielding_record`
--

DROP TABLE IF EXISTS `fielding_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fielding_record` (
  `fielding_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `catch` int(11) NOT NULL,
  `selected_player_id` int(11) NOT NULL,
  PRIMARY KEY (`fielding_record_id`),
  KEY `fk_fielding_record_selected_player1_idx` (`selected_player_id`),
  CONSTRAINT `fk_fielding_record_selected_player1` FOREIGN KEY (`selected_player_id`) REFERENCES `selected_player` (`selected_player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fielding_record`
--

LOCK TABLES `fielding_record` WRITE;
/*!40000 ALTER TABLE `fielding_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `fielding_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manager` (
  `manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`manager_id`),
  KEY `fk_manager_user_idx` (`user_id`),
  CONSTRAINT `fk_manager_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match`
--

DROP TABLE IF EXISTS `match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `match` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `club1_id` int(11) NOT NULL,
  `club2_id` int(11) NOT NULL,
  `captain_club1` int(11) NOT NULL,
  `captain_club2` int(11) NOT NULL,
  `club1_mark` int(11) NOT NULL,
  `club2_mark` int(11) NOT NULL,
  `club1_wicket` int(11) NOT NULL,
  `club2_wicket` int(11) NOT NULL,
  `tournement_round` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `finish_date` date NOT NULL,
  `start_time` time NOT NULL,
  `win_team` int(11) NOT NULL,
  `sponsor` varchar(255) NOT NULL,
  `match_type_id` int(11) NOT NULL,
  `tournement_id` int(11) NOT NULL,
  `stadium_id` int(11) NOT NULL,
  `referee_id` int(11) NOT NULL,
  PRIMARY KEY (`match_id`),
  KEY `fk_match_match_type1_idx` (`match_type_id`),
  KEY `fk_match_tournement1_idx` (`tournement_id`),
  KEY `fk_match_stadium1_idx` (`stadium_id`),
  KEY `fk_match_referee1_idx` (`referee_id`),
  CONSTRAINT `fk_match_match_type1` FOREIGN KEY (`match_type_id`) REFERENCES `match_type` (`match_type_id`),
  CONSTRAINT `fk_match_referee1` FOREIGN KEY (`referee_id`) REFERENCES `referee` (`referee_id`),
  CONSTRAINT `fk_match_stadium1` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` (`stadium_id`),
  CONSTRAINT `fk_match_tournement1` FOREIGN KEY (`tournement_id`) REFERENCES `tournement` (`tournement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_type`
--

DROP TABLE IF EXISTS `match_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `match_type` (
  `match_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_type` varchar(45) NOT NULL,
  PRIMARY KEY (`match_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_type`
--

LOCK TABLES `match_type` WRITE;
/*!40000 ALTER TABLE `match_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `match_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
  CONSTRAINT `fk_player_baller_type1` FOREIGN KEY (`baller_type_id`) REFERENCES `baller_type` (`baller_type_id`),
  CONSTRAINT `fk_player_batman_type1` FOREIGN KEY (`batman_type_id`) REFERENCES `batman_type` (`batman_type_id`),
  CONSTRAINT `fk_player_club1` FOREIGN KEY (`club_id`) REFERENCES `club` (`club_id`),
  CONSTRAINT `fk_player_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referee`
--

DROP TABLE IF EXISTS `referee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `referee` (
  `referee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`referee_id`),
  KEY `fk_referee_user1_idx` (`user_id`),
  CONSTRAINT `fk_referee_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referee`
--

LOCK TABLES `referee` WRITE;
/*!40000 ALTER TABLE `referee` DISABLE KEYS */;
/*!40000 ALTER TABLE `referee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selected_player`
--

DROP TABLE IF EXISTS `selected_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `selected_player` (
  `selected_player_id` int(11) NOT NULL AUTO_INCREMENT,
  `match_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  PRIMARY KEY (`selected_player_id`),
  KEY `fk_selected_player_match1_idx` (`match_id`),
  KEY `fk_selected_player_player1_idx` (`player_id`),
  CONSTRAINT `fk_selected_player_match1` FOREIGN KEY (`match_id`) REFERENCES `match` (`match_id`),
  CONSTRAINT `fk_selected_player_player1` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selected_player`
--

LOCK TABLES `selected_player` WRITE;
/*!40000 ALTER TABLE `selected_player` DISABLE KEYS */;
/*!40000 ALTER TABLE `selected_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `stadium` (
  `stadium_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) NOT NULL,
  `num_people` int(11) NOT NULL,
  `contact_num` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`stadium_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournement`
--

DROP TABLE IF EXISTS `tournement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tournement` (
  `tournement_id` int(11) NOT NULL AUTO_INCREMENT,
  `tournement_name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_sate` date NOT NULL,
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `umpire` (
  `umpire_id` int(11) NOT NULL AUTO_INCREMENT,
  `no_match` int(11) NOT NULL,
  `correct_decision` int(11) NOT NULL,
  `wrong_decision` int(11) NOT NULL,
  `user_user_id` int(11) NOT NULL,
  PRIMARY KEY (`umpire_id`),
  KEY `fk_umpire_user1_idx` (`user_user_id`),
  CONSTRAINT `fk_umpire_user1` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umpire`
--

LOCK TABLES `umpire` WRITE;
/*!40000 ALTER TABLE `umpire` DISABLE KEYS */;
/*!40000 ALTER TABLE `umpire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umpire_has_match`
--

DROP TABLE IF EXISTS `umpire_has_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `umpire_has_match` (
  `umpire_id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  PRIMARY KEY (`umpire_id`,`match_id`),
  KEY `fk_umpire_has_match_match1_idx` (`match_id`),
  KEY `fk_umpire_has_match_umpire1_idx` (`umpire_id`),
  CONSTRAINT `fk_umpire_has_match_match1` FOREIGN KEY (`match_id`) REFERENCES `match` (`match_id`),
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `name_with_initial` varchar(255) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `type` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `reg_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-17  0:19:49
