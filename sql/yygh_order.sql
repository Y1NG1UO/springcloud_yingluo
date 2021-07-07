/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : yygh_order

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 02/07/2021 10:17:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) NULL DEFAULT NULL,
  `out_trade_no` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单交易号',
  `hoscode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院编号',
  `hosname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医院名称',
  `depcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室编号',
  `depname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室名称',
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生职称',
  `hos_schedule_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排班编号（医院自己的排班主键）',
  `reserve_date` date NULL DEFAULT NULL COMMENT '安排日期',
  `reserve_time` tinyint(3) NULL DEFAULT 0 COMMENT '安排时间（0：上午 1：下午）',
  `patient_id` bigint(20) NULL DEFAULT NULL COMMENT '就诊人id',
  `patient_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '就诊人名称',
  `patient_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '就诊人手机',
  `hos_record_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约记录唯一标识（医院预约记录主键）',
  `number` int(11) NULL DEFAULT NULL COMMENT '预约号序',
  `fetch_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '建议取号时间',
  `fetch_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取号地点',
  `amount` decimal(10, 0) NULL DEFAULT NULL COMMENT '医事服务费',
  `quit_time` datetime(0) NULL DEFAULT NULL COMMENT '退号时间',
  `order_status` tinyint(3) NULL DEFAULT NULL COMMENT '订单状态',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_out_trade_no`(`out_trade_no`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_hoscode`(`hoscode`) USING BTREE,
  INDEX `idx_hos_schedule_id`(`hos_schedule_id`) USING BTREE,
  INDEX `idx_hos_record_id`(`hos_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (1, 2, '162398494389457', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-18', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-17 15:30:00', 0, '2021-06-18 10:55:43', '2021-06-18 10:55:43', 0);
INSERT INTO `order_info` VALUES (2, 2, '162398495086833', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-18', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-17 15:30:00', 0, '2021-06-18 10:55:50', '2021-06-18 10:55:50', 0);
INSERT INTO `order_info` VALUES (3, 2, '162398591774452', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-18', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-17 15:30:00', 0, '2021-06-18 11:11:57', '2021-06-18 11:11:57', 0);
INSERT INTO `order_info` VALUES (4, 2, '162398595108952', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-18', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-17 15:30:00', 0, '2021-06-18 11:12:31', '2021-06-18 11:12:31', 0);
INSERT INTO `order_info` VALUES (5, 2, '162398597977163', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-18', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-17 15:30:00', 0, '2021-06-18 11:12:59', '2021-06-18 11:12:59', 0);
INSERT INTO `order_info` VALUES (6, 2, '162398685985677', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-18', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-17 15:30:00', 0, '2021-06-18 11:27:39', '2021-06-18 11:27:39', 0);
INSERT INTO `order_info` VALUES (7, 2, '162398743932575', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-18', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-17 15:30:00', 0, '2021-06-18 11:37:19', '2021-06-18 11:37:19', 0);
INSERT INTO `order_info` VALUES (8, 2, '16239965985604', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-18', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-17 15:30:00', 0, '2021-06-18 14:09:58', '2021-06-18 14:09:58', 0);
INSERT INTO `order_info` VALUES (9, 2, '162399671305083', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-18', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-17 15:30:00', 0, '2021-06-18 14:11:56', '2021-06-18 14:11:56', 0);
INSERT INTO `order_info` VALUES (10, 2, '162399718267683', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-19', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-18 15:30:00', 0, '2021-06-18 14:19:42', '2021-06-18 14:19:42', 0);
INSERT INTO `order_info` VALUES (11, 2, '162399759405081', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-19', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-18 15:30:00', 0, '2021-06-18 14:26:34', '2021-06-18 14:26:34', 0);
INSERT INTO `order_info` VALUES (12, 2, '162399828809147', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-19', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-18 15:30:00', 0, '2021-06-18 14:38:08', '2021-06-18 14:38:08', 0);
INSERT INTO `order_info` VALUES (13, 2, '162399834878772', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-19', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-18 15:30:00', 0, '2021-06-18 14:39:08', '2021-06-18 14:39:08', 0);
INSERT INTO `order_info` VALUES (14, 2, '162399838164833', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cb1c1b4fb53346b0291d66', '2021-06-19', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-18 15:30:00', 0, '2021-06-18 14:39:41', '2021-06-18 14:39:41', 0);
INSERT INTO `order_info` VALUES (15, 2, '16240042938575', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cc536c4b51b772c61d552c', '2021-06-19', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-18 15:30:00', 0, '2021-06-18 16:18:13', '2021-06-18 16:18:13', 0);
INSERT INTO `order_info` VALUES (16, 2, '162424604630217', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cc536c4b51b772c61d552c', '2021-06-22', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-21 15:30:00', 0, '2021-06-21 11:27:26', '2021-06-21 11:27:26', 0);
INSERT INTO `order_info` VALUES (17, 2, '162424784056067', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cc536c4b51b772c61d552c', '2021-06-22', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-21 15:30:00', 0, '2021-06-21 11:57:20', '2021-06-21 11:57:20', 0);
INSERT INTO `order_info` VALUES (18, 2, '162425497079132', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cc536c4b51b772c61d552c', '2021-06-22', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-21 15:30:00', 0, '2021-06-21 13:56:10', '2021-06-21 13:56:10', 0);
INSERT INTO `order_info` VALUES (19, 2, '162425676716015', '1000_0', '北京协和医院', '200040878', '多发性硬化专科门诊', '副主任医师', '60cc536c4b51b772c61d552c', '2021-06-22', 1, 2, 'yingluo', '13727896421', NULL, NULL, NULL, NULL, 100, '2021-06-21 15:30:00', 0, '2021-06-21 14:26:07', '2021-06-21 14:26:07', 0);

-- ----------------------------
-- Table structure for payment_info
-- ----------------------------
DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE `payment_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `out_trade_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对外业务编号',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单id',
  `payment_type` tinyint(1) NULL DEFAULT NULL COMMENT '支付类型（微信 支付宝）',
  `trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易编号',
  `total_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付金额',
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易内容',
  `payment_status` tinyint(3) NULL DEFAULT NULL COMMENT '支付状态',
  `callback_time` datetime(0) NULL DEFAULT NULL COMMENT '回调时间',
  `callback_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回调信息',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_out_trade_no`(`out_trade_no`) USING BTREE,
  INDEX `idx_order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of payment_info
-- ----------------------------
INSERT INTO `payment_info` VALUES (1, '162398494389457', 1, 2, NULL, 100.00, '2021-06-18|北京协和医院|多发性硬化专科门诊|副主任医师', 1, NULL, NULL, '2021-06-21 14:03:17', '2021-06-21 14:03:16', 0);

-- ----------------------------
-- Table structure for refund_info
-- ----------------------------
DROP TABLE IF EXISTS `refund_info`;
CREATE TABLE `refund_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `out_trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对外业务编号',
  `order_id` bigint(20) NULL DEFAULT NULL COMMENT '订单编号',
  `payment_type` tinyint(3) NULL DEFAULT NULL COMMENT '支付类型（微信 支付宝）',
  `trade_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易编号',
  `total_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '退款金额',
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易内容',
  `refund_status` tinyint(3) NULL DEFAULT NULL COMMENT '退款状态',
  `callback_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回调信息',
  `callback_time` datetime(0) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_out_trade_no`(`out_trade_no`) USING BTREE,
  INDEX `idx_order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '退款信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of refund_info
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
