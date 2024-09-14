-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: localhost    Database: solpedcaf
-- ------------------------------------------------------
-- Server version	8.3.0-cluster

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add etapasplagas',7,'add_etapasplagas'),(26,'Can change etapasplagas',7,'change_etapasplagas'),(27,'Can delete etapasplagas',7,'delete_etapasplagas'),(28,'Can view etapasplagas',7,'view_etapasplagas'),(29,'Can add etapas_café',8,'add_etapas_café'),(30,'Can change etapas_café',8,'change_etapas_café'),(31,'Can delete etapas_café',8,'delete_etapas_café'),(32,'Can view etapas_café',8,'view_etapas_café'),(33,'Can add etapas',9,'add_etapas'),(34,'Can change etapas',9,'change_etapas'),(35,'Can delete etapas',9,'delete_etapas'),(36,'Can view etapas',9,'view_etapas'),(37,'Can add post',11,'add_post'),(38,'Can change post',11,'change_post'),(39,'Can delete post',11,'delete_post'),(40,'Can view post',11,'view_post'),(41,'Can add plagas',12,'add_plagas'),(42,'Can change plagas',12,'change_plagas'),(43,'Can delete plagas',12,'delete_plagas'),(44,'Can view plagas',12,'view_plagas'),(45,'Can add plaga',13,'add_plaga'),(46,'Can change plaga',13,'change_plaga'),(47,'Can delete plaga',13,'delete_plaga'),(48,'Can view plaga',13,'view_plaga'),(49,'Can add modulos',14,'add_modulos'),(50,'Can change modulos',14,'change_modulos'),(51,'Can delete modulos',14,'delete_modulos'),(52,'Can view modulos',14,'view_modulos'),(53,'Can add modulo',14,'add_modulo'),(54,'Can change modulo',14,'change_modulo'),(55,'Can delete modulo',14,'delete_modulo'),(56,'Can view modulo',14,'view_modulo'),(57,'Can add modulo',15,'add_modulo'),(58,'Can change modulo',15,'change_modulo'),(59,'Can delete modulo',15,'delete_modulo'),(60,'Can view modulo',15,'view_modulo'),(61,'Can add etapas_plagas',16,'add_etapas_plagas'),(62,'Can change etapas_plagas',16,'change_etapas_plagas'),(63,'Can delete etapas_plagas',16,'delete_etapas_plagas'),(64,'Can view etapas_plagas',16,'view_etapas_plagas'),(65,'Can add etapa',17,'add_etapa'),(66,'Can change etapa',17,'change_etapa'),(67,'Can delete etapa',17,'delete_etapa'),(68,'Can view etapa',17,'view_etapa'),(69,'Can add enfermedades',18,'add_enfermedades'),(70,'Can change enfermedades',18,'change_enfermedades'),(71,'Can delete enfermedades',18,'delete_enfermedades'),(72,'Can view enfermedades',18,'view_enfermedades'),(73,'Can add plagas',19,'add_plagas'),(74,'Can change plagas',19,'change_plagas'),(75,'Can delete plagas',19,'delete_plagas'),(76,'Can view plagas',19,'view_plagas'),(77,'Can add enfermedade',18,'add_enfermedade'),(78,'Can change enfermedade',18,'change_enfermedade'),(79,'Can delete enfermedade',18,'delete_enfermedade'),(80,'Can view enfermedade',18,'view_enfermedade'),(81,'Can add plaga',19,'add_plaga'),(82,'Can change plaga',19,'change_plaga'),(83,'Can delete plaga',19,'delete_plaga'),(84,'Can view plaga',19,'view_plaga'),(85,'Can add card',20,'add_card'),(86,'Can change card',20,'change_card'),(87,'Can delete card',20,'delete_card'),(88,'Can view card',20,'view_card'),(89,'Can add cardpe',21,'add_cardpe'),(90,'Can change cardpe',21,'change_cardpe'),(91,'Can delete cardpe',21,'delete_cardpe'),(92,'Can view cardpe',21,'view_cardpe');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$WZh5pieeMnkThDKByHCMjy$d4mqtlEAqU05w+tLdA5Yu2Xc1puLQZ7L7a1L4jpEyvo=','2024-09-09 23:42:20.121610',1,'root','','','root@gmail.com',1,1,'2024-09-05 23:50:51.517695'),(2,'pbkdf2_sha256$870000$GTW8NR8YaJFriJXwyhypiD$emvuNNklqgMNi0e7tiXewtGcjeGXfOSN5eLCjgK4q2Y=','2024-09-06 01:36:47.501864',1,'andresjsalcedo','','','andresjsalcedo06@gmail.com',1,1,'2024-09-06 00:11:01.246158'),(3,'pbkdf2_sha256$870000$B4vkexWRq6HPXSCLQjHMFh$jLtZjOPZ1WyIh4eDdDmRmJQ9vWCAB+llJ0hRYPS44yg=','2024-09-06 00:28:22.638900',1,'andres06','','','andresj@gmail.com',1,1,'2024-09-06 00:27:55.498200'),(4,'pbkdf2_sha256$870000$0mXVn2YSe4L6wqXyQE17AG$j5+KtFRjQpfh/IQ8GIsl2bh3LoQ9nwSmrS3gIcAXrD8=','2024-09-06 01:02:30.310224',1,'andres','','','andres@gmail.com',1,1,'2024-09-06 01:02:02.268984');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_plaga`
--

DROP TABLE IF EXISTS `blog_plaga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_plaga` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `descripcion` longtext NOT NULL,
  `tipo` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_plaga`
