/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-06-18 16:57:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `moviename`
-- ----------------------------
DROP TABLE IF EXISTS `moviename`;
CREATE TABLE `moviename` (
  `name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `val` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of moviename
-- ----------------------------
INSERT INTO `moviename` VALUES ('侏罗纪世纪', 'zljsj');
INSERT INTO `moviename` VALUES ('厕所英雄', 'csyx');
INSERT INTO `moviename` VALUES ('哆啦A梦：大雄的金银岛', 'dlam');
INSERT INTO `moviename` VALUES ('复仇者联盟3：无限战争（3D）', 'fl3');
INSERT INTO `moviename` VALUES ('完美陌生人', 'wmmsr');
INSERT INTO `moviename` VALUES ('深海越狱', 'shyy');
