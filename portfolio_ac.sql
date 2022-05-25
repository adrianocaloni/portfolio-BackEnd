-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: portfolio_ac
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `title` varchar(255) DEFAULT NULL,
  `person_id` bigint NOT NULL,
  `name_esc` varchar(255) DEFAULT NULL,
  `tecnologias` varchar(255) DEFAULT NULL,
  `url_imagen` varchar(2048) DEFAULT NULL,
  `date_end` varchar(255) DEFAULT NULL,
  `date_start` varchar(255) DEFAULT NULL,
  `numero_trabajo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkvbl6xk332o16kxhc8hp0pnhh` (`person_id`),
  CONSTRAINT `FKkvbl6xk332o16kxhc8hp0pnhh` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (40,'Software informático y aplicaciones multimedia','Técnico Superior en Desarrollo de Software - (3er. Año)',1,'Esc. Sup. N° 49 Cap. Justo José de Urquiza','HTML | CSS | JavaScript | PHP | BD SQL','./assets/urquiza.PNG','Actualidad','Abril 2020',NULL),(41,'Intorducción a Desarrollo Web y Aplicaciones. | Desarrollo Front End Estático. | Desarrollo Front End Dinamico. | Base de Datos. | POO buenas prácticas de programación. | Programación con JAVA. | Programación Web con Java. | Back End con Spring Boot.','Desarrollador Web Full Stack.',1,'Argentina Programa - #YoProgramo','Habilidades Digitales | Arquitectura Web | Transferencia de Datos | HyperText Transfer Protocol | API\'s Rest | Git / GitHub | HTML | CSS | JavaScript | Type Srcipt | SPA | Angular | Arquitectura Angular | JAVA | JAVA Web | JAVA Spring Boot | SQL ','./assets/arg.PNG','Actualidad','Noviembre 2021',NULL),(42,'Certificado avalado por Ministerio de Desarrollo Productivo y la Cámara de la Industria Argentina de Software (CESSI)','#SéProgramar',1,'Argentina Programa','Programación imperativa y estructuras de datos (JavaScript). | Programación orientada a Objetos (Ruby).','./assets/arg.PNG','Septiembre 2021','Agosto 2021',NULL),(43,'Planear, desarrollar, dirigir y controlar sistemas de información','Ingeniero en Sistemas de Información - (Suspendido)',1,'Universidad Tecnológica Nacional','Programación estructurada | Programación orientada a objetos | UML | Relevamiento de requerimientos | PASCAL | C++ | Dolphin Smoltok','./assets/UTN.PNG','2017','2012',NULL);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) DEFAULT NULL,
  `date_end` varchar(255) DEFAULT NULL,
  `date_start` varchar(255) DEFAULT NULL,
  `description` longtext,
  `name_job` varchar(255) DEFAULT NULL,
  `person_id` bigint NOT NULL,
  `url_imagen` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKabs1xc3m7ne9name9v1dm3hd1` (`person_id`),
  CONSTRAINT `FKabs1xc3m7ne9name9v1dm3hd1` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (11,'Soporte Técnico','Actualidad','Mayo 2021','Análisis Funcional. | Desarrollos de operaciones para el gestor documental. | Solución y soporte a usuarios. | Integraciones. | Administrador / Configurador de Athento/ZOHO Analytics.','La SEGUNDA Seguros CLSG',1,'./assets/l2.png'),(12,'Analista en Gestión Documental','Mayo 2021','Abril 2018','Análisis de datos para generar informes en ZOHO Analytics. | Desarrollos de operaciones para el gestor documental. | Administrador / Configurador de Podio/Athento/ZOHO Analytics. | Mejorar los Workflow a través de relevamientos con otros sectores intervinientes. | Relevamiento de nuevos requerimientos para generar nuevos flujos de trabajos en Athento.','La SEGUNDA Seguros CLSG',1,'./assets/l2.png'),(14,'Administrativo de Logística','Abril 2018','Septiembre 2017','Facturación, Expedición. | Control de Stock (RDS). | Elaboración de guías, notas de débito y crédito. | Órdenes de viajes.','Tradelog SAU',1,'./assets/tradelog.PNG'),(15,'Encargado de Depósitos','Abril 2018','Marzo 2014','Coordinación del personal a cargo para la ejecución de las metas diarias, flujo de trabajo. | Control en la descarga, almacenamiento, armado y despacho de los distintos productos. |Supervisión en el armado de pedidos, seguimiento y control de las entregas para mejorar el flujo y  tener una mayor trazabilidad. | Actualización diaria de stock. | Manejo de autoelevador.','Tradelog SAU',1,'./assets/tradelog.PNG');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `apellido` varchar(255) DEFAULT NULL,
  `descripcion` varchar(2048) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `url_imagen` varchar(2048) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `url_img_portada` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Caloni','Estudiante de tecnología, con muchas ganas de empezar a trabajar como Developer. Soy una persona entusiasta y comprendido en mis tareas, me gustan los desafíos. Me apasiona todo lo relacionado con nuevas tecnologías y análisis de datos. Me considero una persona proactiva y que me adapto rápidamente a los equipos de trabajo.','Adriano Jeremias','Full Stack Developer Jr.','./assets/perfil.PNG ',NULL,NULL,NULL);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_end` varchar(255) DEFAULT NULL,
  `date_start` varchar(255) DEFAULT NULL,
  `description` longtext,
  `name` varchar(255) DEFAULT NULL,
  `url_imagen` varchar(2048) DEFAULT NULL,
  `person_id` bigint NOT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `portfolio` longtext,
  `presentacion` longtext,
  `redes` longtext,
  `url_imagen_port` varchar(2048) DEFAULT NULL,
  `url_imagen_redes` varchar(2048) DEFAULT NULL,
  `url_imagen_video` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqcab48yt493hkqpim9fyu0jay` (`person_id`),
  CONSTRAINT `FKqcab48yt493hkqpim9fyu0jay` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (17,'Noviembre 2021','Abril 2021','La creamos pensando en la necesidad constante con a que se encuentran las personas No Verbales. Nuestra idea es llegar a tod@s y derribar las limitaciones de interacción, comunicarnos es esencial.','Dilo! ','./assets/dilo.PNG',1,'App Inclusiva ','https://github.com/adrianocaloni/Dilo.git','https://drive.google.com/drive/folders/1Lgq0Hpg0t09PtBSp-avUZMFzHiLAagiZ','https://www.instagram.com/diloproyecto/','./assets/icons8-git-48.png','./assets/icons8-instagram-48.png','./assets/icons8-video-48.png');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name_skill` varchar(255) DEFAULT NULL,
  `porcentaje` varchar(255) DEFAULT NULL,
  `person_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnu4vq754g7a54h2rmy2bt3o36` (`person_id`),
  CONSTRAINT `FKnu4vq754g7a54h2rmy2bt3o36` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (2,'HTML','75',1),(3,'CSS','60',1),(4,'JavaScript','50',1),(6,'Angular','45',1),(7,'TypeScript','40',1),(9,'Git-GitHub','65',1);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rol` varchar(255) DEFAULT NULL,
  `person_id` bigint NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKir5g7yucydevmmc84i788jp79` (`person_id`),
  CONSTRAINT `FKir5g7yucydevmmc84i788jp79` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'administrador',1,'ajc130392',NULL,'caloniadrianoj@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-25  3:20:07
