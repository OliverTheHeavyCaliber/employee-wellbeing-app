-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: finalproject
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

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
-- Table structure for table `employee_recommendations`
--

DROP TABLE IF EXISTS `employee_recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_recommendations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lower_limit` double NOT NULL,
  `upper_limit` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_recommendations`
--

LOCK TABLES `employee_recommendations` WRITE;
/*!40000 ALTER TABLE `employee_recommendations` DISABLE KEYS */;
INSERT INTO `employee_recommendations` VALUES (1,'Congratulations! It seems you are in the right position in the right time. The right job in a great company with great team leader is hard to find, right?',0,2.2,NULL,NULL),(2,'Well done! Although some things could be improved, it seems you are on a good track. Why not to check out this article and to make a plan for further improvement? \"https://www.mhanational.org/31-tips-boost-your-mental-health\"',2.2,3.5,NULL,NULL),(3,'Well, it looks like you would need some changes in your life. We suggest you have a chat with your team leader or HR. In the meantime have a look at this article. \"https://www.inc.com/rhett-power/you-can-lead-a-more-satisfying-life-by-making-a-few-small-changes.html\"',3.5,5,NULL,NULL);
/*!40000 ALTER TABLE `employee_recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager_recommendations`
--

DROP TABLE IF EXISTS `manager_recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager_recommendations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lower_limit` double NOT NULL,
  `upper_limit` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager_recommendations`
--

