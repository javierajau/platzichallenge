-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (arm64)
--
-- Host: localhost    Database: base_startup
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (1,'expedita','CA'),(2,'maxime','CN'),(3,'assumenda','GB'),(4,'repellendus','ES'),(5,'eum','DE'),(6,'asperiores','US'),(7,'reprehenderit','PT'),(8,'ipsa','GB'),(9,'officiis','GB'),(10,'in','CA'),(11,'ullam','CA'),(12,'aut','CA'),(13,'modi','DE'),(14,'voluptatem','FR'),(15,'et','IT');
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company_Student`
--

DROP TABLE IF EXISTS `Company_Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Company_Student` (
  `id_company` int NOT NULL,
  `id_student` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `salary` int DEFAULT NULL,
  KEY `id_company` (`id_company`),
  KEY `id_student` (`id_student`),
  CONSTRAINT `company_student_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `Company` (`id`),
  CONSTRAINT `company_student_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `Student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company_Student`
--

LOCK TABLES `Company_Student` WRITE;
/*!40000 ALTER TABLE `Company_Student` DISABLE KEYS */;
INSERT INTO `Company_Student` VALUES (1,1,'2023-08-01','2011-07-21',1000),(2,2,'2023-05-14','2009-12-23',800),(3,3,'2023-03-17','2018-03-12',900),(4,4,'2023-08-15',NULL,1100),(5,5,'2023-01-04',NULL,750),(6,6,'2023-02-03',NULL,850),(7,7,'2023-01-29',NULL,900),(8,8,'2023-04-02',NULL,1100),(9,9,'2023-01-05',NULL,1000),(10,10,'2023-05-03',NULL,800),(11,11,'2023-06-12',NULL,800),(12,12,'2023-04-14',NULL,950),(13,13,'2023-06-23',NULL,850),(14,14,'2023-08-08',NULL,1000),(15,15,'2023-04-12',NULL,1100),(1,16,'2023-07-11',NULL,850),(2,17,'2023-05-23',NULL,750),(3,18,'2023-03-02',NULL,900),(4,19,'2023-02-09',NULL,900),(5,20,'2023-07-07',NULL,1100),(6,21,'2023-06-24',NULL,1000),(7,22,'2023-03-20',NULL,850),(8,23,'2023-04-29',NULL,800),(9,24,'2023-05-28',NULL,850),(10,25,'2023-06-20',NULL,1000),(11,26,'2023-08-05',NULL,1000),(12,27,'2023-03-26',NULL,950),(13,28,'2023-07-12',NULL,850),(14,29,'2023-06-07',NULL,1100),(15,30,'2023-03-20',NULL,900);
/*!40000 ALTER TABLE `Company_Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `hours_per_week` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (1,'vmuz','est',4,100),(2,'hivz','cumque',4,100),(3,'auoj','voluptatem',4,100),(4,'yhyp','ea',6,200),(5,'vljp','hic',4,100),(6,'namp','omnis',6,200),(7,'znxy','eius',4,100),(8,'ytvc','ad',4,100),(9,'nxgm','odit',6,200),(10,'rflt','sapiente',6,200),(11,'hczw','magnam',6,200),(12,'kuva','blanditiis',6,200),(13,'rfyb','odio',4,100);
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course_Teacher`
--

DROP TABLE IF EXISTS `Course_Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course_Teacher` (
  `id_course` int NOT NULL,
  `id_teacher` int NOT NULL,
  `remuneration` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  KEY `id_course` (`id_course`),
  KEY `id_teacher` (`id_teacher`),
  CONSTRAINT `course_teacher_ibfk_1` FOREIGN KEY (`id_course`) REFERENCES `Course` (`id`),
  CONSTRAINT `course_teacher_ibfk_2` FOREIGN KEY (`id_teacher`) REFERENCES `Teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_Teacher`
--

LOCK TABLES `Course_Teacher` WRITE;
/*!40000 ALTER TABLE `Course_Teacher` DISABLE KEYS */;
INSERT INTO `Course_Teacher` VALUES (1,1,781,'1972-02-07','2018-05-19'),(2,2,993,'2002-08-21','1995-07-21'),(3,3,960,'1982-11-07','2021-01-19'),(4,4,832,'2018-02-21','1992-12-03'),(5,5,969,'1977-10-31','2014-08-30'),(6,6,297,'1998-10-26','2005-02-28'),(7,7,570,'1970-05-07','2004-10-11'),(8,8,461,'1987-12-18','2013-03-03'),(9,9,488,'2019-09-21','1970-07-26'),(10,10,862,'1989-10-10','2022-07-12'),(11,11,640,'1987-07-26','2003-01-15'),(12,12,995,'1993-05-05','2018-05-01'),(13,1,559,'1982-01-12','1982-05-05');
/*!40000 ALTER TABLE `Course_Teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Expenses`
--

DROP TABLE IF EXISTS `Expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Expenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `amount` int DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Expenses`
--

LOCK TABLES `Expenses` WRITE;
/*!40000 ALTER TABLE `Expenses` DISABLE KEYS */;
INSERT INTO `Expenses` VALUES (1,'Nihil illo alias rerum et numquam quae a. Repellendus ea hic id molestiae sint soluta explicabo. Mol',200,'2023-05-07'),(2,'Provident nam illo enim et ut rerum. Eos aliquam harum nihil vero alias a nihil. Consequatur placeat',50,'2022-10-06'),(3,'Soluta quidem ut eius iure. Adipisci est sequi et ut veniam consequatur. Iure qui voluptatem cum per',70,'2023-04-26'),(4,'Temporibus voluptatem a ducimus animi qui nemo. Nesciunt porro tenetur accusantium sit. Non rerum pl',110,'2023-02-05'),(5,'Dolorum labore praesentium ut. Qui et nostrum ullam et et velit consequatur corporis. Atque ipsa num',78,'2023-07-05'),(6,'Fugiat numquam iusto autem autem est odio possimus. Magnam sapiente saepe et vero aperiam. Fugiat ea',67,'2023-01-15'),(7,'Velit et atque omnis. Occaecati expedita vero esse.',44,'2022-08-26'),(8,'Autem est rerum aperiam dolorem labore. Qui nulla doloremque fugiat temporibus ipsa deleniti possimu',111,'2022-02-03'),(9,'Perspiciatis asperiores illo eius. Voluptatum consectetur odit qui. Illum exercitationem amet qui oc',143,'2022-01-20'),(10,'Pariatur animi aliquam vero nulla in. Possimus soluta et velit delectus consectetur. Sed esse amet p',125,'2023-07-17'),(11,'Aut in dignissimos velit pariatur vel. Amet qui sequi fugit unde fuga hic culpa. Et aut et enim ipsa',90,'2023-03-08'),(12,'Odit culpa quia vero omnis asperiores debitis quis temporibus. Ut minus tempora dolorem dolorem volu',70,'2023-04-02'),(13,'Et aut ut dolore non maxime doloremque. Magnam ratione voluptas consequatur error soluta. Deleniti a',10,'2023-02-05'),(14,'Rem facere doloribus accusamus itaque recusandae quia. Quo unde suscipit dicta corrupti explicabo. A',80,'2022-02-10'),(15,'Aut dolorem quia necessitatibus perspiciatis et ea asperiores eum. Veritatis quidem facere non earum',40,'2022-05-26');
/*!40000 ALTER TABLE `Expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Investor`
--

DROP TABLE IF EXISTS `Investor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Investor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(30) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `company` varchar(30) DEFAULT NULL,
  `investment` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Investor`
--

LOCK TABLES `Investor` WRITE;
/*!40000 ALTER TABLE `Investor` DISABLE KEYS */;
INSERT INTO `Investor` VALUES (1,'Robel','Beryl','379735259','ngleichner@example.org','adfg',1000),(2,'Kilback','Addison','410274356','kgleichner@example.org','dffg',1000),(3,'Hayes','Malika','809729285','tyreek99@example.com','dffg',2000),(4,'Rutherford','Pierre','696206587','schmitt.lucy@example.org','ocg',2500),(5,'Stark','Collin','40130930','garrick.auer@example.org','ohfd',1500),(6,'Flatley','Emile','404296898','laisha.rau@example.net','ghjk',10500),(7,'Littel','Fabiola','54650851','pvandervort@example.com','ujhn',20000),(8,'Will','Emilio','858324210','tracy.champlin@example.com','ujhn',8000),(9,'Kunde','Taya','483890867','rogelio52@example.net','vhjkn',5000),(10,'Dicki','Ruben','590209778','nkirlin@example.net','vhjkn',1200);
/*!40000 ALTER TABLE `Investor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `quintile` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `incomemonth` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (1,'Walker','Chase','2022-08-27',32,'1990-10-19','PR','4','verda92@example.org',607),(2,'Heidenreich','Leslie','2023-06-27',36,'1986-10-11','PE','3','emard.aisha@example.org',305),(3,'West','Lorenzo','2023-02-18',33,'1990-08-14','AR','5','yboyle@example.net',1286),(4,'Doyle','Kasey','2022-12-03',32,'1990-11-22','PE','1','mayer.dewayne@example.net',104),(5,'Stokes','Connor','2022-08-27',42,'1980-09-25','CL','2','gayle.mosciski@example.net',234),(6,'Gorczany','Lavina','2022-09-19',32,'1991-02-16','MX','3','franecki.anais@example.org',445),(7,'Windler','Henriette','2023-04-30',43,'1980-07-23','CL','3','jason55@example.org',410),(8,'Rosenbaum','Efren','2023-02-22',34,'1989-07-22','PE','4','ima.quitzon@example.net',504),(9,'Ledner','Emmy','2022-11-10',50,'1973-03-22','MX','1','stephany51@example.net',141),(10,'Dietrich','Arvilla','2023-05-11',35,'1988-08-02','BO','1','nicolas.gustave@example.com',194),(11,'Rempel','Mozell','2022-09-15',33,'1990-05-23','CO','3','walsh.brionna@example.org',416),(12,'Goyette','Ernestine','2022-11-10',39,'1984-05-01','PE','3','marilie.adams@example.com',351),(13,'Walsh','Shania','2023-03-29',44,'1979-08-15','CL','1','earnest75@example.net',146),(14,'Bahringer','Robin','2023-07-28',49,'1974-03-26','MX','5','reynolds.anabel@example.com',897),(15,'Conroy','Ana','2023-04-25',31,'1992-06-06','CL','1','jackeline39@example.net',151),(16,'Wolf','Tamia','2023-04-10',48,'1975-08-03','VE','2','jamel.wilkinson@example.org',279),(17,'Dickens','Maximo','2022-10-04',31,'1991-10-12','MX','2','otha.kirlin@example.com',293),(18,'Haley','Berneice','2023-07-23',24,'1999-04-06','MX','1','geraldine52@example.com',119),(19,'Thiel','Newell','2022-08-08',35,'1988-02-08','BO','2','doyle38@example.org',227),(20,'Jacobson','Sienna','2023-01-01',51,'1971-11-13','UY','2','xstoltenberg@example.net',255),(21,'Hartmann','Yoshiko','2022-08-17',37,'1986-02-25','MX','5','torphy.fanny@example.org',1026),(22,'Hills','Prince','2022-10-09',41,'1982-04-19','AR','1','mason.fay@example.net',140),(23,'Prosacco','Elena','2023-04-21',41,'1982-02-28','AR','1','citlalli.beer@example.net',144),(24,'Macejkovic','Marielle','2022-11-12',30,'1993-01-18','CO','4','feeney.pedro@example.com',501),(25,'Swaniawski','Wayne','2022-08-13',37,'1985-11-20','MX','3','magdalena70@example.net',408),(26,'Zboncak','Talon','2022-12-25',44,'1979-06-05','CL','5','jones.bernie@example.com',1641),(27,'Altenwerth','Alda','2023-05-29',24,'1999-08-05','CL','1','abbott.ryley@example.net',100),(28,'Rempel','Lavon','2023-05-05',27,'1995-10-29','CL','2','adams.nicholas@example.com',297),(29,'Schmitt','Sonia','2022-10-27',45,'1978-06-21','CL','3','dbeer@example.org',485),(30,'Tremblay','Oswald','2022-08-02',27,'1996-01-04','CL','1','uo\'keefe@example.org',170),(31,'Boehm','Earline','2022-10-02',42,'1980-10-05','CL','5','flakin@example.com',1927),(32,'Hermann','Arnaldo','2022-11-14',47,'1975-12-04','VE','4','maximo19@example.net',792),(33,'Dietrich','Kyle','2022-11-17',26,'1997-06-17','BO','4','oturcotte@example.org',759),(34,'Paucek','Oscar','2022-10-27',28,'1995-08-30','MX','1','rempel.anika@example.net',149),(35,'Bartell','Elissa','2022-11-20',39,'1984-01-22','PE','5','lillian.mills@example.com',1510),(36,'Hilll','Guido','2022-12-04',30,'1993-06-08','PE','2','hugh35@example.org',220),(37,'Kulas','Juvenal','2023-04-25',41,'1982-02-18','AR','4','schmeler.rosalee@example.org',620),(38,'Wolff','Haskell','2022-09-30',33,'1990-06-29','PR','1','graham.madelynn@example.org',137),(39,'Lindgren','Gayle','2022-09-10',50,'1973-03-13','UY','4','marielle60@example.org',625),(40,'Walter','Beaulah','2022-10-20',38,'1985-08-23','PE','2','bboehm@example.com',209),(41,'Oberbrunner','Annie','2023-04-02',47,'1975-10-03','VE','5','clifford01@example.net',973),(42,'Hermiston','Audrey','2023-02-06',41,'1981-12-22','AR','4','ischmeler@example.com',763),(43,'Cassin','Chanelle','2022-08-13',42,'1980-09-26','CL','2','shanahan.roxanne@example.org',287),(44,'Bogisich','Damien','2023-01-15',36,'1986-11-23','BO','5','stiedemann.alfredo@example.net',1933),(45,'Thompson','Pasquale','2022-08-10',33,'1990-05-26','BO','3','camille42@example.org',302),(46,'West','Bianka','2023-07-02',34,'1989-06-09','CL','3','general49@example.org',357),(47,'Harber','Caroline','2022-10-06',49,'1974-02-16','MX','1','easton05@example.com',137),(48,'Wolff','Clay','2022-11-27',30,'1993-06-16','AR','3','leonie82@example.com',378),(49,'Dare','Emmanuel','2023-08-29',42,'1981-01-10','CL','3','pklein@example.net',321),(50,'Quigley','Lavada','2022-08-28',38,'1984-11-26','PE','3','heidenreich.mireille@example.c',371),(51,'Schiller','Rico','2022-11-07',44,'1979-07-26','CL','2','tamia03@example.com',208),(52,'Osinski','Preston','2022-11-07',51,'1972-04-01','UY','5','smitham.myra@example.net',1148),(53,'Bosco','Jewell','2023-02-12',40,'1982-09-07','PE','3','angelita94@example.org',394),(54,'Buckridge','Merritt','2023-05-12',28,'1994-10-20','AR','1','nparisian@example.com',174),(55,'Hauck','Jeanne','2022-09-16',30,'1993-01-31','CO','4','harold51@example.org',541),(56,'Flatley','Oleta','2023-01-17',44,'1979-02-27','CL','1','bernardo64@example.org',161),(57,'Gottlieb','Alene','2023-06-09',47,'1976-08-28','CL','3','monserrat.konopelski@example.o',355),(58,'Abbott','Ari','2023-04-18',48,'1974-12-13','VE','4','nschaden@example.net',514),(59,'Hamill','Devon','2023-08-03',49,'1973-11-27','MX','2','rubye.murazik@example.org',280),(60,'Towne','Daron','2023-04-24',49,'1973-10-25','MX','2','sgleichner@example.org',277),(61,'Grady','Maxwell','2023-03-15',47,'1976-06-30','VE','5','wgoodwin@example.net',1539),(62,'Keebler','Brionna','2023-06-13',33,'1990-02-28','VE','3','ziemann.reid@example.net',494),(63,'Kessler','Saige','2023-02-15',35,'1988-06-13','BO','3','bernita80@example.org',304),(64,'Homenick','Marlon','2022-12-10',22,'2000-11-22','AR','5','cweber@example.org',1054),(65,'Greenfelder','Isabel','2023-01-13',48,'1975-04-02','VE','2','eorn@example.com',243),(66,'Heaney','Letitia','2022-09-08',27,'1995-09-18','ES','2','shields.rupert@example.net',285),(67,'Miller','Sylvia','2022-10-31',34,'1988-12-09','CL','3','peyton.leffler@example.org',342),(68,'Abshire','Green','2023-07-09',36,'1986-09-09','MX','1','kaia06@example.org',182),(69,'Medhurst','Kiara','2023-04-10',27,'1995-10-07','CL','4','larue.volkman@example.org',751),(70,'Stracke','Arnaldo','2023-03-23',37,'1985-11-19','MX','1','nicolas.edd@example.net',130),(71,'Cummerata','Anjali','2022-08-18',52,'1971-04-05','AR','5','jacklyn48@example.com',1052),(72,'Murphy','Sheridan','2022-08-20',33,'1989-10-12','VE','2','mayer.zander@example.org',296),(73,'Mayer','Ressie','2022-09-02',52,'1971-04-01','AR','1','garrett10@example.org',104),(74,'Doyle','General','2023-04-25',45,'1978-01-12','CL','1','shaniya07@example.net',129),(75,'Towne','Amiya','2022-09-05',49,'1974-07-19','MX','1','justine71@example.net',134),(76,'Raynor','Roberto','2023-01-11',24,'1998-10-12','UY','1','mose20@example.com',183),(77,'Dickens','Keyon','2023-06-13',48,'1975-05-18','VE','1','schiller.paris@example.com',112),(78,'Mueller','Donavon','2023-05-30',51,'1971-09-06','UY','2','kale54@example.com',227),(79,'White','Maximilian','2023-01-13',31,'1992-05-27','MX','1','nhuel@example.net',114),(80,'Von','Ima','2023-06-14',40,'1983-02-07','PE','1','bartholome31@example.org',132),(81,'Turcotte','Concepcion','2022-08-02',25,'1998-06-10','CO','4','uparker@example.org',513),(82,'Romaguera','Madie','2022-11-03',44,'1979-01-08','CL','5','dschimmel@example.com',1301),(83,'Schmitt','Verda','2022-10-12',32,'1990-12-02','AR','4','keeley35@example.com',713),(84,'DuBuque','Jaquelin','2022-10-17',39,'1984-08-28','PE','4','kris27@example.com',626),(85,'Spinka','Dina','2023-01-18',43,'1979-09-02','CL','2','hhudson@example.net',248),(86,'Blanda','Hildegard','2023-03-12',50,'1973-07-04','MX','4','raynor.liana@example.org',793),(87,'Welch','Lonie','2023-02-26',35,'1988-08-29','MX','1','klein.alyson@example.org',119),(88,'Gottlieb','Cheyenne','2023-08-12',33,'1989-11-30','VE','4','howell.kaylie@example.com',686),(89,'Collins','Gene','2022-10-09',41,'1981-09-20','AR','2','bulah.schimmel@example.org',257),(90,'Breitenberg','Lilly','2022-08-08',24,'1998-12-28','MX','2','vince.gaylord@example.com',243),(91,'Murray','Antonina','2022-12-21',37,'1985-11-30','MX','2','antoinette.will@example.net',246),(92,'Labadie','Leonor','2023-02-18',30,'1992-09-28','PE','5','terry04@example.com',1346),(93,'Russel','Bertha','2022-10-22',50,'1973-02-05','UY','3','fkunze@example.com',495),(94,'Gaylord','Elouise','2023-06-15',45,'1978-05-24','CL','5','seamus15@example.net',830),(95,'Douglas','Pearline','2023-04-05',21,'2001-10-23','CL','1','weldon.langosh@example.net',198),(96,'McDermott','Anastasia','2023-05-11',44,'1978-12-28','CL','4','hferry@example.org',550),(97,'Crist','Filiberto','2023-05-07',43,'1980-08-30','CL','5','torrance.bartell@example.net',1712),(98,'Koelpin','Elissa','2022-12-29',28,'1995-06-22','MX','3','djacobson@example.net',351),(99,'Bauch','Orlo','2023-06-04',52,'1971-07-04','AR','5','ankunding.orville@example.com',1672),(100,'Bergnaum','Gennaro','2023-05-24',30,'1993-03-29','PE','4','bogan.janice@example.net',794);
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student_Course`
--

DROP TABLE IF EXISTS `Student_Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_Course` (
  `id_student` int NOT NULL,
  `id_course` int NOT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  KEY `id_student` (`id_student`),
  KEY `id_course` (`id_course`),
  CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `Student` (`id`),
  CONSTRAINT `student_course_ibfk_2` FOREIGN KEY (`id_course`) REFERENCES `Course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student_Course`
--

LOCK TABLES `Student_Course` WRITE;
/*!40000 ALTER TABLE `Student_Course` DISABLE KEYS */;
INSERT INTO `Student_Course` VALUES (1,1,1,'2022-08-27','2023-02-27'),(2,2,1,'2023-08-08','2024-02-08'),(3,3,0,'2023-02-18','2023-08-18'),(4,4,0,'2023-05-12','2023-11-12'),(5,5,0,'2022-08-27','2023-02-27'),(6,6,0,'2022-10-10','2023-04-10'),(7,7,1,'2023-04-30','2023-10-30'),(8,8,1,'2023-07-27','2024-01-27'),(9,9,0,'2023-02-11','2023-08-11'),(10,10,1,'2023-05-11','2023-11-11'),(11,11,1,'2022-09-15','2023-03-15'),(12,12,1,'2023-01-14','2023-07-14'),(13,13,0,'2023-05-26','2023-11-26'),(31,1,1,'2022-10-02','2023-04-02'),(32,2,1,'2022-11-14','2023-05-14'),(33,3,1,'2023-07-08','2024-01-08'),(34,4,0,'2023-02-19','2023-08-19'),(35,5,0,'2023-08-19','2024-02-19'),(36,6,0,'2022-12-04','2023-06-04'),(37,7,1,'2023-04-25','2023-10-25'),(38,8,1,'2023-01-16','2023-07-16'),(39,9,1,'2022-09-10','2023-03-10'),(40,10,1,'2022-10-31','2023-04-30'),(41,11,0,'2023-07-03','2024-01-03'),(42,12,1,'2023-03-12','2023-09-12'),(43,13,1,'2022-11-13','2023-05-13'),(61,1,0,'2023-05-25','2023-11-25'),(62,2,1,'2023-06-13','2023-12-13'),(63,3,0,'2023-05-23','2023-11-23'),(64,4,0,'2022-12-10','2023-06-10'),(65,5,0,'2023-01-13','2023-07-13'),(66,6,0,'2022-09-08','2023-03-08'),(67,7,0,'2022-10-31','2023-04-30'),(68,8,1,'2023-07-09','2024-01-09'),(69,9,0,'2023-04-10','2023-10-10'),(70,10,1,'2023-03-23','2023-09-23'),(71,11,1,'2022-08-18','2023-02-18'),(72,12,1,'2023-01-23','2023-07-23'),(73,13,1,'2022-09-02','2023-03-02'),(91,1,1,'2022-12-21','2023-06-21'),(92,2,0,'2023-02-18','2023-08-18'),(93,3,1,'2023-02-01','2023-08-01'),(94,4,1,'2023-06-15','2023-12-15'),(95,5,0,'2023-04-05','2023-10-05'),(96,6,0,'2023-05-11','2023-11-11'),(97,7,1,'2023-05-07','2023-11-07'),(98,8,1,'2022-12-29','2023-06-29'),(99,9,1,'2023-06-04','2023-12-04'),(100,10,0,'2023-05-24','2023-11-24'),(1,11,0,'2023-01-12','2023-07-12'),(2,12,0,'2023-06-27','2023-12-27'),(3,13,1,'2023-07-31','2024-01-31'),(21,1,1,'2022-08-17','2023-02-17'),(22,2,0,'2022-10-09','2023-04-09'),(23,3,0,'2023-05-28','2023-11-28'),(24,4,0,'2022-11-12','2023-05-12'),(25,5,0,'2022-08-13','2023-02-13'),(26,6,0,'2022-12-25','2023-06-25'),(27,7,1,'2023-05-29','2023-11-29'),(28,8,1,'2023-05-05','2023-11-05'),(29,9,1,'2022-10-27','2023-04-27'),(30,10,1,'2022-08-02','2023-02-02'),(31,11,0,'2022-12-17','2023-06-17'),(32,12,1,'2023-05-22','2023-11-22'),(33,13,0,'2023-04-22','2023-10-22'),(51,1,0,'2022-11-07','2023-05-07'),(52,2,0,'2022-11-07','2023-05-07'),(53,3,1,'2023-02-12','2023-08-12'),(54,4,0,'2023-05-12','2023-11-12'),(55,5,0,'2022-09-16','2023-03-16'),(56,6,0,'2023-01-17','2023-07-17'),(57,7,0,'2023-06-09','2023-12-09'),(58,8,1,'2023-04-18','2023-10-18'),(59,9,1,'2023-08-03','2024-02-03'),(60,10,0,'2023-04-24','2023-10-24'),(61,11,0,'2023-03-15','2023-09-15'),(62,12,1,'2023-06-30','2023-12-30'),(63,13,1,'2023-02-15','2023-08-15'),(81,1,0,'2022-08-02','2023-02-02'),(82,2,1,'2022-11-03','2023-05-03'),(83,3,0,'2022-10-12','2023-04-12'),(84,4,0,'2022-10-17','2023-04-17'),(85,5,0,'2023-01-18','2023-07-18'),(86,6,0,'2023-03-12','2023-09-12'),(87,7,0,'2023-02-26','2023-08-26'),(88,8,0,'2023-08-12','2024-02-12'),(89,9,1,'2022-10-09','2023-04-09'),(90,10,0,'2022-08-08','2023-02-08'),(91,11,1,'2023-03-13','2023-09-13'),(92,12,1,'2023-06-06','2023-12-06'),(93,13,1,'2022-10-22','2023-04-22'),(11,1,1,'2022-11-26','2023-05-26'),(12,2,1,'2023-08-20','2024-02-20'),(13,3,0,'2023-08-18','2024-02-18'),(14,4,1,'2023-07-28','2024-01-28'),(15,5,0,'2023-04-25','2023-10-25'),(16,6,0,'2023-04-10','2023-10-10'),(17,7,1,'2022-10-04','2023-04-04'),(18,8,0,'2023-07-23','2024-01-23'),(19,9,0,'2022-08-08','2023-02-08'),(20,10,0,'2023-01-01','2023-07-01'),(21,11,1,'2023-07-17','2024-01-17'),(22,12,1,'2022-11-13','2023-05-13'),(23,13,0,'2023-04-21','2023-10-21'),(41,1,0,'2023-08-13','2024-02-13'),(42,2,1,'2023-03-18','2023-09-18'),(43,3,0,'2022-08-13','2023-02-13'),(44,4,0,'2023-01-15','2023-07-15'),(45,5,0,'2022-08-10','2023-02-10'),(46,6,1,'2023-07-02','2024-01-02'),(47,7,0,'2022-10-06','2023-04-06'),(48,8,1,'2022-11-27','2023-05-27'),(49,9,1,'2023-08-29','2024-02-29'),(50,10,1,'2022-08-28','2023-02-28'),(51,11,1,'2022-12-21','2023-06-21'),(52,12,0,'2023-03-24','2023-09-24'),(53,13,0,'2023-07-21','2024-01-21'),(71,1,0,'2022-10-03','2023-04-03'),(72,2,0,'2022-08-20','2023-02-20'),(73,3,1,'2023-05-30','2023-11-30'),(74,4,1,'2023-04-25','2023-10-25'),(75,5,1,'2022-09-05','2023-03-05'),(76,6,1,'2023-01-11','2023-07-11'),(77,7,1,'2023-06-13','2023-12-13'),(78,8,0,'2023-05-30','2023-11-30'),(79,9,0,'2023-01-13','2023-07-13'),(80,10,0,'2023-06-14','2023-12-14'),(81,11,1,'2023-05-24','2023-11-24'),(82,12,1,'2022-12-14','2023-06-14'),(83,13,1,'2023-02-01','2023-08-01'),(1,1,0,'2023-01-30','2023-07-30'),(2,2,0,'2023-07-12','2024-01-12'),(3,3,1,'2023-08-26','2024-02-26'),(4,4,0,'2022-12-03','2023-06-03'),(5,5,1,'2023-03-31','2023-09-30'),(6,6,0,'2022-09-19','2023-03-19'),(7,7,0,'2023-06-04','2023-12-04'),(8,8,0,'2023-02-22','2023-08-22'),(9,9,0,'2022-11-10','2023-05-10'),(10,10,1,'2023-05-17','2023-11-17'),(11,11,1,'2023-07-19','2024-01-19'),(12,12,1,'2022-11-10','2023-05-10'),(13,13,0,'2023-03-29','2023-09-29'),(31,1,0,'2022-10-25','2023-04-25'),(32,2,0,'2022-12-31','2023-06-30'),(33,3,1,'2022-11-17','2023-05-17'),(34,4,0,'2022-10-27','2023-04-27'),(35,5,1,'2022-11-20','2023-05-20'),(36,6,1,'2023-05-22','2023-11-22'),(37,7,1,'2023-07-14','2024-01-14'),(38,8,0,'2022-09-30','2023-03-30'),(39,9,1,'2022-09-22','2023-03-22'),(40,10,1,'2022-10-20','2023-04-20'),(41,11,1,'2023-04-02','2023-10-02'),(42,12,0,'2023-02-06','2023-08-06'),(43,13,1,'2023-03-01','2023-09-01');
/*!40000 ALTER TABLE `Student_Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teacher`
--

DROP TABLE IF EXISTS `Teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `last_name` varchar(30) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `experience` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teacher`
--

LOCK TABLES `Teacher` WRITE;
/*!40000 ALTER TABLE `Teacher` DISABLE KEYS */;
INSERT INTO `Teacher` VALUES (1,'Schmitt','Moshe','972356731','1990-03-01','Ut molestiae possimus et archi',4,'ilene.quigley@example.org'),(2,'Spinka','Mohammed','323543340','1990-07-16','Veritatis nobis et consectetur',6,'bridgette46@example.com'),(3,'Lockman','Imelda','809783892','1984-04-30','Eum dolor tempore quia commodi',0,'zackery07@example.org'),(4,'Oberbrunner','Benny','934169323','1986-03-02','Velit aut cum voluptatem nostr',5,'pauline.green@example.org'),(5,'Feil','Brycen','125607187','1996-12-21','Sint omnis eius aut et.',8,'pjast@example.com'),(6,'Toy','Dawson','764776201','1994-07-01','Dolores nihil quia eos.',7,'dstehr@example.net'),(7,'Wisoky','Janae','62493592','1983-09-14','Sint saepe et aut sed aspernat',8,'vhaley@example.com'),(8,'Romaguera','Uriel','91859607','1988-02-23','A enim minima esse deleniti ut',7,'abbott.herman@example.com'),(9,'Schoen','Angelita','729022405','1991-10-02','Sed et ut molestiae occaecati ',0,'funk.tatyana@example.org'),(10,'Cummings','Jacinto','328339034','1996-06-14','Ipsum at sed qui libero nesciu',2,'darlene.o\'kon@example.net'),(11,'Schulist','Camryn','916906564','1992-02-19','Esse velit ipsa aut laborum in',0,'elisha.huels@example.org'),(12,'Towne','Jermey','726952385','1990-06-14','Dolorem nemo non dolore nemo e',7,'mitchell.cody@example.com');
/*!40000 ALTER TABLE `Teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'base_startup'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-01 23:15:27
