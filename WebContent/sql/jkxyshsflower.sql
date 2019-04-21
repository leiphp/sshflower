/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : jkxyshsflower

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-21 17:26:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for catalog
-- ----------------------------
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
  `catalogid` int(11) NOT NULL AUTO_INCREMENT,
  `catalogname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`catalogid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of catalog
-- ----------------------------
INSERT INTO `catalog` VALUES ('1', '红玫瑰');
INSERT INTO `catalog` VALUES ('2', '白玫瑰');
INSERT INTO `catalog` VALUES ('3', '粉玫瑰');
INSERT INTO `catalog` VALUES ('4', '紫玫瑰');
INSERT INTO `catalog` VALUES ('5', '蓝玫瑰');

-- ----------------------------
-- Table structure for flower
-- ----------------------------
DROP TABLE IF EXISTS `flower`;
CREATE TABLE `flower` (
  `flowerid` int(11) NOT NULL AUTO_INCREMENT,
  `flowername` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `picture` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `catalogid` int(11) DEFAULT NULL,
  PRIMARY KEY (`flowerid`),
  KEY `FK_flower` (`catalogid`),
  CONSTRAINT `FK_flower` FOREIGN KEY (`catalogid`) REFERENCES `catalog` (`catalogid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of flower
-- ----------------------------
INSERT INTO `flower` VALUES ('1', '醉爱-红玫瑰（9支）', '119', 'h1.jpg', '1');
INSERT INTO `flower` VALUES ('2', '香水百合玫瑰', '129', 'h2.jpg', '1');
INSERT INTO `flower` VALUES ('3', '唯爱红玫瑰', '126', 'h3.jpg', '1');
INSERT INTO `flower` VALUES ('4', '梦巴黎红玫瑰', '116', 'h4.jpg', '1');
INSERT INTO `flower` VALUES ('5', '思念红玫瑰', '139', 'h5.jpg', '1');
INSERT INTO `flower` VALUES ('6', '愿得一人心玫瑰', '136', 'h6.jpg', '1');
INSERT INTO `flower` VALUES ('7', '约见', '115', 'b1.jpg', '2');
INSERT INTO `flower` VALUES ('8', '相知', '199', 'b2.jpg', '2');
INSERT INTO `flower` VALUES ('9', '相依相伴', '176', 'b3.jpg', '2');
INSERT INTO `flower` VALUES ('10', '初遇见', '159', 'b4.jpg', '2');
INSERT INTO `flower` VALUES ('11', '心醉', '169', 'b5.jpg', '2');
INSERT INTO `flower` VALUES ('12', '夏之恋', '187', 'b6.jpg', '2');
INSERT INTO `flower` VALUES ('13', '粉红回忆', '201', 'f1.jpg', '3');
INSERT INTO `flower` VALUES ('14', ' 暖', '220', 'f2.jpg', '3');
INSERT INTO `flower` VALUES ('15', '纯真年代', '216', 'b1.jpg', '4');
INSERT INTO `flower` VALUES ('17', '蓝魅', '139', 'l2.jpg', '5');
INSERT INTO `flower` VALUES ('18', '蓝色醉爱', '145', 'l3.jpg', '5');
INSERT INTO `flower` VALUES ('19', '至尊玫瑰', '127', 'l4.jpg', '5');

-- ----------------------------
-- Table structure for guashi
-- ----------------------------
DROP TABLE IF EXISTS `guashi`;
CREATE TABLE `guashi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `FK_guashi` (`userid`),
  CONSTRAINT `FK_guashi` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of guashi
-- ----------------------------
INSERT INTO `guashi` VALUES ('48', '5');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `orderitemid` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `flowerid` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderitemid`),
  KEY `FK_orderitem` (`flowerid`),
  KEY `FK_orderitem2` (`orderid`),
  CONSTRAINT `FK_orderitem` FOREIGN KEY (`flowerid`) REFERENCES `flower` (`flowerid`) ON UPDATE CASCADE,
  CONSTRAINT `FK_orderitem2` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('1', '333', '10', '7');
INSERT INTO `orderitem` VALUES ('2', '6', '10', '14');
INSERT INTO `orderitem` VALUES ('3', '2', '11', '15');
INSERT INTO `orderitem` VALUES ('4', '23', '11', '13');
INSERT INTO `orderitem` VALUES ('5', '20', '12', '1');
INSERT INTO `orderitem` VALUES ('6', '12', '13', '19');
INSERT INTO `orderitem` VALUES ('7', '3', '13', '13');
INSERT INTO `orderitem` VALUES ('8', '1', '14', '13');
INSERT INTO `orderitem` VALUES ('9', '2', '15', '7');
INSERT INTO `orderitem` VALUES ('10', '3', '15', '1');
INSERT INTO `orderitem` VALUES ('11', '1', '16', '18');
INSERT INTO `orderitem` VALUES ('12', '1', '17', '18');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `orderdate` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FK_orders` (`userid`),
  CONSTRAINT `FK_orders` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('7', '2015-07-24 17:24:56', '1');
INSERT INTO `orders` VALUES ('8', '2015-07-24 17:25:11', '1');
INSERT INTO `orders` VALUES ('9', '2015-07-24 17:30:33', '1');
INSERT INTO `orders` VALUES ('10', '2015-07-24 17:33:17', '1');
INSERT INTO `orders` VALUES ('11', '2015-07-26 15:16:44', '1');
INSERT INTO `orders` VALUES ('12', '2015-07-30 20:16:14', '1');
INSERT INTO `orders` VALUES ('13', '2015-06-01 21:01:49', '1');
INSERT INTO `orders` VALUES ('14', '2019-04-21 16:33:54', '6');
INSERT INTO `orders` VALUES ('15', '2019-04-21 16:35:51', '6');
INSERT INTO `orders` VALUES ('16', '2019-04-21 17:03:26', '6');
INSERT INTO `orders` VALUES ('17', '2019-04-21 17:05:23', '7');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'ty', '56', 'customer');
INSERT INTO `user` VALUES ('2', 'admin', 'admin666', 'admin');
INSERT INTO `user` VALUES ('3', 'er', '666', 'customer');
INSERT INTO `user` VALUES ('4', '妈妈', '666', 'customer');
INSERT INTO `user` VALUES ('5', 'fg', '66', null);
INSERT INTO `user` VALUES ('6', 'lei', '111111', 'customer');
INSERT INTO `user` VALUES ('7', 'xuxiao', '123456', 'customer');

-- ----------------------------
-- Table structure for userdetail
-- ----------------------------
DROP TABLE IF EXISTS `userdetail`;
CREATE TABLE `userdetail` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `xb` bit(1) DEFAULT NULL,
  `truename` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `csrq` date DEFAULT NULL,
  `phone` char(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userid`),
  CONSTRAINT `FK_userdetail` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userdetail
-- ----------------------------
INSERT INTO `userdetail` VALUES ('1', null, '', null, '', '', '');
INSERT INTO `userdetail` VALUES ('3', null, 'fdg ', null, '', '', '');
INSERT INTO `userdetail` VALUES ('6', '', 'leiwen', '2017-03-28', '13798262417', '', 'leiwen');
INSERT INTO `userdetail` VALUES ('7', '\0', 'uuu', '2019-04-21', '13015780078', '', '');
