/*
SQLyog Community v12.09 (64 bit)
MySQL - 5.5.33 : Database - retail
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`retail` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `retail`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `userid` varchar(10) NOT NULL,
  `passwrd` varchar(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `e` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

/*Table structure for table `cust_payment` */

DROP TABLE IF EXISTS `cust_payment`;

CREATE TABLE `cust_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trasaction_id` bigint(20) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `cust_payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `r_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `cust_payment` */

insert  into `cust_payment`(`id`,`trasaction_id`,`order_id`) values (5,2908201519295090,90),(6,2908201519325491,91),(7,3108201511103293,93),(8,3108201514152294,94),(9,3108201516343395,95),(10,3108201517161696,96),(11,3108201518482998,98),(12,3108201519440199,99),(13,1092015102653100,100),(14,1092015103144731,731),(15,1092015111135734,734),(16,1092015112216735,735),(17,1092015123635736,736),(18,1092015124533737,737),(19,1092015124847738,738),(20,1092015124936739,739),(21,1092015132224740,740),(22,1092015132327741,741),(23,1092015132643742,742),(24,1092015140814744,744),(25,1092015145731745,745),(27,1092015170405746,746),(28,1092015170514747,747),(29,1092015170606748,748),(30,1092015171027749,749),(31,3092015170940751,751),(32,4092015125200752,752),(33,4092015125727753,753),(34,4092015125805754,754);

/*Table structure for table `r_cust` */

DROP TABLE IF EXISTS `r_cust`;

