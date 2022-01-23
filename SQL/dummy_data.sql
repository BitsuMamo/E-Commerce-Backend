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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'tessie86','dfe2af6db6d0cff6a75e983f00354e7e7cb9d40a','Dandre','Padberg','(859)379-5267x7157','1970-07-18 00:10:43','1996-11-25 01:13:56'),(2,'lluettgen','c26bc153cce8387ea920ac2a3eef474c37a9ac6e','Cullen','Cruickshank','01651845889','2016-10-20 05:39:34','1972-08-29 11:01:28'),(3,'keeling.greyson','016f441806d1cded57ff3df04d79dd524b9a87cb','Justyn','Altenwerth','636.089.2759x53404','1989-08-28 09:14:17','2019-08-07 18:44:28'),(4,'florencio50','539f14ee33f1eea3b47a6b48229974bda9c6e6cb','Sofia','Sipes','(021)534-4149x047','1999-02-04 23:45:25','2008-11-06 21:17:10'),(5,'ldoyle','a71d8ef105810d6eea653387cb02be71dded126b','Carmel','Kshlerin','1-165-973-9149x80463','1999-12-14 02:53:09','1971-01-10 10:35:05'),(6,'oschmidt','208fa8949f39090f37ca40a00dd47c2c9e2fcbd2','Georgiana','Langworth','(736)437-7690x02847','1971-10-28 03:40:19','2003-03-30 08:05:12'),(7,'ebony.denesik','508fbf80087f7322f0874b6f62f31418612237c3','Reynold','Schroeder','(005)314-1468','2021-01-23 18:07:51','1985-05-27 00:43:48'),(8,'tillman.dakota','363668137ded60f62d19230733ad80183e17831f','Loraine','Rohan','1-836-331-5612x21896','2019-03-09 15:07:16','2014-12-25 09:20:47'),(9,'dmarvin','4925775ccfdbb0e078b7b093afa847e8e4298b36','Vidal','Kovacek','805.815.6657x546','1988-01-09 00:54:02','2019-10-06 16:27:45'),(10,'rickie55','683050a972f066a5fb6adabc0061cc4d9b78f9c0','Devon','Gottlieb','761-702-9668','1986-12-23 09:20:19','1972-04-10 06:24:56'),(11,'raquel.moen','aeebbc8a9b3f5b5e637d49a8064c064a6e269d98','Timothy','Schmitt','1-680-474-3524','1984-03-02 22:43:31','1985-09-15 01:14:12'),(12,'o\'kon.krystal','13227e8dadadfaa0516711a2b2cc6ea0c3ec54e6','Zander','Pacocha','+48(3)7666927857','2011-04-04 02:43:11','1977-11-18 21:28:24'),(13,'pfannerstill.velda','39bdfc3396ac9395da54a6b225dbaa5eb3dda60f','Elijah','Kuhn','1-747-189-9419x171','1984-11-13 03:33:49','1983-12-16 04:41:45'),(14,'valentine.reichert','558e93a2f5cd3d020b732429c97b3a2d9757a5a5','Kendall','Trantow','058.570.7118x847','1991-04-03 03:28:52','1981-07-06 15:23:29'),(15,'walsh.flo','047e6e4827eb5220b82f7421afd6e8dc948bb7fb','Bradly','Purdy','577-204-4105','2004-11-21 21:20:27','2005-09-12 12:32:50'),(16,'ward.felicita','0d12d45d40cc5c54225a357e3c5ca0c40985f91a','Emilio','Keeling','+41(9)2377084287','2002-06-09 01:17:56','2018-01-15 04:28:56'),(17,'ofisher','0cabbb2dcd338bd0923e61abbe12e0260dcee7ff','Edwina','Rutherford','025.434.4572x7286','1997-12-25 18:21:41','1970-01-08 06:53:21'),(18,'emelia67','50cfeb247da044105681b24819291a0b0c965dfe','Brent','O\'Hara','675.643.9374x83650','1995-06-02 02:55:52','1981-05-30 09:13:44'),(19,'rfadel','0cb75db53f804f9b8de528d212d67a1b7530b6bc','Emmalee','Smitham','1-821-895-7012x8407','2010-02-18 09:57:23','1989-10-24 19:19:00'),(20,'cummerata.nelle','8ad068831ebfdc9f38378cd2debf625846c89a19','Brannon','Halvorson','(977)380-6719','2007-05-13 13:06:33','1996-06-23 19:35:00'),(21,'charles83','783765261535acae1f8f295dd277752f0a565178','Keeley','Lakin','1-206-169-1705','2003-01-24 22:03:17','2021-05-22 11:17:29'),(22,'gina97','f26563518e14f488858a4f84bed2c0f43b5bb469','Kristy','Collier','978.660.9115x25715','1991-11-04 19:52:40','1987-09-20 17:50:25'),(23,'pfeffer.toney','2006b45159c0bd626ee81b542baa64160149e035','Molly','Effertz','(403)615-3738x1993','1977-09-19 15:06:07','1995-10-05 13:00:06'),(24,'pkoepp','0e0fdc8176a3caa2e2fe2993c17e3843d627e40b','Julianne','Morar','(486)256-1589','2020-04-21 05:42:44','2011-07-08 10:08:03'),(25,'schamberger.melvina','617f0b4492302fe6a04f0471563a2d55632d927b','Dorian','Christiansen','604-717-9263','2018-02-05 07:17:56','2005-10-12 01:31:19'),(26,'slind','c78b55893f938acee6a690da213c6a07ebaa52d0','Aurelia','Fritsch','(485)437-1225','1981-08-10 20:49:40','2000-10-23 05:03:24'),(27,'mann.amelie','0dbcebaf83e64739586b80c0ffa8fd8b772b6e69','Maurine','Nikolaus','(310)849-0617','1979-09-22 06:39:27','2018-05-11 19:54:39'),(28,'ubeatty','f88262ced34090410493e52f4b6a00968ec6936e','Austen','Wiegand','755-931-9383x7498','2020-04-12 03:38:59','1983-03-01 09:57:29'),(29,'towne.hudson','dec063649b4a737b19fe9da88876bff8f04211cd','Ricardo','Gorczany','(536)373-2523','2001-10-29 02:06:38','1997-02-13 11:16:38'),(30,'reilly.kristian','cc3432c6eff1f520801e4ab68d2b902a7eca64e9','Ian','Lakin','(903)680-5643x4150','2000-12-25 07:40:05','2004-04-27 07:37:38'),(31,'mills.arianna','64227281188841b7093cde9eddda9c787508829a','Pansy','Heathcote','1-884-778-8574x66823','2015-04-24 20:52:36','2019-05-30 23:42:19'),(32,'joshuah.hegmann','522237287733315a385fab112e1ca4a1a551d60d','Holden','Hayes','(956)600-9041','2018-08-01 09:04:37','2016-07-21 01:32:42'),(33,'jalyn69','328ce7d9a2fda8caadc1cc5d7d417401d6c6e541','Hollie','Nienow','+85(3)4969560218','2016-10-12 19:58:08','1996-05-14 16:14:18'),(34,'stamm.tracey','3b63e3918e42e6e5fbabbad7a6a1b18d0b9fcb82','Alec','Kohler','1-357-567-3607x2296','1990-12-16 13:53:26','2015-09-22 17:04:50'),(35,'malvina23','f37875cb5429be14a11d579fa04677b4dbfd3362','Ethelyn','Lindgren','(209)090-4707x45319','2013-09-19 12:05:14','2000-12-05 10:44:41'),(36,'mkonopelski','d24afbed8cb77e6e5ddb091318056a6bc2998707','Clementina','Bruen','990.824.6919','1970-11-06 09:48:41','2001-04-10 18:24:28'),(37,'hayley.eichmann','7af75a05f36db685ae211872fac244f96e39e734','Ambrose','Lowe','708-386-3773','2012-10-14 23:01:47','1999-10-07 15:48:33'),(38,'swaniawski.vincent','7abaacd46eb2911034007622c2d0cdbdb508ae5b','Novella','Luettgen','433.389.6748','2002-12-01 13:25:39','1987-04-20 17:37:00'),(39,'ubraun','3849087e74b6bb45321d6516e78d281effdc8a97','Hattie','Mertz','486-596-2820x1768','2018-06-15 17:40:02','2002-08-30 10:27:39'),(40,'pschneider','43f3965ca1c36f29f8dc92565db09e46e37f6491','Camila','Beahan','693-904-5233x9156','2000-05-21 20:27:05','1988-01-07 04:42:58'),(41,'virginie.swift','83177bf36c01e8fd50b61420c4fdde8602cabd9c','Lizzie','Cormier','1-848-135-6538x857','1982-04-22 13:40:18','1977-03-22 15:19:51'),(42,'cschumm','2117fa65b37531fcd3885618a2e927ddfe71c6b0','Jamar','Gutkowski','00645823056','1988-01-03 12:02:42','2012-09-30 11:02:35'),(43,'chadd.mcclure','fac06133ae216b440884ab111963c4798ee50e76','Miles','Gaylord','948-648-7884x7929','1995-05-18 20:09:48','2007-10-05 12:17:54'),(44,'adah.cassin','6b0fa230426e4fd872661fafeefc5571be084347','Tyrese','Hilpert','(308)479-7095x58956','1974-02-04 06:04:26','2018-12-11 18:04:29'),(45,'vivianne37','1bbbc0fe0368d5d73a4f318ec4ffb98c70aecb0a','Luther','McLaughlin','109.422.6000','1979-02-27 01:45:58','2011-04-14 14:03:51'),(46,'gia.beer','a487c9eb6c5cd935374eba174664457444535aa7','Fanny','Hills','(002)951-1614x905','2002-08-01 23:08:51','2016-01-05 00:11:26'),(47,'antoinette74','fb39a6d9a1a27457f42849928c2b6c5e772cd2ea','Noble','Schmidt','566.049.8064x4803','2010-04-24 18:01:27','2003-11-15 05:20:38'),(48,'heidi12','db09e9fa25e5a3cab52b01574a8246b3ca061ced','Jennifer','Kuvalis','1-122-038-3308x959','2000-06-22 14:26:34','2004-05-22 13:35:38'),(49,'pouros.gaylord','086d83e1c3375a2d07600272d268383aabe5956e','Abigayle','Haag','1-598-423-8642','2020-06-30 23:31:25','2004-03-20 23:01:31'),(50,'bechtelar.lucienne','5418a4c4044d047b5eb05b691030067a86d9f394','Rebeca','Dach','1-189-364-0333','2016-04-20 21:02:58','1984-03-04 12:24:21'),(51,'mary50','e530afe125dd294172952c13612b0a87fee4a5ab','Jaden','Walsh','(050)972-8741x134','2004-06-16 21:12:47','2001-07-23 08:18:06'),(52,'cordelia.baumbach','fdb367dc13bbebf5189393f6dc27f9e611c4fc73','Dorian','Kertzmann','923-236-5581','1970-09-08 11:42:50','1971-09-05 12:01:18'),(53,'hcrist','e1ef628a2f1d0c2866a9e35dc36f2fe1faad2e93','Christiana','Lakin','1-744-278-7267','2007-08-07 16:49:09','1982-06-10 16:39:47'),(54,'bhowell','9aa991baeca35e8988ce58824279da53169903d6','Monte','Reynolds','1-859-380-1501','1978-08-07 15:04:32','1985-08-15 06:34:16'),(55,'daugherty.ike','b6fdc5f7396de839c485b4cccbddd2df54f32c17','Magnus','Bashirian','913.365.2771','1980-02-02 21:16:31','2009-06-09 21:05:28'),(56,'tressie42','b8cbd6bbe413afcbe6f6372203cc1b4047bf9370','Garfield','Balistreri','05634262668','1976-01-13 20:48:00','1976-11-10 17:04:24'),(57,'brekke.kayley','69c424e06d8b99be5a23b2221228142854d3d07e','Lavonne','Simonis','(884)381-6140','1976-04-28 16:21:37','1973-02-02 01:29:43'),(58,'jovany.torp','3c75f439872f268a2061f8509d837fff25702c79','Zander','Conn','110.778.8973x45095','2005-09-08 08:17:23','2005-04-12 06:18:45'),(59,'wkris','c89f2d8c34f8ccf8030183e5ee6babc072969638','Kiley','Farrell','(657)755-1722','1990-03-26 01:43:38','1976-02-17 22:26:42'),(60,'moen.alan','a3f150992b58ae638dba4070ade51a7989911e42','Grant','Torphy','+87(4)4717802073','1976-04-30 21:58:57','2003-08-11 20:03:46'),(61,'valentina.lockman','85ac094437ff7a53731659ffb44483049e468b05','Fermin','Feest','1-857-033-6737x5117','1974-10-16 09:18:42','1998-02-26 16:27:13'),(62,'alexanne.osinski','fb7f95322a7301be4afe4fc5cb6421223a25fa8a','Fae','O\'Kon','06039396905','2000-12-08 12:23:43','1990-05-04 00:08:18'),(63,'verlie.kris','64f7a0858b248edcaab84478fc778ae87de24117','Kamren','Considine','897.259.8794','2019-05-23 12:39:02','1971-12-28 22:48:10'),(64,'citlalli24','58c3bd7dd4d2f70ca77658b9358ea3b10c844a65','Stone','D\'Amore','1-821-588-2481','2009-02-09 08:21:28','1980-05-10 09:11:56'),(65,'cerdman','185cff47891988f54bf0dadc9cca4c42c557d438','Dock','Grimes','948-641-7782','1983-04-27 16:47:41','2011-01-15 07:12:21'),(66,'mikayla.koepp','82e5c59f8c6d6081bceef1e737465aaf247bf4df','Otilia','Howe','1-784-065-1279x7262','1970-08-22 03:53:39','1988-08-07 14:39:47'),(67,'lang.sadye','43c73274f83cda5fdcbef03584519c928a3bcb63','Clara','Goodwin','799-103-0860','2005-12-02 20:16:49','2014-05-12 22:32:56'),(68,'cronin.ola','2ab516ab326e2cefd26a419ba5b1ad787a35b8be','Drew','Ebert','727.849.1895','1982-04-27 18:59:39','2020-08-15 22:53:29'),(69,'dwest','db1abd3283c269f417ef8f272a9d4969dbff76fb','Ansley','Jast','1-149-679-7063','1991-12-24 11:42:14','2001-10-05 12:11:02'),(70,'shanahan.letitia','286c40b9bdc659e53b84f5012c04ac92940a2061','Ali','Dietrich','755.798.8643','1982-06-27 09:14:26','2017-01-11 03:18:29'),(71,'hallie.mcclure','b9ae53b326897d62d3a312d761066dc1bebec1d8','George','Gutkowski','305.172.0189','2006-10-02 17:18:31','2014-04-14 20:54:28'),(72,'kenya70','515922ff716ff8eadcfd77b225325daa2b68fac4','Olaf','Hilpert','896.676.8372x97599','2018-01-08 07:39:13','1976-07-06 07:20:47'),(73,'frami.stefan','a989f599a99c7045fa54bcdf983f04b2ed8b84c3','Dejah','Gleichner','1-013-074-7503x9524','2001-06-27 08:23:40','1993-08-14 01:25:47'),(74,'rex14','d8712e7da0ce6f891fe06341870bdb7df211b701','River','Kub','419-257-6021x018','2012-01-26 02:55:47','1992-11-10 16:13:55'),(75,'cydney.kub','b5cc0b62cd6faf1231c2f18b3c661aace18e6966','Clementine','Schultz','(490)252-5523x17518','1980-01-06 18:27:30','2003-06-25 22:28:22'),(76,'eliza.kohler','11f74c8bfdbe7d551a58147f7d334ebd2d9bddc9','Florence','Schneider','1-079-611-1819x204','1987-05-23 18:25:31','1993-03-22 22:58:11'),(77,'kunde.garrett','1f5fefef5400e9cb89d97f2d5e5057499a103536','Mossie','Lakin','07231731762','1973-08-27 02:03:43','1981-06-13 10:15:19'),(78,'kautzer.pink','c602f4e53937b429ed95eac565f5208e8d88d5d7','Loyal','Bernier','02157920664','1974-11-25 06:57:30','1983-09-13 08:48:00'),(79,'kip.pfeffer','7cbcbb2904ff7f7d86ca5682469db4639b0ee4d5','Andrew','Dickens','(250)548-4004','2008-11-19 08:55:53','2008-04-20 23:07:23'),(80,'abelardo80','a4169766c465813ea08d55d6cdfbc411e7bb552b','Terrell','Glover','611-741-8344','1971-03-01 15:21:33','2013-10-28 16:25:46'),(81,'evans.mosciski','726c72da525e5851b4a0579843f653249a4d99c5','Randal','Hahn','1-985-109-4254x5509','1970-01-31 20:44:40','1972-06-13 13:36:20'),(82,'derick.lesch','83e09767ed71bf7300fc9764a032709962802ea3','Mathilde','Torp','947-152-0038x580','2014-11-24 05:33:23','2013-09-25 06:59:51'),(83,'zo\'connell','d8503d6447b60d99f1bffb36545fdaa274832558','Modesta','Gibson','(878)076-0174x4132','1988-11-04 23:35:54','1997-03-05 03:21:39'),(84,'keara.torp','0f9644dca4859d0366e8ba14fa0914279130f8dc','Rosella','Walter','+42(9)4022645558','1976-09-27 22:32:20','1977-07-09 10:41:05'),(85,'cole.celine','b9a70d66c774e3ebffbd68bf44d11e56f6574210','Watson','Jones','054-023-5547x79430','2012-03-23 05:21:43','1998-11-11 11:16:13'),(86,'ray66','7e2469f2fc5516651aaa083763aa7cc8ac29b1e9','Lane','Marvin','750.131.8387','1986-10-03 04:20:05','1989-03-16 00:25:53'),(87,'grayson.abshire','5b28750dfabfe45d5b0903d2cb51429029bcfbde','Adriel','Stanton','(566)583-5739x2333','2004-06-23 15:59:25','1985-06-11 21:08:14'),(88,'abbie60','5c1e79f5e76a82db67b83a156746e6e679f93e31','Roy','Padberg','388-604-1289x191','2006-08-17 08:39:57','1996-01-02 21:32:11'),(89,'bayer.annabelle','75a3a63b9b1594b09aacabdbe9d664ec2d09ba39','Audra','Parker','(571)664-8104x4562','1980-09-07 11:32:09','1978-07-26 12:42:22'),(90,'usanford','9fe7732ce7832743923036cdbe4aa7fafa741428','Else','Dare','1-953-536-5877x41017','2005-01-22 17:06:04','2013-04-16 00:54:16'),(91,'magnolia.wyman','629458b1588d13262ae430e9eea7133896361b3c','Erwin','Reilly','701.973.2592','2013-06-05 22:27:45','1980-01-25 21:15:41'),(92,'cherman','23bbdb7643172fc95f2bd21e6ec0e333eddffcd4','Taryn','Skiles','116.505.4979x59885','1976-05-01 01:44:15','1977-12-27 16:22:58'),(93,'labadie.luella','d58567b120cb9abe7fb96ff73f4e59548f723ef3','Leatha','Wisoky','332.207.4305x1453','2005-03-25 20:39:08','1973-05-11 02:22:49'),(94,'qjohns','5c9a2e68dd88434aeae2c3be5877977d077ba95d','Dean','Hermann','501.854.0492x447','2018-07-10 12:52:35','2005-08-04 10:47:47'),(95,'kamren.hoeger','cb13b5577dc9677f82f4bfa689bdfc9a4c3c5048','Sharon','Skiles','406-014-8950x330','2002-08-02 08:36:58','2000-02-18 15:28:55'),(96,'josefina22','524bf335f0b2ef5c273970b43ef62e51875730df','Junior','Walker','+54(5)9199218004','1991-06-30 12:36:14','1978-09-15 12:37:07'),(97,'jaylan87','3e9f3a13f60b13efeadb92bf0dfe0ccdd0d2841e','Esta','Koch','759.332.2856x3735','1971-07-28 13:53:35','1999-01-23 17:39:06'),(98,'yesenia.bahringer','afb5313ac369cb3d8fb25c9afc863906c113477e','Greg','O\'Kon','1-450-950-5211','1982-09-04 19:19:21','1981-07-11 07:48:48'),(99,'wheaney','33972b00bec112ad3cab3aaeed09a4da84744142','Chyna','Hintz','(343)773-1922','1970-12-26 20:38:08','1995-01-11 16:52:50'),(100,'qnolan','cf06eddd7d87dad58c91662e47b647f27a1c88c9','Hector','Nicolas','401-472-4279','1994-01-05 14:24:25','2020-10-18 11:53:36');
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

-- Dump completed on 2022-01-23 10:49:20


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
-- Table structure for table `user_payment`
--

DROP TABLE IF EXISTS `user_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(60) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment`
--

