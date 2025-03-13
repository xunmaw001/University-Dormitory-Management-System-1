-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmw3131
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmw3131/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmw3131/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmw3131/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348133840 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (11,'2021-02-26 13:54:21','公告标题1','http://localhost:8080/ssmw3131/upload/gonggaoxinxi_tupian1.jpg','内容1','2021-02-26'),(12,'2021-02-26 13:54:21','公告标题2','http://localhost:8080/ssmw3131/upload/gonggaoxinxi_tupian2.jpg','内容2','2021-02-26'),(13,'2021-02-26 13:54:21','公告标题3','http://localhost:8080/ssmw3131/upload/gonggaoxinxi_tupian3.jpg','内容3','2021-02-26'),(14,'2021-02-26 13:54:21','公告标题4','http://localhost:8080/ssmw3131/upload/gonggaoxinxi_tupian4.jpg','内容4','2021-02-26'),(15,'2021-02-26 13:54:21','公告标题5','http://localhost:8080/ssmw3131/upload/gonggaoxinxi_tupian5.jpg','内容5','2021-02-26'),(16,'2021-02-26 13:54:21','公告标题6','http://localhost:8080/ssmw3131/upload/gonggaoxinxi_tupian6.jpg','内容6','2021-02-26'),(1614348133839,'2021-02-26 14:02:12','关于宿舍检查通知','http://localhost:8080/ssmw3131/upload/1614348124153.jpg','<p>宿舍检查</p><p><img src=\"http://localhost:8080/ssmw3131/upload/1614348131419.jpg\"></p>','2021-02-26');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaofeixinxi`
--

DROP TABLE IF EXISTS `jiaofeixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `jiaofeileixing` varchar(200) DEFAULT NULL COMMENT '缴费类型',
  `jiaofeijine` int(11) DEFAULT NULL COMMENT '缴费金额',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348385348 DEFAULT CHARSET=utf8 COMMENT='缴费信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaofeixinxi`
--

