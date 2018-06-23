/*
Navicat MySQL Data Transfer

Source Server         : mzc
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : movie

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-06-24 02:31:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for movie_detail
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
  `background` varchar(255) DEFAULT NULL,
  `recommend` varchar(255) DEFAULT NULL,
  `wanted` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `accountscore` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_detail
-- ----------------------------
INSERT INTO `movie_detail` VALUES ('csyx', '厕所英雄', '8.4', '什里·那拉扬·辛', '阿克谢·库玛尔', 'null', 'Toilet-Ek Prem Katha', '不要总想权宜之计', '剧情/喜剧', '印度|150分钟', '2018-06-08 在中国大陆上映', '改编自真人真事，探讨印度农村家庭普遍没有厕所，妇女必须在野外如厕的现象。女主角担任教师，嫁给男主角后，发现家中没有厕所，和男主角“闹离婚”，还来了一场革命。', '#FF7F7F', '39', '36738', '66070');
INSERT INTO `movie_detail` VALUES ('dlam', '哆啦A梦：大雄的金银岛', '8.1', '今井一晓', '水田山葵,大原惠美', 'null', 'ドラえもん のび太の宝島', '梦中的金银岛', '喜剧/动画/奇幻/冒险', '日本|109分钟', '2018-06-01在中国大陆上映', '《哆啦 A 梦：大雄的金银岛》创造了哆啦 A 梦系列剧场版在日本的最高观影人次、最高票房双记录！新篇中七只迷你哆啦闪亮登场，故事也有了新鲜的发展。大雄少了怯懦多了担当，静香遭遇困境也能勇敢面对，胖虎不再只顾着欺负同伴……甚至哆啦 A 梦的道具都不再万能，凶恶的海盗竟然拥有比哆啦 A 梦更加先进的装备！哆啦 A 梦还意外的陷入了绝境，命悬一线……面对危机，大雄一行人将如何应对？这一切，都将发生在一个太平洋中神秘出现的金银岛上……', '#969696', '44', '147984', '200783');
INSERT INTO `movie_detail` VALUES ('fl3', '复仇者联盟3：无限战争', '8.8', '安东尼·罗素', '小罗伯特·唐尼', 'null', 'Avengers:Infinity War', '一个“响指”打遍天下', '动作/冒险/奇幻', '美国|150分钟', '2018-05-11 在中国大陆上映', '漫威影业为您倾力呈现万众期待的终极力作《复仇者联盟3：无限战争》！复仇者联盟的一众超级英雄，必须抱着牺牲一切的信念，与史上最强大反派灭霸(Thanos)殊死一搏，阻止其摧毁宇宙的邪恶计划。', '#0F0F0F', '81', '1021595', '2241667');
INSERT INTO `movie_detail` VALUES ('shyy', '深海越狱', '6.8', '帕夏·帕特里基', '尚格·云顿', 'null', 'Black Water', '生死肉搏就在眼前', '动作/冒险', '美国|104分钟', '2018-06-08 在中国大陆上映', '中情局特工维勒（尚格·云顿 饰）与美女搭档梅尔在保护一份机密文件的任务中被神秘组织追杀，梅尔牺牲，维勒被逮捕。醒来时维勒发现自己被囚禁在一艘核潜艇内，这里是CIA设在深海的一座与世隔绝的黑狱，他自己也变成了出卖国家机密的叛徒身份。 除了拷打维勒的探员帕特里克，潜艇上还有维勒的恩师爱德华、女见习生凯茜和被关押的德国特工马可（杜夫·龙格尔 饰），他们当中谁是盟友，谁是敌人？有人对维勒手中的机密文件感兴趣，有人却对离开深海恢复自由更感兴趣。维勒必须寻找队友，携手逃出生天，并自证清白……', '#687A88', '40', '100964', '33297');
INSERT INTO `movie_detail` VALUES ('wmmsr', '完美陌生人', '8.4', '保罗·格诺维瑟', '吉塞培·巴蒂斯通', 'null', 'Perfetti sconosciuti', '婚姻的维持需要隐私，也需要演技', '剧情/爱情/喜剧', '意大利|96分钟', '2018-05-25 在中国大陆上映', '三对处于各个婚姻阶段的伴侣和一个宅男，七人聚在一起吃晚餐。女主人提议下拍板决定当夜所有人分享每一个电话、每一条短信、邮件的内容，由此许多秘密开始不再是秘密，他们之间的关系也开始发生波动。无数疮痍在这场“坦白局”中被揭开，复杂的男女情感让所有人陷入困局，什么是婚姻感情中最不可触碰的底线？众人遭遇是难言的禁忌还是隐藏的真心，月食过后，谎言能否继续？', '#5A5A5A', '93', '41823', '78786');
INSERT INTO `movie_detail` VALUES ('zljsj', '侏罗纪世界', '8.8', '胡安·安东尼奥·巴亚纳', '克里斯·帕拉特', 'null', 'Jurassic World:Fallen Kingdom', '暂别“银护”的帕帕又来驯恐龙了', '动作/冒险/科幻', '美国|128分钟', '2018-06-15 在中国大陆上映', '侏罗纪世界主题公园及豪华度假村被失控的恐龙们摧毁已有四年。如今，纳布拉尔岛已经被人类遗弃，岛上幸存的恐龙们在丛林中自给自足。当岛上的休眠火山开始活跃以后，欧文（克里斯·帕拉特 饰）与克莱尔（布莱丝·达拉斯·霍华德 饰）发起了一场运动，想要保护岛上幸存的恐龙们免于灭绝。欧文一心想要找到自己依然失踪在野外的迅猛龙首领布鲁，克莱尔如今也尊重起这些生物，以保护它们为己任。两人在熔岩开始喷发时来到了危险的小岛，他们的冒险也揭开了一个可能让地球回到史前时代般混乱秩序的阴谋。', '#5F7781', '45', '446510', '14356');
