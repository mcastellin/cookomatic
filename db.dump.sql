-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: cookomatic
-- ------------------------------------------------------
-- Server version	5.7.30

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('6dab2288507d');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `ingredients` text,
  `directions` text,
  `createdts` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_recipe_name` (`name`),
  KEY `ix_recipe_createdts` (`createdts`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'Manuel\'s Famous Pizza Dough','- 150gr wholemeal flour\r\n- 350gr plain bread flour\r\n- 1 bag or yeast (good for 500gr of flour)\r\n- 400gr of room temperature water\r\n- 1 teaspoon of sugar\r\n- 1 table spoon of olive oil','#### 1. Preparing the growing agent\r\n\r\nStart by pouring into a cup the yeast, 1 teaspoon of sugar and 100gr of water. It is very important that the water is at room temperature: water too hot or too cold, could kill the yeast\'s bacteria. This first step will activate the yeast, mix the composite and let it rest for about 10 minutes.\r\n\r\n#### 2. Prepare the flour mix\r\n\r\nGrab a bowl and mix the 150gr of wholemeal flour and  the 350gr of plain bread flour. Add a tablespoon of olive oil in the mix. \r\n\r\n#### 3. Working the pizza dough\r\n\r\nPour the yeast and water prepared in step 1 in the bowl with the flour and start working it with your hands. Add the remaining 350gr of water a bit at a time until it is completely absorbed by the flour. This should result in a slightly wet and sticky mixture.\r\n\r\n#### 4. Let the dough rest\r\n\r\nThis is the most important part. For the dough to grow properly it will take about 1-2 hours, depending on the type of yeast you have used to prepare it. 500gr or flour is enought to bake two trays of pizza. Cut the dough in as many pieces as you like, spray some oil over some sheets of non-stick oven paper and place the dough balls on the sheets. To ensure the best growth, place the dough in a room with warm constant temperature, or in the switched off oven if your house is not very warm.','2020-06-23 10:10:16'),(2,'Crepes with Chocolate','- 160gr of milk\r\n- 1 large egg\r\n- 1 lemon\r\n- 80gr of plain flour\r\n- 20gr of butter or lard','#### Making the mixture\r\n\r\nPlace the milk with one egg in a bowl. Using a grater, grate some of the lemon\'s skin and incorporate it in the mixture. With the help of a wisk, slowly add the flour while mixing energically to avoid the formation of lumps. This should result in a smooth mixture. Let it rest for about 20 minutes.\r\n\r\nTip: if you want to give the crepes a stronger flavour, add one teaspoon of Whiskey or other dry liquor to the mix','2020-06-23 10:30:34');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `surname` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_user_email` (`email`),
  UNIQUE KEY `ix_user_uid` (`uid`),
  KEY `ix_user_name` (`name`),
  KEY `ix_user_surname` (`surname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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

-- Dump completed on 2020-06-24 11:15:25