LOCK TABLES `jiaofeixinxi` WRITE;
/*!40000 ALTER TABLE `jiaofeixinxi` DISABLE KEYS */;
INSERT INTO `jiaofeixinxi` VALUES (91,'2021-02-26 13:54:21','学号1','学生姓名1','宿舍号1','月份1','水费',1,'宿管账号1','宿管姓名1','楼栋1','未支付'),(92,'2021-02-26 13:54:21','学号2','学生姓名2','宿舍号2','月份2','水费',2,'宿管账号2','宿管姓名2','楼栋2','未支付'),(93,'2021-02-26 13:54:21','学号3','学生姓名3','宿舍号3','月份3','水费',3,'宿管账号3','宿管姓名3','楼栋3','未支付'),(94,'2021-02-26 13:54:21','学号4','学生姓名4','宿舍号4','月份4','水费',4,'宿管账号4','宿管姓名4','楼栋4','未支付'),(95,'2021-02-26 13:54:21','学号5','学生姓名5','宿舍号5','月份5','水费',5,'宿管账号5','宿管姓名5','楼栋5','未支付'),(96,'2021-02-26 13:54:21','学号6','学生姓名6','宿舍号6','月份6','水费',6,'宿管账号6','宿管姓名6','楼栋6','未支付'),(1614348385347,'2021-02-26 14:06:24','2','陈一','5栋604','2021年1月','电费',100,'1','陈月','南区5栋','已支付');
/*!40000 ALTER TABLE `jiaofeixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaqiliuxiao`
--

DROP TABLE IF EXISTS `jiaqiliuxiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaqiliuxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shenqingneirong` longtext COMMENT '申请内容',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348506417 DEFAULT CHARSET=utf8 COMMENT='假期留校';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaqiliuxiao`
--

LOCK TABLES `jiaqiliuxiao` WRITE;
/*!40000 ALTER TABLE `jiaqiliuxiao` DISABLE KEYS */;
INSERT INTO `jiaqiliuxiao` VALUES (81,'2021-02-26 13:54:21','宿舍号1','宿舍类型1','楼栋1','学号1','学生姓名1','申请内容1','2021-02-26','宿管账号1','宿管姓名1','是',''),(82,'2021-02-26 13:54:21','宿舍号2','宿舍类型2','楼栋2','学号2','学生姓名2','申请内容2','2021-02-26','宿管账号2','宿管姓名2','是',''),(83,'2021-02-26 13:54:21','宿舍号3','宿舍类型3','楼栋3','学号3','学生姓名3','申请内容3','2021-02-26','宿管账号3','宿管姓名3','是',''),(84,'2021-02-26 13:54:21','宿舍号4','宿舍类型4','楼栋4','学号4','学生姓名4','申请内容4','2021-02-26','宿管账号4','宿管姓名4','是',''),(85,'2021-02-26 13:54:21','宿舍号5','宿舍类型5','楼栋5','学号5','学生姓名5','申请内容5','2021-02-26','宿管账号5','宿管姓名5','是',''),(86,'2021-02-26 13:54:21','宿舍号6','宿舍类型6','楼栋6','学号6','学生姓名6','申请内容6','2021-02-26','宿管账号6','宿管姓名6','是',''),(1614348506416,'2021-02-26 14:08:25','5栋604','女生','南区5栋','2','陈一','假期勤工俭学','2021-02-26','1','陈月','是','ok');
/*!40000 ALTER TABLE `jiaqiliuxiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loudong`
--

DROP TABLE IF EXISTS `loudong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loudong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `loudong` varchar(200) NOT NULL COMMENT '楼栋',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `cengshu` int(11) DEFAULT NULL COMMENT '层数',
  `susheshuliang` int(11) DEFAULT NULL COMMENT '宿舍数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `loudong` (`loudong`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348153232 DEFAULT CHARSET=utf8 COMMENT='楼栋';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loudong`
--

LOCK TABLES `loudong` WRITE;
/*!40000 ALTER TABLE `loudong` DISABLE KEYS */;
INSERT INTO `loudong` VALUES (31,'2021-02-26 13:54:21','楼栋1','位置1',1,1),(32,'2021-02-26 13:54:21','楼栋2','位置2',2,2),(33,'2021-02-26 13:54:21','楼栋3','位置3',3,3),(34,'2021-02-26 13:54:21','楼栋4','位置4',4,4),(35,'2021-02-26 13:54:21','楼栋5','位置5',5,5),(36,'2021-02-26 13:54:21','楼栋6','位置6',6,6),(1614348153231,'2021-02-26 14:02:33','南区5栋','南区',10,100);
/*!40000 ALTER TABLE `loudong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiwuzhaoling`
--

DROP TABLE IF EXISTS `shiwuzhaoling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiwuzhaoling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupin` varchar(200) DEFAULT NULL COMMENT '物品',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348440389 DEFAULT CHARSET=utf8 COMMENT='失物招领';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiwuzhaoling`
--

LOCK TABLES `shiwuzhaoling` WRITE;
/*!40000 ALTER TABLE `shiwuzhaoling` DISABLE KEYS */;
INSERT INTO `shiwuzhaoling` VALUES (141,'2021-02-26 13:54:21','物品1','2021-02-26','宿管账号1','宿管姓名1','楼栋1'),(142,'2021-02-26 13:54:21','物品2','2021-02-26','宿管账号2','宿管姓名2','楼栋2'),(143,'2021-02-26 13:54:21','物品3','2021-02-26','宿管账号3','宿管姓名3','楼栋3'),(144,'2021-02-26 13:54:21','物品4','2021-02-26','宿管账号4','宿管姓名4','楼栋4'),(145,'2021-02-26 13:54:21','物品5','2021-02-26','宿管账号5','宿管姓名5','楼栋5'),(146,'2021-02-26 13:54:21','物品6','2021-02-26','宿管账号6','宿管姓名6','楼栋6'),(1614348440388,'2021-02-26 14:07:19','手机','2021-02-26','1','陈月','南区5栋');
/*!40000 ALTER TABLE `shiwuzhaoling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suguan`
--

DROP TABLE IF EXISTS `suguan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suguan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `suguanzhanghao` varchar(200) NOT NULL COMMENT '宿管账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `suguanxingming` varchar(200) NOT NULL COMMENT '宿管姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `suguanzhanghao` (`suguanzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348209857 DEFAULT CHARSET=utf8 COMMENT='宿管';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suguan`
--

LOCK TABLES `suguan` WRITE;
/*!40000 ALTER TABLE `suguan` DISABLE KEYS */;
INSERT INTO `suguan` VALUES (41,'2021-02-26 13:54:21','宿管1','123456','宿管姓名1','男','http://localhost:8080/ssmw3131/upload/suguan_touxiang1.jpg','楼栋1','13823888881'),(42,'2021-02-26 13:54:21','宿管2','123456','宿管姓名2','男','http://localhost:8080/ssmw3131/upload/suguan_touxiang2.jpg','楼栋2','13823888882'),(43,'2021-02-26 13:54:21','宿管3','123456','宿管姓名3','男','http://localhost:8080/ssmw3131/upload/suguan_touxiang3.jpg','楼栋3','13823888883'),(44,'2021-02-26 13:54:21','宿管4','123456','宿管姓名4','男','http://localhost:8080/ssmw3131/upload/suguan_touxiang4.jpg','楼栋4','13823888884'),(45,'2021-02-26 13:54:21','宿管5','123456','宿管姓名5','男','http://localhost:8080/ssmw3131/upload/suguan_touxiang5.jpg','楼栋5','13823888885'),(46,'2021-02-26 13:54:21','宿管6','123456','宿管姓名6','男','http://localhost:8080/ssmw3131/upload/suguan_touxiang6.jpg','楼栋6','13823888886'),(1614348209856,'2021-02-26 14:03:29','1','1','陈月','女','http://localhost:8080/ssmw3131/upload/1614348203573.jpg','南区5栋','12312312312');
/*!40000 ALTER TABLE `suguan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `susheanpai`
--

DROP TABLE IF EXISTS `susheanpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `susheanpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `kezhurenshu` varchar(200) DEFAULT NULL COMMENT '可住人数',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348275940 DEFAULT CHARSET=utf8 COMMENT='宿舍安排';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `susheanpai`
--

LOCK TABLES `susheanpai` WRITE;
/*!40000 ALTER TABLE `susheanpai` DISABLE KEYS */;
INSERT INTO `susheanpai` VALUES (61,'2021-02-26 13:54:21','宿舍号1','宿舍类型1','楼栋1','可住人数1','学号1','学生姓名1','宿管账号1','宿管姓名1'),(62,'2021-02-26 13:54:21','宿舍号2','宿舍类型2','楼栋2','可住人数2','学号2','学生姓名2','宿管账号2','宿管姓名2'),(63,'2021-02-26 13:54:21','宿舍号3','宿舍类型3','楼栋3','可住人数3','学号3','学生姓名3','宿管账号3','宿管姓名3'),(64,'2021-02-26 13:54:21','宿舍号4','宿舍类型4','楼栋4','可住人数4','学号4','学生姓名4','宿管账号4','宿管姓名4'),(65,'2021-02-26 13:54:21','宿舍号5','宿舍类型5','楼栋5','可住人数5','学号5','学生姓名5','宿管账号5','宿管姓名5'),(66,'2021-02-26 13:54:21','宿舍号6','宿舍类型6','楼栋6','可住人数6','学号6','学生姓名6','宿管账号6','宿管姓名6'),(1614348275939,'2021-02-26 14:04:35','5栋604','女生','南区5栋','4','2','陈一','1','陈月');
/*!40000 ALTER TABLE `susheanpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushebaoxiu`
--

DROP TABLE IF EXISTS `sushebaoxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushebaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `baoxiumingcheng` varchar(200) DEFAULT NULL COMMENT '报修名称',
  `baoxiuneirong` varchar(200) DEFAULT NULL COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348553489 DEFAULT CHARSET=utf8 COMMENT='宿舍报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushebaoxiu`
--

LOCK TABLES `sushebaoxiu` WRITE;
/*!40000 ALTER TABLE `sushebaoxiu` DISABLE KEYS */;
INSERT INTO `sushebaoxiu` VALUES (101,'2021-02-26 13:54:21','宿舍号1','报修名称1','报修内容1','2021-02-26','学号1','学生姓名1','是',''),(102,'2021-02-26 13:54:21','宿舍号2','报修名称2','报修内容2','2021-02-26','学号2','学生姓名2','是',''),(103,'2021-02-26 13:54:21','宿舍号3','报修名称3','报修内容3','2021-02-26','学号3','学生姓名3','是',''),(104,'2021-02-26 13:54:21','宿舍号4','报修名称4','报修内容4','2021-02-26','学号4','学生姓名4','是',''),(105,'2021-02-26 13:54:21','宿舍号5','报修名称5','报修内容5','2021-02-26','学号5','学生姓名5','是',''),(106,'2021-02-26 13:54:21','宿舍号6','报修名称6','报修内容6','2021-02-26','学号6','学生姓名6','是',''),(1614348553488,'2021-02-26 14:09:13','5栋604','水龙头','水龙头损坏','2021-02-26','2','陈一','是','明天上门修理');
/*!40000 ALTER TABLE `sushebaoxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushejiancha`
--

DROP TABLE IF EXISTS `sushejiancha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushejiancha` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `jianchaneirong` varchar(200) DEFAULT NULL COMMENT '检查内容',
  `jianchajieguo` varchar(200) DEFAULT NULL COMMENT '检查结果',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348416059 DEFAULT CHARSET=utf8 COMMENT='宿舍检查';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushejiancha`
--

LOCK TABLES `sushejiancha` WRITE;
/*!40000 ALTER TABLE `sushejiancha` DISABLE KEYS */;
INSERT INTO `sushejiancha` VALUES (131,'2021-02-26 13:54:21','学号1','学生姓名1','宿舍号1','检查内容1','良好','1','宿管账号1','宿管姓名1','楼栋1'),(132,'2021-02-26 13:54:21','学号2','学生姓名2','宿舍号2','检查内容2','良好','1','宿管账号2','宿管姓名2','楼栋2'),(133,'2021-02-26 13:54:21','学号3','学生姓名3','宿舍号3','检查内容3','良好','1','宿管账号3','宿管姓名3','楼栋3'),(134,'2021-02-26 13:54:21','学号4','学生姓名4','宿舍号4','检查内容4','良好','1','宿管账号4','宿管姓名4','楼栋4'),(135,'2021-02-26 13:54:21','学号5','学生姓名5','宿舍号5','检查内容5','良好','1','宿管账号5','宿管姓名5','楼栋5'),(136,'2021-02-26 13:54:21','学号6','学生姓名6','宿舍号6','检查内容6','良好','1','宿管账号6','宿管姓名6','楼栋6'),(1614348416058,'2021-02-26 14:06:55','2','陈一','5栋604','宿舍卫生','良好','5','1','陈月','南区5栋');
/*!40000 ALTER TABLE `sushejiancha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushexinxi`
--

DROP TABLE IF EXISTS `sushexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sushexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) NOT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `kezhurenshu` int(11) DEFAULT NULL COMMENT '可住人数',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348269845 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushexinxi`
--

LOCK TABLES `sushexinxi` WRITE;
/*!40000 ALTER TABLE `sushexinxi` DISABLE KEYS */;
INSERT INTO `sushexinxi` VALUES (51,'2021-02-26 13:54:21','宿舍号1','男生',1,'备注1','宿管账号1','宿管姓名1','楼栋1'),(52,'2021-02-26 13:54:21','宿舍号2','男生',2,'备注2','宿管账号2','宿管姓名2','楼栋2'),(53,'2021-02-26 13:54:21','宿舍号3','男生',3,'备注3','宿管账号3','宿管姓名3','楼栋3'),(54,'2021-02-26 13:54:21','宿舍号4','男生',4,'备注4','宿管账号4','宿管姓名4','楼栋4'),(55,'2021-02-26 13:54:21','宿舍号5','男生',5,'备注5','宿管账号5','宿管姓名5','楼栋5'),(56,'2021-02-26 13:54:21','宿舍号6','男生',6,'备注6','宿管账号6','宿管姓名6','楼栋6'),(1614348269844,'2021-02-26 14:04:28','5栋604','女生',4,'','1','陈月','南区5栋');
/*!40000 ALTER TABLE `sushexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiwenshangbao`
--

DROP TABLE IF EXISTS `tiwenshangbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiwenshangbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `tiwen` float NOT NULL COMMENT '体温',
  `shifoukesou` varchar(200) NOT NULL COMMENT '是否咳嗽',
  `shifoufuxie` varchar(200) NOT NULL COMMENT '是否腹泻',
  `shifoufali` varchar(200) NOT NULL COMMENT '是否乏力',
  `shifoujiuyi` varchar(200) NOT NULL COMMENT '是否就医',
  `qitaqingkuang` varchar(200) DEFAULT NULL COMMENT '其他情况',
  `shangbaoshijian` datetime DEFAULT NULL COMMENT '上报时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348579398 DEFAULT CHARSET=utf8 COMMENT='体温上报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiwenshangbao`
--

LOCK TABLES `tiwenshangbao` WRITE;
/*!40000 ALTER TABLE `tiwenshangbao` DISABLE KEYS */;
INSERT INTO `tiwenshangbao` VALUES (111,'2021-02-26 13:54:21','学号1','学生姓名1','宿舍号1',1,'是','是','是','是','其他情况1','2021-02-26 21:54:21'),(112,'2021-02-26 13:54:21','学号2','学生姓名2','宿舍号2',2,'是','是','是','是','其他情况2','2021-02-26 21:54:21'),(113,'2021-02-26 13:54:21','学号3','学生姓名3','宿舍号3',3,'是','是','是','是','其他情况3','2021-02-26 21:54:21'),(114,'2021-02-26 13:54:21','学号4','学生姓名4','宿舍号4',4,'是','是','是','是','其他情况4','2021-02-26 21:54:21'),(115,'2021-02-26 13:54:21','学号5','学生姓名5','宿舍号5',5,'是','是','是','是','其他情况5','2021-02-26 21:54:21'),(116,'2021-02-26 13:54:21','学号6','学生姓名6','宿舍号6',6,'是','是','是','是','其他情况6','2021-02-26 21:54:21'),(1614348579397,'2021-02-26 14:09:39','2','陈一','5栋604',36.5,'否','否','否','否','无','2021-02-26 14:00:00');
/*!40000 ALTER TABLE `tiwenshangbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','nhe268leyls80f8l4e2cttyssiuj6ecp','2021-02-26 13:57:34','2021-02-26 15:01:45'),(2,1614348209856,'1','suguan','宿管','oq5c77ce7j1nnm8osg9b4b66xrp2waef','2021-02-26 14:03:38','2021-02-26 15:10:16'),(3,1614348249429,'2','xuesheng','学生','m022lgc70xcw553sjclceabzh750s2qa','2021-02-26 14:07:57','2021-02-26 15:11:18');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuisuxinxi`
--

DROP TABLE IF EXISTS `tuisuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuisuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `tuisushuoming` varchar(200) DEFAULT NULL COMMENT '退宿说明',
  `tuisuriqi` date DEFAULT NULL COMMENT '退宿日期',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348518254 DEFAULT CHARSET=utf8 COMMENT='退宿信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuisuxinxi`
--

LOCK TABLES `tuisuxinxi` WRITE;
/*!40000 ALTER TABLE `tuisuxinxi` DISABLE KEYS */;
INSERT INTO `tuisuxinxi` VALUES (71,'2021-02-26 13:54:21','宿舍号1','宿舍类型1','楼栋1','退宿说明1','2021-02-26','2021-02-26','学号1','学生姓名1','宿管账号1','宿管姓名1','是',''),(72,'2021-02-26 13:54:21','宿舍号2','宿舍类型2','楼栋2','退宿说明2','2021-02-26','2021-02-26','学号2','学生姓名2','宿管账号2','宿管姓名2','是',''),(73,'2021-02-26 13:54:21','宿舍号3','宿舍类型3','楼栋3','退宿说明3','2021-02-26','2021-02-26','学号3','学生姓名3','宿管账号3','宿管姓名3','是',''),(74,'2021-02-26 13:54:21','宿舍号4','宿舍类型4','楼栋4','退宿说明4','2021-02-26','2021-02-26','学号4','学生姓名4','宿管账号4','宿管姓名4','是',''),(75,'2021-02-26 13:54:21','宿舍号5','宿舍类型5','楼栋5','退宿说明5','2021-02-26','2021-02-26','学号5','学生姓名5','宿管账号5','宿管姓名5','是',''),(76,'2021-02-26 13:54:21','宿舍号6','宿舍类型6','楼栋6','退宿说明6','2021-02-26','2021-02-26','学号6','学生姓名6','宿管账号6','宿管姓名6','是',''),(1614348518253,'2021-02-26 14:08:37','5栋604','女生','南区5栋','毕业','2021-02-28','2021-02-26','2','陈一','1','陈月','是','ok');
/*!40000 ALTER TABLE `tuisuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-26 13:54:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinguihai`
--

DROP TABLE IF EXISTS `wupinguihai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinguihai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `guihairiqi` date DEFAULT NULL COMMENT '归还日期',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348686822 DEFAULT CHARSET=utf8 COMMENT='物品归还';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinguihai`
--

LOCK TABLES `wupinguihai` WRITE;
/*!40000 ALTER TABLE `wupinguihai` DISABLE KEYS */;
INSERT INTO `wupinguihai` VALUES (171,'2021-02-26 13:54:22','物品名称1','类型1','2021-02-26','宿管账号1','宿管姓名1','学号1','学生姓名1','是',''),(172,'2021-02-26 13:54:22','物品名称2','类型2','2021-02-26','宿管账号2','宿管姓名2','学号2','学生姓名2','是',''),(173,'2021-02-26 13:54:22','物品名称3','类型3','2021-02-26','宿管账号3','宿管姓名3','学号3','学生姓名3','是',''),(174,'2021-02-26 13:54:22','物品名称4','类型4','2021-02-26','宿管账号4','宿管姓名4','学号4','学生姓名4','是',''),(175,'2021-02-26 13:54:22','物品名称5','类型5','2021-02-26','宿管账号5','宿管姓名5','学号5','学生姓名5','是',''),(176,'2021-02-26 13:54:22','物品名称6','类型6','2021-02-26','宿管账号6','宿管姓名6','学号6','学生姓名6','是',''),(1614348686821,'2021-02-26 14:11:26','螺丝刀','维修工具','2021-02-26','1','陈月','2','陈一','否','');
/*!40000 ALTER TABLE `wupinguihai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinjieyong`
--

DROP TABLE IF EXISTS `wupinjieyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinjieyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  `jieyongshuoming` varchar(200) DEFAULT NULL COMMENT '借用说明',
  `jieyongriqi` date DEFAULT NULL COMMENT '借用日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348607692 DEFAULT CHARSET=utf8 COMMENT='物品借用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinjieyong`
--

LOCK TABLES `wupinjieyong` WRITE;
/*!40000 ALTER TABLE `wupinjieyong` DISABLE KEYS */;
INSERT INTO `wupinjieyong` VALUES (161,'2021-02-26 13:54:22','物品名称1','类型1','宿管账号1','宿管姓名1','楼栋1','借用说明1','2021-02-26','学号1','学生姓名1','宿舍号1','是',''),(162,'2021-02-26 13:54:22','物品名称2','类型2','宿管账号2','宿管姓名2','楼栋2','借用说明2','2021-02-26','学号2','学生姓名2','宿舍号2','是',''),(163,'2021-02-26 13:54:22','物品名称3','类型3','宿管账号3','宿管姓名3','楼栋3','借用说明3','2021-02-26','学号3','学生姓名3','宿舍号3','是',''),(164,'2021-02-26 13:54:22','物品名称4','类型4','宿管账号4','宿管姓名4','楼栋4','借用说明4','2021-02-26','学号4','学生姓名4','宿舍号4','是',''),(165,'2021-02-26 13:54:22','物品名称5','类型5','宿管账号5','宿管姓名5','楼栋5','借用说明5','2021-02-26','学号5','学生姓名5','宿舍号5','是',''),(166,'2021-02-26 13:54:22','物品名称6','类型6','宿管账号6','宿管姓名6','楼栋6','借用说明6','2021-02-26','学号6','学生姓名6','宿舍号6','是',''),(1614348607691,'2021-02-26 14:10:06','螺丝刀','维修工具','1','陈月','南区5栋','维修用','2021-02-26','2','陈一','5栋604','是','同意');
/*!40000 ALTER TABLE `wupinjieyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wupinxinxi`
--

DROP TABLE IF EXISTS `wupinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wupinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `yongtu` varchar(200) DEFAULT NULL COMMENT '用途',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348469837 DEFAULT CHARSET=utf8 COMMENT='物品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wupinxinxi`
--

LOCK TABLES `wupinxinxi` WRITE;
/*!40000 ALTER TABLE `wupinxinxi` DISABLE KEYS */;
INSERT INTO `wupinxinxi` VALUES (151,'2021-02-26 13:54:21','物品名称1','http://localhost:8080/ssmw3131/upload/1614348009284.jpg','类型1','用途1','宿管账号1','宿管姓名1','楼栋1'),(152,'2021-02-26 13:54:21','物品名称2','http://localhost:8080/ssmw3131/upload/wupinxinxi_tupian2.jpg','类型2','用途2','宿管账号2','宿管姓名2','楼栋2'),(153,'2021-02-26 13:54:21','物品名称3','http://localhost:8080/ssmw3131/upload/1614348025934.jpg','类型3','用途3','宿管账号3','宿管姓名3','楼栋3'),(154,'2021-02-26 13:54:21','物品名称4','http://localhost:8080/ssmw3131/upload/1614348052361.jpg','类型4','用途4','宿管账号4','宿管姓名4','楼栋4'),(155,'2021-02-26 13:54:21','物品名称5','http://localhost:8080/ssmw3131/upload/1614348061534.jpg','类型5','用途5','宿管账号5','宿管姓名5','楼栋5'),(156,'2021-02-26 13:54:21','物品名称6','http://localhost:8080/ssmw3131/upload/1614348070650.jpg','类型6','用途6','宿管账号6','宿管姓名6','楼栋6'),(1614348469836,'2021-02-26 14:07:49','螺丝刀','http://localhost:8080/ssmw3131/upload/1614348459627.jpg','维修工具','维修','1','陈月','南区5栋');
/*!40000 ALTER TABLE `wupinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348249430 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (21,'2021-02-26 13:54:21','学生1','123456','学生姓名1','男','http://localhost:8080/ssmw3131/upload/xuesheng_touxiang1.jpg','13823888881','773890001@qq.com','宿舍号1'),(22,'2021-02-26 13:54:21','学生2','123456','学生姓名2','男','http://localhost:8080/ssmw3131/upload/xuesheng_touxiang2.jpg','13823888882','773890002@qq.com','宿舍号2'),(23,'2021-02-26 13:54:21','学生3','123456','学生姓名3','男','http://localhost:8080/ssmw3131/upload/xuesheng_touxiang3.jpg','13823888883','773890003@qq.com','宿舍号3'),(24,'2021-02-26 13:54:21','学生4','123456','学生姓名4','男','http://localhost:8080/ssmw3131/upload/xuesheng_touxiang4.jpg','13823888884','773890004@qq.com','宿舍号4'),(25,'2021-02-26 13:54:21','学生5','123456','学生姓名5','男','http://localhost:8080/ssmw3131/upload/xuesheng_touxiang5.jpg','13823888885','773890005@qq.com','宿舍号5'),(26,'2021-02-26 13:54:21','学生6','123456','学生姓名6','男','http://localhost:8080/ssmw3131/upload/xuesheng_touxiang6.jpg','13823888886','773890006@qq.com','宿舍号6'),(1614348249429,'2021-02-26 14:04:09','2','2','陈一','女','http://localhost:8080/ssmw3131/upload/1614348237537.jpg','12345678978','123@qq.com','5栋604');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengwangui`
--

DROP TABLE IF EXISTS `xueshengwangui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengwangui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `sushehao` varchar(200) DEFAULT NULL COMMENT '宿舍号',
  `wanguiyuanyin` varchar(200) DEFAULT NULL COMMENT '晚归原因',
  `wanguishijian` datetime DEFAULT NULL COMMENT '晚归时间',
  `suguanzhanghao` varchar(200) DEFAULT NULL COMMENT '宿管账号',
  `suguanxingming` varchar(200) DEFAULT NULL COMMENT '宿管姓名',
  `loudong` varchar(200) DEFAULT NULL COMMENT '楼栋',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614348403272 DEFAULT CHARSET=utf8 COMMENT='学生晚归';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengwangui`
--

LOCK TABLES `xueshengwangui` WRITE;
/*!40000 ALTER TABLE `xueshengwangui` DISABLE KEYS */;
INSERT INTO `xueshengwangui` VALUES (121,'2021-02-26 13:54:21','学号1','学生姓名1','宿舍号1','晚归原因1','2021-02-26 21:54:21','宿管账号1','宿管姓名1','楼栋1'),(122,'2021-02-26 13:54:21','学号2','学生姓名2','宿舍号2','晚归原因2','2021-02-26 21:54:21','宿管账号2','宿管姓名2','楼栋2'),(123,'2021-02-26 13:54:21','学号3','学生姓名3','宿舍号3','晚归原因3','2021-02-26 21:54:21','宿管账号3','宿管姓名3','楼栋3'),(124,'2021-02-26 13:54:21','学号4','学生姓名4','宿舍号4','晚归原因4','2021-02-26 21:54:21','宿管账号4','宿管姓名4','楼栋4'),(125,'2021-02-26 13:54:21','学号5','学生姓名5','宿舍号5','晚归原因5','2021-02-26 21:54:21','宿管账号5','宿管姓名5','楼栋5'),(126,'2021-02-26 13:54:21','学号6','学生姓名6','宿舍号6','晚归原因6','2021-02-26 21:54:21','宿管账号6','宿管姓名6','楼栋6'),(1614348403271,'2021-02-26 14:06:42','2','陈一','5栋604','学院比赛','2021-02-26 23:00:00','1','陈月','南区5栋');
/*!40000 ALTER TABLE `xueshengwangui` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-27 11:44:25
