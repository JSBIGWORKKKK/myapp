/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-06-20 21:27:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mylike`
-- ----------------------------
DROP TABLE IF EXISTS `mylike`;
CREATE TABLE `mylike` (
  `account` varchar(255) NOT NULL DEFAULT '',
  `movieid` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`account`,`movieid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mylike
-- ----------------------------
INSERT INTO `mylike` VALUES ('111', 'csyx');
INSERT INTO `mylike` VALUES ('111', 'zljsj');
INSERT INTO `mylike` VALUES ('123', 'csyx');
INSERT INTO `mylike` VALUES ('123', 'zljsj');