--

LOCK TABLES `blog_plaga` WRITE;
/*!40000 ALTER TABLE `blog_plaga` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_plaga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `publish` datetime(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `status` varchar(2) NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`),
  KEY `blog_post_slug_b95473f2` (`slug`),
  KEY `blog_post_publish_bb7600_idx` (`publish` DESC),
  CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (1,'Etapa de plantacion','etapa-de-plantacion','Es la primera etapa y más importante, \r\nya que marca el inicio del ciclo','2024-09-06 02:08:00.000000','2024-09-06 02:08:20.097845','2024-09-06 03:16:39.798965','PB',2),(2,'Etapa de fructificación','etapa-de-fructificacion','es el período en el que las flores del cafeto se transforman en los frutos que conocemos.','2024-09-06 02:41:10.000000','2024-09-06 02:41:30.987228','2024-09-06 03:17:18.108563','PB',2),(3,'Etapa de crecimiento','etapa-de-crecimiento','abarca desde la siembra \r\nde la semilla hasta la\r\ncosecha de las cerezas maduras','2024-09-06 02:41:31.000000','2024-09-06 02:41:47.290895','2024-09-06 02:41:47.290903','PB',2),(4,'Etapa de floración','etapa-de-floracion','es un período crucial en el ciclo de vida del cafeto, ya que marca\r\nel inicio de la producción de frutos.','2024-09-06 02:41:47.000000','2024-09-06 02:42:21.485430','2024-09-06 02:43:45.878529','PB',2);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Datos_etapas`
--

DROP TABLE IF EXISTS `Datos_etapas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Datos_etapas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `descripcion` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Datos_etapas`
--

LOCK TABLES `Datos_etapas` WRITE;
/*!40000 ALTER TABLE `Datos_etapas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Datos_etapas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-09-06 00:32:35.025842','4','Etapa De Plantación',1,'[{\"added\": {}}]',8,3),(2,'2024-09-06 00:33:06.749649','5','Etapa de Fructificación',1,'[{\"added\": {}}]',8,3),(3,'2024-09-06 00:33:38.858365','6','Etapa de Crecimiento',1,'[{\"added\": {}}]',8,3),(4,'2024-09-06 00:34:01.279883','7','Etapa de Floración',1,'[{\"added\": {}}]',8,3),(5,'2024-09-06 02:08:20.098677','1','Etapa de plantacion',1,'[{\"added\": {}}]',11,2),(6,'2024-09-06 02:15:15.395971','1','edsa',1,'[{\"added\": {}}]',13,2),(7,'2024-09-06 02:37:31.962059','1','edsa',3,'',13,2),(8,'2024-09-06 02:41:30.987953','2','Etapa de fructificación',1,'[{\"added\": {}}]',11,2),(9,'2024-09-06 02:41:47.291454','3','Etapa de crecimiento',1,'[{\"added\": {}}]',11,2),(10,'2024-09-06 02:42:21.486078','4','Etapa de floración',1,'[{\"added\": {}}]',11,2),(11,'2024-09-06 02:43:12.101433','2','Etapa de fructificación',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',11,2),(12,'2024-09-06 02:43:31.123108','2','Etapa de fructificación',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',11,2),(13,'2024-09-06 02:43:45.879415','4','Etapa de floración',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',11,2),(14,'2024-09-06 02:44:10.668907','1','Etapa de plantacion',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',11,2),(15,'2024-09-06 03:16:39.799784','1','Etapa de plantacion',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',11,2),(16,'2024-09-06 03:17:18.109246','2','Etapa de fructificación',2,'[{\"changed\": {\"fields\": [\"Body\"]}}]',11,2),(17,'2024-09-10 01:09:10.724193','1','Soluciones Para Su Cultivo',1,'[{\"added\": {}}]',14,1),(18,'2024-09-10 01:09:40.202677','2','Plagas y Enfermedades',1,'[{\"added\": {}}]',14,1),(19,'2024-09-10 01:09:58.006787','3','Consejos Para Su Cultivo',1,'[{\"added\": {}}]',14,1),(20,'2024-09-10 02:28:33.200201','1','Soluciones Para Su Cultivo',1,'[{\"added\": {}}]',15,1),(21,'2024-09-10 02:28:49.541375','2','Plagas y Enfermedades',1,'[{\"added\": {}}]',15,1),(22,'2024-09-10 02:29:09.111742','3','Consejos Para Su Cultivo',1,'[{\"added\": {}}]',15,1),(23,'2024-09-11 00:26:47.584751','1','Etapa de plantación',1,'[{\"added\": {}}]',17,1),(24,'2024-09-11 01:04:01.084905','2','Etapa de fructificación',1,'[{\"added\": {}}]',17,1),(25,'2024-09-11 01:05:17.043478','3','Etapa de crecimiento',1,'[{\"added\": {}}]',17,1),(26,'2024-09-11 01:06:06.558198','4','Etapa de floración',1,'[{\"added\": {}}]',17,1),(27,'2024-09-13 00:05:08.532486','1','Etapa de plantación',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',17,1),(28,'2024-09-13 00:06:32.974117','2','Plagas y Enfermedades',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',15,1),(29,'2024-09-13 00:07:57.496130','1','Etapa de plantación',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',17,1),(30,'2024-09-13 01:22:49.478260','1','Hypothenemus  hampei (BROCA)',1,'[{\"added\": {}}]',21,1),(31,'2024-09-13 02:31:38.702610','2','Hypothenemus hampei (BROCA)',1,'[{\"added\": {}}]',21,1),(32,'2024-09-13 02:31:47.288560','1','Hypothenemus  hampei (BROCA)',3,'',21,1),(33,'2024-09-13 02:36:55.450907','3','Pudrición de raíces (Rosellinia spp)',1,'[{\"added\": {}}]',21,1),(34,'2024-09-13 02:37:41.196642','1','Etapa de plantación',2,'[{\"changed\": {\"fields\": [\"UrlDestino\"]}}]',17,1),(35,'2024-09-13 03:05:53.188292','4','Roya del café (Hemileia vastatrix)',1,'[{\"added\": {}}]',21,1),(36,'2024-09-13 03:06:45.119797','5','Hemiptera spp',1,'[{\"added\": {}}]',21,1),(37,'2024-09-13 03:07:24.549350','5','Hemiptera spp',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',21,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'blog','plaga'),(12,'blog','plagas'),(11,'blog','post'),(5,'contenttypes','contenttype'),(10,'Datos','datos'),(9,'Datos','etapas'),(20,'etapa_de_plantacion_plagas_enfermedades','card'),(18,'etapa_de_plantacion_plagas_enfermedades','enfermedade'),(19,'etapa_de_plantacion_plagas_enfermedades','plaga'),(17,'etapa_plagas','etapa'),(16,'etapa_plagas','etapas_plagas'),(7,'etapaplagas','etapasplagas'),(8,'etapas_café','etapas_café'),(15,'pagina_inicial','modulo'),(14,'PI','modulo'),(21,'plantacion_cards_p_e','cardpe'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-09-05 23:38:38.995530'),(2,'auth','0001_initial','2024-09-05 23:38:39.145809'),(3,'admin','0001_initial','2024-09-05 23:38:39.184624'),(4,'admin','0002_logentry_remove_auto_add','2024-09-05 23:38:39.189382'),(5,'admin','0003_logentry_add_action_flag_choices','2024-09-05 23:38:39.205914'),(6,'contenttypes','0002_remove_content_type_name','2024-09-05 23:38:39.259570'),(7,'auth','0002_alter_permission_name_max_length','2024-09-05 23:38:39.278540'),(8,'auth','0003_alter_user_email_max_length','2024-09-05 23:38:39.290234'),(9,'auth','0004_alter_user_username_opts','2024-09-05 23:38:39.295258'),(10,'auth','0005_alter_user_last_login_null','2024-09-05 23:38:39.316888'),(11,'auth','0006_require_contenttypes_0002','2024-09-05 23:38:39.317941'),(12,'auth','0007_alter_validators_add_error_messages','2024-09-05 23:38:39.322726'),(13,'auth','0008_alter_user_username_max_length','2024-09-05 23:38:39.343104'),(14,'auth','0009_alter_user_last_name_max_length','2024-09-05 23:38:39.362853'),(15,'auth','0010_alter_group_name_max_length','2024-09-05 23:38:39.372771'),(16,'auth','0011_update_proxy_permissions','2024-09-05 23:38:39.378346'),(17,'auth','0012_alter_user_first_name_max_length','2024-09-05 23:38:39.419488'),(18,'sessions','0001_initial','2024-09-05 23:38:39.429109'),(19,'etapaplagas','0001_initial','2024-09-06 00:10:34.288139'),(20,'etapas_café','0001_initial','2024-09-06 00:27:21.131426'),(21,'Datos','0001_initial','2024-09-06 01:01:05.288098'),(22,'blog','0001_initial','2024-09-06 01:31:43.056670'),(23,'blog','0002_plagas','2024-09-06 01:31:43.092082'),(24,'blog','0003_plaga_delete_plagas','2024-09-06 01:49:28.411193'),(25,'PI','0001_initial','2024-09-10 01:05:48.098285'),(26,'PI','0002_rename_modulos_modulo','2024-09-10 02:10:35.051641'),(27,'pagina_inicial','0001_initial','2024-09-10 02:26:26.848551'),(28,'etapa_plagas','0001_initial','2024-09-11 00:19:53.157451'),(29,'etapa_plagas','0002_rename_etapas_plagas_etapa','2024-09-11 00:26:36.664807'),(30,'etapa_de_plantacion_plagas_enfermedades','0001_initial','2024-09-11 02:43:53.898933'),(31,'etapa_de_plantacion_plagas_enfermedades','0002_rename_enfermedades_enfermedade_rename_plagas_plaga','2024-09-13 00:03:44.831558'),(32,'etapa_plagas','0003_etapa_urldestino','2024-09-13 00:03:44.865441'),(33,'pagina_inicial','0002_modulo_urldestino','2024-09-13 00:03:44.884491'),(34,'etapa_de_plantacion_plagas_enfermedades','0003_card','2024-09-13 00:59:48.227391'),(35,'etapa_de_plantacion_plagas_enfermedades','0004_delete_card','2024-09-13 01:11:05.483970'),(36,'plantacion_cards_p_e','0001_initial','2024-09-13 01:19:41.196041');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('g19yiptydj99rixtrzh3t9qrgkbsa4vy','.eJxVjDsOwjAQBe_iGln-rGOHkp4zWJv1LgkgR4qTCnF3iJQC2jcz76UybuuYt8ZLnoo6K6tOv9uA9OC6g3LHeps1zXVdpkHvij5o09e58PNyuH8HI7bxW5OXlKKA70hcb0g4eI8UAANhicZRB3awTkJKDgwKSETPDqDnjpnU-wPsJDg0:1sno1U:6sJP-JFb-8MKg277vxtMEgUt2Cat3H_lt2zYxImhS1Y','2024-09-23 23:42:20.123254'),('mbq8la953uzbbv4pwihfku0n7iej8u4y','.eJxVjMsOwiAURP-FtSGF8nTp3m8g93JBqgaS0q6M_64kXegs55yZFwuwbyXsPa1hIXZmkp1-O4T4SHUAukO9NR5b3dYF-VD4QTu_NkrPy-H-HRToZaxNJvcN2aS0yg5mnB1aqZQhkbOf0ElEYUGjRAlZTGBmbaJF6ZG8Zu8P7SU4Dw:1smNex:XpwnlwhPkZF0_jf5SJ2nHn5Y5Wpv_UEq2Azaq6uFrNc','2024-09-20 01:21:11.820492');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapa_de_plantacion_plagas_enfermedades_enfermedade`
--

DROP TABLE IF EXISTS `etapa_de_plantacion_plagas_enfermedades_enfermedade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etapa_de_plantacion_plagas_enfermedades_enfermedade` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(7) NOT NULL,
  `descripcion` longtext NOT NULL,
  `sintomas` longtext NOT NULL,
  `tratamiento` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa_de_plantacion_plagas_enfermedades_enfermedade`
--

LOCK TABLES `etapa_de_plantacion_plagas_enfermedades_enfermedade` WRITE;
/*!40000 ALTER TABLE `etapa_de_plantacion_plagas_enfermedades_enfermedade` DISABLE KEYS */;
/*!40000 ALTER TABLE `etapa_de_plantacion_plagas_enfermedades_enfermedade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapa_de_plantacion_plagas_enfermedades_plaga`
--

DROP TABLE IF EXISTS `etapa_de_plantacion_plagas_enfermedades_plaga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etapa_de_plantacion_plagas_enfermedades_plaga` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(7) NOT NULL,
  `descripcion` longtext NOT NULL,
  `sintomas` longtext NOT NULL,
  `tratamiento` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa_de_plantacion_plagas_enfermedades_plaga`
--

LOCK TABLES `etapa_de_plantacion_plagas_enfermedades_plaga` WRITE;
/*!40000 ALTER TABLE `etapa_de_plantacion_plagas_enfermedades_plaga` DISABLE KEYS */;
/*!40000 ALTER TABLE `etapa_de_plantacion_plagas_enfermedades_plaga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapa_plagas_etapa`
--

DROP TABLE IF EXISTS `etapa_plagas_etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etapa_plagas_etapa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `urlDestino` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa_plagas_etapa`
--

LOCK TABLES `etapa_plagas_etapa` WRITE;
/*!40000 ALTER TABLE `etapa_plagas_etapa` DISABLE KEYS */;
INSERT INTO `etapa_plagas_etapa` VALUES (1,'Etapa de plantación','Es la primera etapa y más importante para producir café, ya que marca el inicio del ciclo','modulos/etapa_plantacion_8cXe1I0.png','http://127.0.0.1:8000/plantacion_cards_p_e/'),(2,'Etapa de fructificación','La etapa de fructificación del café es el período en el que las flores del cafeto se transforman en frutos, también conocidos como cerezas de café.','modulos/etapa_fructificacion_JSzp8Id.png',NULL),(3,'Etapa de crecimiento','abarca desde la siembra de la semilla hasta la\r\ncosecha de las cerezas maduras','modulos/etapa_crecimiento_xznBFoQ.png',NULL),(4,'Etapa de floración','La etapa de floración del café\r\nes un período crucial en el ciclo de vida del cafeto, ya que marca\r\nel inicio de la producción de frutos.','modulos/etapa_floracion.png',NULL);
/*!40000 ALTER TABLE `etapa_plagas_etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapaplagas_etapasplagas`
--

DROP TABLE IF EXISTS `etapaplagas_etapasplagas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etapaplagas_etapasplagas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `descripcion` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapaplagas_etapasplagas`
--

LOCK TABLES `etapaplagas_etapasplagas` WRITE;
/*!40000 ALTER TABLE `etapaplagas_etapasplagas` DISABLE KEYS */;
/*!40000 ALTER TABLE `etapaplagas_etapasplagas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapas_café_etapas_café`
--

DROP TABLE IF EXISTS `etapas_café_etapas_café`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etapas_café_etapas_café` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `descripcion` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapas_café_etapas_café`
--

LOCK TABLES `etapas_café_etapas_café` WRITE;
/*!40000 ALTER TABLE `etapas_café_etapas_café` DISABLE KEYS */;
INSERT INTO `etapas_café_etapas_café` VALUES (4,'Etapa De Plantación','Es la primera etapa y más importante para producir café, ya que marca el inicio del ciclo'),(5,'Etapa de Fructificación','La etapa de fructificación del café es el período en el que las flores del cafeto se transforman en frutos, también conocidos como cerezas de café.'),(6,'Etapa de Crecimiento','abarca desde la siembra  de la semilla hasta la\r\ncosecha de las cerezas maduras'),(7,'Etapa de Floración','La etapa de floración del café es un período crucial en el ciclo de vida del cafeto, ya que marca\r\nel inicio de la producción de frutos.');
/*!40000 ALTER TABLE `etapas_café_etapas_café` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagina_inicial_modulo`
--

DROP TABLE IF EXISTS `pagina_inicial_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagina_inicial_modulo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `urlDestino` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagina_inicial_modulo`
--

LOCK TABLES `pagina_inicial_modulo` WRITE;
/*!40000 ALTER TABLE `pagina_inicial_modulo` DISABLE KEYS */;
INSERT INTO `pagina_inicial_modulo` VALUES (1,'Soluciones Para Su Cultivo','Descubre cómo nuestras soluciones protegen tu cultivo de café contra las plagas.','modulos/image.png',NULL),(2,'Plagas y Enfermedades','Descubre cómo nuestras soluciones protegen tu cultivo de café contra las plagas.','modulos/image-card2.png','http://127.0.0.1:8000/etapa_plagas'),(3,'Consejos Para Su Cultivo','Descubre cómo nuestras soluciones protegen tu cultivo de café contra las plagas.','modulos/image-card3.png',NULL);
/*!40000 ALTER TABLE `pagina_inicial_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PI_modulo`
--

DROP TABLE IF EXISTS `PI_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PI_modulo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `descripcion` varchar(120) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PI_modulo`
--

LOCK TABLES `PI_modulo` WRITE;
/*!40000 ALTER TABLE `PI_modulo` DISABLE KEYS */;
INSERT INTO `PI_modulo` VALUES (1,'Soluciones Para Su Cultivo','Descubre cómo nuestras soluciones protegen tu cultivo de café contra las plagas.','modulos/image.png'),(2,'Plagas y Enfermedades','Descubre cómo nuestras soluciones protegen tu cultivo de café contra las plagas.','modulos/image-card2.png'),(3,'Consejos Para Su Cultivo','Descubre cómo nuestras soluciones protegen tu cultivo de café contra las plagas.','modulos/image-card3.png');
/*!40000 ALTER TABLE `PI_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantacion_cards_p_e_cardpe`
--

DROP TABLE IF EXISTS `plantacion_cards_p_e_cardpe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantacion_cards_p_e_cardpe` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantacion_cards_p_e_cardpe`
--

LOCK TABLES `plantacion_cards_p_e_cardpe` WRITE;
/*!40000 ALTER TABLE `plantacion_cards_p_e_cardpe` DISABLE KEYS */;
INSERT INTO `plantacion_cards_p_e_cardpe` VALUES (2,'Hypothenemus hampei (BROCA)','INSECTO','modulos/Rectangle_25.png'),(3,'Pudrición de raíces (Rosellinia spp)','HONGO','modulos/Rectangle_29.png'),(4,'Roya del café (Hemileia vastatrix)','HONGO','modulos/Rectangle_25_1.png'),(5,'Hemiptera spp','INSECTO','modulos/Rectangle_28.png');
/*!40000 ALTER TABLE `plantacion_cards_p_e_cardpe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 22:14:40
