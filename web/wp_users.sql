-- MySQL dump 10.13  Distrib 5.7.18, for osx10.11 (x86_64)
--
-- Host: localhost    Database: planting2
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_login` varchar(180) NOT NULL,
  `user_pass` varchar(192) NOT NULL,
  `user_nicename` varchar(150) DEFAULT NULL,
  `user_email` varchar(300) NOT NULL,
  `user_url` varchar(300) DEFAULT NULL,
  `user_registered` datetime(6) NOT NULL,
  `user_activation_key` varchar(180) DEFAULT NULL,
  `user_status` int(11) NOT NULL,
  `display_name` varchar(750) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `user_login` (`user_login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=armscii8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES ('','2017-07-13 00:07:58.192160',1,'planting','$P$BmVr1zxjbk6PNrcuMY/8EDclTSnQOi/','planting','zhiyongf@onlineplanting.com',NULL,'0000-00-00 00:00:00.000000',NULL,0,NULL,1,1),('','2017-07-12 00:00:00.000000',4,'Frankin','$P$BmVr1zxjbk6PNrcuMY/8EDclTSnQOi/','planting','zhiyongf@cn.ibm.com',NULL,'2017-07-12 23:00:00.000000',NULL,1,NULL,1,0);
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-13 17:52:15