LOCK TABLES `manager_recommendations` WRITE;
/*!40000 ALTER TABLE `manager_recommendations` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager_recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2021_11_09_223608_create_questions_table',1),(7,'2021_11_09_223901_create_testings_table',1),(8,'2021_11_09_224019_create_employee_recommendations_table',1),(9,'2021_11_09_225730_create_manager_recommendations_table',1),(10,'2021_11_09_225812_create_responses',1),(11,'2021_11_19_123253_create_permission_tables',1),(12,'2021_11_22_133033_create_notifications_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (8,'I felt good at work this week.',NULL,NULL),(9,'I would describe my relationship with my colleagues as good this week.',NULL,NULL),(10,'I am satisfied with relationship with my direct supervisor.',NULL,NULL),(11,'I am paid adequately for the job I do.',NULL,NULL),(12,'I would be happy to work for this company in a long-term future.',NULL,NULL),(13,'I have talked with someone about my professional development within the company in the past three months.',NULL,NULL),(14,'I have a trust in my co-workers.',NULL,NULL),(15,'I feel there\'s been a mutual respect between me and my colleagues this week.',NULL,NULL),(16,'My work enviroment inspire me to do my best at work.',NULL,NULL),(17,'I feel that my team leader cares about me.',NULL,NULL),(18,'I believe that emloyees in our company are encouraged to express their opinions.',NULL,NULL),(19,'I see an added value in what I do in my job.',NULL,NULL),(20,'The purpose of my organization makes me feel my job is important.',NULL,NULL),(21,'I have done the things that I am the most proficient at this week.',NULL,NULL),(22,'I have felt good when working with my team leader this week.',NULL,NULL),(23,'I have all the necessary tools required to complete my tasks.',NULL,NULL),(24,'I have all the necessary knowledge required to complete my tasks.',NULL,NULL),(25,'I can rely on my colleagues when it comes to completing their tasks.',NULL,NULL),(26,'I would start to work for this company again.',NULL,NULL),(27,'I feel management could do more to motivate me.',NULL,NULL),(28,'I feel I get enough support from the company\'s management.',NULL,NULL),(29,'I have enough time to do my job properly.',NULL,NULL),(30,'I have an opportunity to learn and improve myself within the company.',NULL,NULL),(31,'My opinions are beeing treated with respect.',NULL,NULL),(32,'I felt productive at work this week.',NULL,NULL),(33,'I know what is expected of me at work.',NULL,NULL),(34,'I get help from my colleagues when I need it.',NULL,NULL),(35,'My team leader always helping me to excel.',NULL,NULL),(36,'I have a sense of belonging to our company.',NULL,NULL),(37,'I have advanced on a personal level recently.',NULL,NULL),(38,'I recieve enough feedback in my work.',NULL,NULL),(39,'I found my this week\'s tasks meaningful.',NULL,NULL),(40,'I feel that the company\'s management trust me.',NULL,NULL),(41,'I would find it hard to leave this company.',NULL,NULL),(42,'I feel management could do more to improve my working\'s conditions.',NULL,NULL),(43,'I feel I need help to become more productive at work.',NULL,NULL),(44,'The feedback I am recieving is always constructive.',NULL,NULL);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `question_id` bigint(20) unsigned NOT NULL,
  `testing_id` bigint(20) unsigned NOT NULL,
  `answer` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `responses_user_id_question_id_testing_id_unique` (`user_id`,`question_id`,`testing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
INSERT INTO `responses` VALUES (1,1,1,1,3,'2021-11-24 11:35:40','2021-11-24 11:35:40'),(2,1,2,1,2,'2021-11-24 11:35:40','2021-11-24 11:35:40'),(3,1,3,1,5,'2021-11-24 11:35:40','2021-11-24 11:35:40'),(4,1,4,1,2,'2021-11-24 11:35:40','2021-11-24 11:35:40'),(5,1,5,1,4,'2021-11-24 11:35:40','2021-11-24 11:35:40'),(6,1,6,1,1,'2021-11-24 11:35:40','2021-11-24 11:35:40'),(7,1,7,1,5,'2021-11-24 11:35:40','2021-11-24 11:35:40'),(8,2,1,1,4,'2021-11-24 17:32:53','2021-11-24 17:32:53'),(9,2,2,1,4,'2021-11-24 17:32:53','2021-11-24 17:32:53'),(10,2,3,1,4,'2021-11-24 17:32:53','2021-11-24 17:32:53'),(11,2,4,1,4,'2021-11-24 17:32:53','2021-11-24 17:32:53'),(12,2,5,1,4,'2021-11-24 17:32:53','2021-11-24 17:32:53'),(13,2,6,1,4,'2021-11-24 17:32:53','2021-11-24 17:32:53'),(14,2,7,1,4,'2021-11-24 17:32:53','2021-11-24 17:32:53'),(15,3,1,1,1,'2021-11-25 14:22:53','2021-11-25 14:22:53'),(16,3,2,1,1,'2021-11-25 14:22:53','2021-11-25 14:22:53'),(17,3,3,1,1,'2021-11-25 14:22:53','2021-11-25 14:22:53'),(18,3,4,1,3,'2021-11-25 14:22:53','2021-11-25 14:22:53'),(19,3,5,1,3,'2021-11-25 14:22:53','2021-11-25 14:22:53'),(20,3,6,1,2,'2021-11-25 14:22:53','2021-11-25 14:22:53'),(21,3,7,1,5,'2021-11-25 14:22:53','2021-11-25 14:22:53'),(22,3,1,2,2,'2021-11-25 14:26:22','2021-11-25 14:26:22'),(23,3,2,2,3,'2021-11-25 14:26:22','2021-11-25 14:26:22'),(24,3,3,2,4,'2021-11-25 14:26:22','2021-11-25 14:26:22'),(26,3,5,2,4,'2021-11-25 14:26:22','2021-11-25 14:26:22'),(27,3,6,2,2,'2021-11-25 14:26:22','2021-11-25 14:26:22'),(28,3,7,2,3,'2021-11-25 14:26:22','2021-11-25 14:26:22'),(29,4,1,1,1,'2021-11-25 15:30:15','2021-11-25 15:30:15'),(30,4,2,1,1,'2021-11-25 15:30:15','2021-11-25 15:30:15'),(31,4,3,1,1,'2021-11-25 15:30:15','2021-11-25 15:30:15'),(32,4,4,1,1,'2021-11-25 15:30:15','2021-11-25 15:30:15'),(33,4,5,1,1,'2021-11-25 15:30:15','2021-11-25 15:30:15'),(34,4,6,1,1,'2021-11-25 15:30:15','2021-11-25 15:30:15'),(35,4,7,1,1,'2021-11-25 15:30:15','2021-11-25 15:30:15'),(43,5,1,1,0,'2021-11-25 16:23:26','2021-11-25 16:23:26'),(44,5,2,1,1,'2021-11-25 16:23:26','2021-11-25 16:23:26'),(45,5,3,1,4,'2021-11-25 16:23:26','2021-11-25 16:23:26'),(46,5,4,1,4,'2021-11-25 16:23:26','2021-11-25 16:23:26'),(47,5,5,1,2,'2021-11-25 16:23:26','2021-11-25 16:23:26'),(48,5,6,1,1,'2021-11-25 16:23:26','2021-11-25 16:23:26'),(49,5,7,1,4,'2021-11-25 16:23:26','2021-11-25 16:23:26'),(50,5,1,2,2,'2021-11-25 17:01:41','2021-11-25 17:01:41'),(51,5,2,2,4,'2021-11-25 17:01:41','2021-11-25 17:01:41'),(52,5,3,2,4,'2021-11-25 17:01:41','2021-11-25 17:01:41'),(54,5,5,2,4,'2021-11-25 17:01:41','2021-11-25 17:01:41'),(55,5,6,2,4,'2021-11-25 17:01:41','2021-11-25 17:01:41'),(56,5,7,2,2,'2021-11-25 17:01:41','2021-11-25 17:01:41'),(58,2,1,2,3,'2021-11-26 07:52:29','2021-11-26 07:52:29'),(59,2,2,2,2,'2021-11-26 07:52:29','2021-11-26 07:52:29'),(60,2,3,2,3,'2021-11-26 07:52:29','2021-11-26 07:52:29'),(62,2,5,2,2,'2021-11-26 07:52:29','2021-11-26 07:52:29'),(63,2,6,2,1,'2021-11-26 07:52:29','2021-11-26 07:52:29'),(64,2,7,2,2,'2021-11-26 07:52:29','2021-11-26 07:52:29'),(65,6,1,1,5,'2021-11-26 09:11:05','2021-11-26 09:11:05'),(66,6,2,1,5,'2021-11-26 09:11:05','2021-11-26 09:11:05'),(67,6,3,1,5,'2021-11-26 09:11:05','2021-11-26 09:11:05'),(68,6,4,1,5,'2021-11-26 09:11:05','2021-11-26 09:11:05'),(69,6,5,1,5,'2021-11-26 09:11:05','2021-11-26 09:11:05'),(70,6,6,1,5,'2021-11-26 09:11:05','2021-11-26 09:11:05'),(71,6,7,1,5,'2021-11-26 09:11:05','2021-11-26 09:11:05');
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testings`
--

DROP TABLE IF EXISTS `testings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_from` date NOT NULL,
  `date_until` date NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testings`
--

LOCK TABLES `testings` WRITE;
/*!40000 ALTER TABLE `testings` DISABLE KEYS */;
INSERT INTO `testings` VALUES (1,'0000-00-00','0000-00-00',1,'2021-11-30 14:00:08','2021-11-26 08:45:21'),(2,'0000-00-00','0000-00-00',1,NULL,'2021-11-26 10:24:55');
/*!40000 ALTER TABLE `testings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `manager_id` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Oliver Melicherčík','melicherciko@gmail.com',NULL,1,NULL,'2021-11-24 17:32:21','2021-11-24 17:32:21','$2y$10$VnJxqtN7qptF7HfWtYef/uBZSH01y9e8UzzGk8sWRZMlJ0tzG0.4i',NULL,NULL,'admin'),(4,'Radek Cerny','cerny.rada@gmail.com',NULL,1,NULL,'2021-11-25 15:28:59','2021-11-25 15:28:59','$2y$10$/4mqUSctkECekpG8mEx0KuiacAFLen9Tz0QkqPXjLblQ/nhncqBie',NULL,NULL,'user'),(5,'Tony Sebestyen','bafometish@gmail.com',NULL,1,NULL,'2021-11-25 16:15:07','2021-11-25 16:15:07','$2y$10$2Zu5nQpUGsBwbr.D8mdRaubYb3Sx9x.1MIbS7UspE/AapNO6OPw6C',NULL,NULL,'manager'),(6,'Ahojahoj','Ahojahoj@gmail.com',NULL,1,NULL,'2021-11-26 08:48:21','2021-11-26 08:48:21','$2y$10$DgeowoLHC5u2VljE0BVMEu2jlMzVhZ8BUZwxaF0rfxVNDDAHv3GeC',NULL,NULL,'user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-26 13:15:00