LOCK TABLES `user_payment` WRITE;
/*!40000 ALTER TABLE `user_payment` DISABLE KEYS */;
INSERT INTO `user_payment` VALUES (1,1,NULL,0),(2,2,NULL,31456),(3,3,NULL,78853),(4,4,NULL,58664141),(5,5,NULL,0),(6,6,NULL,0),(7,7,NULL,9306904),(8,8,NULL,0),(9,9,NULL,6),(10,10,NULL,0),(11,11,NULL,7347),(12,12,NULL,539140),(13,13,NULL,75375),(14,14,NULL,13857443),(15,15,NULL,208),(16,16,NULL,66),(17,17,NULL,2682362),(18,18,NULL,468671),(19,19,NULL,840410911),(20,20,NULL,99481387),(21,21,NULL,762268694),(22,22,NULL,1128),(23,23,NULL,0),(24,24,NULL,52317),(25,25,NULL,7960023),(26,26,NULL,7),(27,27,NULL,191931),(28,28,NULL,774562329),(29,29,NULL,47085),(30,30,NULL,90963),(31,31,NULL,546813),(32,32,NULL,2703),(33,33,NULL,0),(34,34,NULL,103826638),(35,35,NULL,658162200),(36,36,NULL,2259),(37,37,NULL,17089),(38,38,NULL,1616355),(39,39,NULL,5551),(40,40,NULL,6762840),(41,41,NULL,3210),(42,42,NULL,80008),(43,43,NULL,183),(44,44,NULL,5919581),(45,45,NULL,0),(46,46,NULL,914313),(47,47,NULL,75451),(48,48,NULL,63695),(49,49,NULL,7031),(50,50,NULL,482480),(51,51,NULL,54837),(52,52,NULL,1),(53,53,NULL,0),(54,54,NULL,702),(55,55,NULL,63244367),(56,56,NULL,9489),(57,57,NULL,169),(58,58,NULL,3440),(59,59,NULL,995760425),(60,60,NULL,336590),(61,61,NULL,121730),(62,62,NULL,31707),(63,63,NULL,8687),(64,64,NULL,0),(65,65,NULL,6503520),(66,66,NULL,538463),(67,67,NULL,7),(68,68,NULL,2300270),(69,69,NULL,9331),(70,70,NULL,426460),(71,71,NULL,8058961),(72,72,NULL,8),(73,73,NULL,6926685),(74,74,NULL,582945280),(75,75,NULL,0),(76,76,NULL,274),(77,77,NULL,324),(78,78,NULL,187009723),(79,79,NULL,954858773),(80,80,NULL,103639072),(81,81,NULL,160717440),(82,82,NULL,7178),(83,83,NULL,166555),(84,84,NULL,83177443),(85,85,NULL,3097),(86,86,NULL,42),(87,87,NULL,588054622),(88,88,NULL,4238747),(89,89,NULL,687360),(90,90,NULL,126),(91,91,NULL,0),(92,92,NULL,673),(93,93,NULL,923),(94,94,NULL,7784168),(95,95,NULL,7324861),(96,96,NULL,902),(97,97,NULL,52314),(98,98,NULL,35440),(99,99,NULL,8004),(100,100,NULL,743637620);
/*!40000 ALTER TABLE `user_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:50:38


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
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `address_line1` varchar(60) DEFAULT NULL,
  `address_line2` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `postal_code` varchar(60) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `telephone` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (1,1,NULL,NULL,'Andersonmouth','iosz','75','1-601-082-6039','455.500.3687x997'),(2,2,NULL,NULL,'Kaydenside','xptd','81024717','(191)946-0188','1-211-023-3111x5764'),(3,3,NULL,NULL,'Rickiestad','thmv','888586','212.917.5760','05421885895'),(4,4,NULL,NULL,'Alvisborough','ddmh','8961','443-251-4544x1342','543-128-5450x3398'),(5,5,NULL,NULL,'Jerroldhaven','cojy','712786','040-616-3422x263','04117824324'),(6,6,NULL,NULL,'Larsonside','wklo','','518.435.0519x1914','+11(7)9713409769'),(7,7,NULL,NULL,'Port Santiago','dxej','339906985','205.281.1626x4203','1-564-972-2232'),(8,8,NULL,NULL,'Carrollstad','caex','466614','(116)506-7604','(300)043-1628x132'),(9,9,NULL,NULL,'Lake Bobbietown','qcbl','924','(229)925-1617x820','733.036.4424'),(10,10,NULL,NULL,'Harrisborough','buyu','9468301','935-186-4558x78783','1-266-411-4439x534'),(11,11,NULL,NULL,'Jacklynmouth','yryd','4063','1-061-899-4563','993-315-6092x249'),(12,12,NULL,NULL,'Lake Etha','aowr','500','895.071.9295x992','+84(5)6597614520'),(13,13,NULL,NULL,'East Willow','twji','5','(904)644-0511','+91(1)8440287235'),(14,14,NULL,NULL,'Karentown','ksmn','19883','(995)736-2091x33155','+86(6)9408504449'),(15,15,NULL,NULL,'New Rhianna','fnsy','81','+69(3)9188480360','1-751-762-9828x526'),(16,16,NULL,NULL,'South Emeraldtown','pzkz','9678','215-301-3600x26467','06507558445'),(17,17,NULL,NULL,'South Maximilian','jbhz','81','854.541.8632x81201','1-023-131-9914x726'),(18,18,NULL,NULL,'Louieberg','jkxw','1','(028)001-5732x996','226-697-5937x7518'),(19,19,NULL,NULL,'Grahamtown','vuwm','650','996.614.7684','577-037-3099x958'),(20,20,NULL,NULL,'Goodwinfort','auzw','109002','643-276-3921x92227','1-844-369-6062'),(21,21,NULL,NULL,'New Lenny','mbhf','4053','(570)140-2878','(803)418-9798'),(22,22,NULL,NULL,'Jenastad','ojzc','646','1-390-260-6041x3377','964-056-4253x9188'),(23,23,NULL,NULL,'Lake Susie','hial','702362','(478)573-1161','(490)651-5561'),(24,24,NULL,NULL,'South Daynaview','sjyt','64901134','1-753-368-9177x0663','354-068-7043x4166'),(25,25,NULL,NULL,'Harristown','gjkf','3','343.796.6127','1-416-781-1989x719'),(26,26,NULL,NULL,'East Molliemouth','mmvb','60091792','204.781.5721x9916','171.190.7829'),(27,27,NULL,NULL,'Boehmfort','bong','79034','1-347-222-7912x305','+25(6)9097971664'),(28,28,NULL,NULL,'East Kole','gfvw','','(009)679-0697','1-774-708-7833x6759'),(29,29,NULL,NULL,'South Romaine','mmpp','','(504)079-4489x070','(480)486-5489x39598'),(30,30,NULL,NULL,'West Marjorie','mjty','34963','(992)988-7356','(161)246-1058'),(31,31,NULL,NULL,'North Yvonneport','vggb','856','(119)555-0116x638','1-951-900-2487x224'),(32,32,NULL,NULL,'Gulgowskimouth','vtod','5591923','194.298.3698x16056','780.904.7890x33889'),(33,33,NULL,NULL,'Stehrville','xlxp','58447','1-851-984-8073','1-560-211-5995x000'),(34,34,NULL,NULL,'West Nakiaville','kccs','','285-643-9258x157','515.278.1875'),(35,35,NULL,NULL,'Port Daryl','ivus','','088.911.0691','1-619-795-1844x62878'),(36,36,NULL,NULL,'West Elwyn','rite','62576809','+44(1)9711761001','(420)726-3495x956'),(37,37,NULL,NULL,'West Kiera','rvdi','139','1-712-488-5297x03482','05187964740'),(38,38,NULL,NULL,'Furmanville','tmou','890657','696.174.4019','245.717.4001x8239'),(39,39,NULL,NULL,'New Alexandria','ohnb','6469','(267)133-2062','(891)986-0677x877'),(40,40,NULL,NULL,'South Ahmad','ghjg','1','+35(2)7633296934','318-597-2426x118'),(41,41,NULL,NULL,'Gastonshire','mjlu','75545836','(912)814-2172x8408','(120)774-5701x1506'),(42,42,NULL,NULL,'Bartolettiside','oadv','2128','00723755484','00391191253'),(43,43,NULL,NULL,'East Jacklyn','etsc','9','711.093.5053x09794','399.846.1083'),(44,44,NULL,NULL,'Alisaport','itps','5','073-719-7068x19339','976-627-0210'),(45,45,NULL,NULL,'Savanahmouth','jqmf','6','042.272.1735','866-657-1750x49496'),(46,46,NULL,NULL,'West Shania','yfds','7865428','1-791-306-2803x3616','(823)522-4705x254'),(47,47,NULL,NULL,'Zoramouth','blkc','6','(064)885-9377x818','(118)940-4006'),(48,48,NULL,NULL,'Ceasarton','bjww','','1-490-404-8178','03633993890'),(49,49,NULL,NULL,'Rudolphland','eovi','9236','431-546-6192x425','543-898-6622'),(50,50,NULL,NULL,'South Rydermouth','iwxb','960','(993)596-4867x16238','204.566.6186x68748'),(51,51,NULL,NULL,'Hintzshire','ddzf','','088.587.1124x6734','1-256-286-2567x5133'),(52,52,NULL,NULL,'Waelchiville','hsln','','706-850-5708','+13(5)2871714854'),(53,53,NULL,NULL,'Lake Vince','xluo','711719','1-353-070-4825x0032','+97(0)3221213263'),(54,54,NULL,NULL,'Elisabethmouth','jrkr','1509137','1-717-082-8295','1-038-263-7797x109'),(55,55,NULL,NULL,'Jarvisview','jtve','79560','+62(9)9514890859','861-034-3918'),(56,56,NULL,NULL,'North Kyleeberg','bywd','320845959','1-093-118-1707x62184','07267798364'),(57,57,NULL,NULL,'Kassulkeland','xlgf','3490160','+23(1)8270785776','+03(4)6650814499'),(58,58,NULL,NULL,'Port Abdullah','zcds','9433860','(205)819-8060','1-660-487-3806'),(59,59,NULL,NULL,'Alyssonberg','zrwz','2326677','665.708.2598','871-095-9540'),(60,60,NULL,NULL,'Ulisesborough','ptsx','190','339.637.6438','(402)489-8777x38847'),(61,61,NULL,NULL,'Guidomouth','nwhb','20959772','1-507-992-2770x4253','631-235-1312x94526'),(62,62,NULL,NULL,'Port Donnaton','xcfh','40953113','06980175945','(067)112-7322'),(63,63,NULL,NULL,'Bogisichborough','wzbd','7','1-056-786-5749x6010','(066)006-0828x35949'),(64,64,NULL,NULL,'Halvorsonside','zklx','','376-249-8815','571-998-8205'),(65,65,NULL,NULL,'Leannaside','zqow','992131320','932.303.9692x7789','1-085-960-5313x251'),(66,66,NULL,NULL,'Gerholdview','soig','3405368','681-163-0550x601','(331)404-8192x26197'),(67,67,NULL,NULL,'Mortimerport','jtfc','6217808','+10(6)3858038647','740-263-2510'),(68,68,NULL,NULL,'Lake Madaline','fukw','57427','(703)244-4531x086','06947536445'),(69,69,NULL,NULL,'New Wilmamouth','elmk','616','+02(4)2927825050','04970846796'),(70,70,NULL,NULL,'Port Brandi','xoib','9033847','(864)426-7787x35941','(270)159-8935'),(71,71,NULL,NULL,'Lindsayhaven','ayzl','332631819','350-216-6728','04573079494'),(72,72,NULL,NULL,'New Bridget','dyxk','3324','(073)347-4393x084','00946498235'),(73,73,NULL,NULL,'Kaleyport','svks','542109','464-828-6837x5241','1-848-163-7268x58517'),(74,74,NULL,NULL,'Ziemeton','gubi','','00530214051','(612)932-5748x52374'),(75,75,NULL,NULL,'Lake Alainahaven','iczj','708','831-454-6783','(885)777-2108x488'),(76,76,NULL,NULL,'Macejkovicmouth','rssw','','+59(2)1106611444','04443830222'),(77,77,NULL,NULL,'Demarcofort','oggc','33460891','1-023-382-6076','(357)351-0630x313'),(78,78,NULL,NULL,'North Yasminville','saiv','342464','1-165-196-9695x164','580.472.7544x81245'),(79,79,NULL,NULL,'Broderickburgh','sqdi','551309066','06223515916','07310925017'),(80,80,NULL,NULL,'South Meggie','hytx','105','572.627.2517x64484','1-346-411-9942x031'),(81,81,NULL,NULL,'Adafort','sjnz','28844','938.323.0903x673','961.522.6923'),(82,82,NULL,NULL,'Bernierton','nquo','7732488','(383)559-5638x45005','+51(4)0532927311'),(83,83,NULL,NULL,'South Daniela','felb','615374','1-949-521-2123x90439','851.570.5988x8958'),(84,84,NULL,NULL,'New Lucasstad','rcmx','','+34(5)1345152850','945-492-4972x4429'),(85,85,NULL,NULL,'Schummberg','cxbg','92470988','767-949-9534','08979642958'),(86,86,NULL,NULL,'South Curtisfurt','umgr','','995-049-2573','842-235-1700'),(87,87,NULL,NULL,'West Dejahchester','vyll','895193128','1-079-102-2158x2951','1-786-326-3225'),(88,88,NULL,NULL,'Port Earlinebury','umtu','4482850','06958796353','409.438.3771'),(89,89,NULL,NULL,'Beermouth','tfzf','9322948','484-767-0970','(468)665-2406x99489'),(90,90,NULL,NULL,'Lake Sidney','fpba','61202','09568938773','1-311-740-9407'),(91,91,NULL,NULL,'Lake Rodgerview','grxm','7350037','391-511-6022x738','1-694-303-5423'),(92,92,NULL,NULL,'South Summerland','elzi','929818','047.411.4564x095','04495920738'),(93,93,NULL,NULL,'North Charles','dxkh','91976','977.672.7599x8143','808.114.4674x55095'),(94,94,NULL,NULL,'Port Madaline','ddrl','75127','1-424-599-2619x8451','520.805.2420x49119'),(95,95,NULL,NULL,'West Roxanne','lufb','','731.523.8901','02192196620'),(96,96,NULL,NULL,'Armstrongmouth','kskm','34366','(715)662-4698x459','069-995-1031'),(97,97,NULL,NULL,'Rutherfordfort','lttl','8','694.104.8428','574.607.7002x1830'),(98,98,NULL,NULL,'West Alena','ahrj','','598-445-7244x88239','490.858.0427x0289'),(99,99,NULL,NULL,'Zachariahberg','ozay','43695','649.494.6217x01699','09138957758'),(100,100,NULL,NULL,'New Brady','mqxs','6162476','1-166-139-4531x88040','(894)757-6765');
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:50:15


#
# TABLE STRUCTURE FOR: supplier
#

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `supplier` (`id`, `name`) VALUES (1, 'eos');
INSERT INTO `supplier` (`id`, `name`) VALUES (2, 'saepe');
INSERT INTO `supplier` (`id`, `name`) VALUES (3, 'consectetur');
INSERT INTO `supplier` (`id`, `name`) VALUES (4, 'ipsa');
INSERT INTO `supplier` (`id`, `name`) VALUES (5, 'aut');
INSERT INTO `supplier` (`id`, `name`) VALUES (6, 'aliquid');
INSERT INTO `supplier` (`id`, `name`) VALUES (7, 'placeat');
INSERT INTO `supplier` (`id`, `name`) VALUES (8, 'earum');
INSERT INTO `supplier` (`id`, `name`) VALUES (9, 'ut');
INSERT INTO `supplier` (`id`, `name`) VALUES (10, 'corporis');
INSERT INTO `supplier` (`id`, `name`) VALUES (11, 'quos');
INSERT INTO `supplier` (`id`, `name`) VALUES (12, 'voluptatem');
INSERT INTO `supplier` (`id`, `name`) VALUES (13, 'itaque');
INSERT INTO `supplier` (`id`, `name`) VALUES (14, 'neque');
INSERT INTO `supplier` (`id`, `name`) VALUES (15, 'voluptas');
INSERT INTO `supplier` (`id`, `name`) VALUES (16, 'unde');
INSERT INTO `supplier` (`id`, `name`) VALUES (17, 'nemo');
INSERT INTO `supplier` (`id`, `name`) VALUES (18, 'quod');
INSERT INTO `supplier` (`id`, `name`) VALUES (19, 'quia');
INSERT INTO `supplier` (`id`, `name`) VALUES (20, 'eum');
INSERT INTO `supplier` (`id`, `name`) VALUES (21, 'temporibus');
INSERT INTO `supplier` (`id`, `name`) VALUES (22, 'laboriosam');
INSERT INTO `supplier` (`id`, `name`) VALUES (23, 'debitis');
INSERT INTO `supplier` (`id`, `name`) VALUES (24, 'quis');
INSERT INTO `supplier` (`id`, `name`) VALUES (25, 'voluptatem');
INSERT INTO `supplier` (`id`, `name`) VALUES (26, 'quasi');
INSERT INTO `supplier` (`id`, `name`) VALUES (27, 'ut');
INSERT INTO `supplier` (`id`, `name`) VALUES (28, 'consequuntur');
INSERT INTO `supplier` (`id`, `name`) VALUES (29, 'ut');
INSERT INTO `supplier` (`id`, `name`) VALUES (30, 'ex');
INSERT INTO `supplier` (`id`, `name`) VALUES (31, 'asperiores');
INSERT INTO `supplier` (`id`, `name`) VALUES (32, 'qui');
INSERT INTO `supplier` (`id`, `name`) VALUES (33, 'quis');
INSERT INTO `supplier` (`id`, `name`) VALUES (34, 'qui');
INSERT INTO `supplier` (`id`, `name`) VALUES (35, 'et');
INSERT INTO `supplier` (`id`, `name`) VALUES (36, 'exercitationem');
INSERT INTO `supplier` (`id`, `name`) VALUES (37, 'explicabo');
INSERT INTO `supplier` (`id`, `name`) VALUES (38, 'vel');
INSERT INTO `supplier` (`id`, `name`) VALUES (39, 'voluptates');
INSERT INTO `supplier` (`id`, `name`) VALUES (40, 'pariatur');
INSERT INTO `supplier` (`id`, `name`) VALUES (41, 'sunt');
INSERT INTO `supplier` (`id`, `name`) VALUES (42, 'perspiciatis');
INSERT INTO `supplier` (`id`, `name`) VALUES (43, 'error');
INSERT INTO `supplier` (`id`, `name`) VALUES (44, 'et');
INSERT INTO `supplier` (`id`, `name`) VALUES (45, 'vitae');
INSERT INTO `supplier` (`id`, `name`) VALUES (46, 'dolore');
INSERT INTO `supplier` (`id`, `name`) VALUES (47, 'molestiae');
INSERT INTO `supplier` (`id`, `name`) VALUES (48, 'magni');
INSERT INTO `supplier` (`id`, `name`) VALUES (49, 'cumque');
INSERT INTO `supplier` (`id`, `name`) VALUES (50, 'odio');
INSERT INTO `supplier` (`id`, `name`) VALUES (51, 'recusandae');
INSERT INTO `supplier` (`id`, `name`) VALUES (52, 'voluptatem');
INSERT INTO `supplier` (`id`, `name`) VALUES (53, 'voluptates');
INSERT INTO `supplier` (`id`, `name`) VALUES (54, 'rerum');
INSERT INTO `supplier` (`id`, `name`) VALUES (55, 'magni');
INSERT INTO `supplier` (`id`, `name`) VALUES (56, 'et');
INSERT INTO `supplier` (`id`, `name`) VALUES (57, 'tempore');
INSERT INTO `supplier` (`id`, `name`) VALUES (58, 'nemo');
INSERT INTO `supplier` (`id`, `name`) VALUES (59, 'cum');
INSERT INTO `supplier` (`id`, `name`) VALUES (60, 'possimus');
INSERT INTO `supplier` (`id`, `name`) VALUES (61, 'perspiciatis');
INSERT INTO `supplier` (`id`, `name`) VALUES (62, 'quaerat');
INSERT INTO `supplier` (`id`, `name`) VALUES (63, 'vero');
INSERT INTO `supplier` (`id`, `name`) VALUES (64, 'pariatur');
INSERT INTO `supplier` (`id`, `name`) VALUES (65, 'hic');
INSERT INTO `supplier` (`id`, `name`) VALUES (66, 'saepe');
INSERT INTO `supplier` (`id`, `name`) VALUES (67, 'praesentium');
INSERT INTO `supplier` (`id`, `name`) VALUES (68, 'vel');
INSERT INTO `supplier` (`id`, `name`) VALUES (69, 'fugit');
INSERT INTO `supplier` (`id`, `name`) VALUES (70, 'sit');
INSERT INTO `supplier` (`id`, `name`) VALUES (71, 'qui');
INSERT INTO `supplier` (`id`, `name`) VALUES (72, 'consequuntur');
INSERT INTO `supplier` (`id`, `name`) VALUES (73, 'fugiat');
INSERT INTO `supplier` (`id`, `name`) VALUES (74, 'id');
INSERT INTO `supplier` (`id`, `name`) VALUES (75, 'est');
INSERT INTO `supplier` (`id`, `name`) VALUES (76, 'inventore');
INSERT INTO `supplier` (`id`, `name`) VALUES (77, 'placeat');
INSERT INTO `supplier` (`id`, `name`) VALUES (78, 'maxime');
INSERT INTO `supplier` (`id`, `name`) VALUES (79, 'debitis');
INSERT INTO `supplier` (`id`, `name`) VALUES (80, 'molestiae');
INSERT INTO `supplier` (`id`, `name`) VALUES (81, 'eligendi');
INSERT INTO `supplier` (`id`, `name`) VALUES (82, 'ducimus');
INSERT INTO `supplier` (`id`, `name`) VALUES (83, 'et');
INSERT INTO `supplier` (`id`, `name`) VALUES (84, 'et');
INSERT INTO `supplier` (`id`, `name`) VALUES (85, 'quos');
INSERT INTO `supplier` (`id`, `name`) VALUES (86, 'quisquam');
INSERT INTO `supplier` (`id`, `name`) VALUES (87, 'omnis');
INSERT INTO `supplier` (`id`, `name`) VALUES (88, 'optio');
INSERT INTO `supplier` (`id`, `name`) VALUES (89, 'quia');
INSERT INTO `supplier` (`id`, `name`) VALUES (90, 'vero');
INSERT INTO `supplier` (`id`, `name`) VALUES (91, 'illo');
INSERT INTO `supplier` (`id`, `name`) VALUES (92, 'et');
INSERT INTO `supplier` (`id`, `name`) VALUES (93, 'et');
INSERT INTO `supplier` (`id`, `name`) VALUES (94, 'necessitatibus');
INSERT INTO `supplier` (`id`, `name`) VALUES (95, 'dolores');
INSERT INTO `supplier` (`id`, `name`) VALUES (96, 'quis');
INSERT INTO `supplier` (`id`, `name`) VALUES (97, 'distinctio');
INSERT INTO `supplier` (`id`, `name`) VALUES (98, 'aliquam');
INSERT INTO `supplier` (`id`, `name`) VALUES (99, 'vero');
INSERT INTO `supplier` (`id`, `name`) VALUES (100, 'natus');


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
-- Table structure for table `supplier_payment`
--

DROP TABLE IF EXISTS `supplier_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL,
  `payment_type` varchar(60) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `supplier_payment_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_payment`
--

LOCK TABLES `supplier_payment` WRITE;
/*!40000 ALTER TABLE `supplier_payment` DISABLE KEYS */;
INSERT INTO `supplier_payment` VALUES (1,1,NULL,61946652),(2,2,NULL,6309030),(3,3,NULL,0),(4,4,NULL,77),(5,5,NULL,330857),(6,6,NULL,585),(7,7,NULL,95),(8,8,NULL,6424342),(9,9,NULL,691049968),(10,10,NULL,5890),(11,11,NULL,92286),(12,12,NULL,158504104),(13,13,NULL,9),(14,14,NULL,6476822),(15,15,NULL,361),(16,16,NULL,289600),(17,17,NULL,0),(18,18,NULL,6),(19,19,NULL,0),(20,20,NULL,5806662),(21,21,NULL,6450),(22,22,NULL,91499),(23,23,NULL,698102161),(24,24,NULL,450),(25,25,NULL,40625),(26,26,NULL,52),(27,27,NULL,53663961),(28,28,NULL,494685),(29,29,NULL,755),(30,30,NULL,30),(31,31,NULL,8939649),(32,32,NULL,8693055),(33,33,NULL,1168174),(34,34,NULL,4),(35,35,NULL,47141658),(36,36,NULL,603255031),(37,37,NULL,82369),(38,38,NULL,7974),(39,39,NULL,108),(40,40,NULL,751030),(41,41,NULL,0),(42,42,NULL,26079),(43,43,NULL,53),(44,44,NULL,9),(45,45,NULL,7436146),(46,46,NULL,960180),(47,47,NULL,6869),(48,48,NULL,8),(49,49,NULL,889381),(50,50,NULL,526148177),(51,51,NULL,10),(52,52,NULL,527580013),(53,53,NULL,3811),(54,54,NULL,941745),(55,55,NULL,26),(56,56,NULL,38714890),(57,57,NULL,1744),(58,58,NULL,476),(59,59,NULL,33),(60,60,NULL,387),(61,61,NULL,6475),(62,62,NULL,8),(63,63,NULL,688),(64,64,NULL,15090040),(65,65,NULL,0),(66,66,NULL,341),(67,67,NULL,23),(68,68,NULL,15433325),(69,69,NULL,19369547),(70,70,NULL,8247),(71,71,NULL,76124397),(72,72,NULL,5986),(73,73,NULL,266731),(74,74,NULL,63471),(75,75,NULL,445),(76,76,NULL,36424),(77,77,NULL,35811483),(78,78,NULL,9069),(79,79,NULL,898305726),(80,80,NULL,10360829),(81,81,NULL,479535113),(82,82,NULL,830),(83,83,NULL,658717),(84,84,NULL,0),(85,85,NULL,43734549),(86,86,NULL,9541848),(87,87,NULL,3),(88,88,NULL,8547),(89,89,NULL,7),(90,90,NULL,911675047),(91,91,NULL,674),(92,92,NULL,77),(93,93,NULL,23),(94,94,NULL,999156),(95,95,NULL,9293),(96,96,NULL,6),(97,97,NULL,565),(98,98,NULL,80),(99,99,NULL,0),(100,100,NULL,552419);
/*!40000 ALTER TABLE `supplier_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:50:04


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
-- Table structure for table `supplier_address`
--

DROP TABLE IF EXISTS `supplier_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL,
  `address_line1` varchar(60) DEFAULT NULL,
  `address_line2` varchar(60) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `postal_code` varchar(60) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `telephone` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `supplier_address_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_address`
--

LOCK TABLES `supplier_address` WRITE;
/*!40000 ALTER TABLE `supplier_address` DISABLE KEYS */;
INSERT INTO `supplier_address` VALUES (1,1,NULL,NULL,'Lake Clementinafurt','qfmp','493856475','08600350628','+65(5)4866774311'),(2,2,NULL,NULL,'Mannshire','jtks','65404','662-061-2805','228.828.9705'),(3,3,NULL,NULL,'Janetborough','zbar','18','104.445.1871x251','798-674-3808'),(4,4,NULL,NULL,'McLaughlinview','yxrz','87365','317-043-8445','+16(2)0321578255'),(5,5,NULL,NULL,'New Sydnee','vhpr','92792','504.692.1748','276-998-0490x3220'),(6,6,NULL,NULL,'Jacobsfort','pltg','43622','095-859-9638','417-443-8417x541'),(7,7,NULL,NULL,'Brendonborough','ffzy','85826412','07598385588','(459)852-1228'),(8,8,NULL,NULL,'Port Destini','ttim','66825','09054266629','584.405.4477'),(9,9,NULL,NULL,'Zboncakshire','bnik','105881452','716-608-8256x327','(695)993-5525x1566'),(10,10,NULL,NULL,'East Beth','szrp','38','(104)448-1357','1-874-887-0340x59710'),(11,11,NULL,NULL,'Rutheville','rakx','','756-054-2730x4567','824-820-4294'),(12,12,NULL,NULL,'Darrelville','kmez','7','743.302.3205x94388','1-034-578-9409'),(13,13,NULL,NULL,'West Ariel','aile','535282','631.751.1049','(602)388-9804x017'),(14,14,NULL,NULL,'Adolfofort','scun','61','00377008631','04179249527'),(15,15,NULL,NULL,'New Brendan','apxs','27842547','158-921-5934x08702','(653)729-8877x9073'),(16,16,NULL,NULL,'Alizaborough','dyzw','10583','1-923-613-5972x209','(405)931-1465x430'),(17,17,NULL,NULL,'North Ethanberg','ofql','','395-649-9613','04916944471'),(18,18,NULL,NULL,'Ernestinaton','xzvy','833808680','(125)653-8639x254','567-659-6432'),(19,19,NULL,NULL,'Port Susanstad','hoqc','3','442-223-2324x08462','1-938-465-7815x604'),(20,20,NULL,NULL,'Justenville','kyke','507','1-529-522-1244x313','+12(9)7876747083'),(21,21,NULL,NULL,'Balistreritown','alwe','','1-656-153-7564x169','1-950-830-9719x20082'),(22,22,NULL,NULL,'Landenfort','qacp','124524','(644)247-0293x618','09749838077'),(23,23,NULL,NULL,'South Davidmouth','ergx','9114','373-961-1224','379.749.0352'),(24,24,NULL,NULL,'Alanismouth','etpi','441127','07976026274','292-368-1406x3731'),(25,25,NULL,NULL,'Dickenston','nqwr','2418101','263-921-7528','085.802.6382'),(26,26,NULL,NULL,'McCulloughbury','lacu','','147.488.1324x7060','+24(0)5938686968'),(27,27,NULL,NULL,'Olsonborough','ezwp','','(100)030-6674','01351285529'),(28,28,NULL,NULL,'Evefort','txms','903121','1-247-370-0095x846','1-238-177-9468'),(29,29,NULL,NULL,'Rempelberg','ocut','780993504','06719203616','379.894.7812x6708'),(30,30,NULL,NULL,'Crystalside','cbbt','22420525','+58(4)7182354058','+32(4)3563509649'),(31,31,NULL,NULL,'Robinshire','jmze','3309574','293.232.1411x6853','994-853-5294'),(32,32,NULL,NULL,'Kesslerside','hgqn','2','1-331-487-2607x32976','03019545463'),(33,33,NULL,NULL,'Lake Georgetteborough','ynyx','557850135','958-212-2650','1-047-194-3526'),(34,34,NULL,NULL,'Ashashire','lkwh','97','1-381-671-3451','004.486.3054'),(35,35,NULL,NULL,'New Mckaylashire','jxdt','22830','553-857-7699','015.397.4012x25142'),(36,36,NULL,NULL,'North Christelle','kyxd','43776','652-898-0576x41719','(664)748-7365x9529'),(37,37,NULL,NULL,'West Odessachester','xdxo','846','989.647.2504x85346','1-720-462-3426'),(38,38,NULL,NULL,'New Raymundo','xugw','49','776.759.4922x95682','755-228-2919x7582'),(39,39,NULL,NULL,'Port Madilyn','zdkl','548354','689.005.9980x6918','(358)257-1876x7396'),(40,40,NULL,NULL,'Lake Merritttown','uqna','58','+04(1)0923834726','464.920.6357'),(41,41,NULL,NULL,'Port Brenda','bbma','30622','(351)185-4006x95397','1-674-470-8131x39371'),(42,42,NULL,NULL,'Bednarton','xcyw','21967','600-543-2585x00003','+29(2)5651324048'),(43,43,NULL,NULL,'East Osvaldo','hbty','','+85(1)6783608521','03201675429'),(44,44,NULL,NULL,'Kovacekview','gupj','97792','1-445-760-3122x724','651-619-4585'),(45,45,NULL,NULL,'Johnsonberg','mmxb','340757','919.363.1617x934','(291)411-9220x24336'),(46,46,NULL,NULL,'Turnerton','isds','273','899.671.1029','344-561-9705'),(47,47,NULL,NULL,'Gleichnershire','lvur','655151','634-438-2011x461','00959072669'),(48,48,NULL,NULL,'Handside','cnxf','20583306','639.298.9208x6764','367.649.7595x0679'),(49,49,NULL,NULL,'South Makenzie','jhth','2142903','1-383-009-2859','04201565103'),(50,50,NULL,NULL,'New Noah','dbmh','489331325','+55(1)6798174070','(178)036-8159'),(51,51,NULL,NULL,'West Seamusmouth','hfhd','29214213','02968156742','1-215-466-0698'),(52,52,NULL,NULL,'North Maurineport','oxqb','684373','1-795-358-7970','709-250-8531x79937'),(53,53,NULL,NULL,'South Ike','hghu','9155','(287)621-8005x056','(564)447-2108'),(54,54,NULL,NULL,'Port Janis','fpqv','6','413.910.2326','1-230-175-8261x3339'),(55,55,NULL,NULL,'South Tyreekview','zbua','4020561','716.399.7054x835','1-609-373-4924'),(56,56,NULL,NULL,'Barbaramouth','evup','818884789','502.340.8827x079','123-942-7023x63852'),(57,57,NULL,NULL,'Schadenport','ijie','1004','387.519.4583x29531','996.671.2909'),(58,58,NULL,NULL,'Port Favian','naiu','31','05033630721','1-095-798-7824x724'),(59,59,NULL,NULL,'East Roxanne','udzp','3647','1-827-671-7196x3787','(247)258-7985x0474'),(60,60,NULL,NULL,'Bayerburgh','bihp','119','057.880.7329','1-618-361-6180x56370'),(61,61,NULL,NULL,'Christiansenberg','swgo','415632915','869-610-1747','584-316-4669x351'),(62,62,NULL,NULL,'Nameton','eqbc','77','001-319-9758x94552','672.921.4855'),(63,63,NULL,NULL,'Nyasiachester','ltdf','93947688','(614)009-3024x37594','+43(8)4086020861'),(64,64,NULL,NULL,'Marianville','mfcd','57964138','102-617-6739x77734','763-064-8136x196'),(65,65,NULL,NULL,'McClureberg','xuad','54266','164-445-9064x9597','345-297-0209'),(66,66,NULL,NULL,'Greenfelderhaven','vfsc','670167697','+02(6)1970786234','+88(4)5728629237'),(67,67,NULL,NULL,'Kreigermouth','xvci','6363403','+40(3)0704089297','529-054-0893x547'),(68,68,NULL,NULL,'North Ednaland','yvli','100136025','902-255-7811x0425','648-256-6892x06864'),(69,69,NULL,NULL,'West Deannaport','idfa','2715','769-054-7981x513','(151)372-2904'),(70,70,NULL,NULL,'Port Ayana','ckhk','121','1-946-858-2751x38636','025.778.4999'),(71,71,NULL,NULL,'Tiastad','pgen','36688','(668)071-7755','1-409-324-6372x4619'),(72,72,NULL,NULL,'Port Terrellview','hauk','69335300','1-265-031-5731','858.866.7227'),(73,73,NULL,NULL,'Pearlinemouth','nudx','626332','199.554.8125x027','691.290.4818'),(74,74,NULL,NULL,'South Amir','fcfd','75506','1-118-968-3673','1-283-895-7046'),(75,75,NULL,NULL,'Wallacechester','pceq','768','904-717-2791x804','1-281-303-2985x9306'),(76,76,NULL,NULL,'New Ceciliastad','hjby','25','1-826-430-6310','410.261.4782'),(77,77,NULL,NULL,'Lake Elinorfurt','tbrc','2926','802.618.0391','780-554-3960'),(78,78,NULL,NULL,'New Alejandrinfort','xbss','48985070','132.690.9190','1-318-465-4987x32432'),(79,79,NULL,NULL,'East Chasehaven','ahaq','22517339','1-994-930-8923x0316','(397)709-7622'),(80,80,NULL,NULL,'Billchester','merf','6782451','(977)960-2806','291.348.0704x257'),(81,81,NULL,NULL,'West Garrettfurt','bzst','5','02653857137','(715)425-7503x47947'),(82,82,NULL,NULL,'Irwinfurt','vthm','202','844.092.9520','(990)220-8673x795'),(83,83,NULL,NULL,'Howehaven','pqid','338','443.240.1695x9117','1-313-273-9588'),(84,84,NULL,NULL,'Gerlachview','mzav','447','767-941-8524','1-473-398-2121x87327'),(85,85,NULL,NULL,'Lake Felicita','grna','737880','1-903-921-6950','1-872-261-9532x332'),(86,86,NULL,NULL,'Gutmannstad','nkzg','8','875-643-4142x77480','508-368-3008x509'),(87,87,NULL,NULL,'East Johannahaven','jbvm','986129603','(139)333-9676x454','799.130.3225'),(88,88,NULL,NULL,'Justinatown','xxpa','423160','1-163-085-3514','206.440.6465x90664'),(89,89,NULL,NULL,'Grimesland','wrqy','663309','1-078-031-9120x627','818.049.1571x3090'),(90,90,NULL,NULL,'New Jerelstad','agir','17','1-217-510-6903','1-156-633-5300x76359'),(91,91,NULL,NULL,'Quitzonstad','qycp','','+98(5)0286524100','287.003.3892x82456'),(92,92,NULL,NULL,'Port Jakob','rcxk','1694','(310)328-3854','09218949561'),(93,93,NULL,NULL,'West Stephany','kodx','3613','1-220-612-7812','463-703-2626x609'),(94,94,NULL,NULL,'North Ezekielside','bejd','1','(145)049-8492x6010','196.594.2126x70837'),(95,95,NULL,NULL,'Port Destiney','zloh','7386','1-880-361-7504','870-300-1900x19656'),(96,96,NULL,NULL,'Raumouth','ujed','18666461','06268772992','03748744718'),(97,97,NULL,NULL,'Murphymouth','tuey','','+37(4)2955266852','137-325-8760x30091'),(98,98,NULL,NULL,'Destinimouth','ddeh','2763966','(356)977-9119','(905)559-2010x73611'),(99,99,NULL,NULL,'Lake Keshawntown','bule','459','474-990-2556x80041','(710)877-6414x23684'),(100,100,NULL,NULL,'East Shayna','oqcm','1668993','+29(0)7517563234','551-358-5479');
/*!40000 ALTER TABLE `supplier_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:50:48

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
-- Table structure for table `shopping_session`
--

DROP TABLE IF EXISTS `shopping_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `shopping_session_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_session`
--

LOCK TABLES `shopping_session` WRITE;
/*!40000 ALTER TABLE `shopping_session` DISABLE KEYS */;
INSERT INTO `shopping_session` VALUES (1,1,NULL,'1985-11-21 23:38:19','2019-12-05 18:09:28'),(2,2,NULL,'2006-01-04 00:07:45','2007-06-10 05:18:03'),(3,3,NULL,'1983-03-13 02:44:50','1986-03-22 14:32:41'),(4,4,NULL,'2013-08-11 12:37:00','1989-05-02 12:02:18'),(5,5,NULL,'2019-07-15 18:21:50','1990-02-06 04:47:16'),(6,6,NULL,'1986-10-09 15:07:49','1987-05-14 10:51:36'),(7,7,NULL,'2014-04-08 09:45:43','2020-01-07 05:00:34'),(8,8,NULL,'1994-03-25 04:18:30','1988-07-09 01:56:05'),(9,9,NULL,'2006-06-30 15:48:46','2003-05-19 02:49:07'),(10,10,NULL,'1984-06-11 00:39:54','1976-08-13 13:53:14'),(11,11,NULL,'1984-08-20 22:39:47','2005-10-05 22:32:31'),(12,12,NULL,'1988-07-21 04:21:23','1974-12-12 22:10:00'),(13,13,NULL,'2003-10-30 13:23:58','2002-06-02 14:03:09'),(14,14,NULL,'1999-05-24 15:10:43','2006-05-09 17:37:22'),(15,15,NULL,'2013-07-03 11:04:23','1995-04-18 16:59:20'),(16,16,NULL,'1998-05-03 13:33:40','2020-03-09 06:58:26'),(17,17,NULL,'2013-05-26 08:28:33','1981-08-22 03:59:26'),(18,18,NULL,'2016-01-06 23:55:44','2005-10-14 13:19:15'),(19,19,NULL,'2016-10-15 06:53:45','1991-03-01 20:20:36'),(20,20,NULL,'1996-05-09 09:26:48','2016-06-14 18:24:30'),(21,21,NULL,'1970-11-16 19:21:12','1977-02-02 05:08:17'),(22,22,NULL,'2018-05-17 07:38:26','2003-06-23 06:29:11'),(23,23,NULL,'2016-01-09 23:32:01','2013-08-18 14:33:59'),(24,24,NULL,'1990-05-07 20:40:26','2007-11-10 10:51:07'),(25,25,NULL,'2019-02-21 15:46:46','1976-09-23 00:22:58'),(26,26,NULL,'2005-12-31 15:33:39','1991-09-03 07:56:36'),(27,27,NULL,'2021-08-17 11:02:15','1981-10-28 20:28:43'),(28,28,NULL,'2004-02-03 19:01:44','1998-12-21 11:57:04'),(29,29,NULL,'1992-08-12 01:52:49','1975-08-05 08:57:48'),(30,30,NULL,'1984-10-15 08:20:20','1986-07-20 11:33:40'),(31,31,NULL,'1987-01-01 03:28:36','1997-05-08 01:33:37'),(32,32,NULL,'2012-02-25 03:57:49','1995-04-21 09:41:40'),(33,33,NULL,'1980-01-21 19:53:35','2002-06-05 06:08:17'),(34,34,NULL,'1986-11-07 05:41:20','2005-09-15 15:05:29'),(35,35,NULL,'2003-11-03 14:06:53','1998-10-21 19:15:17'),(36,36,NULL,'1982-03-26 15:08:27','2003-06-08 10:51:33'),(37,37,NULL,'1973-02-19 05:38:30','2013-09-22 11:55:05'),(38,38,NULL,'2017-07-30 02:18:05','2000-05-07 07:02:07'),(39,39,NULL,'1999-02-02 09:42:32','2011-12-22 02:49:40'),(40,40,NULL,'2002-09-07 01:27:12','1973-11-25 10:26:45'),(41,41,NULL,'2002-05-29 22:50:12','1989-05-08 11:49:01'),(42,42,NULL,'1972-05-23 20:53:43','1982-04-08 11:35:37'),(43,43,NULL,'2020-10-05 12:06:32','1989-06-24 13:31:27'),(44,44,NULL,'2020-12-13 15:14:11','1981-01-15 13:17:10'),(45,45,NULL,'2012-04-10 05:20:59','1989-06-17 03:20:57'),(46,46,NULL,'2001-07-09 03:25:09','2008-08-27 03:32:55'),(47,47,NULL,'2007-12-05 08:34:49','2009-11-13 15:57:25'),(48,48,NULL,'2005-01-13 19:19:28','2017-02-27 08:09:52'),(49,49,NULL,'1982-03-19 13:36:43','1988-07-03 20:58:52'),(50,50,NULL,'1992-12-28 10:19:41','2011-06-09 16:07:47'),(51,51,NULL,'2009-12-21 04:05:01','2012-07-22 15:14:32'),(52,52,NULL,'2008-01-02 21:39:42','2001-10-16 06:31:40'),(53,53,NULL,'1984-01-16 17:08:29','1973-02-23 15:30:15'),(54,54,NULL,'1987-09-29 08:31:56','2004-04-19 22:41:11'),(55,55,NULL,'1985-08-10 11:47:10','2018-08-12 11:42:33'),(56,56,NULL,'1998-04-01 00:52:55','2018-07-02 00:18:41'),(57,57,NULL,'2013-06-21 23:58:33','1996-05-16 23:39:57'),(58,58,NULL,'1972-01-02 20:46:24','1990-01-22 19:58:02'),(59,59,NULL,'2017-05-24 21:34:36','2003-07-16 00:26:41'),(60,60,NULL,'2002-12-13 09:34:56','2021-01-24 18:28:29'),(61,61,NULL,'2002-04-01 15:32:42','1982-12-10 05:30:47'),(62,62,NULL,'1979-04-18 14:13:29','1978-06-08 12:52:39'),(63,63,NULL,'1979-09-20 09:10:12','1987-04-05 05:44:23'),(64,64,NULL,'1996-04-13 20:22:58','1982-07-07 18:39:53'),(65,65,NULL,'1975-11-04 20:18:58','2014-06-15 07:44:52'),(66,66,NULL,'1995-02-11 01:46:45','2010-03-12 06:38:24'),(67,67,NULL,'1999-09-16 18:23:38','1989-05-31 08:55:04'),(68,68,NULL,'1984-07-14 07:42:18','1995-07-28 03:57:54'),(69,69,NULL,'1971-01-04 12:25:10','1986-03-07 09:16:08'),(70,70,NULL,'1982-01-25 12:46:56','2011-02-12 14:45:22'),(71,71,NULL,'2015-09-15 08:33:05','2021-06-28 14:45:39'),(72,72,NULL,'1990-09-18 10:03:31','1971-08-31 03:25:26'),(73,73,NULL,'1978-05-02 11:51:47','2011-10-22 04:22:49'),(74,74,NULL,'1971-10-01 19:10:20','2008-02-07 00:05:29'),(75,75,NULL,'1986-10-17 22:33:38','1972-10-10 18:33:46'),(76,76,NULL,'1979-07-09 00:44:47','1974-02-19 01:33:30'),(77,77,NULL,'1978-11-11 16:33:48','2021-04-15 05:23:19'),(78,78,NULL,'2017-07-27 12:51:41','1972-12-20 01:18:05'),(79,79,NULL,'2012-04-26 13:22:06','2013-04-22 12:14:28'),(80,80,NULL,'2013-06-06 08:22:27','1971-08-17 18:40:17'),(81,81,NULL,'1971-04-03 21:04:34','2013-04-11 01:03:15'),(82,82,NULL,'1975-11-22 15:47:16','2001-11-01 17:28:06'),(83,83,NULL,'1997-11-13 17:34:02','1977-09-10 11:10:53'),(84,84,NULL,'1973-01-28 20:43:30','2016-04-13 06:36:52'),(85,85,NULL,'2010-09-09 13:34:21','2002-10-06 09:59:42'),(86,86,NULL,'1988-12-29 22:13:44','1978-11-20 05:12:35'),(87,87,NULL,'1990-09-15 23:29:21','1984-01-08 04:19:04'),(88,88,NULL,'1996-04-30 11:56:11','2008-04-23 12:33:11'),(89,89,NULL,'1983-05-07 03:19:37','2015-09-03 20:22:21'),(90,90,NULL,'1974-06-25 01:59:15','2007-11-14 04:15:43'),(91,91,NULL,'1988-03-27 07:15:00','1996-12-24 15:50:22'),(92,92,NULL,'1971-09-12 22:40:33','1977-09-12 08:49:29'),(93,93,NULL,'1970-11-17 10:08:22','1990-06-28 11:26:42'),(94,94,NULL,'1984-02-01 00:34:15','1994-07-08 00:00:18'),(95,95,NULL,'2009-07-19 18:10:21','2001-03-02 15:59:42'),(96,96,NULL,'1976-11-18 02:12:46','1984-08-21 03:15:01'),(97,97,NULL,'1989-04-02 05:14:44','2009-08-04 11:14:50'),(98,98,NULL,'1995-04-20 04:34:03','1982-10-16 20:21:11'),(99,99,NULL,'1979-03-02 21:35:53','1996-02-18 02:04:18'),(100,100,NULL,'1983-08-03 02:20:39','2008-05-29 01:50:22');
/*!40000 ALTER TABLE `shopping_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:50:25

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
-- Table structure for table `product_inventory`
--

DROP TABLE IF EXISTS `product_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_inventory`
--

LOCK TABLES `product_inventory` WRITE;
/*!40000 ALTER TABLE `product_inventory` DISABLE KEYS */;
INSERT INTO `product_inventory` VALUES (1,1472,'1976-08-27 17:58:49','1989-10-20 10:05:25','1995-08-20 17:55:57'),(2,725,'2011-01-25 00:36:09','2019-03-06 12:09:13','2008-06-16 23:34:48'),(3,14733234,'1983-01-11 09:09:57','1971-10-17 14:42:48','2015-11-16 06:53:52'),(4,6842099,'1992-12-23 17:33:28','1980-06-13 20:16:08','2017-03-17 17:51:58'),(5,0,'1989-04-08 22:32:51','1996-07-12 22:09:17','1985-11-18 05:26:08'),(6,294,'2009-11-01 00:54:07','1983-09-25 15:38:50','1992-12-30 01:08:53'),(7,1624764,'2000-11-03 18:55:07','2005-02-05 08:49:28','2014-01-04 07:48:13'),(8,0,'2002-03-11 11:21:59','1988-09-20 14:46:41','2019-03-22 05:04:14'),(9,587685,'1994-06-04 19:06:27','1988-07-04 14:21:50','1998-04-23 15:20:21'),(10,40,'1971-05-10 17:14:56','2000-04-20 19:03:22','2000-02-09 19:40:17'),(11,0,'2017-09-03 00:00:50','2015-08-21 13:29:42','2017-11-20 10:32:22'),(12,6440046,'1981-02-15 10:17:12','1978-01-15 12:22:22','1998-02-02 17:46:14'),(13,1397203,'2017-11-11 19:31:01','1976-08-14 22:11:43','1986-06-27 18:37:37'),(14,2,'1984-04-28 04:30:03','2015-02-03 14:16:30','1979-11-21 17:46:45'),(15,0,'1988-02-09 11:34:40','2019-06-10 19:39:21','1992-07-28 18:55:54'),(16,278,'1996-10-04 06:11:50','1986-09-11 18:40:56','1987-01-27 21:37:31'),(17,21744,'1971-05-12 05:10:19','1987-12-25 11:06:40','1992-01-08 12:36:15'),(18,60,'2018-02-08 03:13:32','2016-06-20 04:44:43','2018-12-27 02:09:41'),(19,660597,'1977-10-01 04:12:27','1998-08-14 06:06:58','1970-11-14 21:48:32'),(20,33778,'1973-06-03 06:30:00','1984-01-29 08:23:40','2000-03-07 21:01:40'),(21,15996,'2008-08-31 03:39:28','2015-07-27 04:05:48','1984-05-19 01:19:23'),(22,851654,'1979-09-25 22:04:49','1997-02-05 18:11:04','1992-11-04 09:19:04'),(23,42,'2009-03-31 07:01:05','1980-03-17 20:31:43','2017-03-22 22:52:11'),(24,0,'2015-06-07 15:13:07','1991-10-13 22:09:41','1996-10-22 21:54:04'),(25,75,'1984-03-24 12:07:49','2005-03-10 23:57:30','1975-03-27 06:45:47'),(26,379388,'1970-04-02 07:59:39','1989-06-12 06:28:30','1982-08-11 10:45:54'),(27,3,'2006-04-17 19:19:25','1973-11-18 21:20:57','2014-12-05 09:11:50'),(28,399553,'2020-10-10 20:33:31','1988-11-29 19:54:07','2007-04-23 12:29:09'),(29,25336,'1977-06-19 03:34:43','1972-06-27 02:35:18','1999-07-24 03:31:23'),(30,2,'1975-03-28 04:19:32','1992-01-09 05:23:52','1973-07-22 08:13:46'),(31,709724464,'2021-11-04 01:55:50','1971-08-08 03:42:07','1989-05-24 14:12:33'),(32,838256,'2016-09-10 04:37:08','2015-11-15 13:04:14','2000-06-09 04:55:10'),(33,3414,'1989-04-02 01:01:05','1981-08-04 03:54:09','2017-04-26 05:08:56'),(34,46562,'2016-06-17 00:41:26','2012-07-15 17:47:53','1981-04-14 07:03:16'),(35,91269,'2018-09-09 18:12:23','2008-01-16 22:52:25','1977-03-15 00:38:18'),(36,128308,'2002-06-23 06:21:27','1978-07-11 15:22:23','2003-02-13 08:15:59'),(37,573912,'2005-09-08 04:46:27','1972-12-02 18:24:06','1972-11-23 07:19:01'),(38,5665,'1987-08-10 10:49:05','2016-09-03 23:24:39','1987-07-28 20:58:02'),(39,1786,'2016-06-28 10:37:04','1974-11-17 14:05:11','2008-12-30 17:24:18'),(40,697,'1990-01-15 06:33:46','1988-04-05 01:09:47','2013-07-29 10:25:45'),(41,5401668,'1977-03-31 07:54:34','1997-09-24 21:19:08','1978-11-24 19:50:55'),(42,2229,'1982-06-21 17:30:03','1981-05-05 20:35:26','2018-04-21 18:44:39'),(43,4,'1984-08-17 08:57:11','2005-11-21 10:18:45','1992-06-17 15:17:19'),(44,3,'1983-01-23 23:32:13','1974-05-19 04:39:39','2003-07-31 16:16:36'),(45,63,'1981-11-13 23:57:59','1976-08-28 05:09:54','1985-09-18 11:40:30'),(46,31480312,'1980-06-07 12:09:46','1973-11-30 04:56:53','1971-08-17 22:33:31'),(47,1,'2020-08-26 05:53:23','1978-10-26 02:01:26','1997-01-31 11:06:36'),(48,6528,'1986-06-14 21:17:15','1995-08-18 23:18:37','1984-06-04 00:33:45'),(49,235,'2016-05-29 11:37:52','1976-07-28 06:09:01','2021-08-27 08:00:59'),(50,375949293,'2019-11-27 10:12:47','1994-07-04 08:59:38','2009-05-28 23:28:11'),(51,254,'2021-08-25 10:52:50','2009-12-14 22:20:17','2015-09-29 12:36:59'),(52,2,'2009-04-02 06:23:21','2000-12-02 23:14:16','1983-03-11 14:31:46'),(53,20,'1991-02-26 11:07:40','1984-07-30 23:00:33','1989-10-31 04:40:38'),(54,664317,'1972-12-25 22:27:54','2008-03-09 19:50:14','2007-08-03 06:02:09'),(55,218254,'1990-05-04 10:27:38','2005-05-06 02:05:15','1972-07-02 11:05:51'),(56,0,'1981-02-08 08:16:16','1980-03-18 07:57:07','1976-11-21 21:19:34'),(57,18796977,'1975-11-02 04:28:32','1986-04-07 04:38:46','2007-11-16 08:48:22'),(58,1,'2007-01-20 17:47:19','2009-10-21 03:38:14','1997-10-21 21:02:30'),(59,597667,'1984-11-23 23:02:50','2006-02-05 01:51:07','1991-10-25 01:28:34'),(60,6,'1973-09-17 12:28:21','1971-07-01 23:59:31','2018-07-01 11:01:25'),(61,1927,'1987-09-15 07:50:12','1981-04-25 23:12:58','1991-02-07 04:26:29'),(62,14703032,'2007-01-06 17:12:06','1988-01-27 22:15:47','1970-05-25 14:07:57'),(63,9,'1995-11-28 09:20:06','1986-03-21 18:42:25','2013-10-13 09:25:16'),(64,764,'1983-01-03 18:19:22','1994-01-27 13:37:58','1991-07-22 22:06:42'),(65,621715233,'2005-06-13 04:16:35','1975-11-17 15:46:44','1999-10-26 03:31:09'),(66,714475928,'1998-12-23 23:55:27','2003-10-24 19:10:18','1997-08-04 17:44:08'),(67,56854,'2016-07-11 08:11:49','2018-04-29 18:37:58','1985-10-09 09:43:44'),(68,39885,'1993-09-30 03:49:52','2002-09-16 11:39:54','1992-04-16 23:49:14'),(69,2150181,'1976-07-09 23:50:43','1979-05-07 06:11:14','2014-08-13 11:00:10'),(70,22977,'1983-05-08 07:23:05','1994-01-14 23:12:35','1996-06-22 07:08:50'),(71,95,'1974-09-13 05:24:45','2019-11-23 01:41:58','1987-12-09 07:02:51'),(72,1465,'2006-07-17 07:07:03','1987-04-17 18:37:08','2019-03-08 20:30:36'),(73,4545,'1977-03-16 08:40:01','1985-03-30 15:47:46','2004-05-12 00:31:29'),(74,35894,'1996-09-20 07:30:26','1983-10-11 22:43:06','1974-09-17 11:10:15'),(75,20,'1996-12-10 03:08:01','1998-09-19 19:18:22','2008-04-08 10:48:01'),(76,2,'1997-02-19 12:57:50','1999-08-28 18:12:00','2000-09-30 00:08:39'),(77,1,'1977-09-21 05:31:53','1993-03-30 11:51:52','1983-07-05 08:24:27'),(78,33774592,'1995-11-26 17:26:18','2001-12-03 05:34:43','2013-07-19 20:29:55'),(79,78866,'2020-07-19 18:07:40','1970-05-30 21:18:07','1970-06-09 00:39:17'),(80,217905418,'2004-02-01 21:53:47','2013-01-11 10:18:25','2002-12-01 16:30:55'),(81,64919,'2010-10-29 08:52:22','2018-08-06 02:12:28','2008-05-01 22:52:52'),(82,262380,'1999-09-29 14:52:58','1999-04-02 01:38:02','1985-09-05 14:22:23'),(83,1466,'1983-02-04 17:24:24','1974-11-09 00:12:16','2007-06-23 09:05:19'),(84,3759402,'1982-07-04 07:45:53','1999-02-10 21:34:04','1997-06-04 16:31:46'),(85,10,'1979-02-21 05:12:05','1970-02-24 21:40:15','1987-06-10 14:51:56'),(86,445231,'1979-10-30 23:56:05','1979-07-21 21:54:08','1970-04-13 16:08:18'),(87,30821,'2000-07-20 16:14:54','1980-08-04 22:19:19','2020-08-21 13:02:24'),(88,141517,'2019-05-01 04:15:20','2020-05-10 07:23:10','1977-05-24 11:48:22'),(89,29,'2012-08-14 16:41:00','2003-07-27 19:17:00','1984-07-19 00:39:52'),(90,0,'1986-11-30 09:33:09','1977-08-01 20:57:29','2009-09-04 08:50:48'),(91,510,'2015-10-21 14:12:09','1989-02-06 06:21:36','2018-01-18 07:20:09'),(92,268,'1970-10-20 02:58:22','2005-10-05 21:08:51','1985-11-04 01:39:54'),(93,11481,'1989-07-01 22:28:01','1991-11-13 13:56:30','1978-08-15 05:02:39'),(94,528260935,'1970-08-21 11:18:33','1990-03-22 02:41:47','1971-11-17 09:47:08'),(95,935064,'1984-08-09 22:55:28','2009-01-01 09:38:01','2001-09-03 06:06:16'),(96,812673,'1980-06-19 08:35:50','1979-07-27 20:24:09','1985-12-05 01:57:23'),(97,150,'1986-06-11 04:33:35','1991-06-30 08:13:04','1971-01-18 12:57:59'),(98,93,'1990-07-26 14:44:28','2015-03-13 23:39:58','1983-01-03 11:12:41'),(99,2922695,'1988-03-26 06:43:45','1986-01-31 23:32:28','1996-04-19 09:00:53'),(100,310976606,'2016-07-09 01:18:17','1992-06-26 08:10:29','2000-05-07 21:15:33');
/*!40000 ALTER TABLE `product_inventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:42:23

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
-- Table structure for table `product_catagory`
--

DROP TABLE IF EXISTS `product_catagory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_catagory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_catagory`
--

LOCK TABLES `product_catagory` WRITE;
/*!40000 ALTER TABLE `product_catagory` DISABLE KEYS */;
INSERT INTO `product_catagory` VALUES (1,'suscipit','Similique minima omnis est. Aut iure est voluptatum voluptas. Officia pariatur rerum omnis quia et. Eligendi aut corporis dolorem perspiciatis aut facere laborum.','1990-10-24 01:35:00','2020-09-25 17:56:37','2004-07-04 17:31:00'),(2,'sunt','Eum earum aut eveniet ea voluptatem consequatur iusto. Inventore eveniet provident temporibus nulla accusamus odit. Quia sunt ea reiciendis alias ut. Repellat eum eum nam ut voluptatibus libero. Aut hic molestias possimus omnis.','2016-02-26 19:56:24','1974-12-09 14:02:01','2008-09-07 03:59:55'),(3,'aut','Occaecati vel aut esse quia quas. Alias corrupti placeat nostrum necessitatibus velit. Vitae sunt modi delectus.','1988-06-07 07:33:43','1986-02-23 22:41:08','1980-09-10 04:12:36'),(4,'suscipit','Fuga molestiae omnis voluptas deserunt. Itaque et suscipit aut ab laborum culpa quis. Et quisquam ad voluptatum a reiciendis ut recusandae. Nam in ipsum qui aut quis delectus iste.','1976-04-09 20:33:56','1989-03-24 19:15:33','2013-03-22 17:43:43'),(5,'et','Ut provident in ut reiciendis laudantium. Et ut aperiam quos. Sed dolorum eaque repudiandae eaque vero eum illo. Atque incidunt rerum occaecati quos magni.','1981-09-14 14:21:53','1973-08-28 12:22:33','1976-03-14 01:36:04'),(6,'repudiandae','Repellat rerum repellat ut dolores. Nam nesciunt et molestias doloribus accusamus. Neque fugiat autem nihil porro quae. Reiciendis omnis aut eos maiores non itaque quas.','2000-01-12 10:42:05','2009-04-24 12:48:15','1994-07-04 15:25:43'),(7,'quos','Est earum quis voluptates at sed id. Et perferendis ullam suscipit officiis. Sit quam molestiae ea non ad.','1973-04-12 08:03:07','1980-06-17 08:31:20','1978-03-29 00:07:05'),(8,'ea','Assumenda veritatis laboriosam quia. Commodi doloribus eum et dolorum unde numquam. Sint temporibus laudantium aliquid minus in dolorum quasi est. Neque architecto et ut ducimus.','1988-03-29 10:58:36','2001-02-07 06:09:50','2013-08-11 04:29:17'),(9,'qui','Illo dolor sit voluptatem eos. Nobis qui minima qui aut. Voluptas sint voluptatum tempore ex doloremque fuga reiciendis ut. Corporis quos recusandae amet id sapiente quis.','1984-02-10 10:44:48','1973-11-06 06:44:00','1985-09-13 11:27:14'),(10,'eos','Explicabo sed placeat aut accusamus est eius. Vero cupiditate rem suscipit consectetur. Soluta doloremque accusantium sequi expedita laborum officia eos. Incidunt possimus facere sint.','1996-06-01 15:37:19','2013-06-18 20:43:32','1999-06-12 22:31:02'),(11,'qui','Dolorum occaecati voluptas quia voluptatem natus velit. Delectus aut assumenda tenetur et.','2013-01-27 06:40:00','1971-04-07 16:41:11','1976-09-22 18:09:45'),(12,'eum','Itaque dicta id et dolorem iure ut quasi. Sed dolores quo ut natus consectetur. Totam qui quos voluptate sint omnis.','1970-08-22 18:40:08','1972-11-24 21:15:13','1987-07-26 23:51:11'),(13,'rerum','Commodi eos quis veritatis aut sint. Perspiciatis placeat deserunt optio molestiae provident nobis. Quia et aut in. Quia dolor sunt sit quam voluptatem.','1972-08-01 06:34:48','1999-08-14 16:43:49','2009-11-08 18:30:26'),(14,'tempore','Dolorem non eaque libero tempora beatae ex. Dolores enim quo in quia ea ab. Et sed excepturi cum quis voluptatibus aliquam aliquam. Consequatur accusamus maiores accusantium eaque doloribus vero exercitationem.','1999-06-17 09:17:11','2009-04-10 13:38:44','1980-03-03 07:52:27'),(15,'voluptatem','Qui minus et ducimus praesentium. Ipsa ut aliquid eum sint vel fuga. Odit adipisci optio dolorem aut.','2016-11-09 18:32:00','2006-08-30 22:53:24','1971-12-11 08:13:24'),(16,'quam','Vel enim blanditiis voluptates ducimus. Tenetur dolor quam et a et. Quia facere sunt dolorem deleniti doloribus. Quasi doloremque doloremque et adipisci.','1993-12-18 18:46:43','2008-04-28 22:56:00','2010-12-19 04:52:38'),(17,'sint','Rerum officiis est nesciunt voluptas sit. Aut molestias autem vero rerum illo cupiditate hic. Amet sed adipisci deleniti delectus doloremque distinctio aperiam.','2018-07-03 11:57:32','1975-09-29 21:07:57','2007-01-23 22:29:11'),(18,'mollitia','Doloremque quis corporis et perferendis. Aliquid qui est deserunt voluptates molestias. Officiis quis et reprehenderit ea molestiae. Aut doloribus voluptatem quia repellat qui.','2017-12-06 16:06:09','2009-02-17 04:04:28','1995-02-10 18:48:12'),(19,'voluptate','Deleniti vel minus earum rem. Non magnam in perspiciatis ut magnam.','1973-01-12 22:04:16','1975-07-10 06:42:35','1979-11-17 09:00:08'),(20,'nam','Delectus et temporibus quia illo ut aut. Error perferendis modi similique illum commodi.','1977-10-19 05:03:57','1993-03-11 03:29:57','1991-06-19 00:27:39'),(21,'veniam','Quas aut quo maiores iure saepe. Aut doloribus sint quibusdam accusamus. Et ipsa dolore est quibusdam magnam ipsa quos. Velit dolores ut aliquid eveniet ut eligendi adipisci.','2018-01-16 07:59:31','1976-01-03 01:07:15','1970-12-11 06:28:13'),(22,'rem','Sequi neque laudantium ea. Aut animi vel officiis quisquam. Vero et est molestiae sunt. Qui modi explicabo pariatur molestiae distinctio rerum sint voluptatibus. Provident dignissimos alias commodi aut eum.','1985-05-10 12:29:57','2017-10-31 21:00:04','2004-04-24 16:28:57'),(23,'voluptas','Tempora consectetur eius eos impedit quia minus. Aut voluptatem fugit ad sed et qui laborum eveniet.','1987-07-28 07:19:42','1998-06-18 17:56:06','2007-09-25 17:29:45'),(24,'alias','Asperiores consequatur dolor qui eum earum. Dolorem quod eum nobis dolorem aut et.','2008-01-01 00:57:29','2014-05-08 17:14:31','1985-05-28 17:56:20'),(25,'rem','Itaque aut et odit at. Similique fugiat ut et. Id doloribus voluptatum aperiam facilis aut. Autem eos atque beatae eos aut doloribus.','1985-06-28 04:14:52','2016-10-17 21:11:12','1997-08-19 06:08:05'),(26,'ut','Quo quia quia vero suscipit cum. Dolorum nulla suscipit voluptatem officia fugiat ea et. Natus dolores facilis omnis dolorem.','1984-01-26 15:20:04','2018-01-09 04:02:47','1987-12-18 09:11:58'),(27,'doloribus','Enim error temporibus sed. Est dicta eos corrupti voluptas sequi vel dolor. Ea ipsam dolor sit non. Nam itaque officiis similique vitae rerum qui. Reiciendis officiis beatae vel modi sunt rerum aspernatur.','1990-07-28 19:07:25','2007-11-13 20:41:08','1995-01-01 00:50:24'),(28,'inventore','Necessitatibus distinctio aut modi. Iusto provident iusto consectetur sit consequatur enim inventore. Suscipit quibusdam ipsam vel voluptas debitis. Voluptate culpa repellat enim officiis eligendi blanditiis.','2015-10-31 07:27:51','1976-06-28 22:56:26','2002-09-17 06:16:18'),(29,'necessitatibus','Accusantium et nulla corrupti saepe velit enim. Enim dignissimos illum vero odit sapiente. Minus nihil hic recusandae. Aliquam vel ea non.','1988-12-29 18:41:10','2012-03-10 15:07:08','1987-03-02 14:15:54'),(30,'atque','Vel nostrum non corporis soluta voluptas. Natus qui consequatur est nihil et aut neque veniam. Magni consequatur facere corrupti. Error ducimus sapiente ea maxime ullam ea.','1989-04-20 06:27:06','2005-10-16 11:40:47','2021-04-15 17:48:24'),(31,'qui','Ut et iste ipsum distinctio sit. Nihil sit vero laborum sequi ut animi. Eveniet ea aliquid quidem est dolores qui.','1990-03-05 21:51:54','1993-07-06 03:55:34','2019-09-21 17:40:19'),(32,'recusandae','Et natus et autem nihil rem aut earum perferendis. Sit aut rem cum voluptatem alias aut. Quo occaecati beatae hic hic eos.','2005-04-21 18:09:00','1973-12-11 07:06:08','1979-07-14 09:03:09'),(33,'porro','Ab eligendi sed nesciunt quia eum ipsam. Qui iusto sequi et tenetur voluptatem. Repellendus optio recusandae est voluptatem. Corporis molestiae voluptates ut quae maxime possimus.','1985-12-25 22:48:44','1998-12-22 16:40:05','1995-07-03 19:13:14'),(34,'fugit','Accusamus soluta tempore iure et. Commodi repellendus et alias voluptatibus voluptatibus repellat.','2020-11-19 16:06:23','2003-01-15 17:03:01','2020-05-16 07:20:32'),(35,'nobis','Voluptas quos fugiat cupiditate et. Voluptas autem aut dolor tenetur provident. Reprehenderit occaecati et sed voluptas.','2019-01-30 05:18:01','1978-06-11 10:03:14','1978-12-04 02:19:06'),(36,'voluptas','Quos dolorum dolores voluptatem odio voluptatem. Eius qui expedita neque dignissimos. Consequuntur corrupti laborum qui similique voluptatibus magnam.','2021-06-29 19:43:46','1994-07-06 20:00:22','2011-02-11 02:28:45'),(37,'sunt','Quos qui architecto facere ea. Ut labore et cupiditate voluptate mollitia et. Quo animi voluptates nisi odit. Enim aut qui autem aut sed dolor magni commodi.','1998-09-28 02:42:07','1979-08-24 13:42:06','1974-11-22 10:20:58'),(38,'necessitatibus','Reiciendis nisi debitis ut. Fugit recusandae repellendus ad enim voluptas ipsa. Eius quis occaecati maiores dolorum facere nulla. Occaecati ipsam ut modi consequatur vel.','1989-09-13 10:40:59','2019-09-30 16:38:20','2013-04-03 18:16:01'),(39,'quaerat','Eos quia aut unde ut qui repellat. Perspiciatis quia saepe soluta sunt aliquam quia suscipit. Soluta accusantium labore consequatur maiores dignissimos expedita. Labore quaerat voluptatem repellat maxime at et quae.','2006-08-12 11:25:50','1998-02-27 21:23:11','1998-11-07 03:08:13'),(40,'minima','Molestias et soluta et dicta voluptatum repellendus qui voluptatibus. Atque laborum numquam et id explicabo. Nulla quia totam amet incidunt quia et repellendus.','1972-03-06 18:33:34','1988-06-20 14:17:59','2021-06-19 22:33:25'),(41,'odit','Possimus nemo facilis facilis porro aspernatur eum perspiciatis. Modi occaecati temporibus voluptatem non. Laboriosam aut et nihil iusto.','1993-10-10 09:37:19','2018-01-06 17:45:50','2016-10-10 08:23:37'),(42,'expedita','Cumque dolore quidem culpa et laborum aliquid architecto. Impedit velit molestiae hic soluta maxime vel necessitatibus. Pariatur vel error aspernatur incidunt reiciendis.','2010-04-16 16:18:08','2000-12-28 13:48:45','2006-05-01 02:06:52'),(43,'consequatur','Porro blanditiis sed est deleniti et aspernatur sed quaerat. Tempore ut ex provident voluptatem quisquam maxime. Non aspernatur voluptatem ea qui molestiae quod.','1985-11-01 16:04:38','1972-06-13 04:59:22','1997-07-13 15:48:43'),(44,'quia','Dicta eum at laudantium iste illo eius. Maxime ducimus inventore optio laborum occaecati aspernatur blanditiis.','1991-12-16 23:27:39','2001-08-08 00:59:44','2002-03-15 02:41:37'),(45,'veritatis','Id temporibus officiis omnis dolorem iusto error sed aliquam. Error aut et animi repudiandae voluptates eos et sint. Amet ut eius quia aut.','1992-08-08 08:33:13','2001-02-12 23:57:01','1990-03-01 14:02:46'),(46,'harum','Quas eligendi voluptatem aut enim dolores. Eos perferendis dolorum ut non laboriosam. Cupiditate voluptatem dignissimos velit nostrum et aut.','2008-01-02 05:44:54','1983-08-27 02:25:35','2002-07-24 15:39:48'),(47,'ipsum','Omnis tempore suscipit sunt. Fuga et natus distinctio et aliquid aut tempora. Illum quo magni ullam.','1997-03-23 16:57:10','2009-06-12 19:38:24','2014-08-24 08:31:37'),(48,'quo','Accusantium ut sunt voluptas maiores expedita nesciunt ut. Ut unde aperiam itaque. Inventore sit ea omnis quae. Reiciendis id qui quod quia officia aspernatur.','1972-10-26 17:02:14','1987-06-18 03:47:09','1971-10-30 20:52:02'),(49,'ut','Repudiandae non corrupti voluptatem. Fugiat repudiandae quas est et quos. Deserunt distinctio suscipit cupiditate ea sint a nemo. Eos distinctio iusto eos autem.','1997-11-03 13:52:41','2003-07-04 17:02:39','1993-12-01 00:59:38'),(50,'praesentium','Non rerum optio libero velit sunt. Consequatur provident beatae vitae est consectetur ipsa. A nihil cum suscipit animi nisi quis.','2001-07-09 14:27:23','1994-05-20 02:23:07','2015-12-28 19:50:35'),(51,'dolorum','Accusantium voluptatem ea cupiditate recusandae quo. Assumenda consequatur asperiores unde. Soluta aut quis dignissimos. At sint dolor omnis aut.','1983-05-07 20:35:42','1991-10-21 16:08:43','1971-01-27 02:01:01'),(52,'quo','Deleniti et nemo a laborum. Non quasi vel iusto culpa ut quibusdam eum.','1991-10-07 11:51:08','2007-12-01 05:15:41','2013-12-13 12:57:47'),(53,'id','Labore nihil doloremque aliquid ab est molestiae minima. Consequatur explicabo temporibus excepturi repellendus tempore exercitationem vitae porro. Eum dolores alias eos. At sunt doloremque culpa magnam dolorem ipsa porro.','2008-03-22 07:47:31','1996-02-14 00:34:32','1987-11-10 23:14:14'),(54,'excepturi','Beatae nobis iusto vero incidunt laborum optio natus laboriosam. Aut commodi sint et ut eum temporibus rerum quidem. Impedit voluptas repudiandae ipsa tempore. Quidem consectetur consequuntur quo est qui.','1972-03-31 13:38:28','2008-07-24 03:22:43','2001-10-08 03:42:53'),(55,'sapiente','Ab perferendis optio et corrupti. In sit dolorum vel sapiente. Accusamus eos voluptatem nam sed ab deleniti incidunt. Repellendus et atque voluptatem eos officia doloremque. Laborum tenetur magni est vitae doloremque ut.','1994-11-20 17:34:15','1980-11-25 13:51:36','1980-07-31 18:54:54'),(56,'veritatis','Sed recusandae ab dolores quo rerum autem. Omnis suscipit corporis neque quia sint quidem. Eligendi libero eaque eius ut minima. Cum tempora error quod illo fuga molestiae necessitatibus.','1986-11-09 04:32:38','1997-10-11 13:54:26','1980-04-06 00:49:56'),(57,'qui','Et iste veritatis sed repellat. Sint numquam molestias quibusdam excepturi. Placeat mollitia sunt et ad dolore.','2017-05-17 06:33:26','1979-09-26 01:39:57','2013-03-04 06:48:22'),(58,'enim','Alias quibusdam magnam corporis aliquam est. Sit autem dolorum rerum voluptatem molestiae dolores ipsa quam. Inventore rem reprehenderit provident excepturi. Ut molestiae et libero consequatur. Porro consequatur molestiae laborum culpa sunt.','1970-05-14 20:19:32','1997-02-20 22:19:27','1995-06-24 04:31:40'),(59,'molestias','Ex voluptate labore inventore eum assumenda. Et libero ipsa aut iure voluptatem molestiae asperiores. Rerum qui libero at voluptatem sapiente architecto earum odio. Impedit quia numquam explicabo laudantium qui suscipit corrupti. Aut quis et inventore velit.','1978-07-02 08:27:29','1986-03-01 08:49:31','2007-04-19 16:48:21'),(60,'dicta','Deserunt ducimus sint quisquam dolores et voluptas facilis. Quas sint quia aperiam nam. Laudantium corrupti necessitatibus ratione ea voluptatem quidem rem.','1977-11-21 12:20:26','1988-02-07 03:21:37','1985-02-08 01:54:51'),(61,'quam','Possimus doloremque culpa qui eaque et eveniet fugiat saepe. Repudiandae cupiditate labore et deleniti quia et. Error sit ex et et. Numquam voluptas enim voluptatem.','1970-02-25 04:25:29','2000-02-08 11:47:37','2012-02-02 03:27:59'),(62,'eos','Debitis doloremque et veritatis velit tenetur. Laborum et consequatur inventore nihil. Est non quos ut explicabo. Quaerat nam laboriosam id.','1995-01-16 16:44:31','1978-11-17 18:37:51','1975-08-17 18:37:52'),(63,'veniam','Necessitatibus voluptate saepe odio dolor quibusdam laudantium. Labore suscipit temporibus esse atque. Est eos aut inventore sapiente qui.','2002-01-12 01:16:50','1998-09-13 19:26:20','1984-02-23 20:42:00'),(64,'aut','Magnam quam placeat enim fugiat provident sunt. Quis et magni corporis perspiciatis. Sit ipsa fugit magni molestias. Dolores qui aliquam esse. Quis voluptates adipisci esse neque.','1980-06-08 07:42:14','2017-03-17 14:31:17','1974-04-28 20:30:22'),(65,'voluptas','Aliquam quis et ut eos nihil aut sed. Reiciendis autem dicta id quaerat hic reiciendis quisquam. Non et ut eaque odit atque. Quasi occaecati dolorem sunt.','1988-04-03 02:00:44','1994-08-25 10:08:46','2002-03-10 05:16:54'),(66,'fugit','Voluptatem enim sapiente quidem perspiciatis. Consequatur recusandae et est dolores. Quia ea tempore iste blanditiis odit beatae et.','2003-10-02 16:59:01','1992-06-15 07:28:54','1974-05-05 18:20:40'),(67,'omnis','Ut qui ea nulla molestiae repellat. Est doloremque suscipit sunt velit voluptas molestias quibusdam quam. Et qui sequi et voluptatem laudantium asperiores. Amet quas consequatur quae rerum numquam.','1982-03-16 23:33:56','2021-02-08 04:18:39','2020-02-18 00:56:19'),(68,'maxime','Veritatis nihil architecto et voluptatem et fugit id culpa. Sunt sint qui facilis ex. Est dolor iusto quas voluptatem blanditiis.','1997-02-20 23:26:55','2004-11-23 13:14:46','1975-06-11 09:14:40'),(69,'nisi','Necessitatibus fugit et praesentium consequatur at. Eius libero rerum corporis rerum illum odit ut. Magnam veniam aut quas nihil veritatis veritatis ea aut.','1987-04-03 08:34:06','2018-07-08 22:41:39','1983-10-17 06:23:34'),(70,'quidem','Sapiente saepe aut rem suscipit. Earum molestias aut recusandae atque. Cumque distinctio quaerat exercitationem qui.','2013-09-13 13:25:15','1999-10-05 12:40:51','2005-07-09 10:15:59'),(71,'aut','Quae dolor voluptatem dolorum voluptatem. Eum perspiciatis sint ut quo. Ea assumenda sed id necessitatibus. Nostrum laudantium sit veritatis aliquid qui.','1991-06-06 19:17:04','2017-02-15 00:27:09','2017-08-07 23:36:29'),(72,'doloremque','Tempora debitis praesentium dignissimos odit debitis. Nihil distinctio qui vel magnam.','2014-07-03 06:40:23','1996-07-08 22:31:02','1990-08-04 16:26:26'),(73,'incidunt','Exercitationem dolorem perferendis eveniet id nihil quisquam est. Deserunt in ea doloremque officia amet. Sed vel dolorum est quod voluptatem cumque. Temporibus dolorem quia dolor ducimus aliquam ad. Quo nisi reiciendis animi aspernatur nulla voluptatem.','2018-09-30 23:51:40','2015-03-10 06:12:54','1989-12-31 00:22:51'),(74,'velit','Mollitia qui perferendis ad sed sapiente. Praesentium nisi omnis fugiat ipsam dolor libero voluptatem ut. Incidunt doloremque saepe aut exercitationem.','1993-08-15 14:07:14','1972-05-11 22:55:09','2015-06-29 10:01:31'),(75,'dolore','Quia voluptatibus rem magnam impedit repellendus et nostrum. Omnis in officia quod eum non. Itaque sint eligendi enim et aut dolor qui. Qui quia non et ut reprehenderit.','1999-04-08 22:51:54','2016-01-20 05:46:40','2010-07-12 03:39:33'),(76,'et','Suscipit esse quisquam quod rerum earum et rerum cupiditate. Expedita aut quia sit eum qui assumenda. Quibusdam est nobis provident et facere cumque maiores. Aut quisquam illum aspernatur soluta at recusandae aut.','1992-07-08 12:45:46','2005-12-15 11:25:45','1974-11-07 19:57:04'),(77,'qui','Voluptas consequuntur aliquam totam ab. Non est fuga atque eum.','2020-05-29 20:43:37','2018-09-28 08:31:49','2002-05-25 23:13:26'),(78,'placeat','Accusamus magnam id quis quos. Doloribus ipsa ipsum adipisci totam dolor autem non. Necessitatibus ut saepe ea excepturi. Sapiente facere laboriosam minima molestiae dolores sit eius omnis.','1993-01-11 15:29:33','1975-01-16 00:25:08','1975-08-02 22:17:19'),(79,'dolore','Iste qui libero soluta nihil optio. Soluta quo ut voluptatibus et. At et culpa itaque laborum quasi omnis itaque. Exercitationem enim itaque quaerat laboriosam. Et voluptas dolorem eos perferendis pariatur quia.','1985-05-01 15:56:46','2005-08-22 22:54:24','1977-01-11 00:06:13'),(80,'quisquam','Non laborum iure voluptate id a ut consequatur blanditiis. Non consequuntur ipsum provident voluptatem et quis consequuntur. Molestias consequuntur exercitationem quia blanditiis animi rerum.','2021-08-05 19:58:15','1977-04-10 04:59:11','1990-06-08 05:46:56'),(81,'molestiae','Repellat consectetur unde ut cum harum quia dolores mollitia. Perferendis debitis velit recusandae. Blanditiis quis aut a dolore. Esse ut accusantium ea qui hic consectetur praesentium sit.','2000-03-15 07:17:50','2014-07-22 19:09:59','2015-06-14 10:39:54'),(82,'rerum','Velit voluptas explicabo rerum nisi dolores consequuntur et sed. Libero nulla ullam doloribus ipsa. Voluptatum nesciunt repellendus incidunt fugiat et et.','2002-07-07 10:24:18','1983-02-13 19:21:23','1982-01-15 14:32:04'),(83,'modi','Sit eius voluptates error nihil sit. Quia sed maiores delectus. Officiis dolorem consectetur quis officiis earum reprehenderit veniam.','2008-05-15 14:01:19','2009-06-30 02:21:46','1979-06-09 08:27:01'),(84,'odio','Necessitatibus reiciendis itaque est voluptatem explicabo. Voluptas architecto minima et nisi. Aut ipsum laudantium quas sit et vel culpa. Dolorem optio perferendis voluptatum ipsam sunt amet.','1998-12-26 02:14:27','2009-04-03 19:56:27','2006-10-24 13:12:23'),(85,'sit','Eum recusandae molestiae soluta corporis quae at blanditiis. Quae veritatis magni magnam ut dolores ducimus. Molestias molestiae autem ipsum rerum suscipit et reprehenderit reiciendis.','1973-03-02 16:30:37','1977-04-24 15:08:46','1982-11-14 10:44:09'),(86,'eveniet','Et qui dolor sed qui vel et expedita. Eos eum quo voluptas libero similique aut cupiditate. Quidem maxime qui minus exercitationem accusamus quibusdam ut. Sit omnis ut eos quia nesciunt totam voluptas.','1981-03-10 18:02:05','1982-05-27 12:50:08','2017-11-30 19:33:48'),(87,'id','Est ea quia tempora eum vel necessitatibus velit eaque. Similique aut a sed omnis sit soluta accusamus et. Dolor ipsam cupiditate est sed totam. Accusantium dolor ducimus et voluptates totam. Ut sunt autem quia cupiditate natus voluptatem.','2019-10-12 02:56:21','2004-04-19 09:30:09','2013-02-22 13:48:46'),(88,'ut','Consequuntur eum ut laboriosam officia perferendis quod dolore. At inventore corporis ad delectus laborum. Quod officiis doloribus omnis inventore incidunt consequuntur qui. Voluptates deserunt voluptas tempore et aut molestias.','2009-01-27 22:13:22','2018-08-08 01:18:50','1993-07-26 16:25:27'),(89,'minus','Id atque quo debitis ut in repudiandae aut. Minus provident est fuga. Qui natus id rem saepe eum qui modi. Sed molestiae reiciendis qui velit. Dolores similique et voluptas iste magni et veritatis animi.','2019-03-27 07:19:29','1970-04-16 05:17:37','2004-08-27 20:42:12'),(90,'odio','In repudiandae non magni perspiciatis consequatur qui. Voluptatem et necessitatibus molestias tempora. Qui et voluptatem dolores ullam consequatur voluptatibus dignissimos. Delectus eum consequatur praesentium cumque sunt.','2014-06-06 04:37:36','2003-03-04 04:08:11','2013-06-06 09:54:21'),(91,'modi','Quo velit sint tempore suscipit. Tempore sint explicabo eum beatae. Voluptas quia veritatis et et et. Quas quis sunt unde minima sunt voluptatibus voluptatem eum. Facilis eos magnam aut praesentium quisquam ipsum sed.','1990-03-04 06:03:40','1977-06-25 22:29:38','2016-07-01 11:38:36'),(92,'officia','Rerum illum sint ullam ducimus. Rem quis fuga tenetur voluptatem quasi debitis beatae.','1999-07-29 06:27:25','1999-01-22 12:57:56','2014-07-15 00:44:59'),(93,'et','Qui veritatis debitis quae amet et. Molestiae dolore corporis est saepe voluptas. Omnis alias perferendis harum non minima et.','2013-06-17 23:11:26','2015-02-19 21:39:25','1988-10-04 20:10:06'),(94,'dolorem','Voluptatum reprehenderit facere aperiam delectus aut. Expedita occaecati non delectus blanditiis. Aut neque impedit nam autem harum beatae. Et magni deserunt voluptatem est consequatur.','1977-10-11 15:06:00','2013-07-04 10:53:16','2005-01-11 11:10:21'),(95,'fugiat','Labore fugiat molestiae numquam voluptatibus alias culpa quia. Quas et nihil aut distinctio est quos et suscipit. Et voluptatem cupiditate quo impedit ratione.','1984-03-22 13:42:56','1998-03-02 14:51:15','1979-03-22 03:50:07'),(96,'enim','Fugiat odio quia ut officia sunt qui. Optio sed quaerat non quis. Et laborum consectetur alias voluptatem dolorum rerum incidunt facere. At amet ipsa nostrum alias ratione corrupti.','1990-03-25 04:28:51','2001-04-23 15:27:32','2013-10-07 14:18:04'),(97,'aut','Nihil in animi eos quia nostrum. Autem amet reiciendis dicta dolor est praesentium delectus. Culpa vitae omnis eos dolor qui aperiam.','2004-04-29 14:44:54','1993-11-18 07:50:02','2000-09-25 13:07:25'),(98,'tempora','Laboriosam incidunt esse qui et. Molestias ex et quis placeat quibusdam. Ut veniam labore et ut sint maiores iste. Dolorum non voluptate optio laborum aspernatur voluptatem ad. Reiciendis nisi quaerat placeat qui perferendis consequatur.','2006-03-12 04:45:17','2000-03-23 01:43:32','1999-07-16 00:51:09'),(99,'sequi','Ut deleniti voluptates cupiditate eum voluptate neque aperiam voluptatem. Nemo aspernatur soluta est perferendis necessitatibus voluptatibus neque. Perferendis aliquid at quis voluptatem.','1996-02-13 13:27:43','2013-05-10 09:13:19','2010-07-22 21:20:31'),(100,'distinctio','Quisquam doloremque consequatur quo sed nisi non. Et rerum quis rem consequatur corrupti. Aut hic omnis est dignissimos inventore velit quis. Et velit dolorum aut. Numquam labore laborum officia assumenda voluptatem.','1998-02-24 20:06:56','1978-11-02 20:25:29','1976-01-04 06:04:31');
/*!40000 ALTER TABLE `product_catagory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:41:57

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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rating` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,'Soluta voluptas perferendis assumenda quo. Exercitationem eos ad voluptatem officia rem recusandae perferendis. Voluptas itaque distinctio doloremque saepe quam.',62),(2,2,2,'Odit aperiam sint doloribus qui. Voluptates ut commodi ab vitae ipsam recusandae.',5794010),(3,3,3,'Blanditiis rerum consectetur qui nihil non ex. Sed qui ex iure consequatur voluptatem. Dolores qui a quia placeat.',964354999),(4,4,4,'Molestiae optio temporibus officiis et eligendi debitis possimus at. Labore blanditiis vel sed placeat vero voluptas. Officiis incidunt ullam amet et consequuntur odit voluptatem dolorem. Quam ratione eveniet ipsa culpa est.',1489),(5,5,5,'Sit tenetur voluptatem sit debitis aliquam. Aliquid non excepturi sed odit. Vel eveniet voluptatum qui hic laborum fugiat temporibus. Unde dolor quia ea quos.',966003397),(6,6,6,'Voluptates quaerat ut perferendis voluptatibus doloremque eum. Sit ratione aspernatur tempora dolorem. Et accusamus temporibus eos voluptas. Minus tenetur odit magni eius dolorem et.',664),(7,7,7,'Minima id ex ab accusantium commodi dignissimos. Aspernatur molestiae in accusamus quas delectus qui molestiae. Vel eaque ut vitae blanditiis quam consectetur. Expedita ut eos aliquam enim.',18),(8,8,8,'Perspiciatis quasi perferendis dolores maxime. Reiciendis ad quibusdam nisi dicta similique earum porro. Ipsum hic voluptatem quia maxime natus numquam quia. Debitis dolorem numquam vitae fugit accusamus dolores tenetur.',663846663),(9,9,9,'Consequatur a autem aut pariatur cum. Nihil voluptatem qui ipsum eveniet esse saepe. Est velit reprehenderit excepturi vitae placeat sit.',723),(10,10,10,'Qui eligendi rerum dolores ullam voluptatibus et. Esse voluptatem nisi unde odio omnis doloremque. Quae in minus repellat doloribus quidem velit fuga. Quidem ducimus recusandae sit harum blanditiis voluptatem id.',45324),(11,11,11,'Praesentium minima nisi voluptas quod corporis reiciendis voluptas. Maiores voluptas omnis autem et optio velit. Nulla optio sed esse alias quia rerum. Iusto suscipit sed ducimus aut maiores.',50),(12,12,12,'Voluptas deserunt quam nihil. Pariatur voluptas magnam ipsum rerum saepe officiis. Nihil necessitatibus et quia sunt. Non non rem quibusdam dolores similique.',1),(13,13,13,'Rem reprehenderit est consequatur iure. Quos eos perspiciatis aliquid architecto reiciendis. Autem laudantium ipsa qui veritatis.',751),(14,14,14,'Illo beatae non delectus nobis. Rerum impedit consequuntur inventore dolores ratione provident.',197),(15,15,15,'Nihil sunt enim laudantium commodi libero sed et. Enim quibusdam eaque velit provident fugit rerum ut est. Soluta nostrum vitae perferendis quo alias fuga. Eaque nostrum aliquid occaecati voluptas et eum iusto.',9),(16,16,16,'Nobis repellat in enim aliquam ut. Ipsa tempora quia cupiditate cum ut in. Nesciunt eveniet rerum omnis magnam.',5636),(17,17,17,'Id exercitationem iure ad enim est veritatis occaecati eos. Recusandae amet sunt sunt soluta aut fugit voluptatem et. Dolore amet saepe ea provident nisi adipisci. Cumque voluptatem mollitia eum quia porro.',39),(18,18,18,'Aut corporis iste voluptas qui soluta accusantium in. Qui rem omnis recusandae. Iusto cupiditate eius ut laborum non nihil minima recusandae.',38),(19,19,19,'Voluptatem nemo reprehenderit enim modi corporis ipsam. Quis molestias facere vitae in veniam.',29501),(20,20,20,'Officiis enim culpa laudantium sit provident laborum. Ut sit omnis dolores. Laboriosam in ut saepe quaerat.',298),(21,21,21,'Nostrum dolor et cupiditate. Libero quam sunt laborum voluptatem saepe ipsa voluptatem vitae.',0),(22,22,22,'Dolor est veritatis odio ratione. In explicabo non itaque porro. Perferendis et vel dignissimos mollitia dolores doloribus nobis.',90164),(23,23,23,'Quae officiis molestiae est quia. Id in nemo culpa ratione iste hic. Placeat quam eum impedit ipsum fugit architecto vel. Quia dolores dolores adipisci nemo perspiciatis aspernatur rem.',499473),(24,24,24,'Quod ex ab sit et qui quos. Quam voluptas architecto libero. Autem consequuntur cupiditate fugit omnis.',1361),(25,25,25,'Doloribus quam cumque magni quos. Fuga velit natus expedita aut nihil laborum. Et voluptatem voluptatem omnis asperiores beatae. Illo iste delectus recusandae pariatur quia pariatur.',12),(26,26,26,'Qui non enim nostrum aliquid quia dolores velit. Est ut nemo facilis error autem.',5),(27,27,27,'Nisi laudantium eaque et recusandae laboriosam odio magnam quo. Rerum animi laudantium modi autem velit sed. Possimus voluptate placeat quisquam ad. Reprehenderit aut doloribus fugit qui soluta quo praesentium ullam.',5481234),(28,28,28,'Laboriosam veritatis aut ut maiores est earum non iusto. Rerum minima dignissimos exercitationem in sint est laudantium consequatur. Dolore et dolorem eum dolore cumque ea sed.',911),(29,29,29,'Et ad animi cupiditate libero odit. Fugit optio dolorum in expedita temporibus qui. Voluptates voluptatem assumenda blanditiis qui rerum est.',340),(30,30,30,'Provident sit voluptas ut eaque exercitationem quia. Quam odit ut tempora esse a. Vitae enim animi eum quos sint temporibus. Rerum unde id enim earum adipisci.',8609056),(31,31,31,'Quo dolores et occaecati et autem reiciendis. Doloremque qui autem facere ratione rem magni autem. Vel molestiae necessitatibus tempora consequuntur quaerat qui. Quibusdam molestiae ab autem dolores odit quidem et dolores.',58929),(32,32,32,'Consectetur qui suscipit dolorem quaerat nemo et. Adipisci autem fugiat hic temporibus id explicabo. Dolorem quia consequatur cupiditate eos. Eius non pariatur perspiciatis officia delectus ducimus.',825165082),(33,33,33,'Amet in ullam iste eos ab. Quasi ipsa cumque qui quis asperiores. Necessitatibus qui ipsa architecto voluptas tenetur amet voluptatum assumenda. Eum minima qui aliquid placeat.',3110798),(34,34,34,'In laborum porro dolorem. Eaque repudiandae molestiae inventore earum sed qui sed sit. Tenetur quasi nihil possimus maxime doloribus voluptatem. Est non deleniti magni ipsa vel sapiente molestiae.',998),(35,35,35,'Aliquid est unde repudiandae. Corrupti sed rerum nam minus cumque qui. Odio aut numquam aut. Vel qui sunt provident.',44),(36,36,36,'Delectus molestiae et iste quia vel eius. Qui atque eaque quisquam et dolorem nostrum quae. Architecto blanditiis sequi quasi nisi sed autem molestias.',6287794),(37,37,37,'At rerum aspernatur aperiam possimus aut et qui. Repellendus quo ducimus qui enim sit dolores sit. Eveniet debitis sequi error. Neque itaque iusto earum eveniet eveniet repudiandae.',0),(38,38,38,'Aut rerum voluptas beatae modi corporis commodi voluptas. Debitis sit optio corrupti sapiente accusamus sint nam quod. Ut sed repellat quia quo dignissimos voluptate similique.',476),(39,39,39,'Quis error eum incidunt commodi quaerat. Occaecati sit neque aut.',5770),(40,40,40,'Commodi sit qui beatae nesciunt. Vel quos velit enim dolorem nesciunt perspiciatis sed. Est non fugit quos ipsa. Ipsam voluptate consectetur ut voluptate voluptates est.',75),(41,41,41,'Aliquid mollitia porro esse ea accusamus deleniti voluptas. Consequatur aut officia maiores ab. Illo dolor nulla sint neque. Consequuntur veritatis et laudantium omnis aut tenetur.',16537),(42,42,42,'Ut minus velit rerum autem. Odio debitis numquam debitis dolor saepe. Tempora quos assumenda et qui minus voluptatem odio rerum.',197),(43,43,43,'Quisquam natus molestiae quae libero ipsa incidunt. Alias est facere expedita quasi. Nam velit maxime architecto omnis pariatur. Ipsum sunt voluptate dolores ea.',0),(44,44,44,'Voluptate quia tenetur est ab quia repellat. Cum laudantium quo aut et. Praesentium aliquid fugiat officiis sit ipsam sit iste. Quos voluptatem et illo fuga quaerat amet.',421795),(45,45,45,'Non eum illo vel sint dolore facilis aut laboriosam. Voluptate dolores laudantium distinctio eum quia rem.',4069366),(46,46,46,'Delectus enim reiciendis ut voluptatem ullam dolorem iure. Ipsam atque voluptas sit explicabo voluptatum. Doloremque dignissimos et non nostrum soluta tenetur rerum.',64887),(47,47,47,'Et odit tenetur et consequatur sint. Quia sint tempora quasi sunt vel molestiae aut. Laborum nostrum quisquam natus ut.',0),(48,48,48,'Voluptatem id et voluptates accusamus quam. Ea facilis officiis suscipit. Ullam asperiores dolores ex minima officia reiciendis.',49),(49,49,49,'Quaerat qui quis rem eos voluptate. Adipisci et et quos dolorem vel quis rerum. Qui nihil eos dicta magnam occaecati ipsam eos. Deleniti qui dicta enim nesciunt aut ab.',9),(50,50,50,'Voluptatum veniam temporibus consequatur nam ipsa ea voluptatibus. Veniam eaque occaecati excepturi non ut ullam sit. Molestiae natus eaque nesciunt quis sed.',76),(51,51,51,'Sint in ab magnam veritatis. Et repudiandae quidem quisquam dicta consequuntur. Quos nobis aperiam quod doloribus.',355),(52,52,52,'Nobis pariatur et molestiae et molestiae praesentium perferendis et. Aliquam eligendi adipisci enim et recusandae eos. Pariatur sed repellat necessitatibus sint maxime.',451690025),(53,53,53,'Corporis voluptate minus soluta ex alias delectus repellat pariatur. Sit dolores a exercitationem vel. Distinctio et ut animi a omnis reiciendis. Voluptatem in doloremque ut voluptatem rerum eos.',0),(54,54,54,'Suscipit eum tenetur dolorem aliquid eius. Ea similique provident expedita architecto. Maxime tempore veniam deserunt vitae. Esse dicta eveniet est tempore.',56906306),(55,55,55,'Eveniet assumenda reprehenderit aperiam aut. Est sed repellat distinctio alias non. Quia qui veritatis dignissimos. Numquam qui veniam qui. Adipisci doloremque eius nostrum illum.',174663),(56,56,56,'Sit minus enim molestias totam. Corporis odit quibusdam sint aut sint soluta aut. Porro id eum possimus. Exercitationem sunt omnis eum accusamus nemo hic quis.',5149),(57,57,57,'Exercitationem et quo voluptatum sit impedit. Est aut sit perspiciatis quidem. Est praesentium quia occaecati et molestiae esse aperiam. Maxime vel consectetur soluta numquam.',0),(58,58,58,'Illo culpa doloremque eaque alias ut. Beatae aut accusantium unde et ducimus repellat. Et sed aut minima velit voluptas qui sequi. Laborum magnam velit corrupti reiciendis saepe neque.',8700659),(59,59,59,'Ab fugit nostrum velit totam doloremque ut. Voluptatibus numquam et sequi consequatur ullam ipsam. Quia quam voluptates qui quaerat. Quo ullam laborum aut eos.',3),(60,60,60,'Tempora est velit incidunt sapiente explicabo tenetur. Quia suscipit voluptatum et architecto et aut dolorum ratione. Explicabo qui corrupti cum tempora sed autem tempora. Laboriosam voluptate accusantium sed ut nam explicabo labore quia.',9),(61,61,61,'Minima beatae explicabo nisi voluptatem sunt. Eos repellat ut itaque consequatur esse necessitatibus. Eius quia et inventore aperiam rerum expedita.',9),(62,62,62,'Beatae est sint sed facilis consequatur. Cumque pariatur dolor ullam. Neque omnis sit quos eum nulla animi harum enim.',38122),(63,63,63,'Dolor fugit qui aut ducimus porro itaque fugit. Animi dolore dolorum id reprehenderit. Et sequi dolores error. Et reiciendis ducimus earum ratione quidem.',5),(64,64,64,'Fugiat et rem alias quae minima quas optio officia. Ut sit aspernatur eligendi aperiam. Non natus nesciunt enim vel delectus. Repudiandae et rerum inventore ut libero.',96),(65,65,65,'Voluptatem nihil voluptatem nisi enim tenetur est praesentium. Voluptatem dolorum voluptates qui placeat qui eveniet. Nam autem nam officia assumenda. Aut velit et et eos quia.',5945),(66,66,66,'Optio voluptate ipsa placeat modi incidunt. Reiciendis doloremque rerum molestiae omnis quae ut. Sit mollitia adipisci pariatur impedit itaque.',36460),(67,67,67,'Facere aperiam ut in ullam. Beatae ipsa soluta aut voluptatem nulla et nisi. Ducimus repudiandae harum libero possimus. Vitae sequi esse et omnis accusantium itaque pariatur. Amet qui ex voluptatibus ut molestias.',343189320),(68,68,68,'Omnis quia officia consequatur quos. Sit sit aut et magni earum. Voluptatem qui porro delectus assumenda. Dolores perferendis non velit et.',506544031),(69,69,69,'Ipsum assumenda quidem magnam omnis minima dolor cupiditate. Fuga voluptatem et est est assumenda. Quia voluptatem qui inventore nisi et consequatur consequatur cumque. Maiores tempore ad ut enim nam velit autem.',5471774),(70,70,70,'Omnis ut quod ipsa repellendus voluptatem consequuntur tenetur. Deleniti excepturi qui enim quod unde totam consequatur. Magnam sit totam eveniet qui ea fuga quod.',222861),(71,71,71,'Esse rerum recusandae eaque reprehenderit laudantium alias. Distinctio illo dolor aspernatur fuga voluptate. Quae tenetur facilis ea nemo accusantium optio. Ut repudiandae culpa eaque vitae voluptatem ad. Blanditiis nam sunt nihil eaque.',77),(72,72,72,'Quibusdam deserunt inventore voluptatem quidem. Rerum ex rem maiores ex laboriosam quia. Iste ratione ut ipsum aut ut. Nisi excepturi adipisci ut odio aut quo.',787532043),(73,73,73,'Corrupti et consequatur rerum a qui. Voluptatem deserunt ut ratione laudantium odit modi est. Veritatis voluptatum quis consequatur velit enim rerum provident.',38815),(74,74,74,'Cupiditate rerum voluptas velit libero dolorem voluptas explicabo. Et illum atque qui sint in tempora. Ea dolor qui error doloremque eaque quod architecto. Quod aut similique consequatur incidunt.',5811274),(75,75,75,'Magnam dolores nihil quod consequatur nemo. Impedit nisi quasi ea dolor eligendi tempore animi. Enim minima culpa saepe consequatur excepturi. Hic nesciunt laboriosam ea autem aut eius.',3784186),(76,76,76,'Aut nihil soluta velit rem expedita labore inventore. Assumenda est beatae veritatis et voluptatem hic voluptas. Et saepe occaecati repellat qui repellendus at possimus ut.',0),(77,77,77,'Quibusdam neque minus error omnis. Velit officiis iste non ut molestiae commodi illum. Consequatur in non dicta porro sit laboriosam. Enim non mollitia saepe.',3136),(78,78,78,'Tenetur earum natus consequatur deserunt aspernatur. Officia et reprehenderit nam iste eaque aut quis. Voluptatem porro quam quibusdam.',0),(79,79,79,'Aliquid voluptas ea aperiam ipsum iusto. Et aut debitis corrupti aliquam perferendis. Facere rerum omnis aliquid vel. Dolore sit aperiam modi et sed atque.',0),(80,80,80,'Harum earum voluptas ab et. Aut quam facilis consequatur ab impedit veritatis velit illum. Accusantium aut est sed et dicta.',635042),(81,81,81,'Et voluptate aut ab ut officia optio. Hic rerum omnis tempore enim. Earum repellat amet numquam sit ad. Similique qui et esse labore. Non eum eum fugiat occaecati voluptatem in excepturi.',0),(82,82,82,'Velit est doloribus placeat et cupiditate. Voluptas sapiente neque accusantium odio exercitationem. Officiis necessitatibus et facilis aut dolores.',0),(83,83,83,'In necessitatibus possimus quia quia sint minima enim. Deserunt adipisci est illum laborum sed facilis. Illum impedit aspernatur et molestias sunt. Sed quos hic voluptatibus et.',816908),(84,84,84,'Ad id dolores cumque minus reiciendis nobis voluptatibus consequatur. Deleniti error et cumque maxime dolores culpa praesentium. Nobis consectetur ut ipsum architecto ratione.',4126),(85,85,85,'Qui occaecati inventore soluta perspiciatis reprehenderit. Et mollitia omnis voluptas libero nisi sint. Voluptatem quam aliquam optio temporibus.',35861560),(86,86,86,'Quis et repudiandae optio praesentium repudiandae. Rem ea doloribus provident et.',0),(87,87,87,'Enim sunt aut aspernatur earum alias. Vitae voluptatem sit velit est.',9852),(88,88,88,'Et corporis est earum iusto adipisci quod repellat. Et ea porro deserunt. Dolor ut qui laborum labore id ut et. Eaque doloribus quos nihil non odit.',0),(89,89,89,'Dolores et distinctio dolor quia. Dolorem nihil iste placeat id officia.',11),(90,90,90,'Deleniti repellat dolores qui optio aut sed et laudantium. Numquam minima est aliquam totam. Facilis quae excepturi distinctio ut.',21),(91,91,91,'Voluptates quia vitae ex magnam id dolorum tempora. Cupiditate ut est corporis voluptas minima blanditiis. Dicta est corporis ipsa perferendis at.',829226),(92,92,92,'Similique tenetur eos rem error. Optio doloremque debitis pariatur voluptas non veritatis. Commodi aut rerum ut id veritatis ut ea qui. Est est similique est cupiditate impedit voluptatem aut.',2),(93,93,93,'Nihil ex nemo voluptates commodi autem suscipit. Inventore itaque vel dignissimos voluptates est esse. Maxime suscipit tempora libero sit aut.',443586523),(94,94,94,'Quas possimus voluptatem ut debitis nisi. Excepturi omnis vel voluptatum vel. Laudantium aut fugiat deleniti enim facilis sunt. Sint ipsa consequatur repellat dolores illum.',5),(95,95,95,'Rerum quis excepturi quibusdam sapiente. Ea est temporibus autem magni sed totam omnis. Ab mollitia libero minus quisquam.',31),(96,96,96,'Nobis sed fugit rerum ab. Voluptatem qui consequuntur distinctio excepturi eaque. Molestias est qui id nulla. Commodi cumque quo voluptatem et odit. Doloribus sed eligendi reiciendis.',42),(97,97,97,'Iure nihil laudantium autem suscipit dolores omnis doloribus. Ab officiis dicta aut amet fugiat. Molestiae et numquam architecto nesciunt qui est.',7268800),(98,98,98,'Eius qui enim ullam ut et sint nihil. Expedita quaerat perspiciatis voluptas rerum qui qui sed. Illum suscipit delectus illo iure consequuntur.',45734),(99,99,99,'Est doloremque molestiae est blanditiis quos tempore vel. Aliquid quis esse voluptatem inventore occaecati odio eos cupiditate. Praesentium est dolor quaerat dolores non dignissimos aut.',9774),(100,100,100,'Earum quia in magnam et reprehenderit. Voluptates vitae eos sint magnam. Sint molestiae ut aut velit impedit beatae qui.',286);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:49:34

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
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,0) DEFAULT NULL,
  `provider` varchar(60) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
INSERT INTO `payment_details` VALUES (1,0,NULL,'1997-11-19 23:15:16','2004-01-26 10:28:43'),(2,345138,NULL,'1984-05-07 22:44:32','1971-08-30 13:30:05'),(3,352290435,NULL,'1976-12-06 13:31:56','2021-07-14 06:00:41'),(4,2,NULL,'2016-03-28 10:19:42','1970-09-26 03:25:59'),(5,145710,NULL,'1973-07-19 01:35:33','2014-08-19 12:25:40'),(6,386,NULL,'2007-04-25 10:08:28','1974-08-10 17:40:39'),(7,43848,NULL,'1981-05-28 11:39:27','2009-11-26 14:59:09'),(8,168215,NULL,'1988-02-15 19:37:35','2016-01-07 07:40:11'),(9,0,NULL,'1981-05-18 07:50:01','1981-03-11 07:26:00'),(10,89,NULL,'1995-08-16 18:07:31','1993-08-14 15:14:02'),(11,4305489,NULL,'2007-03-20 17:04:44','2001-06-30 17:16:53'),(12,965,NULL,'2005-05-18 20:51:48','1982-12-23 13:57:38'),(13,2,NULL,'2011-11-21 11:32:09','1981-06-27 12:28:52'),(14,158,NULL,'2003-02-05 05:36:01','1976-08-23 04:27:46'),(15,21557,NULL,'1988-08-23 05:08:16','1999-11-24 04:08:20'),(16,26,NULL,'2015-08-13 09:51:37','1981-11-23 15:34:30'),(17,0,NULL,'2000-06-05 15:18:00','1975-02-16 04:09:08'),(18,157,NULL,'1987-07-19 16:10:34','1981-06-29 06:56:37'),(19,158,NULL,'2020-11-04 05:02:58','2019-02-12 23:02:04'),(20,4616867,NULL,'2010-08-08 05:50:32','2018-06-27 09:50:38'),(21,480,NULL,'1984-06-28 18:11:22','2003-07-03 11:26:56'),(22,1,NULL,'1985-09-18 06:09:58','2021-05-10 19:07:38'),(23,2404555,NULL,'1981-12-16 07:27:12','2014-08-04 14:51:01'),(24,270,NULL,'1982-11-02 04:16:38','1971-03-19 17:37:36'),(25,7,NULL,'1990-09-13 04:22:50','2011-10-03 17:37:54'),(26,3147144,NULL,'1992-05-03 03:22:17','2004-01-10 18:17:24'),(27,32957844,NULL,'1984-07-15 17:15:37','1974-01-31 12:13:17'),(28,59,NULL,'2000-01-18 01:48:17','2020-12-23 16:28:18'),(29,0,NULL,'1995-12-13 07:57:41','1974-06-14 13:11:03'),(30,22710,NULL,'2001-04-26 05:34:49','1979-03-19 02:14:22'),(31,3398542,NULL,'2006-04-22 17:47:31','2019-11-15 14:15:16'),(32,6,NULL,'1984-09-23 21:51:13','1986-11-15 03:41:01'),(33,1317,NULL,'1978-05-24 09:32:46','1991-04-30 18:33:31'),(34,54,NULL,'2012-12-14 22:24:15','1984-05-02 08:53:42'),(35,396,NULL,'2014-11-19 06:10:33','2003-10-28 11:12:50'),(36,0,NULL,'2015-04-03 18:17:00','1994-11-08 02:27:35'),(37,50488993,NULL,'1992-05-25 19:48:07','2008-06-28 09:30:50'),(38,6552,NULL,'2012-06-27 06:33:05','1971-06-23 18:14:48'),(39,78053718,NULL,'2005-01-31 16:06:42','1974-03-25 16:32:18'),(40,0,NULL,'2005-07-12 18:03:23','2011-11-29 13:42:39'),(41,110547146,NULL,'1997-06-29 00:30:12','2017-01-18 11:18:56'),(42,423,NULL,'1981-04-21 11:38:08','2003-10-17 04:58:01'),(43,2608006,NULL,'2019-04-10 04:12:24','1994-04-12 10:38:36'),(44,2172,NULL,'2001-12-25 23:09:41','2015-04-20 08:48:08'),(45,3927,NULL,'1996-12-08 19:13:26','2009-03-06 14:08:55'),(46,1094,NULL,'1979-04-05 08:06:47','2001-12-09 04:50:44'),(47,63884,NULL,'2014-10-14 07:08:41','2014-06-06 17:26:54'),(48,5,NULL,'1973-01-19 14:50:52','1990-10-30 12:04:42'),(49,3190,NULL,'1988-08-28 15:34:08','1987-12-28 05:17:54'),(50,4,NULL,'1988-09-09 14:25:12','1990-09-24 05:04:51'),(51,2,NULL,'2019-10-24 01:35:58','2019-07-23 05:11:24'),(52,508,NULL,'1992-02-07 09:29:45','1997-10-19 12:24:59'),(53,200024939,NULL,'1994-02-09 10:36:02','2007-04-01 13:50:54'),(54,38,NULL,'1976-06-03 20:13:30','2004-01-24 20:35:23'),(55,1165,NULL,'2005-11-04 20:15:31','2011-07-28 07:33:13'),(56,7806,NULL,'1986-02-01 08:24:57','2007-09-19 14:34:04'),(57,2088,NULL,'1973-02-26 22:04:03','2002-09-07 16:01:50'),(58,3546,NULL,'2021-01-26 08:24:26','2016-01-23 01:57:19'),(59,48825,NULL,'2020-01-21 11:57:34','1985-01-25 15:19:57'),(60,2177,NULL,'2019-12-15 14:09:21','1982-06-12 21:25:41'),(61,165638,NULL,'1998-10-28 13:43:16','1993-05-15 20:39:34'),(62,3,NULL,'1980-01-11 20:15:32','1984-02-06 04:41:27'),(63,667,NULL,'2007-12-14 01:12:42','2022-01-13 22:03:02'),(64,94,NULL,'1976-03-20 00:45:47','1977-10-30 06:16:33'),(65,8487146,NULL,'2012-12-08 09:52:41','1980-05-21 04:25:05'),(66,5,NULL,'1970-12-02 01:07:25','2016-07-04 07:36:11'),(67,191,NULL,'1999-08-09 15:26:23','1993-11-26 05:57:13'),(68,12,NULL,'2009-07-18 23:29:16','2014-11-21 15:13:40'),(69,32,NULL,'2000-12-16 21:52:07','1981-03-29 10:46:48'),(70,33981,NULL,'1974-12-29 04:04:23','1993-01-31 13:27:51'),(71,10838915,NULL,'1993-07-09 03:01:47','1980-09-20 09:03:54'),(72,0,NULL,'2016-09-20 02:51:00','1983-01-06 10:05:21'),(73,29,NULL,'1971-07-14 17:07:25','1976-05-31 13:13:49'),(74,127964513,NULL,'2015-10-20 05:34:08','2019-08-18 05:10:26'),(75,13103740,NULL,'2003-07-22 13:13:45','1974-05-28 00:20:31'),(76,8,NULL,'2006-07-23 06:30:23','1977-01-24 04:12:01'),(77,5379593,NULL,'1992-09-04 10:30:19','2002-08-25 07:39:45'),(78,10955422,NULL,'1994-04-04 22:03:30','1977-08-21 22:33:38'),(79,29,NULL,'2015-01-01 01:42:05','2018-04-03 18:46:49'),(80,417068,NULL,'1975-02-07 00:52:53','2016-03-03 20:34:15'),(81,256958671,NULL,'1983-12-07 09:06:23','1990-07-13 08:50:41'),(82,452283,NULL,'1986-10-23 10:24:56','2011-08-16 11:59:48'),(83,152031,NULL,'2005-01-20 15:16:39','1999-09-08 05:22:26'),(84,6861553,NULL,'2014-06-19 17:39:25','1989-07-10 07:42:56'),(85,1079097,NULL,'2021-08-08 22:35:20','1973-10-30 06:00:50'),(86,0,NULL,'2018-06-27 12:46:21','2007-02-17 20:53:18'),(87,786919,NULL,'1973-11-11 10:52:46','2009-08-29 13:48:01'),(88,50,NULL,'2006-06-19 11:56:22','2002-05-27 14:01:39'),(89,29642,NULL,'2014-10-10 02:46:27','1977-06-06 02:36:00'),(90,1332841,NULL,'2016-05-01 01:23:20','2009-08-16 02:13:17'),(91,0,NULL,'2018-12-19 02:12:51','1978-07-12 19:53:07'),(92,369686,NULL,'1985-04-08 16:47:26','1980-10-30 03:13:30'),(93,289050757,NULL,'2013-04-25 13:25:25','1994-10-01 15:06:29'),(94,11048,NULL,'1985-09-01 04:05:14','2009-07-20 07:06:06'),(95,88,NULL,'2019-05-21 11:19:06','1972-12-01 03:03:09'),(96,1,NULL,'1971-03-24 19:35:48','2011-09-20 19:24:53'),(97,260701,NULL,'2011-02-26 02:20:03','1995-07-05 07:54:12'),(98,5,NULL,'2014-01-11 11:40:43','2004-11-19 23:40:06'),(99,2,NULL,'2022-01-04 17:24:04','1997-02-20 19:49:30'),(100,23410,NULL,'2009-03-06 22:18:58','1979-12-09 02:16:28');
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:51:11


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
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `payment_id` (`payment_id`),
  CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,NULL,1,'2008-10-21 06:00:30','2018-01-08 07:30:37'),(2,2,NULL,2,'2011-11-29 17:24:07','1989-11-04 15:20:48'),(3,3,NULL,3,'2006-09-11 15:12:49','1973-12-24 03:08:39'),(4,4,NULL,4,'1998-06-07 06:57:51','1987-10-13 09:46:23'),(5,5,NULL,5,'2001-10-19 23:16:25','1976-03-10 20:26:21'),(6,6,NULL,6,'2004-10-04 16:37:42','1971-05-05 01:56:28'),(7,7,NULL,7,'2007-12-15 17:19:25','1990-10-08 23:31:36'),(8,8,NULL,8,'2009-10-06 08:55:21','1980-10-30 08:08:56'),(9,9,NULL,9,'2003-06-19 02:32:53','1973-11-02 12:58:56'),(10,10,NULL,10,'2012-01-27 16:39:41','2014-11-03 12:28:20'),(11,11,NULL,11,'1991-05-09 07:33:39','2002-05-27 14:11:36'),(12,12,NULL,12,'2008-05-25 09:10:28','2019-05-03 12:22:14'),(13,13,NULL,13,'1997-12-07 11:50:37','1992-12-20 17:19:57'),(14,14,NULL,14,'2016-09-06 16:13:19','2020-08-20 19:56:45'),(15,15,NULL,15,'2017-11-26 06:10:58','1973-10-20 18:38:09'),(16,16,NULL,16,'1978-09-07 12:36:31','2016-03-11 03:26:58'),(17,17,NULL,17,'1994-07-04 12:37:44','1985-08-07 04:03:06'),(18,18,NULL,18,'2014-01-19 13:23:48','2008-11-17 08:14:02'),(19,19,NULL,19,'1984-01-09 11:55:18','1976-12-27 04:11:19'),(20,20,NULL,20,'2013-04-25 05:22:08','1973-10-12 00:19:32'),(21,21,NULL,21,'1999-05-10 20:10:32','2007-07-01 16:36:36'),(22,22,NULL,22,'1980-09-10 07:19:33','2015-01-02 14:12:40'),(23,23,NULL,23,'2016-06-18 12:28:29','1996-08-10 00:05:14'),(24,24,NULL,24,'1990-11-13 21:11:00','2019-03-11 05:17:30'),(25,25,NULL,25,'2016-05-27 19:14:41','2014-05-22 10:06:50'),(26,26,NULL,26,'1972-08-07 06:38:00','2001-09-10 14:14:25'),(27,27,NULL,27,'2006-10-24 11:51:56','2003-09-13 05:11:16'),(28,28,NULL,28,'1972-01-31 17:43:09','2019-08-28 10:39:09'),(29,29,NULL,29,'2006-01-18 19:15:13','2002-10-27 21:06:54'),(30,30,NULL,30,'1986-05-21 22:16:56','2018-10-29 04:30:45'),(31,31,NULL,31,'2002-08-03 16:32:43','1999-04-28 12:30:13'),(32,32,NULL,32,'1973-01-11 10:02:08','2007-03-28 10:37:17'),(33,33,NULL,33,'1996-10-20 07:21:27','2009-11-09 08:44:50'),(34,34,NULL,34,'1987-05-05 05:34:12','1984-11-20 17:12:17'),(35,35,NULL,35,'2010-05-25 01:28:38','1997-07-30 05:12:31'),(36,36,NULL,36,'1981-02-01 23:58:01','1980-12-12 21:31:12'),(37,37,NULL,37,'1992-08-24 00:53:59','2017-03-29 23:40:18'),(38,38,NULL,38,'1996-07-12 08:46:55','1985-09-24 20:46:13'),(39,39,NULL,39,'2003-03-14 01:56:56','1994-06-12 02:51:23'),(40,40,NULL,40,'1999-08-06 13:34:29','2010-07-11 15:02:49'),(41,41,NULL,41,'2015-09-25 09:31:12','1978-12-28 19:51:25'),(42,42,NULL,42,'2021-10-28 10:48:21','1986-04-30 05:52:08'),(43,43,NULL,43,'1977-12-11 06:41:45','1991-10-12 00:35:37'),(44,44,NULL,44,'2012-10-30 01:58:11','1985-04-26 23:48:33'),(45,45,NULL,45,'1996-01-13 16:26:36','1973-10-08 21:37:05'),(46,46,NULL,46,'1984-10-05 10:27:03','1998-03-28 19:18:54'),(47,47,NULL,47,'2018-06-05 06:17:50','1970-02-03 15:39:01'),(48,48,NULL,48,'1992-04-19 19:25:28','1977-01-20 21:16:23'),(49,49,NULL,49,'2002-07-07 21:38:52','1976-11-10 09:17:01'),(50,50,NULL,50,'2009-08-22 01:54:02','1987-12-17 22:36:34'),(51,51,NULL,51,'2013-03-02 03:57:52','1973-07-06 12:24:11'),(52,52,NULL,52,'2015-11-02 16:40:14','1984-02-26 23:51:02'),(53,53,NULL,53,'2003-03-17 16:47:00','2013-04-08 10:56:06'),(54,54,NULL,54,'2002-01-05 21:36:04','1975-05-25 06:56:24'),(55,55,NULL,55,'1973-06-26 06:17:25','1979-05-02 20:30:10'),(56,56,NULL,56,'1976-07-10 15:20:40','1992-08-16 15:10:21'),(57,57,NULL,57,'2010-06-10 11:07:12','1996-03-09 05:46:00'),(58,58,NULL,58,'2013-11-26 18:03:06','1996-08-25 02:14:27'),(59,59,NULL,59,'2001-04-07 15:56:51','2021-11-25 03:59:01'),(60,60,NULL,60,'1977-11-06 21:07:01','1986-10-04 18:17:35'),(61,61,NULL,61,'1991-11-23 18:12:16','2017-11-08 09:42:14'),(62,62,NULL,62,'2013-11-21 19:53:02','2014-02-21 15:34:07'),(63,63,NULL,63,'1999-07-17 16:47:50','1994-08-16 19:45:53'),(64,64,NULL,64,'2007-05-22 09:50:49','2008-08-03 18:57:13'),(65,65,NULL,65,'2020-07-18 18:36:25','1975-04-03 07:42:38'),(66,66,NULL,66,'2005-04-07 05:42:25','2005-08-18 11:04:40'),(67,67,NULL,67,'1980-05-23 19:21:06','2009-03-22 23:08:40'),(68,68,NULL,68,'2012-04-21 16:44:26','2000-11-11 23:16:05'),(69,69,NULL,69,'1975-11-05 10:11:33','1982-02-24 23:48:13'),(70,70,NULL,70,'1979-12-04 10:05:33','1993-06-12 01:29:22'),(71,71,NULL,71,'1983-09-20 03:46:35','1985-12-15 15:21:33'),(72,72,NULL,72,'2005-10-10 18:11:05','2001-08-02 10:36:36'),(73,73,NULL,73,'2002-07-05 21:10:34','1970-03-06 03:11:14'),(74,74,NULL,74,'2015-04-17 17:13:06','2004-10-25 10:39:55'),(75,75,NULL,75,'1980-06-08 04:15:11','1977-02-27 08:39:57'),(76,76,NULL,76,'2009-01-16 02:22:01','2010-11-04 23:11:34'),(77,77,NULL,77,'2004-06-25 06:52:57','1985-11-25 20:14:44'),(78,78,NULL,78,'2003-01-10 01:11:26','2014-01-03 06:24:44'),(79,79,NULL,79,'1984-01-20 00:22:10','1982-11-24 07:25:33'),(80,80,NULL,80,'2000-08-08 01:37:15','2006-04-16 22:27:08'),(81,81,NULL,81,'1971-09-09 09:01:04','2020-05-15 03:53:10'),(82,82,NULL,82,'2016-04-27 01:45:19','1991-12-11 22:19:14'),(83,83,NULL,83,'2008-11-17 06:42:56','1981-08-25 00:18:51'),(84,84,NULL,84,'1973-07-23 04:19:02','1984-10-18 21:34:55'),(85,85,NULL,85,'1972-08-26 01:31:46','2011-12-21 00:15:08'),(86,86,NULL,86,'1980-11-07 09:30:44','1995-08-31 17:55:01'),(87,87,NULL,87,'2000-11-03 10:07:35','1978-10-22 03:18:58'),(88,88,NULL,88,'1993-04-06 09:46:04','2005-05-21 07:42:27'),(89,89,NULL,89,'1979-07-31 21:44:33','2001-06-09 11:40:32'),(90,90,NULL,90,'2021-02-05 12:51:38','2002-04-06 13:09:01'),(91,91,NULL,91,'1994-02-21 18:28:55','1972-03-24 17:34:29'),(92,92,NULL,92,'2001-03-21 00:00:40','1986-02-07 00:38:50'),(93,93,NULL,93,'2002-11-19 13:46:00','2013-02-04 05:04:09'),(94,94,NULL,94,'2000-11-11 11:21:08','2004-01-01 21:52:00'),(95,95,NULL,95,'2016-10-13 04:41:24','1994-05-13 09:17:10'),(96,96,NULL,96,'2004-10-26 13:04:55','1993-01-11 02:19:35'),(97,97,NULL,97,'1998-02-15 18:02:36','2002-05-29 23:15:34'),(98,98,NULL,98,'1992-10-14 13:47:14','2014-01-26 07:08:52'),(99,99,NULL,99,'1984-02-19 01:45:30','1980-08-19 17:45:36'),(100,100,NULL,100,'2014-05-21 04:26:50','2015-09-28 17:39:31');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:52:26

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
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_details` (`id`),
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,6,'1988-06-23 22:05:29','2013-09-11 05:30:06'),(2,2,2,2,'1982-06-02 16:06:14','2003-11-29 10:47:36'),(3,3,3,0,'2000-03-08 14:54:15','1970-09-03 18:43:20'),(4,4,4,0,'1990-02-01 11:12:30','2000-08-29 14:52:17'),(5,5,5,846107,'1984-11-11 21:52:09','2006-04-14 12:22:43'),(6,6,6,801,'2006-10-29 01:26:01','2018-12-31 01:43:58'),(7,7,7,701554310,'2018-07-13 05:13:54','1977-02-26 01:42:41'),(8,8,8,1,'1971-01-18 06:10:38','1990-03-11 00:56:02'),(9,9,9,2210,'1978-04-01 10:48:43','2015-11-08 12:41:38'),(10,10,10,287,'1985-06-20 11:35:11','1994-11-06 06:14:43'),(11,11,11,204,'2009-06-03 01:00:31','1995-02-02 11:29:51'),(12,12,12,165335,'1971-07-28 19:41:08','1986-07-20 15:17:23'),(13,13,13,44,'2009-09-28 10:01:44','1971-02-18 20:17:35'),(14,14,14,41276,'2017-10-27 08:29:52','2009-02-02 03:22:55'),(15,15,15,3612,'1993-06-30 09:41:48','2008-06-26 01:54:00'),(16,16,16,0,'1973-11-18 14:18:28','1975-12-07 08:03:41'),(17,17,17,3,'2014-02-05 00:38:24','1977-10-22 17:58:03'),(18,18,18,3843,'2004-01-04 20:10:28','1982-08-05 12:08:11'),(19,19,19,0,'2012-05-18 01:40:03','2004-11-03 02:54:37'),(20,20,20,40379696,'1972-04-27 15:49:30','2004-06-02 03:28:30'),(21,21,21,10066,'1985-02-09 23:03:30','1979-05-08 10:45:23'),(22,22,22,106330,'1995-07-03 17:15:35','2006-07-17 02:25:24'),(23,23,23,1618962,'1979-12-13 03:24:52','2006-11-26 21:54:57'),(24,24,24,160,'1983-02-08 15:19:50','2015-09-30 11:47:00'),(25,25,25,20796,'1986-10-31 10:18:08','1979-10-05 08:52:54'),(26,26,26,88690,'1978-11-11 18:56:50','1978-01-30 23:30:06'),(27,27,27,46,'1998-12-12 11:53:43','2007-08-04 17:41:19'),(28,28,28,21247,'1978-10-23 09:31:58','1993-01-02 04:44:20'),(29,29,29,6171,'2001-06-14 22:10:07','1977-02-11 07:15:37'),(30,30,30,0,'1985-04-04 23:42:55','2021-01-08 08:42:53'),(31,31,31,5243,'1973-03-14 23:34:57','2016-02-11 03:16:20'),(32,32,32,16246858,'2007-05-04 14:10:04','1991-07-15 12:34:56'),(33,33,33,43340,'2021-12-11 17:50:18','1973-05-27 05:35:47'),(34,34,34,65123244,'2001-03-29 08:57:10','1990-10-18 01:59:06'),(35,35,35,315243,'2005-03-22 18:08:08','2001-12-29 03:50:05'),(36,36,36,17,'2012-04-14 05:18:04','1981-01-28 14:05:17'),(37,37,37,179685358,'2021-11-10 08:20:37','1973-04-19 00:07:14'),(38,38,38,1898,'1976-10-07 01:29:34','1994-12-02 19:47:01'),(39,39,39,29,'2020-08-25 10:24:25','1985-08-29 04:38:59'),(40,40,40,177903,'2002-11-14 02:15:20','1986-02-15 10:38:17'),(41,41,41,82,'1971-01-29 19:53:58','1999-05-08 18:37:12'),(42,42,42,5,'1992-08-27 14:32:48','2010-09-04 01:04:15'),(43,43,43,0,'2004-01-21 23:57:48','2013-04-19 01:20:15'),(44,44,44,20,'2012-05-09 19:31:19','2019-10-05 02:59:10'),(45,45,45,10,'2014-02-05 11:43:22','1976-05-12 16:20:16'),(46,46,46,2,'2012-09-12 01:53:46','1980-09-21 22:18:24'),(47,47,47,4,'1997-08-15 13:53:04','2019-08-06 22:29:27'),(48,48,48,6523070,'1970-12-10 05:23:07','2009-11-27 02:11:37'),(49,49,49,18726046,'1984-03-14 11:00:23','1999-10-17 23:17:28'),(50,50,50,0,'2015-12-15 22:06:14','2015-03-24 00:21:07'),(51,51,51,1230756,'1970-09-06 05:21:29','2004-06-27 06:50:46'),(52,52,52,30,'2009-10-18 16:00:35','2008-11-28 07:05:16'),(53,53,53,112561346,'1982-12-23 04:55:14','1970-02-24 20:09:40'),(54,54,54,42,'2020-12-06 02:47:33','1983-06-07 05:51:04'),(55,55,55,578326,'1979-05-18 09:55:33','2018-12-17 22:54:19'),(56,56,56,11959,'1974-11-08 11:05:36','1997-05-31 01:44:27'),(57,57,57,0,'1994-12-07 04:36:02','2011-09-04 11:52:28'),(58,58,58,234,'2012-07-27 15:58:12','1976-03-20 21:03:01'),(59,59,59,1,'1970-10-13 10:03:15','1971-06-10 18:38:06'),(60,60,60,60,'2003-04-04 18:27:41','2012-12-15 00:38:43'),(61,61,61,70,'2005-01-30 11:01:35','1976-06-11 02:46:40'),(62,62,62,38,'2011-06-09 03:43:32','2009-07-24 14:45:39'),(63,63,63,13903956,'1999-12-25 22:05:15','1988-01-21 16:39:42'),(64,64,64,4087145,'2022-01-05 23:02:35','1981-10-08 06:05:20'),(65,65,65,2334492,'2006-11-15 13:29:00','1993-12-16 08:33:53'),(66,66,66,3949606,'1972-02-29 12:28:13','2006-01-14 02:33:10'),(67,67,67,161407245,'1990-04-21 05:22:03','1992-06-04 14:32:38'),(68,68,68,0,'1988-03-30 22:19:50','1998-09-02 08:10:46'),(69,69,69,8291586,'2018-09-24 20:10:58','2004-04-17 15:44:19'),(70,70,70,874,'1981-11-30 07:24:14','1983-07-02 20:55:10'),(71,71,71,80,'1991-10-17 09:03:01','1989-11-13 03:08:38'),(72,72,72,0,'2011-12-11 13:46:25','2017-01-11 22:24:40'),(73,73,73,2954251,'1975-06-17 06:46:13','2016-04-22 11:07:45'),(74,74,74,47699422,'1983-04-27 08:56:54','2019-10-15 15:11:20'),(75,75,75,39420562,'2001-04-12 16:02:16','1992-11-11 06:16:01'),(76,76,76,0,'1981-03-13 01:07:21','2015-10-30 10:23:21'),(77,77,77,88779,'1980-06-20 04:19:42','1973-01-08 05:55:52'),(78,78,78,43477099,'2021-04-09 20:59:51','2010-08-09 21:44:37'),(79,79,79,74919,'2007-10-03 11:26:43','2014-03-27 21:16:28'),(80,80,80,182,'1987-09-30 06:11:32','1987-08-30 04:48:48'),(81,81,81,49148,'2010-09-14 11:47:43','2017-09-22 07:26:19'),(82,82,82,2399560,'2006-09-15 15:22:59','1987-09-27 17:07:22'),(83,83,83,1584725,'2013-05-20 09:02:47','1970-08-20 11:21:37'),(84,84,84,1793770,'1978-09-04 10:00:38','2012-01-18 01:51:52'),(85,85,85,60,'1971-02-10 21:47:13','1995-12-28 21:33:08'),(86,86,86,0,'2020-05-29 09:53:18','1991-03-14 08:26:53'),(87,87,87,18,'2001-07-23 11:54:24','2007-04-03 09:06:21'),(88,88,88,166380,'1980-11-10 13:01:53','1971-07-31 19:38:35'),(89,89,89,26307917,'1982-02-09 05:43:57','2008-11-13 12:41:47'),(90,90,90,322596941,'1988-06-29 16:17:25','2000-05-12 21:26:12'),(91,91,91,5762552,'1975-03-11 01:21:23','1997-03-18 09:55:57'),(92,92,92,374668,'2018-11-02 23:48:21','1989-12-26 07:35:40'),(93,93,93,2,'1998-09-27 10:13:18','2014-08-08 15:13:40'),(94,94,94,41,'2013-06-30 03:30:42','1972-07-03 12:08:42'),(95,95,95,0,'2003-01-30 23:48:51','1996-09-10 08:59:24'),(96,96,96,561,'1993-01-01 12:16:08','1993-08-30 00:22:45'),(97,97,97,2,'1995-05-01 02:10:05','1970-06-07 08:40:42'),(98,98,98,0,'1970-10-09 09:13:23','1984-04-01 20:04:58'),(99,99,99,0,'1986-09-20 18:41:05','1988-09-20 07:16:26'),(100,100,100,5251665,'1992-07-26 15:50:58','2017-05-08 09:45:17');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:52:52

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
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `shopping_session` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (1,1,1,10,'1998-10-01 20:59:49','1984-10-11 08:16:34'),(2,2,2,13879599,'2000-12-15 15:23:53','2005-07-27 10:08:58'),(3,3,3,3718041,'1974-02-03 13:15:44','2015-08-10 03:27:53'),(4,4,4,4,'1976-06-13 04:12:49','1987-06-03 15:46:33'),(5,5,5,343195,'1984-11-06 04:08:25','2017-10-25 09:23:09'),(6,6,6,0,'1998-01-07 07:00:13','1990-06-08 03:04:19'),(7,7,7,3829,'1994-01-06 19:30:05','2009-05-03 20:01:58'),(8,8,8,5642748,'1970-10-23 13:14:15','1972-07-11 14:28:38'),(9,9,9,0,'2005-01-11 10:59:15','2010-03-08 16:53:01'),(10,10,10,10326828,'1972-10-31 00:48:11','1972-08-27 18:12:42'),(11,11,11,29,'1983-12-30 01:46:19','1974-04-27 14:40:18'),(12,12,12,16,'1985-11-28 02:02:40','1997-06-15 04:11:55'),(13,13,13,18822,'1978-09-20 06:14:10','2021-11-13 17:27:58'),(14,14,14,21637,'1983-03-27 03:50:08','1970-03-04 19:45:17'),(15,15,15,71,'1976-06-23 16:05:17','1985-06-01 20:16:56'),(16,16,16,688,'1982-04-29 11:30:16','2002-04-15 17:14:05'),(17,17,17,954,'2017-03-13 19:54:04','1981-09-15 02:35:48'),(18,18,18,27595615,'2009-07-02 15:45:09','2009-01-21 05:57:20'),(19,19,19,6737803,'2007-06-16 15:43:32','2018-02-20 04:57:45'),(20,20,20,3580230,'2005-10-20 20:51:00','2020-04-26 03:18:22'),(21,21,21,4534422,'1995-07-07 09:13:53','1972-10-27 21:52:22'),(22,22,22,0,'1970-08-03 15:11:00','1971-09-30 23:32:46'),(23,23,23,1326,'1983-05-04 09:37:45','1970-04-02 13:37:48'),(24,24,24,537,'2014-11-27 06:16:16','1984-04-12 23:13:22'),(25,25,25,1114,'1972-03-03 13:08:06','1982-12-20 04:14:39'),(26,26,26,0,'1988-12-31 06:30:44','1993-03-28 23:43:19'),(27,27,27,4042,'2015-07-16 07:14:33','2018-11-23 03:09:21'),(28,28,28,296,'1990-05-10 08:36:14','1995-02-12 17:43:05'),(29,29,29,9,'1978-09-06 00:11:29','1995-11-19 00:09:06'),(30,30,30,2097668,'2015-05-04 11:04:00','2012-01-25 16:49:58'),(31,31,31,34083,'1980-06-19 23:13:42','2000-09-11 20:47:42'),(32,32,32,3117977,'2010-07-05 20:36:13','1978-10-04 23:20:19'),(33,33,33,2,'1996-02-10 06:19:48','1998-06-08 11:23:12'),(34,34,34,0,'1971-02-24 01:57:07','2013-09-13 05:33:22'),(35,35,35,4589,'1991-03-17 00:44:18','1990-09-01 11:28:19'),(36,36,36,612734586,'2000-12-17 11:30:22','2001-07-12 19:39:33'),(37,37,37,270806027,'1996-02-02 16:14:01','2001-11-21 19:25:37'),(38,38,38,16998865,'1991-02-14 12:56:57','2016-09-05 15:39:29'),(39,39,39,0,'1993-12-18 04:31:33','1992-09-09 04:19:56'),(40,40,40,6,'1978-01-21 21:07:32','2001-03-09 04:00:42'),(41,41,41,3551810,'1974-09-06 11:18:39','2016-03-31 06:55:26'),(42,42,42,17542248,'1971-05-19 16:44:37','1975-08-27 23:33:17'),(43,43,43,36399,'2005-04-24 00:16:14','2010-01-01 15:02:10'),(44,44,44,15987601,'1972-05-31 02:03:47','2017-02-10 19:51:11'),(45,45,45,3322,'1983-02-28 07:53:19','1986-05-17 14:06:28'),(46,46,46,78,'1984-09-14 20:41:48','2004-10-09 11:52:21'),(47,47,47,267379,'2018-11-22 06:49:22','1990-05-20 16:42:51'),(48,48,48,312724,'1986-09-06 17:40:52','2007-07-13 22:11:33'),(49,49,49,9614,'2014-02-20 02:15:32','2015-08-12 17:58:53'),(50,50,50,2873,'1998-11-22 12:24:47','1999-06-02 19:58:57'),(51,51,51,23,'2011-09-15 06:11:36','1999-11-03 21:31:16'),(52,52,52,77632746,'1978-01-29 12:46:15','1987-08-06 01:28:36'),(53,53,53,19,'2002-07-01 22:32:07','1997-03-22 10:48:49'),(54,54,54,20,'1972-05-01 06:31:53','1988-11-01 10:22:42'),(55,55,55,1365854,'1975-06-01 02:36:34','1976-07-24 03:17:41'),(56,56,56,231620,'2003-07-07 07:53:09','1987-02-07 03:44:39'),(57,57,57,67105,'1989-09-01 07:50:38','2012-02-13 17:04:12'),(58,58,58,0,'2009-07-25 02:24:01','1998-12-26 05:07:41'),(59,59,59,6834298,'1987-02-17 19:01:18','2013-09-24 04:46:49'),(60,60,60,574864149,'2004-02-01 14:52:58','1973-06-07 18:30:32'),(61,61,61,18,'2017-06-04 02:27:52','2009-06-24 06:33:40'),(62,62,62,1,'1993-09-12 22:13:56','1982-12-02 21:41:47'),(63,63,63,441,'2021-11-21 02:51:02','1994-08-17 16:46:51'),(64,64,64,78,'2001-04-13 00:48:52','2004-08-14 23:48:00'),(65,65,65,39150197,'2012-06-29 09:36:53','1971-08-28 18:29:55'),(66,66,66,317,'1982-06-20 14:15:31','1982-02-09 20:27:53'),(67,67,67,1,'1999-07-29 12:46:49','2016-02-17 07:17:31'),(68,68,68,48472,'1998-11-03 08:08:20','2016-06-18 10:54:31'),(69,69,69,64804,'1976-10-17 19:19:16','2011-10-02 06:42:32'),(70,70,70,0,'1972-02-22 09:59:42','1984-06-02 22:03:06'),(71,71,71,114,'1978-07-06 11:07:33','1982-11-04 11:39:51'),(72,72,72,2098,'2018-11-20 22:31:00','2007-04-25 18:55:29'),(73,73,73,16514310,'1972-04-01 08:38:47','1993-01-02 10:32:26'),(74,74,74,0,'1987-07-14 19:36:59','1970-02-12 22:07:45'),(75,75,75,40968033,'1986-05-22 20:58:59','1996-11-19 04:05:10'),(76,76,76,312909421,'1977-07-13 07:58:57','1981-11-05 12:41:26'),(77,77,77,15015,'1971-10-19 11:19:22','2006-10-01 09:12:32'),(78,78,78,22,'1999-02-27 20:49:14','1981-10-27 00:45:17'),(79,79,79,56284059,'1979-01-20 04:27:46','1989-01-28 16:50:37'),(80,80,80,6,'1992-08-30 21:49:19','2013-09-01 17:10:34'),(81,81,81,1887823,'1988-05-30 09:00:39','1970-05-18 01:08:47'),(82,82,82,0,'1984-01-09 22:35:35','2007-09-15 20:22:21'),(83,83,83,352,'1985-05-19 06:00:24','2007-06-13 13:36:53'),(84,84,84,262388939,'1982-11-16 04:30:47','2002-10-17 17:25:28'),(85,85,85,0,'1985-07-16 00:23:26','1970-08-25 01:58:48'),(86,86,86,1,'1972-01-17 09:38:17','2015-12-08 23:14:05'),(87,87,87,0,'1978-05-16 21:33:33','1992-08-24 10:18:25'),(88,88,88,3782,'1975-07-31 18:00:14','1989-01-23 16:56:31'),(89,89,89,5,'2014-12-13 02:53:40','1997-07-04 04:43:04'),(90,90,90,424652694,'1988-01-16 16:36:25','1992-01-26 07:44:29'),(91,91,91,22632329,'1992-02-23 23:18:08','2019-09-19 04:00:20'),(92,92,92,35337535,'1993-02-16 08:06:06','1974-08-01 01:14:08'),(93,93,93,74135,'2013-06-15 00:47:16','2003-05-18 19:29:42'),(94,94,94,41,'1994-12-22 04:51:37','1999-10-06 11:40:23'),(95,95,95,1124,'2008-10-23 06:35:12','1998-08-28 00:54:05'),(96,96,96,445278239,'1992-06-26 15:12:26','1977-08-07 12:16:02'),(97,97,97,1015104,'1996-06-11 06:08:30','1972-07-23 04:10:00'),(98,98,98,2,'1998-07-19 00:17:32','1998-11-16 04:58:54'),(99,99,99,3935247,'1998-10-04 13:25:22','1993-08-20 05:13:35'),(100,100,100,64966739,'2019-03-15 09:21:10','2019-01-09 15:02:13');
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-23 10:53:11
