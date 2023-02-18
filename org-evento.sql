-- MariaDB dump 10.19  Distrib 10.9.5-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: OrgEvento
-- ------------------------------------------------------
-- Server version	10.9.5-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `EquipeOrg`
--

DROP TABLE IF EXISTS `EquipeOrg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EquipeOrg` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `id_evento` bigint(20) NOT NULL,
  PRIMARY KEY (`cpf`),
  KEY `fk_id_evento` (`id_evento`),
  CONSTRAINT `fk_id_evento` FOREIGN KEY (`id_evento`) REFERENCES `Eventos` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EquipeOrg`
--

LOCK TABLES `EquipeOrg` WRITE;
/*!40000 ALTER TABLE `EquipeOrg` DISABLE KEYS */;
/*!40000 ALTER TABLE `EquipeOrg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Espectadores`
--

DROP TABLE IF EXISTS `Espectadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Espectadores` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `instituicao` varchar(50) NOT NULL,
  `id_evento` bigint(20) NOT NULL,
  PRIMARY KEY (`cpf`),
  KEY `fk_id_evento_espectadores` (`id_evento`),
  CONSTRAINT `fk_id_evento_espectadores` FOREIGN KEY (`id_evento`) REFERENCES `Eventos` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Espectadores`
--

LOCK TABLES `Espectadores` WRITE;
/*!40000 ALTER TABLE `Espectadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `Espectadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Eventos`
--

DROP TABLE IF EXISTS `Eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Eventos` (
  `id_evento` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `nParticipantes` bigint(20) NOT NULL,
  `dataMarcada` datetime NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Eventos`
--

LOCK TABLES `Eventos` WRITE;
/*!40000 ALTER TABLE `Eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Instituicoes`
--

DROP TABLE IF EXISTS `Instituicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Instituicoes` (
  `cnpj` varchar(14) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(80) NOT NULL,
  `id_evento` bigint(20) NOT NULL,
  PRIMARY KEY (`cnpj`),
  KEY `fk_id_evento_instituicoes` (`id_evento`),
  CONSTRAINT `fk_id_evento_instituicoes` FOREIGN KEY (`id_evento`) REFERENCES `Eventos` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instituicoes`
--

LOCK TABLES `Instituicoes` WRITE;
/*!40000 ALTER TABLE `Instituicoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Instituicoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Palestrantes`
--

DROP TABLE IF EXISTS `Palestrantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Palestrantes` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `formacao` varchar(20) NOT NULL,
  `id_evento` bigint(20) NOT NULL,
  PRIMARY KEY (`cpf`),
  KEY `fk_id_evento_palestrantes` (`id_evento`),
  CONSTRAINT `fk_id_evento_palestrantes` FOREIGN KEY (`id_evento`) REFERENCES `Eventos` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Palestrantes`
--

LOCK TABLES `Palestrantes` WRITE;
/*!40000 ALTER TABLE `Palestrantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Palestrantes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-17 23:19:33
