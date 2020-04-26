/*
Navicat MySQL Data Transfer

Source Server         : JavaEE
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : bookstore

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2020-04-26 11:49:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `sales` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `img_path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('2', '数据结构与算法', '严敏君', '78.50', '6', '13', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('3', '怎样拐跑别人的媳妇', '龙伍', '68.00', '99999', '52', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('4', '木虚肉盖饭', '小胖', '16.00', '1000', '50', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('5', 'C++编程思想', '刚哥', '45.50', '19', '90', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('6', '蛋炒饭', '周星星', '9.90', '12', '53', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('7', '赌神', '龙伍', '66.50', '125', '535', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('8', 'Java编程思想', '阳哥', '99.50', '47', '36', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('9', 'JavaScript从入门到精通', '婷姐', '9.90', '85', '95', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('10', 'cocos2d-x游戏编程入门', '国哥', '49.00', '52', '62', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('11', 'C语言程序设计', '谭浩强', '28.00', '52', '74', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('12', 'Lua语言程序设计', '雷丰阳', '51.50', '48', '82', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('13', '西游记', '罗贯中', '12.00', '19', '9999', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('14', '水浒传', '华仔', '33.05', '22', '88', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('15', '操作系统原理', 'tyj', '133.05', '122', '188', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('25', 'sherlock221C1', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('26', '时间简史cc2', '2', '2.00', '2', '2', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('27', '时间简史aaac', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('28', '慎勿轻速c', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('29', '时间简史cc21', '3', '2.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('30', '时间简史cc23', '3', '3.00', '3', '3', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('31', '时间简史cc2ww', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('32', 'sherlock221C1dd', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('33', 'sherlock221C11', '2', '2.00', '2', '23', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('34', '1时间简史cc', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('35', '22慎勿轻速', '2', '2.00', '2', '2', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('36', 'ccsherlock221C1', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('37', '时间简史cc2qwdqd', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('38', '时间简史cc2fff1', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('39', 'qwe慎勿轻速', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('40', '时间简史aaaccccc', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('41', 'fffffffff', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('42', 'cccccccccccc', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('43', 'dddddddddd', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('44', 'fffffffffffffff11', '1', '1.00', '1', '1', 'static/img/default.jpg');
INSERT INTO `t_book` VALUES ('45', 'asfsgfg', '2', '1.00', '2', '2', 'static/img/default.jpg');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `price` decimal(11,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `total_price` decimal(11,2) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin', 'admin@atguigu.com');
INSERT INTO `t_user` VALUES ('2', 'sherlock', '111111', 'qwrqt@qq.com');
INSERT INTO `t_user` VALUES ('3', 'gggggg', '111111', '43535454@qq.com');
INSERT INTO `t_user` VALUES ('4', 'sherlock22c', 'aaaaaa', 'qwqr@qq.com');
INSERT INTO `t_user` VALUES ('5', 'sherlock22cc', '11111', 'qwqr@qq.com');