CREATE TABLE `r_cust` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(20) DEFAULT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `cust_phoneNo` bigint(15) DEFAULT NULL,
  `cust_pass` varchar(50) DEFAULT NULL,
  `prof_createdon` datetime DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `cust_email` (`cust_email`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

/*Data for the table `r_cust` */

insert  into `r_cust`(`cust_id`,`cust_name`,`cust_email`,`cust_phoneNo`,`cust_pass`,`prof_createdon`,`roll`) values (7,'ooo','ooo',5555555,'7f94dd413148ff9ac9e9e4b6ff2b6ca9','2015-08-05 00:00:00',2),(8,'eee','eee',666,'d2f2297d6e829cd3493aa7de4416a18f','2015-08-10 00:00:00',1),(9,'shri','shri',99999,'bf083d4ab960620b645557217dd59a49','2015-08-10 00:00:00',1),(15,'eeeeee','sah@dff.com',3333333333,'d27d320c27c3033b7883347d8beca317','2015-08-11 00:00:00',1),(16,'wwwww','kimisha.shah@webaccessglobal.com',2222222222,'bae5e3208a3c700e3db642b6631e95b9','2015-08-11 00:00:00',1),(23,'rr','qqqww@vv.niw',2222222222,'bae5e3208a3c700e3db642b6631e95b9','2015-08-12 00:00:00',1),(24,'shri','shri09@gmail.com',9999999999,'bae5e3208a3c700e3db642b6631e95b9','2015-08-13 00:00:00',2),(25,'shrinivas','shri2709@gmail.com',8888744793,'f26bcc8e4e59ad498e3037088576ebdf','2015-08-17 00:00:00',1),(26,'shrinivas','shrinivas.bhuvad@webaccessglobal.com',7777777777,'25d55ad283aa400af464c76d713c07ad','2015-08-19 00:00:00',1),(27,'shri','s9@gmail.com',8888888888,'8ddcff3a80f4189ca1c9d4d902c3c909','2015-08-21 00:00:00',1),(28,'shri','sh@gm.com',8888888888,'8ddcff3a80f4189ca1c9d4d902c3c909','2015-08-22 00:00:00',1),(29,'wwww','gg@gmail.co',8888888888,'1bbd886460827015e5d605ed44252251','2015-08-22 00:00:00',1),(30,'shrinivas','shri9@gm.com',8888744793,'8ddcff3a80f4189ca1c9d4d902c3c909','2015-08-22 00:00:00',1),(31,'Bhushan','bhushank008@gmail.com',9619802763,'4c93008615c2d041e33ebac605d14b5b','2015-09-02 00:00:00',1),(32,'kimisha','kimishashah7@gmail.com',9821073538,'8559709a690b0bf756219b24aae48333','2015-09-03 00:00:00',1);

/*Table structure for table `r_order` */

DROP TABLE IF EXISTS `r_order`;

CREATE TABLE `r_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `order_quantity` int(10) DEFAULT NULL,
  `order_TotalPrise` int(11) DEFAULT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`order_id`),
  KEY `cust_id` (`cust_email`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `r_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `r_cust` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=758 DEFAULT CHARSET=latin1;

/*Data for the table `r_order` */

insert  into `r_order`(`order_id`,`order_date`,`order_quantity`,`order_TotalPrise`,`cust_email`,`name`,`customer_id`,`status`) values (89,'2015-08-29 00:00:00',1,30000,'eee','eee',8,1),(90,'2015-08-29 00:00:00',1,14250,'eee','eee',8,1),(91,'2015-08-29 00:00:00',1,26400,'eee','eee',8,1),(92,'2015-08-29 00:00:00',1,20000,'eee','eee',8,1),(93,'2015-08-31 00:00:00',1,40000,'shri','shri',9,1),(94,'2015-08-31 00:00:00',2,68500,'shri','shri',9,1),(95,'2015-08-31 00:00:00',2,73500,'eee','eee',8,1),(96,'2015-08-31 00:00:00',1,19800,'eee','eee',8,1),(97,'2015-08-31 00:00:00',2,20900,'shri','shri',9,1),(98,'2015-08-31 00:00:00',2,20900,'shri','shri',9,1),(99,'2015-08-31 00:00:00',2,50500,'eee','eee',8,1),(100,'2015-09-01 00:00:00',2,24700,'eee','eee',8,1),(731,'2015-09-01 00:00:00',2,20900,'shri','shri',9,1),(732,'2015-09-01 00:00:00',1,19800,'eee','eee',8,1),(733,'2015-09-01 00:00:00',1,19800,'eee','eee',8,1),(734,'2015-09-01 00:00:00',1,29700,'eee','eee',8,1),(735,'2015-09-01 00:00:00',2,20900,'eee','eee',8,1),(736,'2015-09-01 00:00:00',3,62650,'eee','eee',8,1),(737,'2015-09-01 00:00:00',1,11000,'eee','eee',8,1),(738,'2015-09-01 00:00:00',1,55000,'eee','eee',8,1),(739,'2015-09-01 00:00:00',1,11000,'eee','eee',8,1),(740,'2015-09-01 00:00:00',1,11000,'eee','eee',8,1),(741,'2015-09-01 00:00:00',2,21670,'eee','eee',8,1),(742,'2015-09-01 00:00:00',1,11000,'eee','eee',8,1),(743,'2015-09-01 00:00:00',2,21670,'eee','eee',8,1),(744,'2015-09-01 00:00:00',1,11000,'eee','eee',8,1),(745,'2015-09-01 00:00:00',1,11000,'shri','shri',9,1),(746,'2015-09-01 00:00:00',1,11000,'eee','eee',8,1),(747,'2015-09-01 00:00:00',3,34700,'shri','shri',9,1),(748,'2015-09-01 00:00:00',2,21670,'shri','shri',9,0),(749,'2015-09-01 00:00:00',2,25250,'shri','shri',9,0),(750,'2015-09-02 00:00:00',2,21670,'bhushank008@gmail.com','Bhushan',31,1),(751,'2015-09-03 00:00:00',1,52250,'kimishashah7@gmail.com','kimisha',32,0),(752,'2015-09-04 00:00:00',1,11000,'eee','eee',8,0),(753,'2015-09-04 00:00:00',1,11000,'shri','shri',9,1),(754,'2015-09-04 00:00:00',1,11000,'shri','shri',9,1),(755,'2015-09-23 00:00:00',2,26000,'eee','eee',8,0),(756,'2015-09-23 00:00:00',3,36250,'eee','eee',8,0),(757,'2015-09-23 00:00:00',1,39600,'eee','eee',8,0);

/*Table structure for table `r_orderaddress` */

DROP TABLE IF EXISTS `r_orderaddress`;

CREATE TABLE `r_orderaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `pincode` bigint(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `dist` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

/*Data for the table `r_orderaddress` */

insert  into `r_orderaddress`(`id`,`order_id`,`fname`,`lname`,`address`,`landmark`,`pincode`,`city`,`dist`,`state`,`country`,`mobile`,`type`) values (47,77,'shrinivas','bhuvad','r','r',333333,'mumbai','thane','maharashtra','india',3333333333,'Home'),(48,78,'shrinivas','bhuvad','w','mumbai',333333,'mumbai','thane','maharashtra','india',3333333333,'Home'),(49,79,'shrinivas','bhuvad','w','mumbai',333333,'mumbai','thane','maharashtra','india',3333333333,'Home'),(50,80,'e','e','e','e',333333,'e','e','e','e',3333333333,'Home'),(51,81,'shrinivas','bhuvad','e','e',333333,'e','e','e','e',3333333333,'Home'),(52,82,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','e',8888888888,'Home'),(53,83,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(54,84,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','e',8888888888,'Home'),(55,85,'shrinivas','e','d','sdf',421287,'sdf','e','sdf','e',8888888888,'Home'),(56,86,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','e',8888888888,'Home'),(57,87,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(58,88,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','e',8888888888,'Home'),(59,89,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','e',8888888888,'Home'),(60,90,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','e',8888888888,'Home'),(61,91,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(62,92,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','e',8888888888,'Home'),(63,93,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(64,94,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Office'),(65,95,'shrinivas','bhuvad','d2','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(66,96,'shrinivas','bhuvad','w','w',432156,'t','t','t','t',3333333333,'Home'),(67,97,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(68,98,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(69,99,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(70,100,'shrinivas','bhuvad','dee3','sdf',421287,'sdf','thane','sdf','india',8888888888,'Home'),(71,731,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Office'),(72,733,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(73,734,'shrinivas','bhuvad','d','sdf',421287,'sdf','thane','sdf','india',8888888888,'Office'),(74,735,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(75,736,'shrinivas','bhuvad','mumbai','mumbai',412389,'mumbai','mumbai','maharashtra','india',8888888888,'Home'),(76,737,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(77,738,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(78,739,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(79,740,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(80,741,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','e','india',8888888888,'Home'),(81,742,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(82,743,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(83,744,'shrinivas','e','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(84,745,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(85,746,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Office'),(86,747,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(87,748,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','e','india',8888888888,'Home'),(88,749,'shrinivas','bhuvad','d','sdf',421287,'sdf','thane','sdf','india',8888888888,'Home'),(89,750,'Bhushan','Koli','Malad`','Marve Beach',400095,'Mumbai','Mumbai','Maharashtra','India',9619802763,'Home'),(90,751,'Kimisha','Shah','rtyhh','fghfh',444444,'gjkhjk','khjkhjk','hjkhjk','hjk',1234567892,'Home'),(91,752,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','india',8888888888,'Home'),(92,753,'shrinivas','bhuvad','d','sdf',421287,'sdf','thane','sdf','india',8888888888,'Home'),(93,754,'shrinivas','bhuvad','d','sdf',421287,'sdf','e','sdf','e',8888888888,'Home'),(94,755,'q','q','q','q',432345,'w','w','w','w',6666666666,'Home'),(95,756,'y','y','y','y',765678,'y','y','y','y',8888888888,'Home'),(96,757,'o','o','o','o',909090,'o','o','o','o',0,'Home');

