/*
 Navicat Premium Data Transfer

 Source Server         : MySQL80
 Source Server Type    : MySQL
 Source Server Version : 80032
 Source Host           : localhost:3306
 Source Schema         : z_lib

 Target Server Type    : MySQL
 Target Server Version : 80032
 File Encoding         : 65001

 Date: 11/10/2023 00:55:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '公告1');
INSERT INTO `notice` VALUES (2, '公告2');

-- ----------------------------
-- Table structure for reservation
-- ----------------------------
DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NOT NULL,
  `seat_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reservation
-- ----------------------------
INSERT INTO `reservation` VALUES (1, 1, 4);
INSERT INTO `reservation` VALUES (2, 2, 5);
INSERT INTO `reservation` VALUES (3, 3, 6);
INSERT INTO `reservation` VALUES (11, 1, 22);
INSERT INTO `reservation` VALUES (12, 1, 28);

-- ----------------------------
-- Table structure for seat
-- ----------------------------
DROP TABLE IF EXISTS `seat`;
CREATE TABLE `seat`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `row` int(0) NOT NULL COMMENT '行',
  `column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '列',
  `floor` int(0) NOT NULL COMMENT '楼',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '区',
  `status` int(0) NOT NULL DEFAULT 1 COMMENT '0，预约，1，取消，2，开始，3，完成',
  `total` int(0) NOT NULL DEFAULT 0 COMMENT '预约总次数',
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seat
-- ----------------------------
INSERT INTO `seat` VALUES (1, 1, 'A', 1, '东区', 3, 2, '2023-08-19 23:51:08', '2023-08-19 23:51:30');
INSERT INTO `seat` VALUES (2, 1, 'B', 1, '东区', 1, 0, NULL, NULL);
INSERT INTO `seat` VALUES (3, 1, 'C', 1, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (4, 1, 'D', 1, '东区', 2, 0, NULL, NULL);
INSERT INTO `seat` VALUES (5, 1, 'E', 1, '东区', 3, 0, NULL, NULL);
INSERT INTO `seat` VALUES (6, 1, 'A', 1, '西区', 3, 0, NULL, NULL);
INSERT INTO `seat` VALUES (7, 1, 'B', 1, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (8, 1, 'C', 1, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (9, 1, 'D', 1, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (10, 1, 'E', 1, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (11, 1, 'A', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (12, 1, 'B', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (13, 1, 'C', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (14, 1, 'D', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (15, 1, 'E', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (16, 1, 'A', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (17, 1, 'B', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (18, 1, 'C', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (19, 1, 'D', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (20, 1, 'E', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (21, 1, 'A', 1, '四人间区-连廊-1', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (22, 1, 'B', 1, '四人间区-连廊-1', 3, 0, '2023-10-11 00:34:59', '2023-10-12 00:36:08');
INSERT INTO `seat` VALUES (23, 2, 'A', 1, '四人间区-连廊-1', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (24, 2, 'B', 1, '四人间区-连廊-1', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (25, 2, 'A', 1, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (26, 2, 'B', 1, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (27, 2, 'C', 1, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (28, 2, 'D', 1, '东区', 2, 0, '2023-10-10 00:40:39', '2023-10-10 23:43:46');
INSERT INTO `seat` VALUES (29, 2, 'E', 1, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (30, 2, 'A', 1, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (31, 2, 'B', 1, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (32, 2, 'C', 1, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (33, 2, 'D', 1, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (34, 2, 'E', 1, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (35, 2, 'A', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (36, 2, 'B', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (37, 2, 'C', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (38, 2, 'D', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (39, 2, 'E', 1, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (40, 2, 'A', 1, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (41, 2, 'B', 1, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (42, 2, 'C', 1, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (43, 2, 'D', 1, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (44, 2, 'E', 1, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (45, 1, 'A', 1, '四人间区-连廊-2', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (46, 1, 'B', 1, '四人间区-连廊-2', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (47, 2, 'A', 1, '四人间区-连廊-2', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (48, 2, 'B', 1, '四人间区-连廊-2', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (49, 1, 'A', 2, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (50, 1, 'B', 2, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (51, 1, 'C', 2, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (52, 1, 'D', 2, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (53, 1, 'E', 2, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (54, 1, 'A', 2, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (55, 1, 'B', 2, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (56, 1, 'C', 2, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (57, 1, 'D', 2, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (58, 1, 'E', 2, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (59, 1, 'A', 2, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (60, 1, 'B', 2, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (61, 1, 'C', 2, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (62, 1, 'D', 2, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (63, 1, 'E', 2, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (64, 1, 'A', 2, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (65, 1, 'B', 2, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (66, 1, 'C', 2, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (67, 1, 'D', 2, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (68, 1, 'E', 2, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (69, 1, 'A', 2, '四人间区-连廊-1', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (70, 1, 'B', 2, '四人间区-连廊-1', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (71, 2, 'A', 2, '四人间区-连廊-1', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (72, 2, 'B', 2, '四人间区-连廊-1', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (73, 2, 'A', 2, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (74, 2, 'B', 2, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (75, 2, 'C', 2, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (76, 2, 'D', 2, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (77, 2, 'E', 2, '东区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (78, 2, 'A', 2, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (79, 2, 'B', 2, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (80, 2, 'C', 2, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (81, 2, 'D', 2, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (82, 2, 'E', 2, '西区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (83, 2, 'A', 2, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (84, 2, 'B', 2, '南区', 0, 0, '2023-10-11 23:42:11', '2023-10-11 23:52:15');
INSERT INTO `seat` VALUES (85, 2, 'C', 2, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (86, 2, 'D', 2, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (87, 2, 'E', 2, '南区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (88, 2, 'A', 2, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (89, 2, 'B', 2, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (90, 2, 'C', 2, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (91, 2, 'D', 2, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (92, 2, 'E', 2, '北区', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (93, 1, 'A', 2, '四人间区-连廊-2', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (94, 1, 'B', 2, '四人间区-连廊-2', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (95, 2, 'A', 2, '四人间区-连廊-2', 0, 0, NULL, NULL);
INSERT INTO `seat` VALUES (96, 2, 'B', 2, '四人间区-连廊-2', 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '账号',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
  `online` int(0) NOT NULL DEFAULT 1 COMMENT '是否在线',
  `nickname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` int(0) NULL DEFAULT 0 COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `score` int(0) NOT NULL DEFAULT 100 COMMENT '信用分',
  `role` int(0) NOT NULL COMMENT '0，管理员，1，老师，2，学生',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '$2a$10$kZwFj8HXFAv/EeaKr/9ZT.WrlGxcdHcSKQl5k7l1kJAhrQ2Bz/h7G', 1, '222', 1, '江苏省常州市武进区', 83, 0);
INSERT INTO `user` VALUES (2, 'xmy', '$2a$10$UKwmY62dNGTwMM9TzTZPGu1M98qIC22Qp/v9dznhIY5keSEzg9jfS', 1, NULL, 0, '江苏省常州市钟楼区', 100, 1);
INSERT INTO `user` VALUES (3, 'awm', '$2a$10$7BeaszbmJ/yHyynMLepJiekeiq6b0.GZ/u2hs09r2metHKGeV.hMS', 1, NULL, 0, '江苏省常州市溧阳市', 48, 1);
INSERT INTO `user` VALUES (4, 'cpdd', '$2a$10$uTA6bDWHLJc.vfuxeOeNzO5WO0FbzZwwPUtMTpH9yputchLmlTJby', 1, NULL, 0, '江苏省常州市新北区', 100, 1);
INSERT INTO `user` VALUES (5, 'iu', '$2a$10$xEgty0cwpET/6rk5yFGPi.JyZc8v3KJyno752jnHLL8GVaKkymdmy', 1, NULL, 0, '江苏省常州市天宁区', 100, 2);
INSERT INTO `user` VALUES (6, 'null', '$2a$10$9YfEhlIsDZ9zcQImqDf7EuCyVT/FY.y.6dxwiafxk6iclh4vvsIs6', 1, NULL, 0, '江苏省常州市', 100, 2);
INSERT INTO `user` VALUES (7, 'lyh', '$2a$10$yZd03LKgZSsV/71T3ePvpuSeFBORaUw4GDv0g2xbA00ZIYV6vr5XC', 1, NULL, 0, '广东省广州市', 100, 2);
INSERT INTO `user` VALUES (8, '123123', '$2a$10$opFXLTk0x/FXt5IBuN8ScOWHfh2PvAZIiLc7QsQ.O6.jYk7pZQSzW', 1, NULL, 0, '广东省深圳市', 100, 2);
INSERT INTO `user` VALUES (9, '1234', '$2a$10$.5vsofAXg6C9xJW2R8.uHepldjRbJjQ75ve3Hsf5mr17p6Hu2XMkG', 1, NULL, 0, '广东省东莞市', 30, 2);
INSERT INTO `user` VALUES (10, '789', '$2a$10$ozHGfEvLFIcD9k9LGWgpQugv2pn4YcpUyWYM/U2OkLxifZxQ.2Sga', 1, NULL, 0, '广东省佛山市', 100, 2);

SET FOREIGN_KEY_CHECKS = 1;
