/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-06-20 16:44:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for movie_detail
-- ----------------------------
DROP TABLE IF EXISTS `movie_detail`;
CREATE TABLE `movie_detail` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `director` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mtime` varchar(255) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of movie_detail
-- ----------------------------
INSERT INTO `movie_detail` VALUES ('csyx', '厕所英雄', '8.4', '什里·那拉扬·辛', '阿克谢·库玛尔', '', null, '不要总想权宜之计', null, null, null, null);
INSERT INTO `movie_detail` VALUES ('zljsj', '侏罗纪世界', '8.8', '胡安·安东尼奥·巴亚纳', '克里斯·帕拉特', null, null, '暂别“银护”的帕帕又来驯恐龙了', null, null, null, null);
