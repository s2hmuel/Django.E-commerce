
 SET NAMES utf8 ;


DROP TABLE IF EXISTS `cart_item`;

 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `subtotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_item_cart_id_157ecf5f_fk_cart_id` (`cart_id`),
  KEY `cart_item_product_id_17acb13c_fk_item_id` (`product_id`),
  CONSTRAINT `cart_item_cart_id_157ecf5f_fk_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `cart_item_product_id_17acb13c_fk_item_id` FOREIGN KEY (`product_id`) REFERENCES `item` (`id`)
)


