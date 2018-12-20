/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : miaosha

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 20/12/2018 21:17:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `price` double(10, 2) NOT NULL DEFAULT 0.00,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sales` int(10) NOT NULL DEFAULT 0,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (1, '阳阳光', 520.00, '哈哈哈', 123, 'https://ss0.baidu.com/73F1bjeh1BF3odCf/it/u=2169047760,1992113630&fm=85&s=79B20DD5C043FEE73924156B0300B053');
INSERT INTO `item` VALUES (2, 'MEIZU pro7', 2780.00, '双瞳如小窗，佳景观历历', 657, 'https://2c.zol-img.com.cn/product/184_320x240/470/ceb97iCfwAY.jpg');

-- ----------------------------
-- Table structure for item_stock
-- ----------------------------
DROP TABLE IF EXISTS `item_stock`;
CREATE TABLE `item_stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(10) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_stock
-- ----------------------------
INSERT INTO `item_stock` VALUES (1, 0, 1);
INSERT INTO `item_stock` VALUES (2, 93, 2);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_price` double(10, 2) NOT NULL DEFAULT 0.00,
  `amount` int(11) NOT NULL DEFAULT 0,
  `order_price` double(10, 2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('2018122000000000', 14, 1, 520.00, 1, 520.00);
INSERT INTO `order_info` VALUES ('2018122000000100', 14, 2, 2780.00, 1, 2780.00);
INSERT INTO `order_info` VALUES ('2018122000000200', 14, 2, 2780.00, 1, 2780.00);
INSERT INTO `order_info` VALUES ('2018122000000300', 14, 2, 2780.00, 1, 2780.00);
INSERT INTO `order_info` VALUES ('2018122000000400', 14, 2, 2780.00, 1, 2780.00);
INSERT INTO `order_info` VALUES ('2018122000000500', 14, 2, 2780.00, 1, 2780.00);
INSERT INTO `order_info` VALUES ('2018122000000600', 14, 2, 2780.00, 1, 2780.00);
INSERT INTO `order_info` VALUES ('2018122000000700', 14, 2, 2780.00, 1, 2780.00);

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promoName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `start_date` datetime(0) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `promo_item_price` double(10, 2) NOT NULL DEFAULT 0.00,
  `end_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promo
-- ----------------------------
INSERT INTO `promo` VALUES (1, 'MEIZU16th抢购', '2018-12-20 21:12:35', 2, 1.00, '2018-12-21 17:08:24');

-- ----------------------------
-- Table structure for sequence_info
-- ----------------------------
DROP TABLE IF EXISTS `sequence_info`;
CREATE TABLE `sequence_info`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `current_value` int(10) NOT NULL DEFAULT 0,
  `step` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sequence_info
-- ----------------------------
INSERT INTO `sequence_info` VALUES ('order_info', 8, 1);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` tinyint(4) NOT NULL DEFAULT 0 COMMENT '//1代表男性，2代表女性',
  `age` int(11) NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `register_mode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '//byphone, bywechat, byalipay',
  `third_party_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `telephone_unique_index`(`telephone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (14, '苏凝汐', 1, 23, '15527186096', 'byphone', '');

-- ----------------------------
-- Table structure for user_password
-- ----------------------------
DROP TABLE IF EXISTS `user_password`;
CREATE TABLE `user_password`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encrypt_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_password
-- ----------------------------
INSERT INTO `user_password` VALUES (13, '4QrcOUm6Wau+VuBX8g+IPg==', 14);

SET FOREIGN_KEY_CHECKS = 1;
