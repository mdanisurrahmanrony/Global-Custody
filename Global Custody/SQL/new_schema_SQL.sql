CREATE DATABASE  IF NOT EXISTS `new_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `new_schema`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: new_schema
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asset` (
  `Asset_id` int(11) NOT NULL,
  `Asset_type` varchar(45) NOT NULL,
  `Asset_code` varchar(45) NOT NULL,
  `Asset_price` varchar(45) NOT NULL,
  PRIMARY KEY (`Asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
INSERT INTO `asset` VALUES (1,'Hand Cash','ATC1','40000'),(2,'Land','ATC2','55000'),(3,'Gold','ATC3','95000'),(4,'Motor Vehicles','ATC4','44000'),(5,'Gold','ATC5','87000'),(6,'Hand Cash','ATC6','64000'),(7,'Motor Vehicles','ATC7','87000'),(8,'Hand Cash','ATC8','59000'),(9,'Land','ATC9','63000'),(10,'Gold','ATC10','85000');
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `Bankid` int(11) NOT NULL,
  `Bankname` varchar(45) NOT NULL,
  `Banktype` varchar(45) NOT NULL,
  `Bankservice` varchar(45) NOT NULL,
  `Bankreserve` varchar(45) NOT NULL,
  PRIMARY KEY (`Bankid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (1,'Shonali Bank','Central Bank','Merchant Service','40,000,000,000'),(2,'Rupali Bank','Commercial Bank','Savings Account','20,000,000,000'),(3,'Islami Bank','Online Bank','Online Bill Pay','70,000,000,000'),(4,'Bangladesh Bank','Commercial Bank','Business Loan','30,000,000,000'),(5,'Trust Bank','Online Bank','Online Bill Pay','40,000,000,000'),(6,'Janata Bank','Central Bank','Insurance','80,000,000,000'),(7,'Uttara Bank','Commercial Bank','Business Loan','55,000,000,000'),(8,'Brac Bank','Retail Bank','Debit and Credit Card','60,000,000,000'),(9,'Western Bank','Mutual Bank','Savings Account','77,000,000,000'),(10,'Pubali Bank','Commercial Bank','Merchant Service','80,000,000,000');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bond`
--

DROP TABLE IF EXISTS `bond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bond` (
  `Bond_id` int(11) NOT NULL,
  `Bond_type` varchar(45) DEFAULT NULL,
  `Bond_maturity` varchar(45) DEFAULT NULL,
  `Market_price` varchar(45) DEFAULT NULL,
  `Bond_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Bond_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bond`
--

LOCK TABLES `bond` WRITE;
/*!40000 ALTER TABLE `bond` DISABLE KEYS */;
INSERT INTO `bond` VALUES (1,'Municipal Bonds','General','900000','12/01/2005'),(2,'Government Bonds','Strong','880000','14/5/2008'),(3,'Convertible Bonds','Normal','430000','18/6/2004'),(4,'Municipal Bonds','General','230000','17/7/2002'),(5,'Zero-Coupon Bonds','Normal','690000','8/10/2006'),(6,'Government Bonds','Strong','420000','1o/12/2009'),(7,'Municipal Bonds','General','920000','22/7/2004'),(8,'Convertible Bonds','Strong','760000','27/10/2002'),(9,'Government Bonds','Normal','750000','21/8/2000'),(10,'Municipal Bonds','Strong','540000','13/10/2010');
/*!40000 ALTER TABLE `bond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custodian`
--

DROP TABLE IF EXISTS `custodian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custodian` (
  `Custodian_id` int(11) NOT NULL,
  `Custodian_name` varchar(45) DEFAULT NULL,
  `Custodian_age` varchar(45) DEFAULT NULL,
  `Bank_id` int(11) DEFAULT NULL,
  `License_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Custodian_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custodian`
--

LOCK TABLES `custodian` WRITE;
/*!40000 ALTER TABLE `custodian` DISABLE KEYS */;
INSERT INTO `custodian` VALUES (1,'CSD1','21',1,'BLSNC1'),(2,'CSD2','22',2,'BLSNC2'),(3,'CSD3','23',3,'BLSNC3'),(4,'CSD4','24',4,'BLSNC4'),(5,'CSD5','25',5,'BLSNC5'),(6,'CSD6','26',6,'BLSNC6'),(7,'CSD7','27',7,'BLSNC7'),(8,'CSD8','28',8,'BLSNC8'),(9,'CSD9','29',9,'BLSNC9'),(10,'CSD10','30',10,'BLSNC10');
/*!40000 ALTER TABLE `custodian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Customerid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `Fathername` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Contct_num` varchar(45) DEFAULT NULL,
  `Emailid` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Blopdgroup` varchar(45) DEFAULT NULL,
  `D_O_J` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Rony','Reza','Sirajganj','01779321876','rony@gmail.com','Male','B-','13/1/1995'),(2,'Foysal','Shabuj','Chadpur','01320916742','foysal@gmail.com','Male','O-','14/6/1996'),(3,'Tamim','Mamun','Barishal','01920657891','tamim@yahoo.com','Male','A-','23/9/1998'),(4,'Sabrina','Mamun','Sylhet','01630932410','sabrina@yahoo.com','Female','A-','17/10/1998'),(5,'Rubaiya','Salman','Faridpur','01827109234','rubaiya@yahoo.com','Female','AB-','22/12/1994'),(6,'Tamanna','Shahjahan','Bogura','01708237419','tamanna@gmail.com','Female','A+','14/6/1987'),(7,'Asif','Shahjahan','Pabna','01930224590','asif@gmail.com','Male','O+','20/9/1993'),(8,'Hatem','Kawser','Kushtia','01723916303','kawser@gmail.com','Male','A+','14/7/1997'),(9,'Shakhawat','Fazlul','Comilla','01982451083','shakhawat@gmail.com','Male','B+','11/9/1999'),(10,'Rumana','Mannan','Bhola','01705469819','rumana@gmail.com','Female','AB+','14/10/1993');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settlement`
--

DROP TABLE IF EXISTS `settlement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settlement` (
  `Settlement_Id` int(11) NOT NULL,
  `Settlement_Note` varchar(45) DEFAULT NULL,
  `Settlement_Date` varchar(45) DEFAULT NULL,
  `Settlement_Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Settlement_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settlement`
--

LOCK TABLES `settlement` WRITE;
/*!40000 ALTER TABLE `settlement` DISABLE KEYS */;
INSERT INTO `settlement` VALUES (1,'Settlement Finished','3/24/2018','Settlement Of Investment'),(2,'Settlement Pending','6/4/2015','Settlement Of Single Account'),(3,'Settlement Pending','1/30/2016','Settlement Of Investment'),(4,'Settlement Finished','5/15/2003','Settlement Of centralised'),(5,'Settlement Pending','7/4/2013','Settlement Of Investment'),(6,'Settlement Finished','5/26/2014','Settlement Of centralised'),(7,'Settlement Finished','8/27/2011','Settlement Of Single Account'),(8,'Settlement Pending','9/21/2004','Settlement Of centralised'),(9,'Settlement Pending','6/22/2007','Settlement Of Single Account'),(10,'Settlement Finished','8/27/2010','Settlement Of Investment');
/*!40000 ALTER TABLE `settlement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-12 16:13:50
