
 SET NAMES utf8 ;


DROP TABLE IF EXISTS `orders`;

 SET character_set_client = utf8mb4 ;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `totalprice` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_item_id_e3c3bd6f_fk_item_id` (`item_id`),
  KEY `orders_user_id_7e2523fb_fk_auth_user_id` (`user_id`),
  CONSTRAINT `orders_item_id_e3c3bd6f_fk_item_id` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `orders_user_id_7e2523fb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)


