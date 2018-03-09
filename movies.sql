CREATE DATABASE  IF NOT EXISTS `movies` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `movies`;
-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: movies
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB

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
-- Table structure for table `mainmodel`
--

DROP TABLE IF EXISTS `mainmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mainmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(10) NOT NULL,
  `modelName` varchar(20) NOT NULL,
  `pricing` varchar(8) NOT NULL,
  `modelDetails` text NOT NULL,
  `imgPath` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model` (`model`),
  UNIQUE KEY `modelDesc` (`modelName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainmodel`
--

LOCK TABLES `mainmodel` WRITE;
/*!40000 ALTER TABLE `mainmodel` DISABLE KEYS */;
INSERT INTO `mainmodel` VALUES (0,'F55','Mini Cooper F55','27,790','It’s the turbocharged motoring icon, with more handles to love. The MINI 5 door boasts the same iconic good looks as its 3 door brother, but features an extra pair of passenger doors for practical access to its spacious cabin. And despite its slightly longer frame, the MINI 5 door’s wide, athletic stance and wheels-pushed-out design deliver the corner-carving agility you’d expect from any MINI.','F55.jpg'),(1,'F56','Mini Cooper F56','22,190','A true style icon – reimagined for contemporary living. Paying tribute to the original 1959 Austin Seven, the MINI Seven Edition brings together our most distinctive elements into one model. Striking Melting Silver details, a unique bonnet stripe design, and exclusive interior elements put this special edition MINI into a class of its own.','F56.jpg'),(2,'R58','Mini Cooper R58','40,590','It’s almost time to re-discover the redesigned, re-engineered, and completely revamped MINI Convertible. From feistier more fuel-efficient engines, to smarter innovations that let you stay open at every point along the way, this all-new MINI Convertible brings an array of enhancements to get excited about. And although the next iteration of this sun-seeking MINI will look and feel more refined than its predecessor, the open-air exhilaration that awaits you behind the wheel remains the same. We can’t wait for you to experience it in person. Until then... stay open.','R57.jpg');
/*!40000 ALTER TABLE `mainmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  `category` varchar(40) NOT NULL,
  `reviews` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL,
  `video_url` varchar(512) NOT NULL,
  `thumbnail_url` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'Coco','Kids','Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.',9,'coco.vid','coco.jpg'),(2,'How to train','Kids','A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.',8,'dragon1.vid','dragon1.jpg'),(3,'How to train','Kids','When Hiccup and Toothless discover an ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace.',8,'dragon2.vid','Dragon2.jpg'),(4,'Book of Life','Kids','Manolo, a young man who is torn between fulfilling the expectations of his family and following his heart, embarks on an adventure that spans three fantastic worlds where he must face his greatest fears.',7,'booklife.vid','bookoflife.jpg'),(5,'Lilo and Sti','Kids','a story about a little girl who wants a dog and an alien who fulfills her wish and then some. The adorable prankster from outer space is at the heart of this story of accepting differences, and crash-landed his place in the Disney roster of iconic animated heroes. Funny, heartwarming and imaginative with an Elvis soundtrack to boot.',8,'lilostitch.vid','liloystitch.jpg'),(6,'Pan\'s labyri','Adults','In 1944 falangist Spain, a girl, fascinated with fairy-tales, is sent along with her pregnant mother to live with her new stepfather, a ruthless captain of the Spanish army. During the night, she meets a fairy who takes her to an old faun in the center of the labyrinth. He tells her she\'s a princess, but must prove her royalty by surviving three gruesome tasks. If she fails, she will never prove herself to be the the true princess and will never see her real father, the king, again.',8,'pans.vid','panslabyrinths.jpg'),(7,'The secret i','Adults','In 1999, retired Argentinian federal justice agent Benjamín Espósito is writing a novel, using an old closed case as the source material. That case is the brutal rape and murder of Liliana Coloto. In addition to seeing the extreme grief of the victim\'s husband Ricardo Morales, Benjamín, his assistant Pablo Sandoval, and newly hired department chief Irene Menéndez-Hastings were personally affected by the case as Benjamín and Pablo tracked the killer, hence the reason why the unsatisfactory ending',8,'secret.vid','secret.jpg'),(8,'The shape of','Adults','From master storyteller Guillermo del Toro comes THE SHAPE OF WATER, an otherworldly fable set against the backdrop of Cold War era America circa 1962. In the hidden high-security government laboratory where she works, lonely Elisa (Sally Hawkins) is trapped in a life of isolation. Elisa\'s life is changed forever when she and co-worker Zelda (Octavia Spencer) discover a secret classified experiment. Rounding out the cast are Michael Shannon, Richard Jenkins, Michael Stuhlbarg, and Doug Jones.',8,'shapewater.vid','shapeofwater.jpg'),(9,'X-files: fig','Adults','With problems appearing between FBI agents Fox Mulder and Dana Scully, a dangerous conspiracy is starting to appear. A deadly virus, which appears to be of extraterrestrial origin has appeared, which could destroy all life on Earth. With the help of a paranoid doctor, Alvin Kurtzweil, Mulder and Scully must act fast in order to save everyone on the planet.',8,'xfiles.vid','xfiles.jpg'),(10,'wonder woman','Adults','Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, when a pilot crashes on their shores and tells of a massive conflict raging in the outside world, Diana leaves her home, convinced she can stop the threat. Fighting alongside man in a war to end all wars, Diana will discover her full powers and her true destiny.',9,'wonderwoman.vid','wonderwoman.jpg');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:29:21
