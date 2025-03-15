-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: sales
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Employee_Id` varchar(10) NOT NULL,
  `Surname` varchar(15) NOT NULL,
  `Firstname` varchar(15) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `U_Password` varchar(150) NOT NULL,
  PRIMARY KEY (`Employee_Id`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('E00001','An','Dawn','admin123','202cb962ac59075b964b07152d234b70'),('E00002','Niu','Zhi','admin002','202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production` (
  `Pno` varchar(20) NOT NULL,
  `PName` varchar(20) NOT NULL,
  `Description` varchar(150) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Price` double NOT NULL,
  `Height` int NOT NULL,
  `Quantity` float NOT NULL,
  `Filename` varchar(25) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `P_Img_Path` varchar(150) NOT NULL,
  `Error` int NOT NULL,
  `Size` varchar(45) NOT NULL,
  PRIMARY KEY (`Pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES ('p0001','Farfetch','Modern sculpture','Plastic',99.99,80,20,'s1.jpg','image/jpeg','../img/s1.jpg',0,'215624'),('p0002','Modern Lilliputians','Modern sculpture','plastic',50,20,40,'s2.jpg','image/jpeg','../img/s2.jpg',0,'175117'),('p0003','Gypsum Marseille','Gypsum sculpture','Gypsum',169.99,70,10,'s3.jpg','image/jpeg','../img/s3.jpg',0,'130163'),('p0004','Gypsum Qin Female','Gypsum sculpture','Gypsum ',169.99,80,10,'s4.jpg','image/jpeg','../img/s4.jpg',0,'85887'),('p0005','Head of war Horse','Modern sculpture','Metal',199.99,30,40,'s5.jpg','image/jpeg','../img/s5.jpg',0,'329869'),('p0006','Lilliputian','Gypsum sculpture','Gypsum',29.99,10,200,'s6.jpg','image/jpeg','../img/s6.jpg',0,'99254'),('p0007','Headless Angle','Gypsum sculpture','Gypsum',299.99,140,15,'s7.jpg','image/jpeg','../img/s7.jpg',0,'166212'),('p0008','Bust of Marseille','Gypsum sculpture','Gypsum',199.99,70,10,'s8.jpg','image/jpeg','../img/s8.jpg',0,'175331'),('p0009','State of Liberty','Modern sculpture','Metal',399.99,70,10,'s9.jpg','image/jpeg','../img/s9.jpg',0,'236984'),('p0010','Be Crowd King','Modern sculpture','Metal',99.99,50,10,'s10.jpg','image/jpeg','../img/s10.jpg',0,'80784'),('p0011','Lion Statue','Gypsum sculpture','Gypsum',59.99,50,20,'s11.jpg','image/jpeg','../img/s11.jpg',0,'211871'),('p0012','Pray Statue','Gypsum sculpture','Gypsum',29.99,20,10,'s12.jpg','image/jpeg','../img/s12.jpg',0,'170060'),('p0013','Wooden Buddha','Wooden sculpture','Wooden',49.99,20,10,'s13.jpg','image/jpeg','../img/s13.jpg',0,'114505'),('p0014','Silence','Gypsum sculpture','Gypsum',99.99,50,20,'s14.jpg','image/jpeg','../img/s14.jpg',0,'274353'),('p0015','Gloomy Bear','Modern sculpture','plastic',299.99,150,10,'s15.jpg','image/jpeg','../img/s15.jpg',0,'115221');
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Username` varchar(20) NOT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `Firstname` varchar(20) DEFAULT NULL,
  `Surname` varchar(20) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `Town` varchar(50) DEFAULT NULL,
  `Postcode_Country` varchar(10) DEFAULT NULL,
  `Telephone` varchar(15) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('123','','','','','','','','','123333'),('123123','','','','','','','','','4297f44b13955235245b2497399d7a93'),('123333','','fwer','gw','213124','','123132','3213132123123','231@qq.com','123333'),('admin','','','','','','','','','123333'),('Anmoli','','z','sr','123','','000','123','123','4d5501228418137c1e5872af3a72a06b'),('asd','','','','','','','','','123333'),('feeq123','','123','123','123','','123','123','123','202cb962ac59075b964b07152d234b70');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-15 18:39:27
