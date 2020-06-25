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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'Barbecue skewer recipes','For the garlic and ginger paste\r\n\r\n    100g/3½oz garlic cloves, roughly chopped\r\n    100g/3½oz fresh root ginger, peeled and roughly chopped\r\n    4–5 small whole green chillies, chopped\r\n    small handful coriander leaves, chopped\r\n    4–6 tbsp vegetable oil\r\n\r\nFor the tandoori chicken\r\n\r\n    1kg/2lb 4oz chicken thighs, skinless and boneless, cut into bite-sized pieces\r\n    1 tsp turmeric\r\n    1 tsp chilli powder\r\n    1 tsp garam masala\r\n    1 tsp fine salt\r\n    1 tsp black salt\r\n    1 tsp ground cardamom powder\r\n    1 tsp dried fenugreek leaves\r\n    ½ lemon, juice only\r\n\r\nFor the yoghurt mixture\r\n\r\n    250g/9oz plain yoghurt\r\n    1 tsp ground cardamom\r\n    1 tsp fine salt\r\n    1 tsp black salt\r\n    1 tsp turmeric\r\n    1 tsp chilli powder (plus extra if desired)\r\n    1 tsp garam masala\r\n    vegetable oil, to combine\r\n    chopped fresh coriander, to serve','    Preheat the oven to 220C/200C Fan/Gas 7. Line a baking tray with kitchen foil.\r\n\r\n    To make the paste, blend the chopped garlic, ginger, chilli, coriander and vegetable oil together in a blender or small food processor until you have a smooth paste. Transfer to a bowl and set aside.\r\n\r\n    To marinade the chicken, put the chicken pieces in a large bowl. Add three-quarters of the garlic and ginger paste and reserve the rest for later. Add the turmeric, chilli powder, garam masala, salt, black salt, cardamom powder and dried fenugreek leaves and mix together well to coat the chicken. Add the lemon juice and stir then set aside to marinate for about 30 minutes.\r\n\r\n    For the yoghurt mixture, put the yoghurt in a clean muslin and hang over a bowl for 30 minutes, allowing the water to drain out. Place the strained yoghurt in a large bowl. Add the remaining garlic and ginger paste, ground cardamom, salt, black salt, turmeric, chilli powder and garam masala. Using a whisk or spoon, blend together and drizzle in a little oil to combine. Pour the yoghurt mixture over the chicken and add another 1–2 teaspoons of chilli powder, if desired, to enrich the flavour and colour of the dish. Mix together well to evenly coat the chicken.\r\n\r\n    Thread the chicken onto skewers and place on the baking tray. Cook in the oven for 25–30 minutes, turning regularly to ensure they cook evenly, until nicely charred and cooked through. Alternatively, cook in a tandoori oven, under a hot grill or on the barbecue, until charred and cooked through.\r\n\r\n    Carefully remove the chicken from the skewers and transfer to serving dish. Scatter with freshly chopped coriander and serve. ','2020-06-24 14:03:54'),(2,'Souvlakia','    500g/1lb 2oz pork belly, skin removed\r\n    2 onions, cut into wedges\r\n    1 red pepper, seeds removed, cut into 2cm/1in squares\r\n    1 green pepper, seeds removed, cut into 2cm/1in squares\r\n    1 tbsp olive oil\r\n    100ml/3½fl oz red wine\r\n    salt and pepper\r\n    2 tbsp dried oregano\r\n\r\nTo serve\r\n\r\n    pitta breads\r\n    salad\r\n    chilli sauce','    Heat a griddle pan over a high heat.\r\n\r\n    Cut the pork into large cubes and thread onto skewers, alternating with the onion and peppers.\r\n\r\n    Drizzle with olive oil and cook on the griddle, turning every few minutes to ensure even cooking.\r\n\r\n    Just before the souvlakia are fully cooked, drizzle the red wine over them (while still on the griddle). Season, to taste, with salt and freshly ground black pepper and sprinkle with oregano.\r\n\r\n    Once the souvlakia are cooked, remove them from the griddle and serve in pittas with salad such as lettuce, cucumber, tomatoes, onions and a dollop of chilli sauce.','2020-06-24 14:04:57'),(3,'Lamb kebabs','    juice of half lemon\r\n    450g/1lb lamb mince\r\n    1 tablespoon oil\r\n    55g/2oz fresh coriander leaves (washed and chopped)\r\n    4 cloves garlic (crushed)\r\n    4 green chillies (de-seeded and chopped)\r\n    ½ tsp coriander powder\r\n    1 tsp cumin powder\r\n    ½ tsp black peppercorns (crushed)\r\n    ½ tsp turmeric powder\r\n    ½ tsp garam masala\r\n    2 tsp grated ginger\r\n    1 tsp salt','    Mix two teaspoons of lemon juice and the lamb mince in a bowl.\r\n\r\n    Blend the oil, garlic, ginger, chillies, crushed peppercorns, cumin, coriander powder, lemon juice, turmeric powder and salt in a food processor to a paste.\r\n\r\n    Stir the paste and coriander into the mince. With wet hands skewer the meat into long sausage shapes. Rotate the meat around the skewer, pressing gently all round. Alternatively, shape the mixture into small patties.\r\n\r\n    Brush each kebab with a little oil and grill under a medium heat or barbecue for 4-5 minutes on each side, or until cooked through.','2020-06-24 14:05:35'),(4,'Halloumi and watermelon skewers with tamarind dip','For the marinade\r\n\r\n    75ml/2½fl oz olive oil\r\n    1 tsp onion salt\r\n    1 tsp garlic powder\r\n    1 tsp chilli flakes\r\n    1 tbsp dried fenugreek leaves \r\n\r\nFor the skewers\r\n\r\n    500g/1lb 2oz halloumi, cut into 2cm/1in cubes\r\n    400g/14oz watermelon, cut into 2cm/1in cubes\r\n    150g/5½oz white bread, cut into 2cm/1in cubes \r\n\r\nFor the dip\r\n\r\n    95g/3½oz tamarind paste\r\n    60g/2¼oz runny honey\r\n    ½ tsp cinnamon\r\n    1 small red onion, finely chopped ','    Soak eight wooden skewers in cold water for 15 minutes.\r\n\r\n    To make the marinade, put all the ingredients in a jug and mix together.\r\n\r\n    Pour freshly boiled water over the halloumi in a bowl and leave for 20 minutes. This will make the cheese really soft and smooth in the centre when cooked.\r\n\r\n    To make the skewers, drain the halloumi, then place in a large bowl with the watermelon and bread. Drizzle over the marinade and mix together with your hands. Skewer cubes of halloumi, watermelon and bread alternately until you run out of skewers. If there is any marinade left, drizzle all over the skewers.\r\n\r\n    For the dip, mix the tamarind paste, 100ml/3½fl oz water, honey, cinnamon and red onion together in a bowl. Set aside.\r\n\r\n    Place a griddle pan on a high heat and brush lightly or spray with a little oil. Griddle the skewers for about 6 minutes, turning every 1–2 minutes so that you char each side. Alternatively, you can cook them under the grill for 8–10 minutes, turning occasionally. Serve the skewers with the tamarind dip.','2020-06-24 14:06:02');
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

-- Dump completed on 2020-06-24 14:07:21
