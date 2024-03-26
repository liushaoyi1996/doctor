/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50027
 Source Host           : localhost:3306
 Source Schema         : doctor

 Target Server Type    : MySQL
 Target Server Version : 50027
 File Encoding         : 65001

 Date: 26/03/2024 14:31:26
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `psw` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for canteen
-- ----------------------------
DROP TABLE IF EXISTS `canteen`;
CREATE TABLE `canteen`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sum` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '房间号码',
  `type` int(2) NULL DEFAULT NULL COMMENT '餐厅类型0小1中2大3小宴会4大宴会',
  `level` int(2) NULL DEFAULT NULL COMMENT '等级0经济1普通2商务3豪华',
  `style` int(5) NULL DEFAULT NULL COMMENT '装饰类型0普通1中式2欧式3典雅4简约5奢华',
  `size` int(255) NULL DEFAULT NULL,
  `ps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of canteen
-- ----------------------------
INSERT INTO `canteen` VALUES (5, '9998', 1, 1, 1, 5, '5');

-- ----------------------------
-- Table structure for carte
-- ----------------------------
DROP TABLE IF EXISTS `carte`;
CREATE TABLE `carte`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜名',
  `money` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格',
  `type` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型 菜肴0 汤1 甜品2 饮品3',
  `taste` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口味',
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of carte
-- ----------------------------
INSERT INTO `carte` VALUES (4, '雪泥豆沙', '102', '2', '甜');
INSERT INTO `carte` VALUES (5, '红烧肉', '55', '0', '甜');
INSERT INTO `carte` VALUES (6, '麻婆豆腐', '16', '0', '辣');
INSERT INTO `carte` VALUES (7, '紫菜蛋花汤', '9', '1', '咸鲜');
INSERT INTO `carte` VALUES (8, '酸梅汤', '12', '3', '酸甜');

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ps` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES (4, '888', '1', '888', '888', '888');
INSERT INTO `client` VALUES (5, '8889', '0', '111', '111', '111');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan`  (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `sum` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间',
  `date` datetime NULL DEFAULT NULL COMMENT '日期',
  `discount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `money` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money1` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES (1, '1001', '2021-05-04 22:10:43', '55', '111', '55');
INSERT INTO `dingdan` VALUES (2, '5555', '2021-05-04 00:00:00', '100', '200', '');
INSERT INTO `dingdan` VALUES (3, '5555', '2021-05-04 00:00:00', '55', '55', '55');
INSERT INTO `dingdan` VALUES (4, '101010', '2021-05-12 00:00:00', '10101', '111', '111');

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sum` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间号',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顾客姓名',
  `number` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顾客身份证号码',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顾客手机号',
  `reserve_day` date NULL DEFAULT NULL COMMENT '预定时间',
  `check_day1` date NULL DEFAULT NULL COMMENT '入住日期',
  `check_day2` date NULL DEFAULT NULL COMMENT '离开日期',
  `money` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '押金',
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES (21, '1111', '111', '111', '111', '2024-03-26', '2024-03-26', '2024-03-29', '1111');

-- ----------------------------
-- Table structure for kefang
-- ----------------------------
DROP TABLE IF EXISTS `kefang`;
CREATE TABLE `kefang`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sum` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '医生编号',
  `money` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '工资',
  `type` int(2) NULL DEFAULT NULL COMMENT '类型',
  `window` int(2) NULL DEFAULT NULL,
  `clean` int(2) NULL DEFAULT NULL,
  `level` int(2) NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`, `sum`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kefang
-- ----------------------------
INSERT INTO `kefang` VALUES (1, '0001', '26000', 0, 0, NULL, 4, '院长');
INSERT INTO `kefang` VALUES (2, '0002', '240000', 1, 1, NULL, 4, '副院长');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `year` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `branch` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `birthday` date NULL DEFAULT NULL,
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (2, '10', '0', '11', '0', '5', '0', '2021-01-01', '5');
INSERT INTO `person` VALUES (15, 'a', '', '111', '', '', '', '2021-03-21', '');
INSERT INTO `person` VALUES (16, '99', '0', '9', '9', '0', '0', '2021-03-02', '99');
INSERT INTO `person` VALUES (18, '1111', '', '', '', '', '1', NULL, '');

-- ----------------------------
-- Table structure for reserve
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sum` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间号',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顾客姓名',
  `number` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顾客身份证号码',
  `phone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顾客手机号',
  `reserve_day` date NULL DEFAULT NULL COMMENT '预定时间',
  `check_day1` date NULL DEFAULT NULL COMMENT '入住日期',
  `check_day2` date NULL DEFAULT NULL COMMENT '离开日期',
  `money` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '押金',
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '入住状态0/1',
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of reserve
-- ----------------------------
INSERT INTO `reserve` VALUES (1, '1000', '张小炮', '230', '123', '2021-03-23', '2021-03-24', '2021-03-25', '100', '1');
INSERT INTO `reserve` VALUES (2, '1001', '张大炮', '231', '321', '2021-03-16', '2021-03-23', '2021-03-23', '105', '1');
INSERT INTO `reserve` VALUES (10, '1111', '你那', '222', '22', '2024-03-26', '2024-03-27', '2024-03-27', '100', '1');
INSERT INTO `reserve` VALUES (11, '1111', '111', '111', '111', '2024-03-26', '2024-03-26', '2024-03-29', '1111', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `psw` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1', '1');
INSERT INTO `user` VALUES (2, '2', '2');
INSERT INTO `user` VALUES (3, '3', '3');
INSERT INTO `user` VALUES (4, '111', '111');

SET FOREIGN_KEY_CHECKS = 1;
