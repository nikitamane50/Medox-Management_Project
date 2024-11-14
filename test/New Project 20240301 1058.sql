-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.17-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema medox
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ medox;
USE medox;

--
-- Table structure for table `medox`.`add_medicine`
--

DROP TABLE IF EXISTS `add_medicine`;
CREATE TABLE `add_medicine` (
  `id` int(11) NOT NULL default '0',
  `category` varchar(45) default NULL,
  `medicine_name` varchar(45) default NULL,
  `medicine_power` varchar(45) default NULL,
  `medicine_company` varchar(45) default NULL,
  `mgf` varchar(45) default NULL,
  `exp` varchar(45) default NULL,
  `gst` int(11) default NULL,
  `price` int(11) default NULL,
  `unit` varchar(45) default NULL,
  `img` text,
  `quantity` int(11) default NULL,
  `qty` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`add_medicine`
--

/*!40000 ALTER TABLE `add_medicine` DISABLE KEYS */;
INSERT INTO `add_medicine` (`id`,`category`,`medicine_name`,`medicine_power`,`medicine_company`,`mgf`,`exp`,`gst`,`price`,`unit`,`img`,`quantity`,`qty`) VALUES 
 (1,'Syrup','Dabur Honitus','------','Intas','2024-02-20','2024-03-20',2,75,'Bottle','syrup2.jpg',10,10),
 (2,'Syrup','Himalaya Koflet Syrup','------','Alkem','2024-02-20','2024-03-21',4,55,'Bottle','category3.jpg',10,10),
 (3,'Syrup','Cofsils Naturals','------','Dr.Reddys','2024-02-20','2024-04-22',5,50,'Bottle','syrup3.jpg',10,10),
 (4,'Syrup','Zecuf Cough Syrup','------','Intas','2024-02-20','2024-04-25',7,40,'Bottle','syrup4.jpg',10,10),
 (5,'Syrup','Koflet Ex Sugar-Free Bottle ','------','Alkem','2024-02-20','2024-04-24',3,55,'Bottle','syrup5.jpg',10,10),
 (6,'Capsule','Alcohol','0.25mg','Cipla','2024-02-20','2024-03-20',12,80,'Strip','c1.jpg',20,200),
 (7,'Capsule','Ayahuasca','0.5mg','Cipla','2024-02-20','2024-03-19',6,60,'Strip','c4.jpg',20,200),
 (8,'Capsule','Cannabis','0.5mg','Cipla','2024-02-20','2024-03-27',5,45,'Strip','c6.jpg',20,200),
 (9,'Capsule','GHB','0.25mg','Cipla','2024-02-20','2024-03-20',2,55,'Strip','category1.jpg',20,200);
INSERT INTO `add_medicine` (`id`,`category`,`medicine_name`,`medicine_power`,`medicine_company`,`mgf`,`exp`,`gst`,`price`,`unit`,`img`,`quantity`,`qty`) VALUES 
 (10,'Capsule','Cocaine','0.25mg','Sun Pharma','2024-02-20','2024-05-30',5,55,'Strip','cap2.jpg',20,200),
 (11,'Tablet','Telvas 3D','5mg','Mankind','2024-02-20','2024-04-15',5,95,'Strip','Telvas 3D.jpeg',20,200),
 (12,'Tablet','Nodard Plus','5mg','Sun Pharma','2024-02-20','2024-04-30',2,35,'Strip','t2.jpg',20,200),
 (13,'Tablet','Nimesulide','1mg','Dr.Reddys','2024-02-20','2024-04-20',5,50,'Strip','t3.jpg',20,200),
 (14,'Tablet','Paracetamol','1.25mg','Cipla','2024-02-20','2024-04-20',6,60,'Strip','t1.jpg',20,200),
 (15,'Tablet','Ambien','0.25mg','Cipla','2024-02-20','2024-05-20',5,50,'Strip','category2.jpg',20,200),
 (16,'Cream','Saffron and White Lotus Cream','------','Beiersdorf','2024-02-20','2024-03-20',2,90,'Bottle','cream2.jpg',15,15),
 (17,'Cream','Nivea','------','Hindustan Unilever','2024-02-20','2024-04-30',5,70,'Bottle','cream3.jpg',15,15),
 (18,'Cream','Ponds Bright Beauty ','------','Beiersdorf','2024-02-20','2024-03-20',5,50,'Bottle','ponds.jpeg',15,15);
INSERT INTO `add_medicine` (`id`,`category`,`medicine_name`,`medicine_power`,`medicine_company`,`mgf`,`exp`,`gst`,`price`,`unit`,`img`,`quantity`,`qty`) VALUES 
 (19,'Cream','Derma Shine','------','Hindustan Unilever','2024-02-20','2024-03-20',2,50,'Bottle','derma.jpeg',15,15),
 (20,'Cream','Purederm','------','Beiersdorf','2024-02-20','2024-05-20',5,70,'Bottle','cream1.jpeg',15,15),
 (21,'Shampoo','lorial Paris','180ml','Hindustan Unilever','2024-02-20','2024-05-20',5,110,'Bottle','loreal.jpeg',15,15),
 (22,'Shampoo','Tresemme Keratin Smooth','185ml','Hindustan Unilever','2024-02-20','2025-01-01',5,95,'Bottle','tresemme.jpeg',15,15),
 (23,'Shampoo','Himalaya','180ml','Beiersdorf','2024-02-20','2024-07-20',5,50,'Bottle','himalaya.jpeg',15,15),
 (24,'Shampoo','Clinic Plus ','650ml','Beiersdorf','2024-02-20','2024-07-23',5,80,'Bottle','clinic plus.jpeg',15,15),
 (25,'Shampoo','Indulekha Shampoo ','400ml','Beiersdorf','2024-02-20','2024-01-20',5,120,'Bottle','Indulekha1.jpeg',15,15),
 (26,'Shampoo','Patanjali Kesh Kanti ','200ml','Hindustan Unilever','2024-02-20','2024-07-30',5,110,'Bottle','Patanjali.jpeg',15,15),
 (27,'Syrup','aa','------','Cipla','2024-02-23','2024-02-27',2,30,'Bottle','category3.jpg',5,5);
INSERT INTO `add_medicine` (`id`,`category`,`medicine_name`,`medicine_power`,`medicine_company`,`mgf`,`exp`,`gst`,`price`,`unit`,`img`,`quantity`,`qty`) VALUES 
 (28,'Syrup','bb','------','Cipla','2024-02-23','2024-02-28',4,20,'Bottle','category3.jpg',10,10);
/*!40000 ALTER TABLE `add_medicine` ENABLE KEYS */;


--
-- Table structure for table `medox`.`admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login` (
  `admin_name` varchar(45) NOT NULL default '',
  `password` varchar(45) default NULL,
  `image` text,
  PRIMARY KEY  (`admin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`admin_login`
--

/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` (`admin_name`,`password`,`image`) VALUES 
 ('admin','123','img/QR1.jpg');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;


--
-- Table structure for table `medox`.`admin_receipt`
--

DROP TABLE IF EXISTS `admin_receipt`;
CREATE TABLE `admin_receipt` (
  `bill_id` int(11) default NULL,
  `bill_date` text,
  `order_id` int(11) default NULL,
  `order_date` text,
  `cust_name` varchar(45) default NULL,
  `cust_mob` varchar(45) default NULL,
  `cust_add` varchar(45) default NULL,
  `medicine_name` varchar(45) default NULL,
  `medicine_comp` varchar(45) default NULL,
  `medicine_power` varchar(45) default NULL,
  `quantity` int(11) default NULL,
  `total_price` int(11) default NULL,
  `pay_method` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`admin_receipt`
--

/*!40000 ALTER TABLE `admin_receipt` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_receipt` ENABLE KEYS */;


--
-- Table structure for table `medox`.`admin_registration`
--

DROP TABLE IF EXISTS `admin_registration`;
CREATE TABLE `admin_registration` (
  `ID` int(11) NOT NULL,
  `admin_name` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `mobile_no` bigint(20) unsigned default NULL,
  `email_id` varchar(45) default NULL,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`admin_registration`
--

/*!40000 ALTER TABLE `admin_registration` DISABLE KEYS */;
INSERT INTO `admin_registration` (`ID`,`admin_name`,`address`,`mobile_no`,`email_id`,`username`,`password`) VALUES 
 (1,'Rasika Deshmukh','At post Palashi',8805805404,'rasikadeshmukh2003@gmail.com','rasu','3030');
/*!40000 ALTER TABLE `admin_registration` ENABLE KEYS */;


--
-- Table structure for table `medox`.`cancel_order`
--

DROP TABLE IF EXISTS `cancel_order`;
CREATE TABLE `cancel_order` (
  `cancel_id` int(11) NOT NULL default '0',
  `cancel_date` text,
  `order_id` int(11) default NULL,
  `order_date` text,
  `customer_name` varchar(45) default NULL,
  `mobile_no` bigint(20) default NULL,
  `medicine_name` varchar(45) default NULL,
  `quantity` int(10) unsigned default NULL,
  `amount` varchar(45) default NULL,
  PRIMARY KEY  (`cancel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`cancel_order`
--

/*!40000 ALTER TABLE `cancel_order` DISABLE KEYS */;
INSERT INTO `cancel_order` (`cancel_id`,`cancel_date`,`order_id`,`order_date`,`customer_name`,`mobile_no`,`medicine_name`,`quantity`,`amount`) VALUES 
 (1,'2024-03-01',10,'2024-02-10','Rasika Deshmukh',8805805404,'Tresemme Keratin Smooth',1,'95'),
 (2,'2024-03-05',20,'2024-02-06','Nikita Mane',9307857560,'Clinic Plus ',1,'80');
/*!40000 ALTER TABLE `cancel_order` ENABLE KEYS */;


--
-- Table structure for table `medox`.`cust_receipt`
--

DROP TABLE IF EXISTS `cust_receipt`;
CREATE TABLE `cust_receipt` (
  `bill_id` int(11) default NULL,
  `bill_date` text,
  `order_id` int(11) default NULL,
  `order_date` text,
  `cust_name` varchar(45) default NULL,
  `cust_mob` bigint(20) default NULL,
  `med_name` varchar(45) default NULL,
  `med_comp` varchar(45) default NULL,
  `med_pow` varchar(45) default NULL,
  `quantity` int(11) default NULL,
  `rate` int(11) default NULL,
  `total_price` int(11) default NULL,
  `pay_method` varchar(45) default NULL,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`cust_receipt`
--

/*!40000 ALTER TABLE `cust_receipt` DISABLE KEYS */;
INSERT INTO `cust_receipt` (`bill_id`,`bill_date`,`order_id`,`order_date`,`cust_name`,`cust_mob`,`med_name`,`med_comp`,`med_pow`,`quantity`,`rate`,`total_price`,`pay_method`,`image`) VALUES 
 (1,'Fri Mar 01 09:32:43 IST 2024',12,'2024-02-01','Rasika Deshmukh',8805805404,'Dabur Honitus','Intas','------',2,75,150,'Online','img/QR1.jpg'),
 (2,'Fri Mar 01 09:36:04 IST 2024',1,'2024-02-01','Rasika Deshmukh',8805805404,'Dabur Honitus','Intas','------',2,75,150,'Online','img/QR1.jpg'),
 (3,'Fri Mar 01 09:40:31 IST 2024',4,'2024-02-03','Rasika Deshmukh',8805805404,'Alcohol','Cipla','0.25mg',8,8,64,'Online','img/QR1.jpg'),
 (4,'Fri Mar 01 09:45:49 IST 2024',5,'2024-02-05','Rasika Deshmukh',8805805404,'Telvas 3D','Mankind','5mg',10,9,90,'Online','img/QR1.jpg'),
 (5,'Fri Mar 01 09:47:33 IST 2024',7,'2024-02-07','Rasika Deshmukh',8805805404,'Saffron and White Lotus Cream','Beiersdorf','------',1,90,90,'Online','img/QR1.jpg'),
 (6,'Fri Mar 01 09:49:07 IST 2024',9,'2024-02-09','Rasika Deshmukh',8805805404,'lorial Paris','Hindustan Unilever','180ml',1,110,110,'Online','img/QR1.jpg'),
 (7,'Fri Mar 01 09:56:56 IST 2024',11,'2024-02-01','Nikita Mane',9307857560,'Cofsils Naturals','Dr.Reddys','------',1,50,50,'Online','img/QR1.jpg');
INSERT INTO `cust_receipt` (`bill_id`,`bill_date`,`order_id`,`order_date`,`cust_name`,`cust_mob`,`med_name`,`med_comp`,`med_pow`,`quantity`,`rate`,`total_price`,`pay_method`,`image`) VALUES 
 (8,'Fri Mar 01 10:00:48 IST 2024',13,'2024-02-21','Nikita Mane',9307857560,'Cannabis','Cipla','0.5mg',10,4,40,'Online','img/QR1.jpg'),
 (9,'Fri Mar 01 10:02:00 IST 2024',15,'2024-02-03','Nikita Mane',9307857560,'Nimesulide','Dr.Reddys','1mg',12,5,60,'Online','img/QR1.jpg'),
 (10,'Fri Mar 01 10:04:36 IST 2024',17,'2024-02-23','Nikita Mane',9307857560,'Ponds Bright Beauty ','Beiersdorf','------',1,50,50,'Online','img/QR1.jpg'),
 (11,'Fri Mar 01 10:05:43 IST 2024',19,'2024-02-05','Nikita Mane',9307857560,'Himalaya','Beiersdorf','180ml',1,50,50,'Online','img/QR1.jpg');
/*!40000 ALTER TABLE `cust_receipt` ENABLE KEYS */;


--
-- Table structure for table `medox`.`customer_registration`
--

DROP TABLE IF EXISTS `customer_registration`;
CREATE TABLE `customer_registration` (
  `id` int(11) NOT NULL default '0',
  `customer_name` varchar(45) default NULL,
  `address` varchar(45) default NULL,
  `mob_no` varchar(45) default NULL,
  `email_id` varchar(45) default NULL,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`customer_registration`
--

/*!40000 ALTER TABLE `customer_registration` DISABLE KEYS */;
INSERT INTO `customer_registration` (`id`,`customer_name`,`address`,`mob_no`,`email_id`,`username`,`password`) VALUES 
 (1,'Nikita Mane','At post Islampur Tal Walwa Dist Sangli','9307857560','nikitamane1137@gmail.com','niki','0707'),
 (2,'Rasika Deshmukh','At post Palashi Tal Khatav Dist Satara','8805805404','rasikadeshmukh2003@gmail.com','rasu','3030'),
 (3,'Payal Phadatare','At post Phadatarwadi','9309031716','payalphadatare19@gmail.com','payal','123'),
 (4,'Sakshi Ghadage','At post Rahimatpur Tal Koregoan Dist Satara','9699946163','sakshighadage924@gmail.com','sakshi','123');
/*!40000 ALTER TABLE `customer_registration` ENABLE KEYS */;


--
-- Table structure for table `medox`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(45) NOT NULL default '',
  `mobile_no` bigint(20) default NULL,
  `feedback` varchar(45) default NULL,
  `email` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`mobile_no`,`feedback`,`email`) VALUES 
 ('Nikita Mane',9307857560,'Thank You for Better Services.....','nikitamane1137@gmail.com'),
 ('Rasika Deshmukh',8805805404,'Thank You .....','rasikadeshmukh2003@gmail.com'),
 ('Sakshi Ghadage',9699946163,'Very Nice ','sakshighadage924@gmail.com'),
 ('Payal Phadatare',9309031716,'Nice','payal07@gmail.com'),
 ('Nikita Mane',9307857560,'Thank You for Better Services.....','nikitamane1137@gmail.com'),
 ('Nikita Mane',9307857560,'Thank You for Better Services.....','nikitamane1137@gmail.com');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `medox`.`forget_password`
--

DROP TABLE IF EXISTS `forget_password`;
CREATE TABLE `forget_password` (
  `username` varchar(45) NOT NULL default '',
  `password` int(11) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`forget_password`
--

/*!40000 ALTER TABLE `forget_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `forget_password` ENABLE KEYS */;


--
-- Table structure for table `medox`.`order_medicines`
--

DROP TABLE IF EXISTS `order_medicines`;
CREATE TABLE `order_medicines` (
  `id` int(11) NOT NULL default '0',
  `order_date` text,
  `customer_name` varchar(45) default NULL,
  `mobile_no` bigint(20) default NULL,
  `address` varchar(45) default NULL,
  `medicine_category` varchar(45) default NULL,
  `medicine_name` varchar(45) default NULL,
  `medicine_company` varchar(45) default NULL,
  `medicine_power` varchar(45) default NULL,
  `quantity` int(11) default NULL,
  `id1` int(11) default NULL,
  `Amount` varchar(45) default NULL,
  `username` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`order_medicines`
--

/*!40000 ALTER TABLE `order_medicines` DISABLE KEYS */;
INSERT INTO `order_medicines` (`id`,`order_date`,`customer_name`,`mobile_no`,`address`,`medicine_category`,`medicine_name`,`medicine_company`,`medicine_power`,`quantity`,`id1`,`Amount`,`username`) VALUES 
 (1,'2024-02-01','Rasika Deshmukh',8805805404,'At post Palashi Tal Khatav Dist Satara','Syrup','Dabur Honitus','Intas','------',2,1,'75','rasu'),
 (2,'2024-02-02','Rasika Deshmukh',8805805404,'At post Palashi Tal Khatav Dist Satara','Syrup','Himalaya Koflet Syrup','Alkem','------',2,2,'55','rasu'),
 (3,'2024-02-03','Rasika Deshmukh',8805805404,'At post Palashi Tal Khatav Dist Satara','Capsule','Alcohol','Cipla','0.25mg',6,6,'80','rasu'),
 (4,'2024-02-04','Rasika Deshmukh',8805805404,'At post Palashi Tal Khatav Dist Satara','Capsule','Ayahuasca','Cipla','0.5mg',8,7,'60','rasu'),
 (5,'2024-02-05','Rasika Deshmukh',8805805404,'At post Palashi Tal Khatav Dist Satara','Tablet','Telvas 3D','Mankind','5mg',10,11,'95','rasu'),
 (6,'2024-03-06','Rasika Deshmukh',8805805404,'At post Palashi Tal Khatav Dist Satara','Tablet','Nodard Plus','Sun Pharma','5mg',4,12,'35','rasu'),
 (7,'2024-02-07','Rasika Deshmukh',8805805404,'At post Palashi Tal Khatav Dist Satara','Cream','Saffron and White Lotus Cream','Beiersdorf','------',1,16,'90','rasu');
INSERT INTO `order_medicines` (`id`,`order_date`,`customer_name`,`mobile_no`,`address`,`medicine_category`,`medicine_name`,`medicine_company`,`medicine_power`,`quantity`,`id1`,`Amount`,`username`) VALUES 
 (8,'2024-03-08','Rasika Deshmukh',8805805404,'At post Palashi Tal Khatav Dist Satara','Cream','Nivea','Hindustan Unilever','------',1,17,'70','rasu'),
 (9,'2024-02-09','Rasika Deshmukh',8805805404,'At post Palashi Tal Khatav Dist Satara','Shampoo','lorial Paris','Hindustan Unilever','180ml',1,21,'110','rasu'),
 (10,'2024-02-10','Rasika Deshmukh',8805805404,'At post Palashi Tal Khatav Dist Satara','Shampoo','Tresemme Keratin Smooth','Hindustan Unilever','185ml',1,22,'95','rasu'),
 (11,'2024-02-01','Nikita Mane',9307857560,'At post Islampur Tal Walwa Dist Sangli','Syrup','Cofsils Naturals','Dr.Reddys','------',1,3,'50','niki'),
 (12,'2024-03-02','Nikita Mane',9307857560,'At post Islampur Tal Walwa Dist Sangli','Syrup','Zecuf Cough Syrup','Intas','------',2,4,'40','niki'),
 (13,'2024-02-21','Nikita Mane',9307857560,'At post Islampur Tal Walwa Dist Sangli','Capsule','Cannabis','Cipla','0.5mg',10,8,'45','niki'),
 (14,'2024-02-22','Nikita Mane',9307857560,'At post Islampur Tal Walwa Dist Sangli','Capsule','GHB','Cipla','0.25mg',6,9,'55','niki');
INSERT INTO `order_medicines` (`id`,`order_date`,`customer_name`,`mobile_no`,`address`,`medicine_category`,`medicine_name`,`medicine_company`,`medicine_power`,`quantity`,`id1`,`Amount`,`username`) VALUES 
 (15,'2024-02-03','Nikita Mane',9307857560,'At post Islampur Tal Walwa Dist Sangli','Tablet','Nimesulide','Dr.Reddys','1mg',12,13,'50','niki'),
 (16,'2024-02-04','Nikita Mane',9307857560,'At post Islampur Tal Walwa Dist Sangli','Tablet','Paracetamol','Cipla','1.25mg',6,14,'60','niki'),
 (17,'2024-02-23','Nikita Mane',9307857560,'At post Islampur Tal Walwa Dist Sangli','Cream','Ponds Bright Beauty ','Beiersdorf','------',1,18,'50','niki'),
 (18,'2024-02-24','Nikita Mane',9307857560,'At post Islampur Tal Walwa Dist Sangli','Cream','Derma Shine','Hindustan Unilever','------',1,19,'50','niki'),
 (19,'2024-02-05','Nikita Mane',9307857560,'At post Islampur Tal Walwa Dist Sangli','Shampoo','Himalaya','Beiersdorf','180ml',1,23,'50','niki');
/*!40000 ALTER TABLE `order_medicines` ENABLE KEYS */;


--
-- Table structure for table `medox`.`receipt_cod`
--

DROP TABLE IF EXISTS `receipt_cod`;
CREATE TABLE `receipt_cod` (
  `bill_id` int(11) default NULL,
  `bill_date` text,
  `order_id` int(11) default NULL,
  `order_date` text,
  `cust_name` varchar(45) default NULL,
  `cust_mob` bigint(20) default NULL,
  `med_name` varchar(45) default NULL,
  `med_comp` varchar(45) default NULL,
  `med_pow` varchar(45) default NULL,
  `quantity` int(11) default NULL,
  `rate` int(11) default NULL,
  `total_price` int(11) default NULL,
  `pay_method` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medox`.`receipt_cod`
--

/*!40000 ALTER TABLE `receipt_cod` DISABLE KEYS */;
INSERT INTO `receipt_cod` (`bill_id`,`bill_date`,`order_id`,`order_date`,`cust_name`,`cust_mob`,`med_name`,`med_comp`,`med_pow`,`quantity`,`rate`,`total_price`,`pay_method`) VALUES 
 (3,'Fri Mar 01 09:37:43 IST 2024',2,'2024-02-02','Rasika Deshmukh',8805805404,'Himalaya Koflet Syrup','Alkem','------',2,55,110,'CashOnDelivery'),
 (4,'Fri Mar 01 09:44:24 IST 2024',4,'2024-02-04','Rasika Deshmukh',8805805404,'Ayahuasca','Cipla','0.5mg',8,6,48,'CashOnDelivery'),
 (5,'Fri Mar 01 09:46:39 IST 2024',6,'2024-03-06','Rasika Deshmukh',8805805404,'Nodard Plus','Sun Pharma','5mg',4,3,12,'CashOnDelivery'),
 (6,'Fri Mar 01 09:48:35 IST 2024',8,'2024-03-08','Rasika Deshmukh',8805805404,'Nivea','Hindustan Unilever','------',1,70,70,'CashOnDelivery'),
 (7,'Fri Mar 01 09:54:43 IST 2024',10,'2024-02-10','Rasika Deshmukh',8805805404,'Tresemme Keratin Smooth','Hindustan Unilever','185ml',1,95,95,'CashOnDelivery'),
 (8,'Fri Mar 01 09:57:21 IST 2024',12,'2024-03-02','Nikita Mane',9307857560,'Zecuf Cough Syrup','Intas','------',2,40,80,'CashOnDelivery'),
 (9,'Fri Mar 01 10:01:23 IST 2024',14,'2024-02-22','Nikita Mane',9307857560,'GHB','Cipla','0.25mg',6,5,30,'CashOnDelivery');
INSERT INTO `receipt_cod` (`bill_id`,`bill_date`,`order_id`,`order_date`,`cust_name`,`cust_mob`,`med_name`,`med_comp`,`med_pow`,`quantity`,`rate`,`total_price`,`pay_method`) VALUES 
 (11,'Fri Mar 01 10:05:05 IST 2024',18,'2024-02-24','Nikita Mane',9307857560,'Derma Shine','Hindustan Unilever','------',1,50,50,'CashOnDelivery'),
 (12,'Fri Mar 01 10:06:21 IST 2024',20,'2024-02-06','Nikita Mane',9307857560,'Clinic Plus ','Beiersdorf','650ml',1,80,80,'CashOnDelivery');
/*!40000 ALTER TABLE `receipt_cod` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
