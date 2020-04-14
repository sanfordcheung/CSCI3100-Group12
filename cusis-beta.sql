drop database if exists cusisdbBeta;
create database cusisdbBeta;
use cusisdbBeta;

-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: coursedb
-- ------------------------------------------------------
-- Server version	8.0.19

use cusisdbBeta;

--
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info` (
  `course_id` char(8) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `credit` tinyint unsigned NOT NULL,
  `department` varchar(100) NOT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEA2180', 'Chinese Culture and Society', '3', 'Dept of Anthropology', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEA2334', 'China Today', '3', 'Dept of Anthropology', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEB1570', 'Consciousness', '3', 'Dept of Psychology', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEB2222', 'Natural Hazards', '3', 'Dept of Geo & Resource Mgt', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGEC1670', 'Politics and Mass Media', '3', 'Dept of Govern & Public Admin', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGED1111', 'Logic', '2', 'Dept of Philosophy', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGED1112', 'Logic and Argumentation', '3', 'Dept of Philosophy', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGFN1000', 'In Dialogue With Nature', '3', 'Office of University GE', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGFN1001', 'In Dialogue with Nature (Cross-institutional)', '3', 'Office of University GE', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('UGFH1000', 'In Dialogue With Humanity', '3', 'Office of University GE', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1100', 'Introduction to Engineering Design', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1110', 'Problem Solving By Programming', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1310', 'Engineering Physics: Electromagnetics, Optics and Modern Physics', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1410', 'Linear Algebra and Vector Calculus for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG2020', 'Digital Logic and Systems', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG2430', 'Probability and Statistics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG2440', 'Discrete Mathematics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR1002', 'Problem Solving By Programming', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR1003', 'Engineering Physics: Electromagnetics, Optics and Modern Physics', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR1004', 'Linear Algebra and Vector Calculus for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR2002', 'Probability and Statistics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ESTR2004', 'Discrete Mathematics for Engineers', '3', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('MATH1510', 'Calculus for Engineers', '3', 'Dept of Mathematics', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('PHYS1003', 'General Physics for Engineers', '3', 'Dept of Physics', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('PHYS1110', 'Engineering Physics: Mechanics and Thermodynamics', '3', 'Dept of Physics', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG1820', 'Engineering Internship', '1', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG3802', 'Introduction to Engineering Entrepreneurship', '1', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('ENGG3803', 'Engineering Entrepreneurship Development Project', '2', 'Fac Office of Engineering', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('CHEM1380', 'Basic Chemistry for Engineers', '3', 'Dept of Chemistry', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('LSCI1001', 'Basic Concepts in Biological Sciences', '3', 'School of Life Sciences', 'N/A');
INSERT INTO `cusisdbBeta`.`course_info` (`course_id`, `course_name`, `credit`, `department`, `comment`) VALUES ('LSCI1003', 'Life Sciences for Engineers', '3', 'School of Life Sciences', 'N/A');
UNLOCK TABLES;

--
-- Table structure for table `course_session_list`
--

DROP TABLE IF EXISTS `course_session_list`;
CREATE TABLE `course_session_list` (
  `course_id` char(8) NOT NULL,
  `session_id` char(8) NOT NULL,
  PRIMARY KEY (`session_id`,`course_id`),
  UNIQUE KEY `session_id_UNIQUE` (`session_id`)
); #ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course_session_list`
--

LOCK TABLES `course_session_list` WRITE;
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('CHEM1380', '5638');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1110', '6765');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1110', '6766');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1310', '6706');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1820', '4973');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1820', '7706');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG1820', '4974');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG2020', '6875');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG2430', '5846');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG2430', '7780');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG2440', '6501');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG2440', '7995');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ENGG3802', '6135');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ESTR1002', '5813');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ESTR1003', '8076');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ESTR2002', '7545');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('ESTR2004', '7866');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('LSCI1001', '6644');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('LSCI1003', '7550');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('MATH1510', '6599');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('PHYS1003', '6136');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('PHYS1003', '6076');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('PHYS1110', '6617');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGEA2180', '7101');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGEA2334', '5967');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGEA2334', '5968');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGEB2222', '6291');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGED1111', '8367');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGED1111', '8368');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGED1111', '6738');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGED1112', '8369');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGED1112', '6960');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGFH1000', '5375');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGFH1000', '6653');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGFN1000', '6908');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGFN1000', '9095');
INSERT INTO `cusisdbBeta`.`course_session_list` (`course_id`, `session_id`) VALUES ('UGFN1001', '9086');
UNLOCK TABLES;

--
-- Table structure for table `session_info`
--

