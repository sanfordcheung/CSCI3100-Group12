CREATE TABLE `shopping_cart` (
  `added_course` char(8) NOT NULL COMMENT '四位字母+四位数字 eg. csci3100',
  `added_session_id` int NOT NULL COMMENT '四位数字  如果任意session都可以，则需要增加多条数据记录',
  `added_tutorial_id` int DEFAULT NULL COMMENT '四位数字  Null for 所有的tutorial都可以，或者无tutorial',
  `student_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`added_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
