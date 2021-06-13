
 SET NAMES utf8 ;

DROP TABLE IF EXISTS `contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `username_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_details_username_id_a2666d9c_fk_auth_user_id` (`username_id`),
  CONSTRAINT `contact_details_username_id_a2666d9c_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`)
)