DROP TABLE IF EXISTS `session_info`;
CREATE TABLE `session_info` (
  `session_id` char(8) NOT NULL,
  `session_code` varchar(4) NOT NULL,
  `quota` smallint unsigned NOT NULL,
  `vacancy` smallint unsigned NOT NULL,
  `lecturer` varchar(45) NOT NULL DEFAULT 'TBA',
  `venue_1` varchar(45) NOT NULL DEFAULT 'TBA',
  `venue_2` varchar(45) DEFAULT NULL,
  `venue_3` varchar(45) DEFAULT NULL,
  `session_start_time_1` datetime NOT NULL,
  `session_start_time_2` datetime DEFAULT NULL,
  `session_start_time_3` datetime DEFAULT NULL,
  `session_end_time_1` datetime NOT NULL,
  `session_end_time_2` datetime DEFAULT NULL,
  `session_end_time_3` datetime DEFAULT NULL,
  `evalutaion` double DEFAULT NULL,
  `schedule` varchar(2000) DEFAULT NULL,
  `commment` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_id_UNIQUE` (`session_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `session_info`
--

LOCK TABLES `session_info` WRITE;
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('4973', 'A', '30', '27', 'Professor Wong Tien Tsin', 'N/A', '2020-04-13 00:00:00', '2020-04-13 00:00:00', 'The objective of the course is to enable students to have a basic understanding of the practical aspects of the engineering profession. Prior to the enrolment of this course, students must have completed not less than 8 weeks of full-time internship approved by the Faculty of Engineering.  To be qualified for award of the subject credit, the student must submit a report, within the semester of enrolment, summarizing what he or she has done and learnt during the internship, together with a testimonial from the corresponding employer. Pass or fail of the course will be determined by the professor-in-charge, based on the report and the testimonial submitted.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('4974', 'C', '30', '30', 'Professor CHOW Sze Ming', 'N/A', '2020-04-13 00:00:00', '2020-04-13 00:00:00', 'The objective of the course is to enable students to have a basic understanding of the practical aspects of the engineering profession. Prior to the enrolment of this course, students must have completed not less than 8 weeks of full-time internship approved by the Faculty of Engineering.  To be qualified for award of the subject credit, the student must submit a report, within the semester of enrolment, summarizing what he or she has done and learnt during the internship, together with a testimonial from the corresponding employer. Pass or fail of the course will be determined by the professor-in-charge, based on the report and the testimonial submitted.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('5375', 'A', '125', '8', 'Dr. YU Chi Chung', 'ELB LT1', '2020-04-17 13:30:00', '2020-04-17 14:15:00', 'The course invites students to investigate the problem of \"humanity\"—i.e., what it means to be human—at two levels: human as an individual and human as a social being. Students will be engaged in a direct dialogue with literary writers, philosophers and social reformers who address three fundamental questions: What is it that makes a \"good\" life for me? What is it that makes a \"good\" society for everyone? How do I make possible such a \"good\" life and \"good\" society?');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5638', 'C', '200', '112', 'Professor TSUI Chit', 'MMW LT1', 'ERB LT', '2020-04-14 14:30:00', '2020-04-16 16:30:00', '2020-04-14 16:15:00', '2020-04-16 17:15:00', 'This is primarily for students in engineering faculty requiring a one-semester introductory in general chemistry at a fundamental level. It includes the study of atomic structure, bonding, periodic trends in physical properties, molecular geometry, stoichiometry, states of matter, thermodynamics, chemical equilibrium, acid/base chemistry, electrochemistry and kinetics.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5813', ' ', '50', '0', 'Professor FU Chi Wing', 'ERB 909', '2020-09-02 16:30:00', '2020-09-04 15:30:00', '2020-09-02 18:15:00', '2020-09-04 16:15:00', 'This is a computer-programming course to equip students with software knowledge and skills to solve engineering problems.  Students will learn fundamental programming concepts in C, such as data representation and variables, operators and expressions, flow-control statements, functions, arrays, structures, pointer basics, input/ output handling, etc.  In addition to lectures and e-learning, students will work in labs to practise solving problems and complete an engineering software project.  The course will cover various problem solving methods such as incremental development, divide-and-conquer, debugging technique, finite-state machine, etc.  Through practices, students will acquire skills to define problems and specifications, to perform modelling and simulation, to develop software system prototypes, to carry out verification, validation, and performance analysis.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('5846', 'A', '180', '35', 'Professor Andrej BOGDANOV', 'TYW LT', 'ERB LT', '2020-04-13 09:30:00', '2020-04-15 09:30:00', '2020-04-13 10:15:00', '2020-04-15 11:15:00', 'Fundamental probability concepts: probability and events; expectation, variance, moments, moment generating functions; single variate distributions. Multivariate probability: conditional probability, joint probability; Bayes’ Theorem; conditional expectation, covariance; multivariate distributions, functions of random variables. Central limit theorems, law of large number. Statistics: estimation, sample size and applications.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('5967', 'A', '80', '33', 'Dr. CHEN Ju Chen', 'NAH 114', '2020-04-14 14:30:00', '2020-04-14 17:15:00', 'China is looming large on the global scene and our everyday life. It is a rising power that is changing the world order. It is a land of promising opportunities that attracts an immense amount of capital and talents from overseas. Not to mention that a large part of the stuff we consume are produced in China. However, China is still—at least nominally—a socialist country that continues to embrace one-party rule and political censorship. This course addresses a host of issues that are salient in understanding China and its position in the contemporary world. It is primarily informed by an anthropological perspective that is particularly good at making sense of macro-level issues through studying day-to-day details and processes in a small locale. The course also draws from disciplines other than anthropology—for example, history—and some of the finest journalist writings on China. The overall intention is to provide a well-rounded and nuanced understanding of China today. This course starts with examining China\'s revolution-packed modern history and the making of the powerful Communist Party to prepare student\'s learning. Throughout the semester, the course covers classical anthropological topics on family, kinship, religion, education, ethnicity, identity, and morality. While anthropological holistic and comparative perspective helps students to reflect on Chinese culture with alternative views, this course also addresses how these cultural and social institutions interact with global processes such as modernization and late capitalist development. The class does so by introducing emerging social concerns including unofficial culture, the popularization of religion, environmental challenges, sexuality and LGBTQ identities, and mental health and the pursuit of happiness.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6076', 'B', '120', '33', 'Dr. XU Lei', 'SC L1', 'YIA LT4', '2020-09-03 10:30:00', '2020-09-05 11:30:00', '2020-09-03 11:15:00', '2020-09-05 13:15:00', 'This non-calculus-based course covers some essential concepts in mechanics, heat, electricity and magnetism.  It is designed for engineering students to get an overview on what physics is about.  Selected topics include: Newton’s laws of motion, Archimedes’ principle, fluid flow, temperature and heat, laws of thermodynamics, electric field and potential, current and circuits, and electromagnetic waves.  The course is suitable for Engineering students without HKDSE physics or Combined Science with a physics component, or with permission of instructor.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('5968', 'B', '96', '25', 'Dr. CHEN Ju Chen', 'NAH 12', '2020-04-15 14:30:00', '2020-04-15 17:15:00', 'China is looming large on the global scene and our everyday life. It is a rising power that is changing the world order. It is a land of promising opportunities that attracts an immense amount of capital and talents from overseas. Not to mention that a large part of the stuff we consume are produced in China. However, China is still—at least nominally—a socialist country that continues to embrace one-party rule and political censorship. This course addresses a host of issues that are salient in understanding China and its position in the contemporary world. It is primarily informed by an anthropological perspective that is particularly good at making sense of macro-level issues through studying day-to-day details and processes in a small locale. The course also draws from disciplines other than anthropology—for example, history—and some of the finest journalist writings on China. The overall intention is to provide a well-rounded and nuanced understanding of China today. This course starts with examining China\'s revolution-packed modern history and the making of the powerful Communist Party to prepare student\'s learning. Throughout the semester, the course covers classical anthropological topics on family, kinship, religion, education, ethnicity, identity, and morality. While anthropological holistic and comparative perspective helps students to reflect on Chinese culture with alternative views, this course also addresses how these cultural and social institutions interact with global processes such as modernization and late capitalist development. The class does so by introducing emerging social concerns including unofficial culture, the popularization of religion, environmental challenges, sexuality and LGBTQ identities, and mental health and the pursuit of happiness.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6136', 'A', '84', '19', 'Dr. LEUNG Hoi Tik Alvin', 'ERB LT', 'BMS G18', '2020-09-02 10:30:00', '2020-09-03 09:30:00', '2020-09-02 12:15:00', '2020-09-03 10:15:00', 'This non-calculus-based course covers some essential concepts in mechanics, heat, electricity and magnetism.  It is designed for engineering students to get an overview on what physics is about.  Selected topics include: Newton’s laws of motion, Archimedes’ principle, fluid flow, temperature and heat, laws of thermodynamics, electric field and potential, current and circuits, and electromagnetic waves.  The course is suitable for Engineering students without HKDSE physics or Combined Science with a physics component, or with permission of instructor.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6291', 'B', '150', '71', 'Professor NG Sai Leung, Dr. Wang Lang', 'YIA LT7', '2020-04-17 15:30:00', '2020-04-17 18:15:00', 'This course examines the physical and human dimensions of natural hazards such as earthquakes, tsunamis, typhoons, floods and landslides, soil erosion and desertification. The focus will be on the causes of major natural hazards, their geographical distribution, risk and disaster to human society, and human response to prepare, prevent and mitigate negative impacts. Study of the interaction between society and natural hazards will help students better understand the man-environment relationship. An issue-based approach will be adopted to address a wide variety of geological, meteorological, hydrological, ecological, and technological hazards. While the coverage will be broad and global, case studies of threats, occurrence and consequences of natural hazards in Hong Kong and Mainland China will be emphasized.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6501', 'A', '190', '103', 'Professor CAI Leizhen', 'SC L1', 'ERB LT', '2020-09-02 10:30:00', '2020-09-04 13:30:00', '2020-09-02 12:15:00', '2020-09-02 14:15:00', 'Set theory, functions, relations, combinatorics, graph theory, algebraic systems, propositional and predicate logic.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6599', 'J', '80', '30', 'Dr. XIAO Jingjing', 'LSB LT4', 'LSB LT4', '2020-04-14 16:30:00', '2020-04-16 14:30:00', '2020-04-14 18:15:00', '2020-04-16 15:15:00', 'This course is designed for engineering students who need to acquire skills in calculus as a crash introduction to the mathematics used in engineering.  The course emphasizes on the technique of computation without theoretical discussion.  Students are expected to have mathematics background equivalent to HKDSE with Extended Module I or II.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6617', 'G', '80', '35', 'Dr. CHENG Kai Ming', 'MMW LT2', 'MMW LT2', '2020-04-13 14:30:00', '2020-04-15 14:30:00', '2020-04-13 16:15:00', '2020-04-13 15:15:00', 'This is an introductory calculus-based engineering physics course covering topics in mechanics and thermodynamics.  Topics include:  Use of vectors in mechanics, force and motion, free-body diagrams, work and energy, potential energy and conservation of energy, momentum and impulse, torque, essential ideas in rotation, equilibrium, gravitation, ideal fluids, oscillations, waves and sound, elementary concepts of thermodynamics and heat transfer mechanisms.  Contents will be supplemented by discussions on applications relevant to engineering.  The course is suitable for Engineering students with HKDSE physics or Combined Science with a physics component, or with permission of instructor.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6653', 'C', '150', '9', 'Dr. LEUNG Cheuk Hang', 'ELB LT3', '2020-04-17 13:30:00', '2020-04-17 14:15:00', 'The course invites students to investigate the problem of \"humanity\"—i.e., what it means to be human—at two levels: human as an individual and human as a social being. Students will be engaged in a direct dialogue with literary writers, philosophers and social reformers who address three fundamental questions: What is it that makes a \"good\" life for me? What is it that makes a \"good\" society for everyone? How do I make possible such a \"good\" life and \"good\" society?');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6706', 'B', '90', '1', 'Professor ZHAO Ni', 'LSB LT6', 'LSK LT4', '2020-04-14 14:30:00', '2020-04-16 16:30:00', '2020-04-14 16:15:00', '2020-04-16 17:15:00', 'This is an introductory calculus-based engineering physics course covering topics in electromagnetics, optics and modern physics. Topics in electromagnetics include: electric and magnetic properties, Coulomb’s law, Gauss’ law, electromagnetic energy and forces, Biot-Savart law, electromagnetic fields and Maxwell’s equations, propagation of plane electromagnetic waves. Topics in optics include: optical interference, interferometers, optical diffraction. Topics in modern physics include: wave-particle duality, momentum and energy of photons and electrons, electronic states and energy bands, electrical conduction in metals and semiconductors.  Contents will be supplemented by discussions on applications relevant to engineering.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6738', 'C', '80', '1', 'Dr. KOU Kei Chun', 'SC L2', '2020-04-13 14:30:00', '2020-04-13 16:15:00', 'This course is designed to develop the student\'s ability to analyze and critically evaluate arguments from a logical point of view. It will provide students with a basic understanding of such concepts as reasons, implication, validity, and fallacies. Students will learn the logical principles of deductive and inductive inferences and the techniques of applying them for determining the validity of arguments. Elements of good reasoning from an informal perspective will also be covered.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6765', 'A', '112', '1', 'Dr. CHUI Yim Pan', 'YIA LT4', 'LSK LT3', '2020-09-02 14:30:00', '2020-09-04 10:30:00', '2020-09-02 16:15:00', '2020-09-04 11:15:00', 'This is a computer-programming course to equip students with software knowledge and skills to solve engineering problems.  Students will learn fundamental programming concepts in C, such as data representation and variables, operators and expressions, flow-control statements, functions, arrays, structures, pointer basics, input/ output handling, etc.  In addition to lectures and e-learning, students will work in labs to practise solving problems and complete an engineering software project.  The course will cover various problem solving methods such as incremental development, divide-and-conquer, debugging technique, finite-state machine, etc.  Through practices, students will acquire skills to define problems and specifications, to perform modelling and simulation, to develop software system prototypes, to carry out verification, validation, and performance analysis.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6766', 'B', '141', '1', 'Dr. HO Marco', 'LSK LT4', 'ERB LT', '2020-09-02 14:30:00', '2020-09-04 10:30:00', '2020-09-02 16:15:00', '2020-09-04 11:15:00', 'This is a computer-programming course to equip students with software knowledge and skills to solve engineering problems.  Students will learn fundamental programming concepts in C, such as data representation and variables, operators and expressions, flow-control statements, functions, arrays, structures, pointer basics, input/ output handling, etc.  In addition to lectures and e-learning, students will work in labs to practise solving problems and complete an engineering software project.  The course will cover various problem solving methods such as incremental development, divide-and-conquer, debugging technique, finite-state machine, etc.  Through practices, students will acquire skills to define problems and specifications, to perform modelling and simulation, to develop software system prototypes, to carry out verification, validation, and performance analysis.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('6875', ' ', '220', '36', 'Dr. SUM Kwok Wing', 'LSB LT1', 'TYW LT', '2020-09-03 10:30:00', '2020-09-04 16:30:00', '2020-09-03 11:15:00', '2020-09-04 18:15:00', 'This course introduces the digital concepts; number systems; operations and codes; logic gates; Boolean algebra and logic simplification; combinational logic; functions of combinational logic; flip-flops and related devices; counters; finite state machines; programmable logic devices - programming and sequential logic applications; memory and storage; integrated circuit technologies.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6908', 'A', '125', '35', 'Dr. YIP Lo Ming', 'YIA LT3', '2020-04-17 13:30:00', '2020-04-17 14:15:00', 'This course is an intellectual pursuit across various natural sciences including the two most fundamental ones, physical and biological sciences. Ancient Greek philosophers took the lead in exploring the physical world and the world of life with reason and hence laid the foundations of natural science. This human enquiry into Nature leads to a reflection on the human understanding of Nature and the humans’ place in Nature.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6960', 'B', '80', '46', 'Dr. KWOK Pak Nin', 'CYT 203', '2020-04-16 10:30:00', '2020-04-16 12:15:00', 'This course is designed to develop the student\'s ability to analyze and critically evaluate arguments from a logical point of view. It will provide students with a basic understanding of such concepts as reasons, implication, validity, and fallacies. Students will learn the logical principles of deductive and inductive inferences and the techniques of applying them for determining the validity of arguments. Elements of good reasoning from an informal perspective will also be covered.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('7101', 'B', '50', '16', 'Dr. KHO Tung Yi', 'NAH 115', '2020-09-03 15:30:00', '2020-09-03 17:15:00', 'This course provides an anthropological approach to China. Discussions concentrate on major cultural and social institutions of China, both traditional and contemporary, such as family, marriage, kinship, lineage and clan, economic system, religion and value orientation.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7545', ' ', '50', '4', 'Professor LONG Zhuoyu', 'ERB 803', 'ERB 803', '2020-04-13 09:30:00', '2020-04-15 09:30:00', '2020-04-13 10:15:00', '2020-04-15 11:15:00', 'Fundamental probability concepts: probability and events; expectation, variance, moments, characteristic functions, moment generating functions; single variate distributions. Multivariate probability: conditional probability, joint probability; Bayes’ Theorem; conditional expectation, covariance; multivariate distributions, functions of random variables. Central limit theorems, law of large number. Random process: definition, stationary and ergodic random processes, Gaussian random processes, white noise. Statistics: estimation, sample size and applications.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7550', ' ', '100', '16', 'Professor NGO Chi Ki Jackey, Dr. SIOW Lam', 'MMW LT2', 'MMW LT2', '2020-09-03 14:30:00', '2020-09-05 15:30:00', '2020-09-03 15:15:00', '2020-09-05 17:15:00', 'This course gives engineering students exposure to some of the basic and essential concepts in biology and biotechnology. Topics include cell structure and energy metabolism, DNA structure and replication, protein structure and function, genetic engineering, stem cell and tissue regeneration, neural biology, cardiovascular system, muscle and skeletal system of animals, microbes and microbial biotechnology. The overall aim of this course is to introduce students with the fundamental ideas and concepts in life sciences especially those with relevance to engineering studies.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('7706', 'B', '30', '27', 'Professor CHOY Chiu Sing', 'N/A', '2020-04-13 00:00:00', '2020-04-13 00:00:00', 'The objective of the course is to enable students to have a basic understanding of the practical aspects of the engineering profession. Prior to the enrolment of this course, students must have completed not less than 8 weeks of full-time internship approved by the Faculty of Engineering.  To be qualified for award of the subject credit, the student must submit a report, within the semester of enrolment, summarizing what he or she has done and learnt during the internship, together with a testimonial from the corresponding employer. Pass or fail of the course will be determined by the professor-in-charge, based on the report and the testimonial submitted.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7780', 'C', '180', '72', 'Dr. LI Yiyang', 'ERB LT', 'TYW LT', '2020-04-13 09:30:00', '2020-04-13 09:30:00', '2020-04-13 10:15:00', '2020-04-15 11:15:00', 'Fundamental probability concepts: probability and events; expectation, variance, moments, moment generating functions; single variate distributions. Multivariate probability: conditional probability, joint probability; Bayes’ Theorem; conditional expectation, covariance; multivariate distributions, functions of random variables. Central limit theorems, law of large number. Statistics: estimation, sample size and applications.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7866', ' ', '65', '6', 'Professor SO Man Cho', 'LSB LT3', 'ERB 803', '2020-09-02 10:30:00', '2020-09-04 13:30:00', '2020-09-02 12:15:00', '2020-09-04 14:15:00', 'Set theory, functions, relations, combinatorics, graph theory, algebraic systems, propositional and predicate logic.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('7995', 'B', '175', '38', 'Professor WAI Hoi To', 'YIA LT3', 'ERB LT', '2020-09-02 14:30:00', '2020-09-04 12:30:00', '2020-09-02 16:15:00', '2020-09-02 13:15:00', 'Set theory, functions, relations, combinatorics, graph theory, algebraic systems, propositional and predicate logic.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('8367', 'A', '80', '4', 'Dr. LO Kit Hung', 'KKB 101', '2020-04-16 16:30:00', '2020-04-16 18:15:00', 'This course is designed to develop the student\'s ability to analyze and critically evaluate arguments from a logical point of view. It will provide students with a basic understanding of such concepts as reasons, implication, validity, and fallacies. Students will learn the logical principles of deductive and inductive inferences and the techniques of applying them for determining the validity of arguments. Elements of good reasoning from an informal perspective will also be covered.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('8368', 'B', '80', '1', 'Dr. LO Kit Hung', 'ELB 405', '2020-04-17 13:30:00', '2020-04-17 15:15:00', 'This course is designed to develop the student\'s ability to analyze and critically evaluate arguments from a logical point of view. It will provide students with a basic understanding of such concepts as reasons, implication, validity, and fallacies. Students will learn the logical principles of deductive and inductive inferences and the techniques of applying them for determining the validity of arguments. Elements of good reasoning from an informal perspective will also be covered.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('8369', 'A', '80', '14', 'Dr. KOU Kei Chun', 'SC L5', '2020-04-14 14:30:00', '2020-04-14 16:15:00', 'This course is designed to develop the student\'s ability to analyze and critically evaluate arguments from a logical point of view. It will provide students with a basic understanding of such concepts as reasons, implication, validity, and fallacies. Students will learn the logical principles of deductive and inductive inferences and the techniques of applying them for determining the validity of arguments. Elements of good reasoning from an informal perspective will also be covered.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `venue_2`, `session_start_time_1`, `session_start_time_2`, `session_end_time_1`, `session_end_time_2`, `schedule`) VALUES ('8706', ' ', '50', '26', 'Professor SHU Ching Tat Chester', 'ERB 804', 'ERB 404', '2020-04-14 14:30:00', '2020-04-16 16:30:00', '2020-04-14 16:15:00', '2020-04-16 17:15:00', 'This is an introductory calculus-based engineering physics course covering topics in electromagnetics, optics and modern physics. Topics in electromagnetics include: electric and magnetic properties, Coulomb’s law, Gauss’ law, electromagnetic energy and forces, Biot-Savart law, electromagnetic fields and Maxwell’s equations, propagation of plane electromagnetic waves. Topics in optics include: optical interference, interferometers, optical diffraction. Topics in modern physics include: wave-particle duality, momentum and energy of photons and electrons, electronic states and energy bands, electrical conduction in metals and semiconductors.  Contents will be supplemented by discussions on applications relevant to engineering.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('9086', 'CD01', '25', '20', 'Dr. NG Ka Leung', 'YIA 506', '2020-05-02 09:30:00', '2020-05-02 13:15:00', 'This course is an intellectual pursuit across various natural sciences including the two most fundamental ones, physical and biological sciences. Ancient Greek philosophers took the lead in exploring the physical world and the world of life with reason and hence laid the foundations of natural science. This human enquiry into Nature leads to a reflection on the human understanding of Nature and the humans’ place in Nature.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('9095', 'B', '50', '3', 'Mr. PONG Sze Ho Cecil', 'YIA 402', '2020-04-17 13:30:00', '2020-04-17 14:15:00', 'This course is an intellectual pursuit across various natural sciences including the two most fundamental ones, physical and biological sciences. Ancient Greek philosophers took the lead in exploring the physical world and the world of life with reason and hence laid the foundations of natural science. This human enquiry into Nature leads to a reflection on the human understanding of Nature and the humans’ place in Nature.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6135', ' ', '60', '44', 'Professor TSANG Hon Ki', 'LPN LT', '2020-09-03 13:30:00',  '2020-09-03 14:15:00', 'The 1-unit course will introduce engineering entrepreneurship and provide the key basic concepts needed in the preparation of technical proposals and business plans.  The course will introduce students to analytical process of evaluating new ideas, and metrics to compare ideas with existing approaches in the market.  The course will include in class discussion of forecasts based on market size estimates, cashflow analysis and technical development plans.  The course objective is to prepare students to develop and present their innovative technical ideas that have potential for practical development as a preliminary entrepreneurship project in the following semester in ENGG3803.  In addition to a formal written proposal to describe their ideas, students will also be asked to present their proposal to the course instructor. Shortlisted proposals will be invited to a second presentation where a panel of experienced engineering entrepreneurs select proposals for further development.');
INSERT INTO `cusisdbBeta`.`session_info` (`session_id`, `session_code`, `quota`, `vacancy`, `lecturer`, `venue_1`, `session_start_time_1`, `session_end_time_1`, `schedule`) VALUES ('6644', ' ', '100', '4', 'Dr. CHUI Chi Ming Lawrence', 'LSK LT7', '2020-09-03 15:30:00',  '2020-09-03 18:15:00', 'This foundation course is designed for students who have not taken science courses with a biology component at the senior secondary school level. It presents our current understandings on cells and molecules of life, genetics and evolution, organisms and environment, and health and diseases. Those students who have successfully completed this course will have a solid foundation for studying more advanced courses in life sciences.');
UNLOCK TABLES;

--
-- Table structure for table `session_tutorial_list`
--

DROP TABLE IF EXISTS `session_tutorial_list`;
CREATE TABLE `session_tutorial_list` (
  `session_id` char(8) NOT NULL,
  `tutorial_id` char(8) NOT NULL,
  PRIMARY KEY (`tutorial_id`,`session_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `session_tutorial_list`
--

LOCK TABLES `session_tutorial_list` WRITE;
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5638', '6454');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6765', '6768');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6765', '7271');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6766', '6772');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6706', '5976');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6706', '6156');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6875', '5798');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6875', '7812');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6875', '7811');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6875', '7809');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6875', '7810');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5846', '7781');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5846', '8653');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7780', '7782');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6501', '5420');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6501', '5421');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7995', '8024');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5813', '6498');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8706', '8074');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7545', '7547');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7866', '7867');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6599', '6600');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6136', '7591');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6136', '6236');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6076', '7592');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6076', '7594');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6617', '6357');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6617', '7521');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7101', '5795');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('7101', '7100');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('8369', '8370');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6960', '6964');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5375', '9092');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('5375', '6852');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6653', '6651');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6653', '6949');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6908', '6230');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('6908', '6232');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('9095', '9094');
INSERT INTO `cusisdbBeta`.`session_tutorial_list` (`session_id`, `tutorial_id`) VALUES ('9095', '9093');
UNLOCK TABLES;

--
-- Table structure for table `tutorial_info`
--

DROP TABLE IF EXISTS `tutorial_info`;
CREATE TABLE `tutorial_info` (
  `tutorial_id` char(8) NOT NULL,
  `tutorial_code` varchar(4) NOT NULL,
  `tutorial_start_time_1`  datetime NOT NULL,
  `tutorial_start_time_2` datetime DEFAULT NULL,
  `tutorial_start_time_3` datetime DEFAULT NULL,
  `tutorial_end_time_1`  datetime NOT NULL,
  `tutorial_end_time_2` datetime DEFAULT NULL,
  `tutorial_end_time_3` datetime DEFAULT NULL,
  `quota` smallint unsigned NOT NULL,
  `vacancy` smallint unsigned NOT NULL,
  `venue_1` varchar(45) NOT NULL DEFAULT 'TBA',
   `venue_2` varchar(45) DEFAULT NULL,
  `venue_3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tutorial_id`),
  UNIQUE KEY `tutorial_id_UNIQUE` (`tutorial_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tutorial_info`
--

LOCK TABLES `tutorial_info` WRITE;
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6454', 'CT01', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '200', '112', 'ERB LT');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6768', 'AL01', '2020-09-04 11:30:00', '2020-09-04 12:15:00', '58', '1', 'SHB 904');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7271', 'AL02', '2020-09-04 11:30:00', '2020-09-04 12:15:00', '56', '0', 'SHB 123');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6772', 'BL01', '2020-09-04 11:30:00', '2020-09-04 12:15:00', '141', '1', 'ERB 1004');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5976', 'BT02', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '45', '1', 'ERB 706');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6156', 'BT01', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '45', '0', 'ERB 713');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5798', 'T01', '2020-09-04 11:30:00', '2020-09-04 12:15:00', '50', '2', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7812', 'T05', '2020-09-04 17:30:00', '2020-09-04 18:15:00', '50', '33', 'ERB 401');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7811', 'T04', '2020-09-04 16:30:00', '2020-09-04 17:15:00', '50', '30', 'ERB 401');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7809', 'T02', '2020-09-04 15:30:00', '2020-09-04 16:15:00', '50', '1', 'LSB C1');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7810', 'T03', '2020-09-04 14:30:00', '2020-09-04 15:15:00', '50', '0', 'ERB 712');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7781', 'AT01', '2020-04-13 10:30:00', '2020-04-13 11:15:00', '55', '24', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8653', 'AT02', '2020-04-13 10:30:00', '2020-04-13 11:15:00', '55', '26', 'LSK 306');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7782', 'CT01', '2020-04-13 10:30:00', '2020-04-13 11:15:00', '180', '72', 'ERB LT');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5420', 'AT01', '2020-09-05 10:30:00', '2020-09-05 11:15:00', '50', '27', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5421', 'AT02', '2020-09-05 11:30:00', '2020-09-05 12:15:00', '50', '30', 'ERB 404');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8024', 'BT01', '2020-09-05 15:30:00', '2020-09-05 17:15:00', '175', '38', 'MMW LT1');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6498', 'L01', '2020-09-04 16:30:00', '2020-09-04 17:15:00', '50', '0', 'ERB 909');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8074', 'T01', '2020-04-16 17:30:00', '2020-04-16 18:15:00', '50', '26', 'LSB C1');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7547', 'T01', '2020-04-13 10:30:00', '2020-04-13 11:15:00', '50', '4', 'ERB 803');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7867', 'T01', '2020-09-05 10:30:00', '2020-09-05 12:15:00', '65', '6', 'ERB 803');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6600', 'JT01', '2020-04-16 15:30:00', '2020-04-16 16:15:00', '80', '30', 'LSB LT4');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7591', 'AT02', '2020-09-03 08:30:00', '2020-09-03 09:15:00', '21', '3', 'ERB 713');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6236', 'AT03', '2020-09-03 08:30:00', '2020-09-03 09:15:00', '21', '6', 'LSB C3');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7592', 'BT01', '2020-09-03 08:30:00', '2020-09-03 09:15:00', '30', '8', 'MMW 704');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7594', 'BT02', '2020-09-03 08:30:00', '2020-09-03 09:15:00', '30', '8', 'MMW 706');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6357', 'GT01', '2020-04-13 16:30:00', '2020-04-13 17:15:00', '40', '2', 'MMW 704');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7521', 'GT02', '2020-04-13 16:30:00', '2020-04-13 17:15:00', '40', '33', 'MMW 706');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('5795', 'BT01', '2020-09-03 17:30:00', '2020-09-03 18:15:00', '10', '1', 'NAH 115');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('7100', 'BT02', '2020-09-02 14:30:00', '2020-09-02 15:15:00', '10', '0', 'NAH 401');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('8370', 'AT01', '2020-04-13 00:00:00', '2020-04-13 00:00:00', '80', '14', 'TBA');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6964', 'BT01', '2020-04-13 00:00:00', '2020-04-13 00:00:00', '80', '46', 'TBA');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('9092', 'AT02', '2020-04-15 10:30:00', '2020-04-15 12:15:00', '25', '2', 'YIA 402');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6852', 'AT01', '2020-04-13 14:30:00', '2020-04-13 16:15:00', '25', '1', 'CYT 215');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6651', 'CT03', '2020-04-15 16:30:00', '2020-04-15 18:15:00', '25', '1', 'WMY 503');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6949', 'CT06', '2020-04-17 09:30:00', '2020-04-17 11:15:00', '25', '3', 'ELB 305');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6230', 'AT01', '2020-04-14 08:30:00', '2020-04-14 10:15:00', '25', '11', 'HYS 501');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('6232', 'AT05', '2020-04-15 15:30:00', '2020-04-15 17:15:00', '25', '7', 'HYS 303');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('9094', 'BT01', '2020-04-15 11:30:00', '2020-04-15 13:15:00', '25', '1', 'ELB 305');
INSERT INTO `cusisdbBeta`.`tutorial_info` (`tutorial_id`, `tutorial_code`, `tutorial_start_time_1`, `tutorial_end_time_1`, `quota`, `vacancy`, `venue_1`) VALUES ('9093', 'BT02', '2020-04-17 09:30:00', '2020-04-17 11:15:00', '25', '2', 'WMY 302');
UNLOCK TABLES;

--
-- Table structure for table `conflict_list`
--

DROP TABLE IF EXISTS `conflict_list`;
CREATE TABLE `conflict_list` (
  `course_id` char(8) NOT NULL,
  `conflict_id` char(8) NOT NULL,
  `conflict_major` char(40) NOT NULL,
  PRIMARY KEY (`course_id`,`conflict_id`,`conflict_major`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conflict_list`
--

LOCK TABLES `conflict_list` WRITE;
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1020', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1030', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1120', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1130', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1510', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'CSCI1540', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1110', 'ESTR1002', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1310', 'ESTR1003', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG1410', 'ESTR1004', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG2430', 'ESTR2002', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG2440', 'CSCI2110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ENGG2440', 'ESTR2004', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1020', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1030', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1110', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1120', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1130', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1510', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'CSCI1540', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1002', 'ESTR1002', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1003', 'ENGG1310', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR1004', 'ENGG1410', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR2002', 'ENGG2430', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('ESTR2004', 'ENGG2440', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('LSCI1001', 'LSCI1003', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('LSCI1003', 'LSCI1001', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEA1333', 'N/A', 'Anthropology');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEA2180', 'UGEA2334', 'Anthropology');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEA2334', 'UGEA2180', 'Anthropology');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEB1570', 'N/A', 'Psychology');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEB2222', 'N/A', 'Geography and Resource Management');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGEC1670', 'N/A', 'Government and Public Administration');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGED1111', 'UGED1112', 'Philosophy');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGED1112', 'UGED1111', 'Philosophy');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGFN1000', 'UGFN1001', 'N/A');
INSERT INTO `cusisdbBeta`.`conflict_list` (`course_id`, `conflict_id`, `conflict_major`) VALUES ('UGFN1001', 'UGFN1000', 'N/A');
UNLOCK TABLES;

--
-- Table structure for table `corequisit_list`
--

DROP TABLE IF EXISTS `corequisite_list`;
CREATE TABLE `corequisite_list` (
  `course_id` char(8) NOT NULL,
  `corequisite_id` char(8) NOT NULL,
  `group` char(1) NOT NULL,
  PRIMARY KEY (`course_id`,`corequisite_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `corequisit_list`
--

LOCK TABLES `corequisite_list` WRITE;
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA1333', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA1333', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA1333', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2180', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2180', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2180', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2334', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2334', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEA2334', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB1570', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB1570', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB1570', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB2222', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB2222', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEB2222', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEC1670', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEC1670', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGEC1670', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1111', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1111', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1111', '2', 'UGFN1001');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1112', '1', 'UGFH1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1112', '2', 'UGFN1000');
INSERT INTO `cusisdbBeta`.`corequisite_list` (`course_id`, `group`, `corequisite_id`) VALUES ('UGED1112', '2', 'UGFN1001');
UNLOCK TABLES;

--
-- Table structure for table `prerequisit_list`
--

DROP TABLE IF EXISTS `prerequisite_list`;
CREATE TABLE `prerequisite_list` (
  `course_id` char(8) NOT NULL,
  `prerequisite_id` char(8) NOT NULL,
  `group` char(1) NOT NULL,
  PRIMARY KEY (`course_id`,`prerequisite_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prerequisit_list`
--

LOCK TABLES `prerequisite_list` WRITE;
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('ENGG3803', 'ENGG3802', '1');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('ENGG1410', 'MATH1510', '1');
INSERT INTO `cusisdbBeta`.`prerequisite_list` (`course_id`, `prerequisite_id`, `group`) VALUES ('ESTR1004', 'MATH1510', '1');
UNLOCK TABLES;

DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `course_id` char(8) NOT NULL COMMENT '四位字母+四位数字 eg. csci3100',
  `session_id` char(8) NOT NULL COMMENT '四位数字  如果任意session都可以，则需要增加多条数据记录',
  `tutorial_id` char(8) DEFAULT NULL COMMENT '四位数字  Null for 所有的tutorial都可以，或者无tutorial',
  `sid` int NOT NULL,
  PRIMARY KEY (`sid`,`session_id`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert into shopping_cart values("UGED1112", "6960", "6964", "1155000001"), ("PHYS1003", "6076", "7592", "1155000001");

DROP TABLE IF EXISTS `course_history`;
CREATE TABLE `course_history` (
  `sid` varchar(10) NOT NULL,
  `course_id` char(8) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  PRIMARY KEY (`course_id`,`sid`)
); #ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course_history`
--

LOCK TABLES `course_history` WRITE;
INSERT INTO `course_history` VALUES ('1155000001',1111,'Data Structure'),('1155104429',1111,'Data Structure'),('1155124427',1111,'Data Structure'),('1155124428',1111,'Data Structure'),('1155000001',2222,'Software Engineering'),('1155104429',2222,'Software Engineering'),('1155124427',2222,'Software Engineering'),('1155124428',2222,'Software Engineering');
UNLOCK TABLES;

--
-- Table structure for table `required_course`
--

DROP TABLE IF EXISTS `required_course`;
CREATE TABLE `required_course` (
  `sid` varchar(10) NOT NULL,
  `course_id` char(8) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `taken` varchar(1) NOT NULL,
  PRIMARY KEY (`taken`,`course_id`,`sid`),
  KEY `SID_idx` (`sid`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `required_course`
--

LOCK TABLES `required_course` WRITE;
INSERT INTO `required_course` VALUES ('1155104429',1111,'Data Structure','N'),('1155124428',1111,'Data Structure','N'),('1155104429',2222,'Software Engineering','N'),('1155124427',2222,'Software Engineering','N'),('1155000001',1111,'Data Sturcture','Y'),('1155124427',1111,'Data Sturcture','Y'),('1155000001',2222,'Software Engineering','Y'),('1155124428',2222,'Software Engineering','Y');
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `sid` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `year` int NOT NULL,
  `major` varchar(40) NOT NULL,
  `available_credit` int NOT NULL,
  `stream` varchar(30) NOT NULL,
  `avatar` mediumblob,
  PRIMARY KEY (`sid`)
) ;#ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES ('1155000001','748211','Allen','1155104583@link.cuhk.edu.hk',3,'Computer Science',0,'N/A',NULL),('1155124427','135790','Bob','1155124427@link.cuhk.edu.hk',2,'Computer Science',20,'Quantum mechanics',NULL),('1155148372','123456','Charles','1155148372@link.cuhk.edu.hk',1,'Computer Science',60,'N/A',NULL);
UNLOCK TABLES;
