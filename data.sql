/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : data

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 03/12/2020 12:33:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('root', '123456');

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆编号',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆名字',
  `Color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆颜色',
  `Type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆类型',
  `Price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆计价',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '宝马X6', '蓝色', '轿车', '24');
INSERT INTO `car` VALUES ('2', '奔驰X325', '蓝紫色', '超跑', '24');
INSERT INTO `car` VALUES ('3', '红旗X10', '黑色', '轿车', '26');
INSERT INTO `car` VALUES ('4', '福特18', '黑色', '轿车', '19');

-- ----------------------------
-- Table structure for rentcar
-- ----------------------------
DROP TABLE IF EXISTS `rentcar`;
CREATE TABLE `rentcar`  (
  `ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租车编号',
  `RentDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租车时间',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租车用户',
  `CarID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆ID',
  `Price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租车费用',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rentcar
-- ----------------------------
INSERT INTO `rentcar` VALUES ('1', '2020-11-26', '周鹏宇', '2', '8.8');
INSERT INTO `rentcar` VALUES ('2', '2020-11-27', '张帆', '22', '9.9');

-- ----------------------------
-- Table structure for repaircar
-- ----------------------------
DROP TABLE IF EXISTS `repaircar`;
CREATE TABLE `repaircar`  (
  `ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修车编号',
  `FixDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修车时间',
  `Question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆故障',
  `Price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆ID',
  `CarID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '修车费用',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repaircar
-- ----------------------------
INSERT INTO `repaircar` VALUES ('1', '2020-11-24', '轮胎炸了', '2.0', '3');
INSERT INTO `repaircar` VALUES ('2', '2020-11-24', '漏油', '2', '2');

-- ----------------------------
-- Table structure for repaycar
-- ----------------------------
DROP TABLE IF EXISTS `repaycar`;
CREATE TABLE `repaycar`  (
  `ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '还车编号',
  `RepayDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '还车时间',
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '还车用户',
  `CarID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '车辆ID',
  `Status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '还车状态',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of repaycar
-- ----------------------------
INSERT INTO `repaycar` VALUES ('1', '周鹏宇', '2020-11-25', '2', '未还车');
INSERT INTO `repaycar` VALUES ('2', '王晟宇', '2020-11-25', '3', '未还车');
INSERT INTO `repaycar` VALUES ('3', '王战军', '2020-11-24', '3', '已还车');

SET FOREIGN_KEY_CHECKS = 1;
