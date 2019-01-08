-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: ejemplo2
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `entradasalidadinero`
--

DROP TABLE IF EXISTS `entradasalidadinero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entradasalidadinero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechaES` date DEFAULT NULL,
  `idTipoIngEg` int(11) DEFAULT NULL,
  `montoIE` varchar(30) DEFAULT NULL,
  `idPersonasQueRegistro` int(11) DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  `temporal` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKIngresoEgreso` (`idTipoIngEg`),
  KEY `FKPersonasQueRegistro` (`idPersonasQueRegistro`),
  CONSTRAINT `FKIngresoEgreso` FOREIGN KEY (`idTipoIngEg`) REFERENCES `ingresosegresos` (`id`),
  CONSTRAINT `FKPersonasQueRegistro` FOREIGN KEY (`idPersonasQueRegistro`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entradasalidadinero`
--

LOCK TABLES `entradasalidadinero` WRITE;
/*!40000 ALTER TABLE `entradasalidadinero` DISABLE KEYS */;
INSERT INTO `entradasalidadinero` VALUES (1,'2018-01-01',7,'10000',1,'',NULL),(2,'2018-01-02',1,'500',2,'',NULL),(3,'2018-01-02',2,'2000',2,'',NULL),(4,'2018-01-03',5,'4000',4,'kit de camaras',NULL),(5,'2018-01-03',34,'600',4,'ida al parque',NULL),(6,'2018-01-04',5,'3000',2,'paquete de tintas',NULL),(7,'2018-01-06',19,'800',2,'tintas',NULL),(8,'2018-01-07',20,'9000',2,'factura 4000',NULL),(9,'2018-01-07',2,'2000',3,'',NULL),(10,'2018-01-08',21,'7900',3,'factura 34fc',NULL),(11,'2018-01-08',5,'4000',3,'impresoras',NULL),(12,'2018-01-09',18,'1800',3,'mantenimiento gral',NULL),(13,'2018-01-09',36,'8000',5,'ventas diciembre',NULL),(14,'2018-01-10',4,'150',4,'',NULL),(15,'2018-01-11',6,'1500',5,'renta mensual',NULL),(16,'2018-01-11',2,'2000',3,'',NULL),(17,'2018-01-12',5,'8000',5,'reloj checador',NULL),(18,'2018-01-15',7,'10000',2,'',NULL),(19,'2018-01-16',1,'700',1,'',NULL),(20,'2018-01-17',18,'4000',1,'cambio de llantas',NULL),(21,'2018-01-18',12,'250',1,'',NULL),(22,'2018-01-19',34,'500',1,'vuelta al cine',NULL),(23,'2018-01-21',2,'2000',3,'',NULL),(24,'2018-01-22',15,'800',1,'',NULL),(25,'2018-01-24',16,'600',1,'',NULL),(26,'2018-01-25',5,'9000',2,'nobreak',NULL),(27,'2018-01-26',22,'500',2,'',NULL),(28,'2018-01-26',23,'200',3,'',NULL),(29,'2018-01-27',24,'180',4,'',NULL),(30,'2018-01-28',2,'2000',3,'',NULL),(31,'2018-01-29',14,'500',4,'',NULL),(32,'2018-01-30',5,'2300',5,'laptop',NULL),(33,'2018-01-31',7,'10000',4,'',NULL),(34,'2018-02-01',10,'900',5,'',NULL),(35,'2018-02-01',5,'3400',5,'discos duros',NULL),(36,'2018-01-03',28,'900',2,'',NULL),(37,'2018-02-04',18,'100',1,'autolavado',NULL),(38,'2018-02-04',2,'2000',5,'',NULL),(39,'2018-02-06',35,'8000',1,'rentas semestrales',NULL),(40,'2018-01-07',27,'450',2,'',NULL),(41,'2018-02-08',5,'5000',2,'monitores',NULL),(42,'2018-02-08',27,'300',4,'',NULL),(43,'2018-02-10',36,'9500',3,'ventas enero',NULL),(44,'2018-02-11',34,'2000',1,'paseo a guadalajara',NULL),(45,'2018-02-13',1,'600',1,'',NULL),(46,'2018-02-14',2,'2000',1,'',NULL),(47,'2018-02-15',7,'10000',2,'',NULL),(48,'2018-02-16',4,'160',4,'',NULL);
/*!40000 ALTER TABLE `entradasalidadinero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatuspendiente`
--

DROP TABLE IF EXISTS `estatuspendiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estatuspendiente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estatus` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatuspendiente`
--

LOCK TABLES `estatuspendiente` WRITE;
/*!40000 ALTER TABLE `estatuspendiente` DISABLE KEYS */;
INSERT INTO `estatuspendiente` VALUES (1,'Nuevo'),(2,'Leido'),(3,'Finalizado'),(4,'Deshabilitado');
/*!40000 ALTER TABLE `estatuspendiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupoingeg`
--

DROP TABLE IF EXISTS `grupoingeg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grupoingeg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `observaciones` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupoingeg`
--

LOCK TABLES `grupoingeg` WRITE;
/*!40000 ALTER TABLE `grupoingeg` DISABLE KEYS */;
INSERT INTO `grupoingeg` VALUES (1,'GASTOS PERSONALES','AQUI VAN MIS GASTOS PERSONALES'),(2,'GASTOS DEL HOGAR','AQUI VAN LOS GASTOS DE LA CASA'),(3,'GASTOS DEL NEGOCIO FIJOS','AQUI VAN LOS PAGOS FIJOS DEL NEGOCIO'),(4,'PAGOS PROVEEDORES','AQUI VAN LOS GASTOS DE COMPRAS'),(5,'INGRESOS POR SUELDO QUINCENAL','AQUI VAN LOS PAGOS QUE RECIBO DEL TRABAJO'),(6,'INGRESO POR VENTAS EN LINEA','AQUI VAN MIS VENTAS DE PRODUCTOS EN LINEA'),(7,'INGRESO POR CURSOS UDEMY','LOS PAGOS QUE RECIBO POR CURSOS'),(8,'INGRESOS POR RENTA DE CASA','LOS INGRESOS DE LA CASA QUE RENTO'),(9,'GASTOS POR VEHICULO','TODOS LOS GASTOS DE MANTENIMIENTO VEHICULOS'),(10,'PAGOS DE NOMINA NEGOCIO','AQUI VAN LOS PAGOS DE NOMINA'),(11,'OTROS GASTOS NEGOCIO','AQUÍ VAN LOS GASTOS QUE NO SON FIJOS');
/*!40000 ALTER TABLE `grupoingeg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresosegresos`
--

DROP TABLE IF EXISTS `ingresosegresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ingresosegresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  `idTipoIngEg` int(11) DEFAULT NULL,
  `idGrupoIngEg` int(11) DEFAULT NULL,
  `observaciones` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKTipoIngEg` (`idTipoIngEg`),
  KEY `FKGrupoIngEg` (`idGrupoIngEg`),
  CONSTRAINT `FKGrupoIngEg` FOREIGN KEY (`idGrupoIngEg`) REFERENCES `grupoingeg` (`id`),
  CONSTRAINT `FKTipoIngEg` FOREIGN KEY (`idTipoIngEg`) REFERENCES `tipoingeg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresosegresos`
--

LOCK TABLES `ingresosegresos` WRITE;
/*!40000 ALTER TABLE `ingresosegresos` DISABLE KEYS */;
INSERT INTO `ingresosegresos` VALUES (1,'GASTOS DE ROPA PERSONAL',2,1,''),(2,'PAGO DE NOMINA JOSE LUIS',2,10,''),(3,'PAGO DE LUZ ( NEGOCIO )',2,3,''),(4,'PAGO DE LUZ (CASA )',2,2,''),(5,'VENTA DE EQUIPO ELECTRONICO',1,6,''),(6,'PAGO DE CASA LAS LOMAS',1,8,''),(7,'PAGO QUINCENAL OFICINA',1,5,''),(8,'PAGO DE NOMINA JESUS',2,10,''),(9,'PAGO DE NOMINA MANUEL GODOY',2,10,''),(10,'PAGO DE NOMINA GILBERTO',2,10,''),(11,'PAGODE NOMINA JUAN',2,10,''),(12,'PAGO DE AGUA ( NEGOCIO )',2,3,''),(13,'PAGO DE RENTA LOCAL',2,3,''),(14,'PAGO MENSUAL CONTADOR',2,3,''),(15,'PAGO MENSUAL TELEFONO',2,3,''),(16,'PAGO MENSUAL TELEFONO MOVIL',2,3,''),(17,'MANTENIMIENTO SEMESTRAL',2,9,''),(18,'GASTO DE REFACCIONES VEHICULO',2,9,''),(19,'PAGO A PROVEEDOR 1',2,4,''),(20,'PAGO A PROVEEDOR 2',2,4,''),(21,'PAGO A PROVEEDOR 3',2,4,''),(22,'ARTICULOS DE LIMPIEZA NEGOCIO',2,11,''),(23,'ARTICULOS DE LIMPIEZA CASA',2,2,''),(24,'PAGO GIMNASIO',2,1,''),(25,'PAGO DE TELEFONO',2,2,''),(26,'PAGO DE GAS',2,2,''),(27,'PAGO DE ROPA NINOS',2,2,''),(28,'PAGO DE COLEGIATURAS',2,2,''),(29,'PAGO DE INTERNET CASA',2,2,''),(30,'PAGO DE HIPOTECA',2,2,''),(31,'PAGO DE VEHICULO PERSONAL',2,2,''),(32,'PAGO PAnALES',2,2,''),(33,'GASTO DE COMIDA SEMANAL',2,2,''),(34,'DIVERSION',2,2,''),(35,'SISTEMAS INFORMATICOS RENTA',1,6,''),(36,'PAGO VENTA DE CURSOS ONLINE',1,7,'');
/*!40000 ALTER TABLE `ingresosegresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pendientes`
--

DROP TABLE IF EXISTS `pendientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pendientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fechaCreacion` datetime NOT NULL,
  `fechaEntrega` datetime NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `idEstatusPendiente` int(11) DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  `idPersonaQueAsigno` int(11) DEFAULT NULL,
  `idPersonaAsignado` int(11) DEFAULT NULL,
  `solucionpendiente` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKEstatusPendiente` (`idEstatusPendiente`),
  KEY `FKPersonaQueAsigno` (`idPersonaQueAsigno`),
  KEY `FKPersonaAsignado` (`idPersonaAsignado`),
  CONSTRAINT `FKEstatusPendiente` FOREIGN KEY (`idEstatusPendiente`) REFERENCES `estatuspendiente` (`id`),
  CONSTRAINT `FKPersonaAsignado` FOREIGN KEY (`idPersonaAsignado`) REFERENCES `personas` (`id`),
  CONSTRAINT `FKPersonaQueAsigno` FOREIGN KEY (`idPersonaQueAsigno`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pendientes`
--

LOCK TABLES `pendientes` WRITE;
/*!40000 ALTER TABLE `pendientes` DISABLE KEYS */;
INSERT INTO `pendientes` VALUES (1,'2018-09-02 20:00:00','2018-09-02 20:00:00','enviar factura a cliente Francisco',1,'enviar tambien cotización 1003',1,2,''),(2,'2018-09-02 20:00:00','2018-09-02 20:00:00','instalar impresora en laptop hp',2,'',1,3,''),(3,'2018-09-02 20:00:00','2018-09-02 20:00:00','ir a depositar al banco',3,'',4,2,'deje la ficha de deposito en la caja'),(4,'2018-09-02 20:00:00','2018-09-02 20:00:00','pagar el teléfono',1,'deje el dinero en la caja',4,5,'el recibo de pago esta en caja');
/*!40000 ALTER TABLE `pendientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `personas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'JUAN','juan@hotmail.com','4921301447'),(2,'MANUEL','manuel@hotmail.com','4923567884'),(3,'JESUS','jesus@hotmail.com','4921345678'),(4,'JOSE LUIS','jose luis@hotmail.com','4748456789'),(5,'GILBERTO','gilberto@hotmail.com','4935405678'),(6,'ARACELI','chelis@live.com.mx','4935495778'),(7,'BERNARDO','berna@gmail.com','4445666732'),(8,'ANDRES','ameza@yahoo.com','4445564732'),(9,'LUZ','luci@zac.gob.mx','4445564736'),(10,'MA. REFUGIO','maref@hotmail.com','4935405578'),(11,'JUANITA','juanis@gmail.com','4748455789');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoingeg`
--

DROP TABLE IF EXISTS `tipoingeg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipoingeg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoingeg`
--

LOCK TABLES `tipoingeg` WRITE;
/*!40000 ALTER TABLE `tipoingeg` DISABLE KEYS */;
INSERT INTO `tipoingeg` VALUES (1,'INGRESO'),(2,'EGRESO');
/*!40000 ALTER TABLE `tipoingeg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `idPersona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkUsuarioPersona` (`idPersona`),
  CONSTRAINT `fkUsuarioPersona` FOREIGN KEY (`idPersona`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'JUAN','admin321',1),(2,'MANUEL','madmin',2),(3,'JESUS','jesus321',3),(4,'JOSE LUIS','jl422334',4),(5,'GILBERTO','gil4567',5);
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

-- Dump completed on 2018-12-26  9:31:29
