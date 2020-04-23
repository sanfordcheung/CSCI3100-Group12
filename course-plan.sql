use cusisdbBeta;

DROP TABLE IF EXISTS `course_plan`;
CREATE TABLE `course_plan` (
  `course_id` char(8) NOT NULL,
  `session_id` char(8) NOT NULL,
  `credit` tinyint(3) unsigned NOT NULL,
  `preference` tinyint(3) unsigned NOT NULL,
  `tutorial_id` char(8) NOT NULL,
  `tutorial_start_time_1` datetime NOT NULL,
  `tutorial_end_time_1` datetime NOT NULL,
  `session_start_time_1` datetime NOT NULL,
  `session_start_time_2` datetime DEFAULT NULL,
  `session_start_time_3` datetime DEFAULT NULL,
  `session_end_time_1` datetime NOT NULL,
  `session_end_time_2` datetime DEFAULT NULL,
  `session_end_time_3` datetime DEFAULT NULL,
  `sid` varchar(10) NOT NULL,
  `plan_index` char(8) NOT NULL,
  PRIMARY KEY (`sid`,`session_id`,`tutorial_id`,`plan_index`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;