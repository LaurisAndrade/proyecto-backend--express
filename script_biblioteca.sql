/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.8-MariaDB : Database - biblioteca
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `biblioteca`;

/*Table structure for table `autores` */

DROP TABLE IF EXISTS `autores`;

CREATE TABLE `autores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

/*Data for the table `autores` */

insert  into `autores`(`id`,`nombre`,`created_at`) values 
(15,'Federico García Lorcauuu','2021-05-26 22:31:48'),
(16,'Gabriel García Márquez',NULL),
(17,'Miguel de Cervantes',NULL),
(18,'Charles Dickens',NULL),
(19,'Jorge Luis Borges',NULL);

/*Table structure for table `editoriales` */

DROP TABLE IF EXISTS `editoriales`;

CREATE TABLE `editoriales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(11) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `editoriales` */

insert  into `editoriales`(`id`,`codigo`,`nombre`,`created_at`) values 
(7,'01','Academia Colombiana','2021-05-27 23:04:57'),
(8,'02','Corporación universitaria Remington','2021-05-27 23:05:27'),
(9,'03','Instituto Caro y Cuervo','2021-05-27 23:06:00'),
(10,'04','Luna Libros','2021-05-27 23:06:17'),
(11,'05','Universidad central','2021-05-27 23:06:38');

/*Table structure for table `genero` */

DROP TABLE IF EXISTS `genero`;

CREATE TABLE `genero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(11) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

/*Data for the table `genero` */

insert  into `genero`(`id`,`codigo`,`nombre`,`created_at`) values 
(2,'1','Ciencia ficción','2021-05-27 23:13:48'),
(3,'2','Fabula','2021-04-15 18:12:59'),
(4,'3','Novela','2021-04-15 18:13:07'),
(5,'4','Lirico ','2021-04-15 18:17:46'),
(6,'5','Narrativo','2021-04-15 18:36:42'),
(21,'1','prueba carga','2021-10-25 19:39:08'),
(22,'1','prueba carga','2021-10-25 19:39:08'),
(23,'1','prueba carga','2021-10-25 19:39:09'),
(24,'1','prueba carga','2021-10-25 19:39:10'),
(25,'1','prueba carga','2021-10-25 19:39:11'),
(26,'1','prueba carga','2021-10-25 19:39:12'),
(27,'1','prueba carga','2021-10-25 19:39:13'),
(28,'1','prueba carga','2021-10-25 19:39:14'),
(29,'1','prueba carga','2021-10-25 19:39:15'),
(30,'1','prueba carga','2021-10-25 19:39:16'),
(31,'1','prueba carga','2021-10-25 19:40:31'),
(32,'1','prueba carga','2021-10-25 19:40:32'),
(33,'1','prueba carga','2021-10-25 19:40:33'),
(34,'1','prueba carga','2021-10-25 19:40:34'),
(35,'1','prueba carga','2021-10-25 19:40:35'),
(36,'1','prueba carga','2021-10-25 19:40:36'),
(37,'1','prueba carga','2021-10-25 19:40:37'),
(38,'1','prueba carga','2021-10-25 19:40:38'),
(39,'1','prueba carga','2021-10-25 19:40:39'),
(40,'1','prueba carga','2021-10-25 19:40:40');

/*Table structure for table `libros` */

DROP TABLE IF EXISTS `libros`;

CREATE TABLE `libros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(20) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `autor` varchar(200) DEFAULT NULL,
  `edicion` varchar(200) DEFAULT NULL,
  `idioma` varchar(200) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `cantidad` varchar(11) DEFAULT NULL,
  `genero_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `autor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;

/*Data for the table `libros` */

insert  into `libros`(`id`,`codigo`,`titulo`,`autor`,`edicion`,`idioma`,`imagen`,`cantidad`,`genero_id`,`user_id`,`autor_id`,`created_at`) values 
(8,1,'Libro de pruebasssss','Mateo  Martija','Edición1','Portugues',NULL,'7',NULL,NULL,NULL,'2021-10-25 22:26:09'),
(11,2,'Fragmentos de la feria','Mateo Martínez Martija','Edición 2','Español',NULL,'12',NULL,NULL,NULL,'2021-04-30 21:46:39'),
(13,3,'La Crisálida','Carmen Clara Balmaseda','Edición 1','Español',NULL,'3',NULL,NULL,NULL,'2021-04-30 21:48:13'),
(14,4,'La decisión de Julia','Diana Talarewitz','Edición 2','Ingles',NULL,'8',NULL,NULL,NULL,'2021-04-30 21:49:37'),
(17,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:06'),
(18,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:06'),
(19,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:08'),
(20,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:08'),
(21,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:08'),
(22,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:08'),
(23,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:08'),
(24,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:08'),
(25,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:08'),
(26,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:08'),
(27,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:08'),
(28,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(29,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(30,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(31,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(32,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(33,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(34,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(35,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(36,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(37,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(38,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(39,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(40,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(41,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(42,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(43,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(44,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(45,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(46,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(47,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(48,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:09'),
(49,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:10'),
(50,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:10'),
(51,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:10'),
(52,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:10'),
(53,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:10'),
(54,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:10'),
(55,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:11'),
(56,1,'Fragmentos de la feria','Mateo Martínez Martija','Edición1','Español',NULL,'15',NULL,NULL,NULL,'2021-10-25 21:42:11');

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sessions` */

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `nombre_completo` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`usuario`,`contraseña`,`nombre_completo`) values 
(1,'laura@gmail.com','12345',NULL),
(2,'juan@gmail.com','12345',NULL),
(3,'maria@gmail.com','maria12345',NULL),
(4,'daniel@gmail.com','567899',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
