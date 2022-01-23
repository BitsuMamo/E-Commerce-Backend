-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_25
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `supplier_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `category_id` (`category_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `product_inventory` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `product_catagory` (`id`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'in','Delectus fuga autem quia illo et. Occaecati quos numquam amet mollitia eum sed eos sit. Enim quae mollitia culpa qui autem sit.',1,1,3,'1998-06-07 08:44:00','2009-01-16 20:36:49','1986-02-22 15:41:51',1),(2,'aut','Quibusdam at aut et nam. Quia eos quaerat optio rerum laudantium iusto. Aut est et repellendus repudiandae voluptatem nihil.',2,2,1240,'1990-11-19 04:08:56','1977-02-02 06:50:14','1983-11-26 10:46:47',2),(3,'qui','Et ut ipsa earum delectus. Cupiditate reprehenderit dolores laudantium praesentium magni. Debitis dolores sequi est ut corporis.',3,3,5003702,'2008-02-17 00:10:19','1996-02-27 22:03:47','2004-10-06 05:07:12',3),(4,'voluptatibus','Architecto qui aut voluptas sapiente nam temporibus. Tempora odit eum recusandae voluptatem pariatur et.',4,4,178110,'2008-10-29 01:47:07','1995-10-08 01:48:08','1986-01-01 23:04:06',4),(5,'deserunt','Sequi voluptas sed deserunt perspiciatis ut optio. Et repellendus velit officia saepe. Tenetur nisi provident qui incidunt.',5,5,0,'2016-07-19 10:02:06','2019-11-11 21:37:32','1986-10-25 04:27:34',5),(6,'impedit','Qui accusantium accusantium qui quaerat ut. Distinctio excepturi temporibus molestiae totam. Eum delectus cum voluptatem veniam ipsum minima quasi. Dicta velit fugiat omnis.',6,6,156236,'1987-04-07 23:39:23','1984-07-28 17:52:04','2007-12-26 08:32:03',6),(7,'temporibus','Sed dolore est voluptatem vel excepturi. Eum sint aut iusto similique et maiores. Et molestiae tempora ipsa saepe temporibus minus iste.',7,7,506895,'1989-08-17 15:44:31','2016-12-03 12:10:02','1981-07-21 16:22:46',7),(8,'est','Vel modi et et et nesciunt rem ea. Sunt adipisci eius omnis necessitatibus quam similique. Non optio rerum nesciunt voluptatem exercitationem.',8,8,0,'2000-08-29 09:20:51','1993-03-27 23:44:57','2011-12-19 06:34:45',8),(9,'voluptas','Esse maiores nam et asperiores. Praesentium voluptatibus optio inventore et necessitatibus molestias mollitia. Qui illo qui alias ut et est.',9,9,502180,'2018-09-21 05:35:30','1984-09-13 22:27:39','2009-11-17 19:18:57',9),(10,'ut','Sed velit et et itaque. Molestias voluptatem asperiores sit.',10,10,2379,'2003-08-18 13:12:03','2007-01-10 01:56:13','2005-03-16 13:19:02',10),(11,'doloribus','Suscipit vel sed officia nemo sed voluptatum ut. Minus quae fugiat est quas voluptas sint facere. Error facere inventore sed sunt aliquid ipsum saepe. Quod unde sed quos et cum est ut.',11,11,189578,'1987-07-28 06:51:17','1980-12-27 07:17:30','2009-11-16 02:23:36',11),(12,'commodi','Inventore quam porro beatae nostrum cupiditate. Voluptate non odit cumque quaerat architecto qui id beatae. Eos aspernatur commodi qui ea non. Qui vitae ea qui esse asperiores. Velit quaerat eveniet ut neque amet.',12,12,60442,'2005-04-27 21:28:14','1999-04-09 00:26:11','2006-03-20 19:27:22',12),(13,'ad','Assumenda totam earum omnis excepturi excepturi impedit distinctio. Id sequi ipsum id est eaque. Laboriosam in eum et officia incidunt amet.',13,13,43462644,'1992-05-12 06:47:37','2021-06-20 16:20:19','2015-12-11 22:26:39',13),(14,'et','Aperiam neque et quia molestiae doloremque quae modi. Voluptas dicta dolor cum dolore exercitationem accusamus. Id sit dolorem dolor voluptas est.',14,14,0,'2005-04-24 21:47:43','2002-09-15 22:34:17','1972-08-01 22:17:17',14),(15,'vero','Qui quas voluptate ducimus et sit alias vero. Et est quas dolorem accusamus quo ad explicabo quae. Dolore maxime aliquam aliquam blanditiis.',15,15,25210,'2019-11-05 19:08:17','1981-01-22 10:36:24','2010-09-13 07:56:27',15),(16,'itaque','Maiores rerum voluptas officia repellendus odit quia autem. Saepe quos at nam explicabo repudiandae autem. Temporibus tenetur officia qui enim rerum.',16,16,125,'2004-07-28 13:14:34','1986-07-22 21:56:13','1976-08-01 18:18:18',16),(17,'nulla','Voluptate perferendis iste voluptatum ducimus. Est dolorem saepe quod ea. Asperiores aut sed magni ducimus. Iusto saepe quos aspernatur consequatur et earum.',17,17,66538590,'1975-03-17 15:50:36','1974-11-03 10:09:45','2002-03-04 20:20:19',17),(18,'inventore','Dolorem exercitationem voluptatem inventore. Voluptatem et voluptas nemo rerum. Temporibus illo placeat ratione ea quisquam autem esse.',18,18,506476,'2008-06-15 05:10:56','1989-03-13 21:46:12','1982-02-10 13:36:52',18),(19,'praesentium','Enim quibusdam veritatis aut quasi consequatur pariatur. Quibusdam autem dolorum quisquam cupiditate consequatur voluptatem ut. Ut possimus dolor repellat fugit vero.',19,19,81,'1975-07-04 14:40:59','1991-10-27 18:50:52','2011-09-05 11:19:53',19),(20,'at','Aut ut quam enim omnis. Alias sed eum est rerum et aut qui.',20,20,2,'2012-05-26 17:50:43','1985-12-28 07:47:33','1988-10-06 17:47:15',20),(21,'rem','Dolor magni quod nulla reiciendis. Voluptatem et dolores consectetur facilis odit consequatur ea explicabo. Et sunt harum vero et. Deleniti fugiat quo excepturi qui provident excepturi odit. Quis sint provident consequatur voluptatem sunt.',21,21,534,'1995-06-11 18:15:49','2017-08-18 11:49:01','2015-03-08 16:23:39',21),(22,'blanditiis','Debitis consequuntur dolore cum nisi modi dolores ut illum. Inventore vel pariatur repellendus ut rem ut qui.',22,22,5271,'1970-07-23 02:30:58','2014-06-01 00:12:57','2013-05-15 08:01:43',22),(23,'dolore','Ut asperiores voluptas quam unde totam consequatur. Ab omnis dolorum labore et libero. Ut dolorem hic nostrum eius. Deleniti at est temporibus atque ut nesciunt.',23,23,0,'1983-12-02 04:30:42','1986-04-19 17:23:15','2012-01-12 06:29:43',23),(24,'ab','Harum et beatae cupiditate nulla odit recusandae maxime harum. Sed odit libero aspernatur neque. Consequatur eos qui incidunt est. Incidunt impedit ad a tenetur.',24,24,2,'2017-11-14 05:28:19','1992-12-19 20:21:18','2001-05-11 23:25:44',24),(25,'similique','Nihil quis maxime est dolor et. Qui quod rem ratione. Ea hic earum rerum et culpa sint temporibus.',25,25,0,'1987-02-04 15:50:31','2013-02-05 06:43:31','1975-04-20 05:38:51',25),(26,'totam','Pariatur sunt numquam nobis autem. Nostrum et vel itaque consectetur harum autem doloremque. Nulla earum et molestiae voluptate debitis omnis voluptatem. Nihil sapiente in harum commodi. Libero sint molestiae sapiente.',26,26,6701425,'2002-11-08 20:12:42','1975-11-12 03:17:50','2021-05-19 00:33:14',26),(27,'neque','Odit aut accusantium pariatur similique consectetur saepe illum. Animi et et qui tenetur accusamus quo. Quaerat qui suscipit voluptate in.',27,27,39612,'2003-01-13 13:43:39','1987-06-21 18:33:51','2002-09-01 19:19:51',27),(28,'accusamus','Rerum alias id nesciunt. Et ullam fugit unde eos voluptatem. Vel itaque quidem error et rem est delectus. Ducimus qui autem tempora ut voluptas quia.',28,28,251018537,'1970-02-23 01:10:59','1992-07-13 04:30:33','1971-02-21 07:48:41',28),(29,'facilis','Nemo necessitatibus mollitia magni labore ex similique aut. Nisi amet omnis adipisci repudiandae ut. Quia consectetur praesentium et aut pariatur.',29,29,33396,'1983-06-19 12:16:26','2010-01-14 05:37:18','2011-05-02 16:15:52',29),(30,'suscipit','Illo hic soluta qui quidem et. At ab aut perspiciatis quia optio dolores. Quia saepe quia vero vel beatae consequatur consequuntur adipisci.',30,30,2,'2019-11-07 19:38:39','1974-03-25 12:49:32','2018-03-28 09:17:32',30),(31,'mollitia','Atque dolorem voluptatem aliquam. Harum occaecati libero rerum quod enim cum. Voluptatem fuga necessitatibus omnis labore a aut. Quo velit molestiae quis sit molestiae.',31,31,638,'1988-02-18 16:33:41','1990-03-14 06:11:03','1982-02-03 17:21:16',31),(32,'temporibus','Dicta nam quo asperiores eos. Eligendi sint ea velit in exercitationem odio accusantium quia. Qui iure deleniti architecto placeat sint cumque.',32,32,0,'2014-11-22 09:58:20','1993-04-15 15:28:30','2017-12-09 15:42:33',32),(33,'eos','Quis consequatur veritatis earum inventore. Quo repellat earum sed. Optio optio qui sed placeat omnis et id.',33,33,4966,'2000-10-19 03:45:59','1996-07-26 18:37:48','1985-01-13 06:19:22',33),(34,'quos','Perspiciatis vero eaque cupiditate sint voluptatem. Nam dolorem voluptas corrupti iure delectus eum. Corporis eligendi totam quo incidunt eveniet at ullam. Quo reprehenderit voluptas commodi sed.',34,34,0,'2013-11-05 01:37:24','1986-03-07 06:48:50','2017-12-02 15:23:49',34),(35,'consequuntur','Atque et est facilis deleniti. Ratione qui qui suscipit dicta rerum maxime. Expedita ipsum architecto temporibus sint ex nostrum eligendi.',35,35,3345952,'1975-09-12 01:46:49','1979-02-25 10:31:55','2017-07-31 06:00:14',35),(36,'voluptatum','Quis quae rerum alias est voluptatibus exercitationem. Quo quidem hic animi laborum ex ea. Sequi velit quisquam harum deserunt reprehenderit ipsa fuga. Esse repudiandae vero alias.',36,36,1,'1987-04-13 11:17:20','1987-11-23 23:41:05','1976-04-10 11:44:01',36),(37,'eveniet','Voluptas quae ad libero quis. Deserunt eos omnis maiores unde ipsa sint et. Omnis velit mollitia culpa est. Nobis sed consequuntur fugit a libero doloribus.',37,37,2,'2014-11-02 13:34:57','1981-12-07 04:45:20','1983-01-10 13:58:15',37),(38,'vitae','Molestiae beatae aliquid sequi quo alias. Ut dignissimos eum alias. Quibusdam qui unde repellat est sint qui. Voluptates eos aut et eum nesciunt ducimus.',38,38,2,'2004-05-31 05:47:27','1994-03-30 03:58:10','1987-05-23 07:31:21',38),(39,'vel','Dolore porro nobis facere ut et. Voluptas et porro laboriosam voluptatibus. Unde reiciendis eligendi sed ratione mollitia.',39,39,1057,'2005-03-11 19:53:02','1985-01-11 13:08:44','1978-08-13 06:50:27',39),(40,'et','Sunt autem consectetur ut et enim provident. Rerum molestiae ea recusandae dicta.',40,40,6758,'1982-01-15 04:21:38','1993-09-17 17:05:23','1985-10-20 09:02:33',40),(41,'adipisci','Aperiam eius voluptatem vel velit vel. Quis porro ullam voluptate deserunt laborum laborum tempora et. Velit eos aut animi est debitis nemo provident. Nulla et unde eum nulla.',41,41,0,'1993-03-18 10:47:11','2007-01-23 13:25:13','2008-03-12 16:01:43',41),(42,'esse','Maxime dolorem nobis consectetur praesentium qui facere. Atque et animi optio ut dolores. Asperiores delectus vel eius perspiciatis dolores alias.',42,42,187915624,'2009-05-25 02:47:29','1993-05-27 23:04:51','2011-11-05 02:46:45',42),(43,'totam','Eligendi doloribus excepturi quidem deleniti. Numquam dolore quibusdam sed quisquam. In perferendis a praesentium vero perspiciatis.',43,43,263,'2005-06-03 03:08:13','1998-02-16 02:12:50','1998-06-06 21:33:10',43),(44,'ducimus','Distinctio ex consequatur ut dolor quis expedita quia. Eos consequatur recusandae et. Aut aspernatur rem ut unde enim facere. Molestiae ullam aut quasi omnis libero dolor.',44,44,2,'1999-10-08 02:34:23','1995-06-02 20:03:13','1970-11-05 02:33:04',44),(45,'vel','Quis recusandae qui quaerat consequuntur. Ab sed consectetur consequatur atque cum.',45,45,763398,'1991-11-30 01:13:55','1978-05-19 08:07:29','2017-10-13 06:28:06',45),(46,'porro','Qui id magni facilis necessitatibus. Voluptas non saepe quam pariatur. Non qui nihil vitae eum aperiam.',46,46,0,'2021-10-23 01:11:21','2002-03-17 23:51:36','2017-01-06 19:19:59',46),(47,'vel','Et accusantium voluptatem reprehenderit neque. Veritatis eius saepe voluptas sed eaque excepturi eum. Et consequatur aut quam ducimus ex totam amet. Consequatur nisi vel qui totam rerum.',47,47,65159,'2006-09-15 00:53:34','2011-06-06 22:35:37','2006-08-23 17:00:14',47),(48,'et','Delectus delectus dolores possimus laborum reprehenderit modi velit. Ducimus voluptas velit a atque et sunt. Eos dolores iusto quibusdam voluptatibus magni voluptatem voluptatem. Consequatur ut cupiditate consectetur recusandae dignissimos velit.',48,48,24,'1975-02-20 03:19:29','1993-12-05 04:22:56','2004-08-04 15:05:07',48),(49,'est','Qui et tenetur sit reprehenderit enim ab qui voluptatem. Dicta numquam voluptatibus mollitia aut a. Ut sequi deserunt id beatae sequi numquam. Officiis illo magnam perferendis.',49,49,0,'2014-03-24 08:37:07','1975-01-16 11:02:23','2011-01-02 08:27:48',49),(50,'ut','Animi quidem quibusdam laboriosam molestiae aut et ipsa. Voluptas officia quam accusantium autem et natus iure magni. Iste nobis eaque ducimus natus ut similique.',50,50,1,'2015-01-18 18:11:27','2000-05-01 22:02:16','2007-05-26 03:13:01',50),(51,'eos','Corrupti sequi consequuntur aut voluptatem consequatur assumenda. Quia corrupti accusantium laborum enim necessitatibus. Voluptas dolor doloremque consequatur. Quo vero facere explicabo reprehenderit occaecati aut illo.',51,51,0,'1980-05-17 02:47:16','2005-08-12 17:28:45','1993-02-23 11:54:49',51),(52,'laboriosam','Non odio non est harum ipsa. Aut ut ut provident iure. Est libero unde et doloribus amet.',52,52,61,'1998-01-16 09:58:12','1971-01-04 14:18:06','2010-08-03 14:08:50',52),(53,'illo','Iste laborum dolores ut ratione. Corporis velit nulla mollitia laborum eum ut.',53,53,0,'2021-06-08 01:02:15','1993-03-15 15:22:10','1987-02-02 09:18:38',53),(54,'distinctio','Quibusdam ea eaque sint ipsam ea ut doloribus facere. Dolores repellat nisi quidem ut ex sed. Consequatur distinctio possimus perferendis ut ipsum suscipit sed. At eum quia nesciunt sequi dolorem quis.',54,54,0,'1999-08-11 05:58:55','2001-07-03 05:38:29','2000-05-27 23:30:05',54),(55,'nisi','Sit aut quia deserunt explicabo totam architecto sequi. Tempore voluptate vel odio praesentium aut labore quis. Et officia consequuntur consequatur quaerat laborum.',55,55,0,'2003-05-28 08:03:34','1984-02-16 18:50:46','2017-08-24 04:13:55',55),(56,'officiis','Provident fuga laudantium sapiente aut. Consectetur nobis atque reprehenderit autem maiores qui et maiores. Quis et corrupti tenetur. Maiores illum qui natus exercitationem laudantium ipsum ipsum quam. Accusamus aut cumque nulla tenetur omnis voluptas deserunt similique.',56,56,348486025,'1999-06-07 16:30:32','2018-07-19 18:28:07','1986-07-30 10:09:32',56),(57,'eum','Corrupti non aliquid eum veniam asperiores. Repellendus id ut et ut a repellat ut. Quidem exercitationem quo maiores minus.',57,57,3475,'1979-12-04 07:27:20','1977-04-22 13:11:43','2012-12-04 12:32:59',57),(58,'rerum','Hic ut quo delectus omnis minima quibusdam labore. Perferendis iste adipisci consectetur exercitationem voluptatem dolores. Eaque sapiente aut facere provident ipsam. Est quia eos velit ut repellat id delectus.',58,58,2008,'2014-07-21 12:18:12','1980-04-27 04:29:23','1971-02-08 08:18:47',58),(59,'tempore','Voluptate quidem provident non est. Blanditiis incidunt quia nam nihil. Laborum et ratione qui laudantium sit velit.',59,59,194140083,'1970-01-29 12:30:57','1975-12-13 17:16:21','2019-01-14 11:47:56',59),(60,'distinctio','Necessitatibus dolores modi dolore impedit quis quia. Dolor perspiciatis alias numquam voluptatem qui. Ut omnis molestiae assumenda saepe. Libero sit qui tenetur expedita quaerat ratione fugiat repudiandae.',60,60,52571299,'1977-06-24 00:47:24','1992-08-01 02:49:43','1994-05-21 19:45:21',60),(61,'occaecati','Et quaerat qui quo dolore omnis voluptatem labore. Exercitationem quia soluta architecto maiores cum tenetur commodi. Id qui autem ipsum aut.',61,61,30166985,'2008-10-06 17:45:46','1980-08-12 02:52:23','2021-08-15 12:09:14',61),(62,'qui','Iste voluptatem provident ea doloribus. Ut facilis officiis nemo dolorem fugit illo veritatis. Velit dicta magni voluptas error recusandae rem aliquam. Corporis doloremque totam aspernatur.',62,62,24330848,'1988-11-25 07:28:04','1983-09-24 12:44:15','2009-03-17 12:22:25',62),(63,'sed','Vitae ex aut qui delectus tempore velit. Est est quo eaque. Ex labore dignissimos vel aliquid totam quisquam nisi quasi.',63,63,3935007,'2011-06-24 03:42:13','1985-01-12 15:02:50','2005-08-02 03:35:46',63),(64,'nihil','Aut quibusdam eum aspernatur dolor nihil quisquam. Quos non recusandae ut impedit. Omnis vel possimus nemo doloribus hic soluta. Voluptates est accusamus consequuntur voluptas nemo molestias.',64,64,714,'2013-07-04 09:14:15','2015-12-16 08:50:54','2005-03-24 03:13:46',64),(65,'in','Porro voluptate totam ex voluptatem molestiae et. Est numquam voluptatibus quaerat minima. Sunt quibusdam iusto eos ipsum velit et.',65,65,492708776,'2009-12-08 14:38:03','1977-03-11 16:34:31','2003-06-30 00:15:10',65),(66,'nobis','Iste provident ipsa necessitatibus et necessitatibus atque. Molestiae ut beatae autem suscipit ut aliquam reiciendis. Cum minus vitae eligendi ut. Molestiae at nobis soluta autem est.',66,66,5831,'1979-02-15 16:12:44','1990-06-18 01:26:02','1989-05-28 01:26:53',66),(67,'dolorem','Sint soluta itaque et qui possimus iure. Quidem sit dicta amet non quis aut. Perferendis eaque voluptatem voluptatum velit. Rerum veritatis in iure laudantium debitis tempore.',67,67,10246208,'1976-10-20 15:23:00','1983-01-04 17:15:20','1976-08-02 13:30:40',67),(68,'voluptates','Adipisci est et consectetur. Eveniet nobis dicta pariatur dignissimos sint sequi. Minima error pariatur cumque omnis assumenda.',68,68,39,'1979-09-01 23:15:07','1989-04-09 09:57:40','1994-02-07 05:38:32',68),(69,'dicta','Quia reprehenderit quae aliquam cupiditate vel pariatur accusamus fuga. Ex cupiditate corporis saepe rem. Voluptas dolorum sed veritatis sit nam impedit nihil.',69,69,8984304,'2002-04-26 22:26:03','2012-04-07 03:38:57','1972-01-29 20:01:53',69),(70,'quia','Voluptatem earum necessitatibus quae iure quae quis. Minima sint magnam in ut qui facere praesentium. Provident veritatis sint sunt exercitationem non distinctio et. Doloremque illum velit vitae asperiores.',70,70,48240573,'2014-05-20 08:58:30','1985-10-04 22:51:24','2019-12-28 22:07:59',70),(71,'explicabo','Velit consequatur pariatur eos hic rerum blanditiis. Excepturi ex nemo illum dolor quia magni. Sed hic dolore ea eaque at. Perferendis id temporibus dolores aut. Quas fugit eum assumenda eligendi similique maiores.',71,71,0,'2005-07-11 07:27:11','1989-01-05 23:43:48','1994-06-22 08:29:28',71),(72,'voluptatem','Placeat voluptas nulla eos sunt. Maiores non voluptas deleniti ut soluta. Nisi atque sint et iure quo.',72,72,3644,'1997-09-19 18:12:58','1982-11-14 23:08:20','1985-10-17 16:17:30',72),(73,'molestiae','Pariatur possimus consequatur laboriosam nihil et deleniti laboriosam. Qui nulla eum omnis laudantium tempore nobis dolores. Fugit et doloribus neque id quia.',73,73,0,'2019-11-22 02:55:29','1991-12-04 08:11:12','1997-02-25 16:21:17',73),(74,'est','Consequuntur quasi quasi modi ipsam qui eos nihil. Ab eos quos ut voluptatem odit. Sint in maxime iusto ut.',74,74,0,'1976-01-23 22:14:51','1971-05-04 06:30:06','1974-05-03 19:37:22',74),(75,'nesciunt','Cupiditate laudantium beatae et architecto necessitatibus. Et rerum fugit exercitationem. Beatae odio nesciunt cupiditate. Aliquid vel ad et doloremque sed.',75,75,0,'1976-04-27 05:35:22','2003-02-24 12:07:31','2017-10-03 19:17:49',75),(76,'sed','Molestiae repellendus ea doloremque enim sapiente. Eaque voluptas recusandae ex atque nesciunt totam placeat qui. Odit nihil velit asperiores accusantium.',76,76,42812,'1999-07-05 09:16:48','1978-04-15 23:11:58','2015-11-04 23:21:29',76),(77,'sit','Impedit impedit voluptatem aut velit. Et quas praesentium non autem dolorem. Velit pariatur corrupti voluptatem sit ea corporis magnam. Nemo et dignissimos esse illum.',77,77,23241,'2014-06-05 10:04:18','1978-11-16 21:35:04','2021-10-25 16:30:06',77),(78,'rerum','Natus expedita sed voluptatem eos expedita aut quas dolorum. Quam quia non qui illum porro inventore sit voluptas. Alias voluptas est aut nostrum a.',78,78,17732179,'1978-08-18 03:29:32','2021-07-15 04:24:31','1972-04-17 09:14:07',78),(79,'veritatis','Sint sit natus fuga vel est voluptas non. Ipsam blanditiis et blanditiis incidunt in vero aperiam. Provident optio voluptas harum ut. Rerum suscipit consequuntur ut velit et quasi.',79,79,81,'1974-05-17 02:58:31','2012-09-29 22:24:48','2012-07-15 20:49:05',79),(80,'quo','Modi temporibus quisquam fugiat repellendus odit reprehenderit aut. Eum facilis minus dolor sint. Asperiores harum sit quas nostrum consectetur consequatur.',80,80,16,'1993-07-01 16:18:18','1992-04-03 17:16:47','1984-08-03 18:02:23',80),(81,'soluta','Deleniti officiis quae necessitatibus ad. Impedit quam explicabo voluptas veniam. Maxime numquam et consequatur.',81,81,780703,'1975-11-13 05:10:28','1981-01-28 09:15:05','1978-05-12 05:49:09',81),(82,'error','Omnis sint est aut consectetur nisi. Quidem iure in quasi veniam aut doloribus autem. Ex rerum in recusandae praesentium. Earum natus molestiae laborum earum dignissimos eaque.',82,82,305,'1986-04-13 05:35:35','1976-11-29 17:22:41','2005-11-23 09:54:52',82),(83,'non','Ullam animi quae voluptatum natus et vel. Consequuntur autem aut aperiam illo accusamus. In aut ducimus delectus et accusamus assumenda.',83,83,160,'2006-01-30 19:22:07','2008-07-09 02:02:38','2020-02-15 18:05:10',83),(84,'incidunt','Quaerat laudantium quaerat sequi. Error consequatur sed soluta dolorum.',84,84,8,'2007-07-27 12:31:40','1972-07-04 20:45:06','1998-09-03 17:37:41',84),(85,'aut','Quae perferendis esse aut laboriosam. Enim debitis fuga officiis delectus aperiam. Debitis reprehenderit iusto magnam eos eos eligendi debitis commodi. Corrupti minima et sit vel saepe neque quae.',85,85,0,'2003-10-08 16:36:19','2019-12-06 13:08:33','1984-12-06 11:41:54',85),(86,'consequatur','Ipsum error eos veniam nam id quibusdam. Doloremque quasi ratione doloribus delectus aliquid quos magni officia. Voluptatibus et nesciunt nihil illum non commodi. In ad nam vel magni officiis dolorum dolores.',86,86,23789,'2004-02-06 11:38:42','2016-11-01 16:57:51','1994-09-14 19:18:17',86),(87,'quibusdam','Eum nostrum recusandae saepe reprehenderit omnis molestias fugit. Qui consequuntur ut et natus temporibus. Magni quae quia veniam sequi unde esse error.',87,87,165743,'2006-10-12 12:48:14','2008-05-17 18:13:25','1979-03-04 23:13:08',87),(88,'doloremque','Voluptas sunt atque quae fuga earum reprehenderit explicabo. Quae eos quia eius magni. Totam quis atque aut. Quod inventore cum occaecati expedita autem delectus magni hic.',88,88,830,'1974-12-09 08:58:08','2000-01-21 19:12:17','2005-11-05 15:44:40',88),(89,'sed','Enim quos commodi consequatur commodi ipsa asperiores nobis. Et dolore sed rem officiis aperiam non quia. Repellendus eum officia doloremque. Qui necessitatibus iste eius aut dolores beatae.',89,89,515,'2010-05-25 07:08:27','1986-05-29 23:55:46','2012-06-26 10:12:42',89),(90,'dolorem','Itaque non saepe possimus dolorum et et sunt. Neque esse in recusandae cumque natus sit. Occaecati ut aut doloremque a. Adipisci aut ducimus voluptatem dolores quis eum consequatur et.',90,90,431300,'1973-03-19 16:58:26','1997-03-19 03:40:45','2003-01-31 14:56:51',90),(91,'ea','Ratione voluptatum quibusdam adipisci laudantium dolores consectetur minima. Totam molestias facere dolores placeat omnis.',91,91,4866133,'2015-06-14 12:42:59','1981-09-29 08:28:51','2006-07-01 18:34:27',91),(92,'nulla','Porro quo ratione rem vitae et debitis porro consequatur. Quaerat voluptatum velit vero voluptas rem odio qui. Vero quisquam consequatur est nostrum in voluptatum rerum. Illum reiciendis atque et sed aliquid.',92,92,2428436,'2015-02-26 07:37:03','2014-03-20 07:03:16','2015-08-01 17:50:25',92),(93,'nesciunt','Quidem aliquam fuga dolorum ipsum accusantium quibusdam quis. Vel et qui cum laborum. Dolore non temporibus numquam et temporibus sit. Consectetur sit veritatis vitae.',93,93,0,'2007-05-02 16:57:54','2003-03-29 15:16:14','1997-10-23 21:36:56',93),(94,'et','Labore magnam eligendi incidunt recusandae. Repudiandae aliquid necessitatibus nesciunt est voluptas ut. Officiis rerum repellat optio autem harum nisi mollitia. Dolorum fuga impedit esse distinctio labore sit.',94,94,0,'2006-08-12 13:49:47','1976-01-03 04:58:27','1985-11-15 23:48:10',94),(95,'ea','Et dolorum molestiae consequatur. Animi odit eius voluptates ut. Qui fugiat odit et eius et aut qui. Et saepe ipsa repudiandae quia nisi nihil.',95,95,3806525,'1986-05-27 23:43:47','2005-06-13 09:22:49','2013-02-14 03:29:27',95),(96,'quam','Qui est libero harum ut. Eveniet nemo eos dolor sit et debitis alias. Placeat ullam ducimus velit reiciendis rerum deleniti debitis.',96,96,2395995,'2013-05-04 16:23:10','1992-03-21 11:54:21','2015-06-07 20:28:49',96),(97,'vero','Omnis distinctio accusamus ipsum reiciendis. Architecto voluptatem neque excepturi et deserunt. Rerum neque at possimus et ullam minus.',97,97,6694,'1983-11-17 03:08:41','2012-12-29 09:58:17','1990-10-21 13:09:18',97),(98,'cumque','Nulla quia dignissimos unde id alias voluptas voluptatum. Corporis distinctio neque est natus modi. Odit minima sapiente optio ipsa praesentium. Qui rem repellendus quibusdam illum iste dolorem.',98,98,3021,'1990-08-17 03:09:45','1991-10-11 03:07:02','2018-09-09 19:49:18',98),(99,'quisquam','Doloribus sed et ut magni. Cumque fugit qui voluptatibus voluptas tempore dolores similique. Praesentium aut veritatis hic.',99,99,0,'1994-01-18 16:57:59','2006-08-09 15:59:48','2003-04-27 05:51:25',99),(100,'quae','Nesciunt accusamus at qui earum modi maiores. Non porro neque qui mollitia tempore. Maxime ipsam consequatur rerum sunt aspernatur dolor sint sed. Animi hic qui aut laudantium molestiae repellendus.',100,100,6,'2019-10-06 18:36:01','1984-03-22 23:29:29','1991-11-18 22:01:45',100);
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

-- Dump completed on 2022-01-23 10:47:48