/*Table structure for table `r_orderdetail` */

DROP TABLE IF EXISTS `r_orderdetail`;

CREATE TABLE `r_orderdetail` (
  `od_id` int(11) NOT NULL AUTO_INCREMENT,
  `od_date` date DEFAULT NULL,
  `od_productName` varchar(20) DEFAULT NULL,
  `od_quantity` int(11) DEFAULT NULL,
  `od_ProductPrize` int(11) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `img_path` varchar(100) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`od_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `r_orderdetail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `r_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=latin1;

/*Data for the table `r_orderdetail` */

insert  into `r_orderdetail`(`od_id`,`od_date`,`od_productName`,`od_quantity`,`od_ProductPrize`,`prod_id`,`order_id`,`cust_email`,`img_path`,`customer_id`,`status`) values (172,'2015-09-01','Tata indicom',1,11000,48,746,'eee','upload/6indeyyx.jpg',8,0),(173,'2015-09-01','samsung',1,10000,58,747,'shri','upload/6exqqq.jpg',9,0),(174,'2015-09-01','apple',1,10450,21,747,'shri','upload/apple niindaaaex.jpg',9,0),(175,'2015-09-01','motorola',1,14250,31,747,'shri','upload/motorolaindwwex.jpg',9,0),(176,'2015-09-01','nokia',1,11000,50,748,'shri','upload/6indewww.jpg',9,0),(177,'2015-09-01','maxx',1,10670,57,748,'shri','upload/468inde2x.jpg',9,0),(180,'2015-09-02','nokia',1,11000,50,750,'bhushank008@gmail.com','upload/6indewww.jpg',31,1),(181,'2015-09-02','maxx',1,10670,57,750,'bhushank008@gmail.com','upload/468inde2x.jpg',31,1),(182,'2015-09-03','apple',5,10450,21,751,'kimishashah7@gmail.com','upload/apple niindaaaex.jpg',32,0),(183,'2015-09-04','nokia',1,11000,50,752,'eee','upload/6indewww.jpg',8,0),(184,'2015-09-04','Tata indicom',1,11000,48,753,'shri','upload/6indeyyx.jpg',9,0),(185,'2015-09-04','Tata indicom',1,11000,48,754,'shri','upload/6indeyyx.jpg',9,0),(186,'2015-09-23','nokia',1,11000,50,755,'eee','upload/6indewww.jpg',8,1),(187,'2015-09-23','lenova`',1,15000,64,755,'eee','upload/475acxed.jpg',8,1),(188,'2015-09-23','nokia',1,11000,50,756,'eee','upload/6indewww.jpg',8,0),(189,'2015-09-23','Tata indicom',1,11000,48,756,'eee','upload/6indeyyx.jpg',8,0),(190,'2015-09-23','motorola',1,14250,31,756,'eee','upload/motorolaindwwex.jpg',8,0),(191,'2015-09-23','mobile',1,39600,67,757,'eee','upload/6-j8H-E87.jpeg',8,0);

/*Table structure for table `r_prodctcatgrary` */

DROP TABLE IF EXISTS `r_prodctcatgrary`;

CREATE TABLE `r_prodctcatgrary` (
  `catg_id` int(11) NOT NULL AUTO_INCREMENT,
  `catg_name` varchar(20) NOT NULL,
  PRIMARY KEY (`catg_name`),
  KEY `catg_id` (`catg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `r_prodctcatgrary` */

insert  into `r_prodctcatgrary`(`catg_id`,`catg_name`) values (2,'smart phone'),(3,'business phone'),(4,'entertainment'),(5,'normal'),(6,'second hand mobile'),(16,'l'),(17,'s'),(20,'eeee'),(21,'eeeerr'),(24,'ll'),(26,'shri');

/*Table structure for table `r_product` */

DROP TABLE IF EXISTS `r_product`;

CREATE TABLE `r_product` (
  `prod_id` int(11) NOT NULL AUTO_INCREMENT,
  `prod_name` varchar(20) DEFAULT NULL,
  `prod_prize` double DEFAULT NULL,
  `prod_discr` varchar(200) DEFAULT NULL,
  `prod_quantity` int(11) DEFAULT NULL,
  `prod_catgName` varchar(20) DEFAULT NULL,
  `img_path` varchar(100) DEFAULT NULL,
  `seller_id` varchar(100) DEFAULT NULL,
  `discount` varchar(15) DEFAULT NULL,
  `SellerId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`prod_id`),
  KEY `prod_catgName` (`prod_catgName`),
  KEY `SellerId` (`SellerId`),
  CONSTRAINT `r_product_ibfk_1` FOREIGN KEY (`prod_catgName`) REFERENCES `r_prodctcatgrary` (`catg_name`),
  CONSTRAINT `r_product_ibfk_2` FOREIGN KEY (`SellerId`) REFERENCES `seller` (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

/*Data for the table `r_product` */

insert  into `r_product`(`prod_id`,`prod_name`,`prod_prize`,`prod_discr`,`prod_quantity`,`prod_catgName`,`img_path`,`seller_id`,`discount`,`SellerId`,`status`) values (21,'apple',11000,'new generation phone',5,'smart phone','upload/apple niindaaaex.jpg','s1','5',6,1),(31,'motorola',15000,'game unable mobile',1,'entertainment','upload/motorolaindwwex.jpg','s1','5',6,1),(48,'Tata indicom',11000,'new generation phone',2,'business phone','upload/6indeyyx.jpg','s1','0',6,1),(49,'motorola',11000,'new generation phone support 3g',8,'entertainment','upload/6s.jpg','s1','10',6,0),(50,'nokia',11000,'color phone',5,'smart phone','upload/6indewww.jpg','s1','0',6,1),(54,'samsung',11000,'color phone support 3g',6,'normal','upload/6inqqdex.jpg','s1','5',6,0),(55,'ws',11000,'ss',5,'smart phone','upload/6gold.jpg','s1','2',6,0),(56,'ss',2,'ww',5,'smart phone','upload/6slio.jpg','s1','2',6,0),(57,'maxx',11000,'new generation phone',3,'business phone','upload/468inde2x.jpg','shri','3',468,0),(58,'samsung',10000,'color phone',9,'normal','upload/6exqqq.jpg','s1','0',6,0),(59,'ww',333,'eeee',333,'smart phone','upload/471slio.jpg','s1@de.in','33',471,0),(60,'q',23,'ee',3,'smart phone','upload/474silver.jpg','d@dw.com','0',474,0),(61,'maxxx',10000,'new generation phone',10,'smart phone','upload/6Chrysanthemum.jpg','s1','0',6,0),(62,'nokia',12000,'color phone',5,'normal','upload/468indewww.jpg','shri','0',468,0),(63,'lenova',15000,'new generation phone',5,'business phone','upload/468acxed.jpg','shri','0',468,0),(64,'lenova`',15000,'new generation phone',10,'business phone','upload/475acxed.jpg','shri@g.com','0',475,1),(65,'blackberry',11000,'new generation phone support 3g new generation phone support 3g ',10,'smart phone','upload/475blackbe.jpg','shri@g.com','5',475,1),(66,'microsoft',12000,'support 3g in built 2gb ram',5,'business phone','upload/475s.jpg','shri@g.com','0',475,1),(67,'mobile',45000,'mobile',5,'smart phone','upload/6-j8H-E87.jpeg','s1','12',6,1);

/*Table structure for table `s` */

DROP TABLE IF EXISTS `s`;

CREATE TABLE `s` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `w` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `s` */

/*Table structure for table `seller` */

DROP TABLE IF EXISTS `seller`;

CREATE TABLE `seller` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_name` varchar(20) DEFAULT NULL,
  `seller_passwrd` varchar(50) DEFAULT NULL,
  `seller_phone` bigint(15) DEFAULT NULL,
  `seller_email` varchar(50) NOT NULL,
  `membership` varchar(20) DEFAULT NULL,
  `registerDate` date DEFAULT NULL,
  `expiryDate` date DEFAULT NULL,
  `register` int(11) DEFAULT '1',
  PRIMARY KEY (`seller_id`,`seller_email`)
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=latin1;

/*Data for the table `seller` */

insert  into `seller`(`seller_id`,`seller_name`,`seller_passwrd`,`seller_phone`,`seller_email`,`membership`,`registerDate`,`expiryDate`,`register`) values (6,'s1','8ddf878039b70767c4a5bcf4f0c4f65e',4444444444,'s1','silver','2015-08-19','2015-10-18',1),(464,'shri','8ddcff3a80f4189ca1c9d4d902c3c909',8888888888,'shrinivas.bhuvad@webaccessglobal.com','platinum','2015-08-31','2015-09-30',0),(468,'a','8ddcff3a80f4189ca1c9d4d902c3c909',8888888888,'qqqq','golden','2015-08-31','2015-11-29',0),(469,'q','8ddcff3a80f4189ca1c9d4d902c3c909',8888888888,'a@fdd.com','silver','2015-08-31','2015-10-30',1),(470,'nokia','8ddcff3a80f4189ca1c9d4d902c3c909',8888888888,'dq@d.com','silver','2015-08-31','2015-10-30',0),(471,'q','8ddcff3a80f4189ca1c9d4d902c3c909',8888888888,'s1@de.in','platinum','2015-08-31','2015-09-30',1),(472,'leo','8ddcff3a80f4189ca1c9d4d902c3c909',8888888888,'w@w.com','silver','2015-09-01','2015-10-31',0),(473,'q','8ddcff3a80f4189ca1c9d4d902c3c909',8888888888,'d@d.com1','platinum','2015-09-01','2015-10-01',0),(474,'q','8ddcff3a80f4189ca1c9d4d902c3c909',8888888888,'d@dw.com','silver','2015-09-01','2015-10-31',0),(475,'shri','8ddcff3a80f4189ca1c9d4d902c3c909',8888888888,'shri@g.com','silver','2015-09-03','2015-11-02',1),(476,'shri','8ddcff3a80f4189ca1c9d4d902c3c909',8888888888,'sa@gmail.com','platinum','2015-09-23','2015-10-23',0);

/*Table structure for table `seller_payment` */

DROP TABLE IF EXISTS `seller_payment`;

CREATE TABLE `seller_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) DEFAULT NULL,
  `transactionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `seller_payment` */

insert  into `seller_payment`(`id`,`seller_id`,`transactionId`) values (3,456,29082015140729456),(4,457,29082015155455457),(5,458,29082015160355458),(6,459,29082015161635459),(7,460,29082015162718460),(8,462,29082015172535462),(9,464,31082015101607464),(10,466,31082015123629466),(11,466,31082015123811466),(12,467,31082015124221467),(13,468,31082015140535468),(14,469,31082015162843469),(15,470,31082015185842470),(16,471,31082015194635471),(17,474,1092015095826474),(18,475,3092015184655475);

/*Table structure for table `todaysdeal` */

DROP TABLE IF EXISTS `todaysdeal`;

CREATE TABLE `todaysdeal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `img_path` varchar(100) DEFAULT NULL,
  `seller_email` varchar(50) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `todaysdeal` */

insert  into `todaysdeal`(`id`,`name`,`price`,`quantity`,`img_path`,`seller_email`,`discription`,`date`,`discount`,`seller_id`) values (2,'samsung',10000,3,'upload/qindex1.jpg','s1','get 50% discount on purchasing today ','2015-08-24',50,NULL),(6,'motorola',20000,5,'upload/motorola-j8H-E87.jpeg','suraj.chougule@webaccessglobal.com','save 4000 on actual price ','2015-08-24',20,NULL),(7,'lenova',20000,2,'upload/lenova-j8H-E87.jpeg','s1','buy one get one free only today','2015-08-25',0,NULL),(8,'samsung',20000,2,'upload/wwwindex1.jpg','s1','Buy one get one free only today','2015-08-27',0,NULL),(9,'p',7,7,'upload/pindex1.jpg','s1','p','2015-08-28',7,6),(10,'q',1,1,'upload/qindeyyx.jpg','s1','q','2015-08-28',1,6),(11,'q',1,1,'upload/qindex1.jpg','shri','q','2015-08-29',1,7),(12,'lenova',20000,2,'upload/qqqblackbe.jpg','s1','buy one get one free only today','2015-08-31',0,6),(13,'eeee',333,3,'upload/eeeeindex1.jpg','s1','dd3','2015-08-31',3,6),(14,'samsung',10000,5,'upload/samsungChrysanthemum.jpg','s1','buy one get one free','2015-09-01',0,6);

/* Procedure structure for procedure `Add_catagory` */

/*!50003 DROP PROCEDURE IF EXISTS  `Add_catagory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_catagory`(in `catg_name` varchar(20))
BEGIN
insert into `r_prodctcatgrary`(`catg_name`) values (`catg_name`);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Add_Product` */

/*!50003 DROP PROCEDURE IF EXISTS  `Add_Product` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_Product`(in `prod_name` varchar(20),`prod_prize` double,`prod_discr` varchar(200),`prod_quantity` int(11),`prod_catgName` varchar(20),`img_path` VARCHAR(40),`seller_id` varchar(40),`discount` VARCHAR(15),SellerId int)
BEGIN
INSERT INTO `r_product` (`prod_name`,`prod_prize`,`prod_discr`,`prod_quantity`,`prod_catgName`,`img_path`,`seller_id`,`discount`,SellerId)
 values(`prod_name`,`prod_prize`,`prod_discr`,`prod_quantity`,`prod_catgName`,`img_path`,`seller_id`,`discount`,SellerId);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Display_prod` */

/*!50003 DROP PROCEDURE IF EXISTS  `Display_prod` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Display_prod`(IN name1 VARCHAR(20),price double)
BEGIN
SELECT * FROM  `r_product` WHERE prod_catgName=name1 AND prod_prize<price and status=1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insertCust` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertCust` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCust`(IN name1 VARCHAR(20),email VARCHAR(50),phno VARCHAR(15),pass VARCHAR(50))
BEGIN
INSERT INTO r_cust (cust_name,cust_email,cust_phoneNo,cust_pass,prof_createdon,`roll`) VALUES(name1,email,phno,MD5(pass),curdate(),1);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `orderComplete` */

/*!50003 DROP PROCEDURE IF EXISTS  `orderComplete` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `orderComplete`(in `order_id` int)
BEGIN
UPDATE r_order SET STATUS=1 WHERE `order_id`=`order_id`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `orderData` */

/*!50003 DROP PROCEDURE IF EXISTS  `orderData` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `orderData`(in `order_quantity` int,`order_TotalPrise` int,`cust_email` varchar(50),`name` varchar(20),`customer_id` int)
BEGIN
INSERT INTO `r_order`(`order_date`,`order_quantity`,`order_TotalPrise`,`cust_email`, `name`,customer_id) VALUES(CURDATE(),`order_quantity`,`order_TotalPrise`,`cust_email`,`name`,`customer_id`);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `orderdetailData` */

/*!50003 DROP PROCEDURE IF EXISTS  `orderdetailData` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `orderdetailData`(in `od_productName` varchar(20),`od_quantity` int,`od_ProductPrize` int,`prod_id` int,`order_id` int,
    `cust_email` varchar(50),`img_path` varchar(100),`customer_id` int)
BEGIN
INSERT INTO `r_orderdetail`(`od_date`,`od_productName`,`od_quantity`,`od_ProductPrize`,`prod_id`,`order_id`,cust_email,img_path,customer_id)
   VALUES(CURDATE(),`od_productName`,`od_quantity`,`od_ProductPrize`,`prod_id`,`order_id`,`cust_email`,`img_path`,`customer_id`);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `orderId` */

/*!50003 DROP PROCEDURE IF EXISTS  `orderId` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `orderId`()
BEGIN
SELECT `order_id`  FROM `r_order` WHERE `order_id` = (SELECT MAX(`order_id`) FROM  `r_order`);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `ordersDetail` */

/*!50003 DROP PROCEDURE IF EXISTS  `ordersDetail` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ordersDetail`(in cust_email varchar(50))
BEGIN
SELECT * FROM `r_orderdetail` WHERE cust_email=cust_email;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `orederAddressData` */

/*!50003 DROP PROCEDURE IF EXISTS  `orederAddressData` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `orederAddressData`(in `order_id` int,`fname` varchar(20),`lname` varchar(20),`address` varchar(100),`landmark` varchar(100),
    `pincode` bigint(10),`city` VARCHAR(20),`dist` VARCHAR(20),`state` VARCHAR(20),`country` VARCHAR(20),`mobile` bigint(20),`type` varchar(20))
BEGIN
INSERT INTO `r_orderAddress`(`order_id`,`fname`,`lname`,`address`,`landmark`,`pincode`,`city`,`dist`,`state`,`country`,`mobile`,`type`)
VALUES(`order_id`,`fname`,`lname`,`address`,`landmark`,`pincode`,`city`,`dist`,`state`,`country`,`mobile`,`type`);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `productCatagory` */

/*!50003 DROP PROCEDURE IF EXISTS  `productCatagory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `productCatagory`()
BEGIN
SELECT * FROM `r_prodctcatgrary`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SelectCust` */

/*!50003 DROP PROCEDURE IF EXISTS  `SelectCust` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectCust`(in email varchar(50))
BEGIN
SELECT `cust_name`,cust_pass,`roll`,`cust_id` FROM r_cust WHERE cust_email=email;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `selectProduct` */

/*!50003 DROP PROCEDURE IF EXISTS  `selectProduct` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `selectProduct`()
BEGIN
SELECT * FROM `r_product`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SelectSell` */

/*!50003 DROP PROCEDURE IF EXISTS  `SelectSell` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectSell`(IN email VARCHAR(50))
BEGIN
SELECT `seller_name`,seller_passwrd,`seller_id` FROM seller WHERE seller_email=email;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Seller` */

/*!50003 DROP PROCEDURE IF EXISTS  `Seller` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Seller`(in `seller_name` varchar(10),
`seller_passwrd` varchar(50),`seller_phone` bigint(15),`seller_email` varchar(50),
`membership` varchar(20),t int)
BEGIN
insert into seller(`seller_name`,
`seller_passwrd`,`seller_phone`,`seller_email`,`membership`,`registerDate`,`expiryDate` )
 values(`seller_name`,md5(`seller_passwrd`),`seller_phone`,`seller_email`,`membership`,
 curdate(),DATE_ADD(CURDATE(), INTERVAL t day));
    END */$$
DELIMITER ;

/* Procedure structure for procedure `todaysDeal` */

/*!50003 DROP PROCEDURE IF EXISTS  `todaysDeal` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `todaysDeal`(in `name` varchar(50),`price` double,`quantity` int,`img_path` VARCHAR(100),
    `seller_email` VARCHAR(50),
    `discription` VARCHAR(200),`discount` int,`seller_id` int)
BEGIN
INSERT INTO `todaysdeal`(`name`,`price`,`quantity`,`img_path`,`seller_email`,`discription`,`discount`,`date`,`seller_id`)
 VALUES(`name`,`price`,`quantity`,`img_path`,`seller_email`,`discription`,`discount`,curdate(),`seller_id`);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `updateProduct` */

/*!50003 DROP PROCEDURE IF EXISTS  `updateProduct` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProduct`(in `prod_name` varchar(20),`prod_prize` double,`prod_quantity` int,`discount` varchar(15),`prod_id` int)
BEGIN
UPDATE  `r_product` set `prod_name`=`prod_name`,`prod_prize`=`prod_prize`,`prod_quantity`=`prod_quantity`,`discount`=`discount` where `prod_id`=`prod_id`;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
