/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2018-06-20 21:28:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `movie_detail`
-- ----------------------------
DROP TABLE IF EXISTS `movie_detail`;
CREATE TABLE `movie_detail` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `actor` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `mtime` varchar(255) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_detail
-- ----------------------------
INSERT INTO `movie_detail` VALUES ('csyx', '厕所英雄', '8.4', '什里·那拉扬·辛', '阿克谢·库玛尔', 'null', 'Toilet-Ek Prem Katha', '不要总想权宜之计', '剧情/喜剧', '印度|150分钟', '018-06-08 在中国大陆上映', '改编自真人真事，探讨印度农村家庭普遍没有厕所，妇女必须在野外如厕的现象。女主角担任教师，嫁给男主角后，发现家中没有厕所，和男主角“闹离婚”，还来了一场革命。');
INSERT INTO `movie_detail` VALUES ('zljsj', '侏罗纪世界', '8.8', '胡安·安东尼奥·巴亚纳', '克里斯·帕拉特', 'null', 'Jurassic World:Fallen Kingdom', '暂别“银护”的帕帕又来驯恐龙了', '动作/冒险/科幻', '美国|128分钟', '2018-06-15 在中国大陆上映', '侏罗纪世界主题公园及豪华度假村被失控的恐龙们摧毁已有四年。如今，纳布拉尔岛已经被人类遗弃，岛上幸存的恐龙们在丛林中自给自足。当岛上的休眠火山开始活跃以后，欧文（克里斯·帕拉特 饰）与克莱尔（布莱丝·达拉斯·霍华德 饰）发起了一场运动，想要保护岛上幸存的恐龙们免于灭绝。欧文一心想要找到自己依然失踪在野外的迅猛龙首领布鲁，克莱尔如今也尊重起这些生物，以保护它们为己任。两人在熔岩开始喷发时来到了危险的小岛，他们的冒险也揭开了一个可能让地球回到史前时代般混乱秩序的阴谋。');
