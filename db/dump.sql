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
-- Table structure for table `Alunos`
--

DROP TABLE IF EXISTS `Alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Alunos` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `instituicao` varchar(50) NOT NULL,
  `fk_id_evento` bigint(20) NOT NULL,
  `senha` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  KEY `fk_id_evento_espectadores` (`fk_id_evento`),
  CONSTRAINT `fk_id_evento_espectadores` FOREIGN KEY (`fk_id_evento`) REFERENCES `Eventos` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alunos`
--

LOCK TABLES `Alunos` WRITE;
/*!40000 ALTER TABLE `Alunos` DISABLE KEYS */;
INSERT INTO `Alunos` VALUES
('04863589640','Luciana Silva da Costa','987456123','UNIVERSIDADE DO SUL E SUDESTE DO PARÁ (UNIFESSPA)',1,'12345'),
('07135694082','Breno Isaac Castro','955609876','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('11122233344','Fernando da Silva Santos','987654321','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('16463425481','Ana Luiza Alves Pereira','987654329','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('19597995790','Guilherme dos Santos Costa','987654326','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('22233344455','Ana Carolina Souza Pereira','987654322','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('26070748614','Marina Evelyn Souza','988121765','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('29172693012','Leonardo Almeida Ferreira','987654323','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('30297718005','Aline Sousa Lima','987654324','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('33344455566','Pedro Augusto Barbosa','987654323','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('42281063534','Arthur Almeida Castro','997694178','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('44455566677','Julia Oliveira Santos','987654324','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('46520123369','Vitoria Ferreira Alves','987654325','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('47822827035','Felipe Carvalho Ribeiro','994130347','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('55566677788','Lucas Ferreira Souza','987654325','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('56376140570','Amanda Barbosa Silva','997342876','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('58092775053','Lucas Emanuel Ribeiro','982113455','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('58848015591','Mariana Azevedo Sousa','999064482','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('64090847897','Fábio Moreira Santos','998123449','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('66144713021','Gustavo Rodrigues Ferreira','991377118','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('66422821467','Leticia Rodrigues Lima','987654327','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('66677788899','Maria da Silva Costa','987654326','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('70824766631','Pedro Henrique Oliveira','987654328','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('71183706593','Gustavo Henrique Silva','987654321','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('71377855904','Aline Gomes Rodrigues','999751937','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('77788899900','Gustavo Almeida Santos','987654327','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('81394772285','Rafaela Pereira Cardoso','997755009','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('82476770473','Luisa Oliveira Costa','993176865','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('82536158472','Fernanda Oliveira Santos','987654322','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('83217244024','Lara Castro Alves','992370017','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('88899900011','Larissa Goncalves Costa','987654328','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('91321696618','Pedro Henrique Silva','991266902','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('94166953619','Thiago Almeida Martins','987654330','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345'),
('95486202742','Amanda Gabriela Costa','973544890','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('99900011122','Rafaela Ferreira Costa','987654329','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)',2,'12345'),
('99955888597','Beatriz Santos Gomes','992659997','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)',1,'12345');
/*!40000 ALTER TABLE `Alunos` ENABLE KEYS */;
UNLOCK TABLES;

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
  `fk_id_evento` bigint(20) NOT NULL,
  PRIMARY KEY (`cpf`),
  KEY `fk_id_evento` (`fk_id_evento`),
  CONSTRAINT `fk_id_evento` FOREIGN KEY (`fk_id_evento`) REFERENCES `Eventos` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EquipeOrg`
--

LOCK TABLES `EquipeOrg` WRITE;
/*!40000 ALTER TABLE `EquipeOrg` DISABLE KEYS */;
INSERT INTO `EquipeOrg` VALUES
('10909595089','Luan Rocha Pereira','957512853','Cinegrafista',1),
('15600625847','Julian Cunha Cavalcanti','892392596','Técnico de Som',1),
('52622588321','Diogo Alves Dias','568314752','Diretor(a)',2),
('83065222140','Ana Ribeiro Dias','892392596','Técnico de Som',2),
('88909335009','Amanda Carvalho Oliveira','630307465','Diretor(a)',1),
('99108537100','Isabelle Ferreira Cunha','863124789','Cinegrafista',2);
/*!40000 ALTER TABLE `EquipeOrg` ENABLE KEYS */;
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
  `tipo` varchar(15) DEFAULT NULL,
  `tema` varchar(50) DEFAULT NULL,
  `local` varchar(80) DEFAULT NULL,
  `fk_cpf_palestrante` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_evento`),
  KEY `fk_cpf_palestrante_eventos` (`fk_cpf_palestrante`),
  CONSTRAINT `fk_cpf_palestrante_eventos` FOREIGN KEY (`fk_cpf_palestrante`) REFERENCES `Palestrantes` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Eventos`
--

LOCK TABLES `Eventos` WRITE;
/*!40000 ALTER TABLE `Eventos` DISABLE KEYS */;
INSERT INTO `Eventos` VALUES
(1,'Evento Científico Unificado - Jornada de Física',20,'2023-05-15 19:00:00','Discussẽos sobre Mecânica Quântica e a Teoria da Relatividade Restrita de Einstein.','Online','Física Geral','Webinar','26665835979'),
(2,'II Congresso de Ensino, Pesquisa e Extensão',15,'2023-02-26 14:30:00','Estimulando o pensamento científico discutindo temas de pesquisas atuais e inovadoras.','Presencial','Pedagogia','Centro de Convenções Carajás - Marabá/PA','73125557488');
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
  `senha` varchar(50) DEFAULT NULL,
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
INSERT INTO `Instituicoes` VALUES
('17217985000104','UNIVERSIDADE FEDERAL DE MINAS GERAIS (UFMG)','Av. Pres. Antônio Carlos, 6627 - Pampulha, Belo Horizonte - MG, 31270-901',1,'12345'),
('33663683000116','UNIVERSIDADE FEDERAL DO RIO DE JANEIRO (UFRJ)','Av. Pedro Calmon, 550 - Rio de Janeiro - RJ, 21941-901',2,'12345');
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
  `fk_id_evento` bigint(20) NOT NULL,
  PRIMARY KEY (`cpf`),
  KEY `fk_id_evento_palestrantes` (`fk_id_evento`),
  CONSTRAINT `fk_id_evento_palestrantes` FOREIGN KEY (`fk_id_evento`) REFERENCES `Eventos` (`id_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Palestrantes`
--

LOCK TABLES `Palestrantes` WRITE;
/*!40000 ALTER TABLE `Palestrantes` DISABLE KEYS */;
INSERT INTO `Palestrantes` VALUES
('26665835979','Prof. Dr. Célio Rodrigues Muniz','609904053','Doutorado em Física',1),
('73125557488','Prof. Dra. Dayanne Dailla da Silva Cajueiro','946894815','Mestrado em Ciências',2);
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

-- Dump completed on 2023-02-21 21:17:11
