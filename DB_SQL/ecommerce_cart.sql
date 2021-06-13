--
 SET NAMES utf8 ;

--

DROP TABLE IF EXISTS `cart`;

 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_user_id_1361a739_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cart_user_id_1361a739_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
)


