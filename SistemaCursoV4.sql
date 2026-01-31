-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemacursov4
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `idalumno` int NOT NULL AUTO_INCREMENT,
  `apellidop` varchar(45) DEFAULT NULL,
  `apellidom` varchar(45) DEFAULT NULL,
  `alumnonombre` varchar(45) DEFAULT NULL,
  `fnacimiento` datetime DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `codigo` int DEFAULT NULL,
  `grado` int DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `stadoalumno` enum('ACTIVO','INACTIVO') NOT NULL,
  `fechaRegisto` datetime DEFAULT NULL,
  `fechaUpdate` datetime DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `stadoPago` enum('PAGADO','DEUDA','PROCESANDO..') NOT NULL,
  `contrasena` char(255) DEFAULT NULL,
  `rolalumno` enum('ALUMNO','ALUM') NOT NULL,
  `alumno_foto` text,
  PRIMARY KEY (`idalumno`),
  KEY `grado_idx` (`grado`),
  CONSTRAINT `grado` FOREIGN KEY (`grado`) REFERENCES `grado` (`idgrado`) ON DELETE RESTRICT ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'CHAVES MENDOZA',NULL,'JULIÑO','2021-04-14 10:47:00',605482,964785,207,1,'M','INACTIVO','2023-05-03 00:00:00','2023-06-03 00:00:00','TINGO','PAGADO','$2y$10$nUn3CrFcCty14GGVdiMgp./ROO1C/S8DoWtCd/iB825xniNeGO.r2','ALUMNO',NULL),(2,'Marcos Miraval',NULL,'Palomino','2021-04-15 19:27:00',6054,96458,201,1,'M','INACTIVO','2023-06-04 00:00:00','2023-07-04 00:00:00','TINGO','PAGADO','$2y$10$nUn3CrFcCty14GGVdiMgp./ROO1C/S8DoWtCd/iB825xniNeGO.r2','ALUMNO',NULL),(3,'RIVERA SANTA',NULL,'MILAGROS','2021-05-01 16:36:00',8547,45896,2007,2,'F','ACTIVO','2023-06-02 00:00:00','2023-07-02 00:00:00','TINGO','PAGADO','$2y$10$nUn3CrFcCty14GGVdiMgp./ROO1C/S8DoWtCd/iB825xniNeGO.r2','ALUMNO',NULL),(12,'CANTARO LOPEZ',NULL,'EDIT','2021-06-17 16:37:00',735845,96470865,2007,3,'F','ACTIVO','2023-01-02 00:00:00','2023-02-02 00:00:00','HUANUCO','DEUDA','$2y$10$kzo6Av2xMK6GH.jjdtMjQ.zgE1IpJeO37PzseeehG8Gogp4ky6miG','ALUMNO','imagenes/IMG872021105617.jpg'),(19,'JIMENEZ GARCIA',NULL,'DANTE','2021-07-15 22:16:00',735845,96470865,2021,7,'M','ACTIVO','2023-01-02 00:00:00','2023-02-02 00:00:00','LIMA','DEUDA','$2y$10$rLsvF3xdhirRY13tknOgZO53q0EMnRhtb/OwM35NOjgP3TWnAjCYG','ALUMNO','imagenes/IMG1972021101821.png'),(20,'Julieta',NULL,'Pardo Mendoza','2023-05-05 23:12:00',735845,96470865,2007,7,'M','ACTIVO','2023-05-05 23:12:07','2023-06-06 04:13:02','HUANUCO','PAGADO','$2y$10$4dnQX6ewj5zPkVgMjxSeceWbAAyHdVZ9ei6K5NeN4HNq9MehD4WTa','ALUMNO','imagenes/images.png'),(21,'HUAMNI MARCA',NULL,'MANUEL','2023-05-06 16:42:00',735845,96470865,2007,7,'M','ACTIVO','2023-05-06 16:41:47','2023-06-06 21:43:42','HUANUCO','PAGADO','$2y$10$mYXimjgYhB23BEzelIbsmOAoGV0wL.SGkyHtom852E/EKEKOJDwsC','ALUMNO','imagenes/images.png'),(22,'Alumno Prueba',NULL,'Prueba1','2023-06-01 17:53:00',455555,455,2017,3,'M','ACTIVO','2023-06-01 17:52:47','2023-07-01 22:54:35','lima','PAGADO','$2y$10$762ermMq2Nxr4cveTFmvxO6LueZOpuHWjn0FdFD5YbGhqTzpPFHZy','ALUMNO','imagenes/images.png'),(23,'ALUMNO5 ALUMNO-05',NULL,'ALUMNO PRUEBA','2023-06-02 06:02:00',60548724,96475056,2017,7,'M','ACTIVO','2023-06-02 06:01:20','2023-07-02 11:03:33','MEXICO','PAGADO','$2y$10$6KIqlBcM2Lzr9.1WLR6ur.GEY5Q2Z/ejaGUntERxPBmKAf.Rs2Pm6','ALUMNO','imagenes/images.png');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `IdAsisten` int NOT NULL AUTO_INCREMENT,
  `idalumno_asi` int NOT NULL,
  `Fechas` date NOT NULL,
  `Est_Asis` tinyint(1) NOT NULL,
  `idgrado` int DEFAULT NULL,
  `yearid` int DEFAULT NULL,
  `userSesion` int DEFAULT NULL,
  `idcurses` int DEFAULT NULL,
  PRIMARY KEY (`IdAsisten`),
  KEY `alum_asist_idx` (`idalumno_asi`),
  CONSTRAINT `alum_asist` FOREIGN KEY (`idalumno_asi`) REFERENCES `alumno` (`idalumno`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aula`
--

DROP TABLE IF EXISTS `aula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aula` (
  `idaula` int NOT NULL AUTO_INCREMENT,
  `nombreaula` varchar(45) NOT NULL,
  `piso` int NOT NULL,
  `numero` int NOT NULL,
  `aforro` int NOT NULL,
  `seccion` varchar(45) NOT NULL,
  `status` enum('LIBRE','OCUPADO') DEFAULT NULL,
  PRIMARY KEY (`idaula`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula`
--

LOCK TABLES `aula` WRITE;
/*!40000 ALTER TABLE `aula` DISABLE KEYS */;
INSERT INTO `aula` VALUES (1,'GUACAMAYO',1,46,52,'A','OCUPADO'),(2,'lORITOS',2,18,25,'A','LIBRE'),(6,'ORQUIDEAS',2,404,32,'B','OCUPADO'),(7,'MAGNA',2,404,45,'A','LIBRE'),(8,'NUEVO AULA',2,404,25,'A','LIBRE'),(9,'Aula Prueba',2,15,45,'B','LIBRE');
/*!40000 ALTER TABLE `aula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idcurso` int NOT NULL AUTO_INCREMENT,
  `cursoCodigo` varchar(8) DEFAULT NULL,
  `nonbrecurso` varchar(45) NOT NULL,
  `credito` int NOT NULL,
  `statuscurso` enum('LIBRE','ASIGNADO') NOT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `fechaActualizacion` datetime DEFAULT NULL,
  `tipo` enum('SEMESTRAL','ELECTIVO') NOT NULL,
  `stadodocent` enum('PENDIENTE','DICTANDO') NOT NULL,
  PRIMARY KEY (`idcurso`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'032','MATEMATICA',4,'ASIGNADO','2021-02-20 00:00:00','2021-02-20 00:00:00','SEMESTRAL','DICTANDO'),(2,'025','COMUNICACION',4,'ASIGNADO','2021-02-20 00:00:00','2021-07-13 22:38:38','SEMESTRAL','DICTANDO'),(3,'023','HISTORIA',4,'ASIGNADO','2021-02-20 00:00:00','2021-07-13 22:38:52','SEMESTRAL','DICTANDO'),(4,'24','FILOSOFIA',4,'LIBRE','2021-02-20 00:00:00','2021-02-20 00:00:00','SEMESTRAL','PENDIENTE'),(5,'85','CTA',4,'LIBRE','2021-02-20 00:00:00','2021-02-20 00:00:00','SEMESTRAL','PENDIENTE'),(6,'65','ALGEBRA',4,'ASIGNADO','2021-02-20 00:00:00','2021-02-20 00:00:00','SEMESTRAL','PENDIENTE'),(7,'0258','INGLES  I',3,'LIBRE','2021-06-17 10:26:41','2021-06-17 10:27:35','SEMESTRAL','PENDIENTE'),(8,'525','ARTE Y CULTURA',4,'LIBRE','2023-05-06 00:35:29','2023-05-06 00:35:29','SEMESTRAL','PENDIENTE'),(9,'0258','LENGUAJE',2,'LIBRE','2023-05-06 00:36:12','2023-05-06 00:36:12','SEMESTRAL','PENDIENTE'),(10,'0025','humanidades',2,'ASIGNADO','2023-05-06 16:59:36','2023-05-06 16:59:36','SEMESTRAL','DICTANDO');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `niveles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `niveles` (
  `idniveles` int NOT NULL AUTO_INCREMENT,
  `nombreNivell` varchar(45) NOT NULL,
  `yearNivel` int DEFAULT NULL,
  `createDate` date DEFAULT NULL,
  PRIMARY KEY (`idniveles`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveles`
--

LOCK TABLES `niveles` WRITE;
/*!40000 ALTER TABLE `niveles` DISABLE KEYS */;
INSERT INTO `niveles` VALUES
 (1,'PRIMARIA',1,'2022-11-06'),(2,'SECUNDARIA',1,'2022-11-06'),
 (3,'SUPERIOR',1,'2022-11-06'),(4,'INICIAL',1,'2022-11-06');
/*!40000 ALTER TABLE `niveles` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grado` (
  `idgrado` int NOT NULL AUTO_INCREMENT,
  `gradonombre` varchar(45) NOT NULL,
  `gradostatus` enum('ACTIVO','INACTIVO') DEFAULT NULL,
  `aula_id` int NOT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `fechaActualizacion` datetime DEFAULT NULL,
  `cantidad_alum` int DEFAULT NULL,
  `semestre` int NOT NULL,
  PRIMARY KEY (`idgrado`),
  KEY `grado_aula_idx` (`aula_id`),
  CONSTRAINT `idaula` FOREIGN KEY (`aula_id`) REFERENCES `aula` (`idaula`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,'PRIMER GRADO','ACTIVO',1,'2021-02-20 00:00:00','2021-02-12 00:00:00',25,1),(2,'SEGUNDO GRADO','ACTIVO',1,'2021-06-15 22:48:33','2021-06-15 22:48:33',25,1),(3,'TERCER GRADO','ACTIVO',2,'2021-06-16 22:28:30','2021-06-16 22:28:30',25,1),(7,'CUARTO GRADO','ACTIVO',6,'2021-07-15 21:52:10','2021-07-15 21:52:10',20,1),(8,'QUINTO GRADO','ACTIVO',1,'2023-05-06 00:31:49','2023-05-06 00:31:49',25,1);
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `iddocente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `contra` char(255) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `roldocente` enum('DOCENTE','PROF') NOT NULL,
  `status` enum('ACTIVO','INACTIVO') NOT NULL,
  `dni` varchar(45) DEFAULT NULL,
  `tipo` enum('NOMBRADO','CONTRATADO') DEFAULT NULL,
  `docen_foto` text,
  PRIMARY KEY (`iddocente`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (1,'DANTE','PAZ MENDOZA','$10$2IPfa6vCap.UafU2D0cryO/3ldF7CFuYcgFZB0u4uwIlCnj.w2Wl6','M','DOCENTE','ACTIVO','605480','NOMBRADO',NULL),(2,'ALEX MARK','DONATO SOTO','$uBZsyPs7kXfolhht1TXwvVxhPVEpvttbZgCr7zCLzwc','M','DOCENTE','ACTIVO','605480','NOMBRADO',NULL),(3,'MARIA','PEREZ ALEX','$argon2i$v=19$m=65536,t=4,p=1$T2NiTFNWSGJSeldJdlE3cw$uBZsyPs7kXfolhht1TXwvVxhPVEpvttbZgCr7zCLzwc','F','DOCENTE','ACTIVO','605480','NOMBRADO',NULL),(4,'MILAGROS','INEZ','$argon2i$v=19$m=65536,t=4,p=1$T2NiTFNWSGJSeldJdlE3cw$uBZsyPs7kXfolhht1TXwvVxhPVEpvttbZgCr7zCLzwc','F','DOCENTE','ACTIVO','605480','NOMBRADO','imagenes/IMG77202122590.jpg'),(5,'Manuel','Salas Paerez','$2y$10$.skzAzbNuvg6HEEouBQ4reVVoQTQNPvJjUFo4qkQaZRR7.vjvdngq','M','DOCENTE','ACTIVO','60658725','CONTRATADO','imagenes/images.png');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docenteasignado`
--

DROP TABLE IF EXISTS `docenteasignado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docenteasignado` (
  `iddocenteasignado` int NOT NULL AUTO_INCREMENT,
  `docenteid` int NOT NULL,
  `curso_id` int NOT NULL,
  `grado_id` int NOT NULL,
  `semestre` int NOT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `fechaActualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`iddocenteasignado`),
  KEY `docenteidA_idx` (`docenteid`),
  KEY `grado_id_idx` (`grado_id`),
  KEY `curso_id_idx` (`curso_id`),
  CONSTRAINT `cursoidA` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `docenteidA` FOREIGN KEY (`docenteid`) REFERENCES `docente` (`iddocente`),
  CONSTRAINT `gradoidA` FOREIGN KEY (`grado_id`) REFERENCES `grado` (`idgrado`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docenteasignado`
--

LOCK TABLES `docenteasignado` WRITE;
/*!40000 ALTER TABLE `docenteasignado` DISABLE KEYS */;
INSERT INTO `docenteasignado` VALUES (23,4,10,3,1,NULL,NULL),(24,4,1,7,1,NULL,NULL),(25,4,2,7,1,NULL,NULL),(26,4,3,7,1,NULL,NULL);
/*!40000 ALTER TABLE `docenteasignado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `idfile` int NOT NULL AUTO_INCREMENT,
  `nombrearchivo` text NOT NULL,
  `extension` varchar(45) DEFAULT NULL,
  `fechaCreate` datetime DEFAULT NULL,
  `gradoid_file` int NOT NULL,
  `idfolder` int DEFAULT NULL,
  PRIMARY KEY (`idfile`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders` (
  `idforder` int NOT NULL AUTO_INCREMENT,
  `nameforder` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `fechaCreate` date DEFAULT NULL,
  PRIMARY KEY (`idforder`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` VALUES (1,'SILABO ',NULL,'2023-05-14'),(2,'I UNIDAD',NULL,'2023-05-14'),(3,'II UNIDAD ',NULL,'2023-05-14'),(4,'III UNIDAD',NULL,'2023-05-14'),(5,'IV UNIDAD',NULL,'2023-05-14');
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `grado_curso`
--

DROP TABLE IF EXISTS `grado_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grado_curso` (
  `idgrado_curso` int NOT NULL AUTO_INCREMENT,
  `grado_id` int NOT NULL,
  `semestre` int NOT NULL,
  `curso_id` int NOT NULL,
  PRIMARY KEY (`idgrado_curso`),
  KEY `grado_id_idx` (`grado_id`),
  KEY `curso_id_idx` (`curso_id`),
  CONSTRAINT `curso_id` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`idcurso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `grado_id` FOREIGN KEY (`grado_id`) REFERENCES `grado` (`idgrado`) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado_curso`
--

LOCK TABLES `grado_curso` WRITE;
/*!40000 ALTER TABLE `grado_curso` DISABLE KEYS */;
INSERT INTO `grado_curso` VALUES (25,7,1,1),(26,7,1,2),(27,7,1,3),(28,7,1,6),(29,3,1,10);
/*!40000 ALTER TABLE `grado_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hora`
--

DROP TABLE IF EXISTS `hora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hora` (
  `idhora` int NOT NULL AUTO_INCREMENT,
  `inicio` time NOT NULL,
  `fin` time NOT NULL,
  PRIMARY KEY (`idhora`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hora`
--

LOCK TABLES `hora` WRITE;
/*!40000 ALTER TABLE `hora` DISABLE KEYS */;
INSERT INTO `hora` VALUES (1,'07:00:00','08:00:00'),(2,'08:00:00','09:00:00'),(3,'09:00:00','10:00:00'),(4,'10:00:00','11:00:00'),(5,'11:00:00','12:00:00'),(6,'12:00:00','01:00:00');
/*!40000 ALTER TABLE `hora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario_curso`
--

DROP TABLE IF EXISTS `horario_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario_curso` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `idhorariocurso` int NOT NULL,
  `idhora` int NOT NULL,
  `idcurso` int NOT NULL,
  `dia` int NOT NULL,
  `gradoid` int NOT NULL,
  `FechRegistro` datetime DEFAULT NULL,
  `statushorario` enum('ACTIVO','INACTIVO') NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `gradoid_idx` (`gradoid`),
  KEY `idcurso_idx` (`idcurso`),
  KEY `idhora_idx` (`idhora`),
  CONSTRAINT `gradoid` FOREIGN KEY (`gradoid`) REFERENCES `grado` (`idgrado`),
  CONSTRAINT `idcurso` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `idhora` FOREIGN KEY (`idhora`) REFERENCES `hora` (`idhora`) ON DELETE CASCADE ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_curso`
--

LOCK TABLES `horario_curso` WRITE;
/*!40000 ALTER TABLE `horario_curso` DISABLE KEYS */;
INSERT INTO `horario_curso` VALUES (6,11,1,1,1,7,'2023-06-02 06:06:39','ACTIVO'),(7,32,3,2,2,7,'2023-06-02 06:06:39','ACTIVO'),(8,23,2,6,3,7,'2023-06-02 06:06:39','ACTIVO'),(9,34,3,10,4,7,'2023-06-02 06:06:39','ACTIVO'),(10,41,4,6,1,7,'2023-06-02 06:06:39','ACTIVO');
/*!40000 ALTER TABLE `horario_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `letter_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `letter_notes` (
  `idnotas` int NOT NULL AUTO_INCREMENT,
  `notasGrado` int NOT NULL,
  `curso` int NOT NULL,
  `alumnoid` int NOT NULL,
  `practica1` VARCHAR(5) DEFAULT NULL,
  `practica2` VARCHAR(5) DEFAULT NULL,
  `practica3` VARCHAR(5) DEFAULT NULL,
  `practica4` VARCHAR(5) DEFAULT NULL,

  `trabajo1` VARCHAR(5) DEFAULT NULL,
  `trabajo2` VARCHAR(5) DEFAULT NULL,
  `trabajo3` VARCHAR(5) DEFAULT NULL,
  `trabajo4` VARCHAR(5) DEFAULT NULL,

  `parcial1` VARCHAR(5) DEFAULT NULL,
  `parcial2` VARCHAR(5) DEFAULT NULL,
  `parcial3` VARCHAR(5) DEFAULT NULL,
  `parcial4` VARCHAR(5) DEFAULT NULL,

  `exsamen1` VARCHAR(5) DEFAULT NULL,
  `exsamen2` VARCHAR(5) DEFAULT NULL,
  PRIMARY KEY (`idnotas`),
  KEY `alum_id_idx` (`alumnoid`),
  KEY `cur_id_idx` (`curso`),
  KEY `grd_cursi_idx` (`notasGrado`),
  CONSTRAINT `fk_letternotes_alumno` FOREIGN KEY (`alumnoid`) REFERENCES `alumno` (`idalumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_letternotes_grado` FOREIGN KEY (`curso`) REFERENCES `curso` (`idcurso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_letternotes_g_c` FOREIGN KEY (`notasGrado`) REFERENCES `grado` (`idgrado`)
);




DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `idnotas` int NOT NULL AUTO_INCREMENT,
  `notasGrado` int NOT NULL,
  `curso` int NOT NULL,
  `alumnoid` int NOT NULL,
  `practica1` double DEFAULT NULL,
  `practica2` double DEFAULT NULL,
  `practica3` double DEFAULT NULL,
  `practica4` double DEFAULT NULL,
  `trabajo1` double DEFAULT NULL,
  `trabajo2` double DEFAULT NULL,
  `trabajo3` double DEFAULT NULL,
  `trabajo4` double DEFAULT NULL,
  `parcial1` double DEFAULT NULL,
  `parcial2` double DEFAULT NULL,
  `parcial3` double DEFAULT NULL,
  `parcial4` double DEFAULT NULL,
  `exsamen1` double DEFAULT NULL,
  `exsamen2` double DEFAULT NULL,
  PRIMARY KEY (`idnotas`),
  KEY `alum_id_idx` (`alumnoid`),
  KEY `cur_id_idx` (`curso`),
  KEY `grd_cursi_idx` (`notasGrado`),
  CONSTRAINT `alum_id` FOREIGN KEY (`alumnoid`) REFERENCES `alumno` (`idalumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cur_id` FOREIGN KEY (`curso`) REFERENCES `curso` (`idcurso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `g_c` FOREIGN KEY (`notasGrado`) REFERENCES `grado` (`idgrado`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (2,3,8,22,20,15,0,0,18,15,0,0,18,13,0,0,18,18),(3,7,1,23,12,14,0,0,18,15,0,0,17,16,0,0,14,12);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registropago`
--

DROP TABLE IF EXISTS `registropago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registropago` (
  `registropagid` int unsigned NOT NULL AUTO_INCREMENT,
  `alumnonombre` varchar(45) DEFAULT NULL,
  `montopago` double DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `fechasPagados` datetime DEFAULT NULL,
  `fechaUpdate` datetime DEFAULT NULL,
  `stado` enum('PAGADO','DEUDA') NOT NULL,
  `alumno_id` int DEFAULT NULL,
  PRIMARY KEY (`registropagid`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registropago`
--

LOCK TABLES `registropago` WRITE;
/*!40000 ALTER TABLE `registropago` DISABLE KEYS */;
INSERT INTO `registropago` VALUES (1,'Marcos Miraval',120,'PENCION','2023-02-03 00:00:00','2023-04-30 23:43:40','PAGADO',NULL),(2,'Marcos Miraval',120,'PENCION','2023-03-04 00:00:00','2023-04-30 23:53:49','PAGADO',NULL),(3,'Marcos Miraval',120,'PENCION','2023-04-04 00:00:00','2023-05-01 00:08:16','PAGADO',2),(4,'Julieta',20,'MATRICULA','2023-05-05 23:12:07','2023-05-05 23:12:07','PAGADO',NULL),(5,'HUAMNI MARCA',20,'MATRICULA','2023-05-06 16:41:47','2023-05-06 16:41:47','PAGADO',NULL),(6,'CHAVES MENDOZA',120,'PENCION','2023-03-03 00:00:00','2023-05-06 17:04:15','PAGADO',1),(7,'CHAVES MENDOZA',120,'PENCION','2023-04-03 00:00:00','2023-05-06 17:04:15','PAGADO',1),(8,'CHAVES MENDOZA',120,'PENCION','2023-05-03 00:00:00','2023-05-06 17:04:15','PAGADO',1),(9,'Alumno Prueba',10,'MATRICULA','2023-06-01 17:52:47','2023-06-01 17:52:47','PAGADO',NULL),(10,'Marcos Miraval',120,'PENCION','2023-05-04 00:00:00','2023-06-01 18:04:10','PAGADO',2),(11,'Marcos Miraval',120,'PENCION','2023-06-04 00:00:00','2023-06-01 18:04:10','PAGADO',2),(12,'ALUMNO5 ALUMNO-05',45,'MATRICULA','2023-06-02 06:01:20','2023-06-02 06:01:20','PAGADO',NULL),(13,'RIVERA SANTA',120,'PENCION','2023-02-02 00:00:00','2023-06-02 06:05:24','PAGADO',3),(14,'RIVERA SANTA',120,'PENCION','2023-03-02 00:00:00','2023-06-02 06:05:24','PAGADO',3),(15,'RIVERA SANTA',120,'PENCION','2023-04-02 00:00:00','2023-06-02 06:05:24','PAGADO',3),(16,'RIVERA SANTA',120,'PENCION','2023-05-02 00:00:00','2023-06-02 06:05:24','PAGADO',3),(17,'RIVERA SANTA',120,'PENCION','2023-06-02 00:00:00','2023-06-02 06:05:24','PAGADO',3);
/*!40000 ALTER TABLE `registropago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `rol_id` int NOT NULL AUTO_INCREMENT,
  `rol_nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`rol_id`)
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'ADMINISTRAOR'),(2,'TRABAJADOR'),(3,'SECRETARIO');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semestres`
--

DROP TABLE IF EXISTS `semestres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semestres` (
  `idsemestres` int NOT NULL AUTO_INCREMENT,
  `semestresnombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsemestres`)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semestres`
--

LOCK TABLES `semestres` WRITE;
/*!40000 ALTER TABLE `semestres` DISABLE KEYS */;
INSERT INTO `semestres` VALUES (1,'2023');
/*!40000 ALTER TABLE `semestres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `usu_id` int NOT NULL AUTO_INCREMENT,
  `usu_nombre` varchar(30) DEFAULT NULL,
  `usu_contrasena` char(255) DEFAULT NULL,
  `usu_sexo` char(1) DEFAULT NULL,
  `rol_id` int DEFAULT NULL,
  `usu_apellido` varchar(30) DEFAULT NULL,
  `usu_estatus` enum('ACTIVO','INACTIVO') NOT NULL,
  `usu_foto` text,
  PRIMARY KEY (`usu_id`),
  KEY `usuarios_ibfk_1` (`rol_id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`rol_id`) ON DELETE RESTRICT ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (4,'DANIEL','$2y$10$s/A/vI1PZJgffp/2jGCACux6uNB.G1Xh7AbLAJMj/n1WHgPkXUctq','M',1,'CHAVEZ CORRY','ACTIVO','imagenes/IMG147202191956.png'),(7,'Maria','$argon2i$v=19$m=65536,t=4,p=1$T2NiTFNWSGJSeldJdlE3cw$uBZsyPs7kXfolhht1TXwvVxhPVEpvttbZgCr7zCLzwc','M',1,'paz mendoza','ACTIVO','imagenes/images.png'),(8,'usuario01','$argon2i$v=19$m=65536,t=4,p=1$RWlzM0JzVHM4RWpnWm5kYw$GEdJFTbA7yWucempmKQa1vhpya8QHNqIVCEOn7p3YyM','M',1,'nuevo usuario','ACTIVO','imagenes/images.png');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-02 10:00:54
