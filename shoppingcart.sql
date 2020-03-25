use cusisdb;
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `course_id` char(8) NOT NULL COMMENT '四位字母+四位数字 eg. csci3100',
  `session_id` char(8) NOT NULL COMMENT '四位数字  如果任意session都可以，则需要增加多条数据记录',
  `tutorial_id` char(8) DEFAULT NULL COMMENT '四位数字  Null for 所有的tutorial都可以，或者无tutorial',
  `sid` int NOT NULL,
  PRIMARY KEY (`sid`,`session_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
