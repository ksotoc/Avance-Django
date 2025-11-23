-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: prestamos
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `id_estudiante` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) NOT NULL,
  `imagen` text DEFAULT NULL,
  `genero` enum('F','M') NOT NULL,
  `email` varchar(160) NOT NULL,
  PRIMARY KEY (`id_estudiante`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Carlos López',NULL,'M','carlos.lopez@example.com'),(2,'María Fernández',NULL,'F','maria.fernandez@example.com'),(3,'Jorge Quispe',NULL,'M','jorge.quispe@example.com'),(4,'Ana Morales',NULL,'F','ana.morales@example.com'),(5,'Luis Gutiérrez',NULL,'M','luis.gutierrez@example.com'),(6,'Patricia Vargas',NULL,'F','patricia.vargas@example.com'),(7,'Rodrigo Mamani',NULL,'M','rodrigo.mamani@example.com'),(8,'Sofía Castro',NULL,'F','sofia.castro@example.com'),(9,'Fernando Choque',NULL,'M','fernando.choque@example.com'),(10,'Lucía Rojas',NULL,'F','lucia.rojas@example.com'),(11,'Miguel Huanca',NULL,'M','miguel.huanca@example.com'),(12,'Daniela Calle',NULL,'F','daniela.calle@example.com'),(13,'Andrés Pinto',NULL,'M','andres.pinto@example.com'),(14,'Gabriela Flores',NULL,'F','gabriela.flores@example.com'),(15,'Ricardo Salinas',NULL,'M','ricardo.salinas@example.com'),(16,'Verónica Limachi',NULL,'F','veronica.limachi@example.com'),(17,'Eduardo Condori',NULL,'M','eduardo.condori@example.com'),(18,'Natalia Vargas',NULL,'F','natalia.vargas@example.com'),(19,'Hugo Pérez',NULL,'M','hugo.perez@example.com'),(20,'Claudia Camacho',NULL,'F','claudia.camacho@example.com');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `id_libro` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(160) NOT NULL,
  `asignatura` varchar(40) DEFAULT NULL,
  `portada` text DEFAULT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'Introducción a la Programación','Programación I',NULL),(2,'Matemática Discreta','Matemática',NULL),(3,'Bases de Datos Relacionales','Base de Datos',NULL),(4,'Estructuras de Datos en C','Algoritmos',NULL),(5,'Ingeniería de Software','Desarrollo de Software',NULL),(6,'Sistemas Operativos','Informática',NULL),(7,'Cálculo Integral','Matemática',NULL),(8,'Redes de Computadoras','Telecomunicaciones',NULL),(9,'Arquitectura de Computadoras','Hardware',NULL),(10,'Desarrollo Web con Flask','Programación Web',NULL);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `id_prestamo` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_salida` date NOT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `id_estudiante` bigint(20) NOT NULL,
  `id_libro` bigint(20) NOT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `fk_p_e` (`id_estudiante`),
  KEY `fk_p_l` (`id_libro`),
  CONSTRAINT `fk_p_e` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_p_l` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`id_libro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'prestamos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-12 13:37:30
