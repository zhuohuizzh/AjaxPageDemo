/*
 Navicat Premium Data Transfer
  
 Source Server         : mysql_Link
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : management

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 30/06/2019 15:54:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `u_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '员工id',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '登录密码',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '登录账号',
  `auth` int(32) NULL DEFAULT NULL COMMENT '权限',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `gender` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别',
  `birth` timestamp(6) NULL DEFAULT NULL COMMENT '生日',
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '员工' COMMENT '职位',
  `wage` int(32) NULL DEFAULT 0 COMMENT '工资',
  `head` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT 'default.jpg' COMMENT '头像',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123511 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (123456, 'Y6nw6nu5gFB5a2SehUgYRQ==', 'root', 2, 'Root管理员', '男', '2019-04-10 15:57:38.000000', NULL, NULL, '总经理', 0, 'default.jpg');
INSERT INTO `login` VALUES (123457, 'ISMvKXpXpadDiUoOSoAfww==', 'admin0', 1, '测试管理1', '男', '1991-07-04 23:00:00.000000', '8888822', '88888888888@qq.com', '总监', 8000, 'default.jpg');
INSERT INTO `login` VALUES (123458, '7hHLsZBS5AsHqsDKBgwj7g==', 'testuser', 0, '测试员工', '女', '1992-06-19 15:58:26.000000', NULL, NULL, '员工', 6000, 'default.jpg');
INSERT INTO `login` VALUES (123459, 'ISMvKXpXpadDiUoOSoAfww==', 'admin2', 1, '管理员2', '女', '2019-04-09 00:00:00.000000', '', '', '主任', 0, 'default.jpg');
INSERT INTO `login` VALUES (123460, 'XMr7J3+iPNDnHZm8IHFdmg==', 'user1', 0, '员工1', '男', '1997-05-22 00:00:00.000000', '1111111111', '12345663252@qq.com', '员工', 7400, 'default.jpg');
INSERT INTO `login` VALUES (123461, '7hHLsZBS5AsHqsDKBgwj7g==', 'user2', 0, '员工2', '男', '1987-05-25 14:01:14.000000', '98765422', '98765422@163.com', '员工', 8000, 'default.jpg');
INSERT INTO `login` VALUES (123462, '7hHLsZBS5AsHqsDKBgwj7g==', 'user3', 0, '员工3', '女', '1993-10-02 14:02:00.000000', '456132789', '456123789@qq.com', '员工', 7500, 'default.jpg');
INSERT INTO `login` VALUES (123463, '7hHLsZBS5AsHqsDKBgwj7g==', 'user4', 0, '员工4', '男', '1991-08-11 14:17:50.000000', '15615623651', '15615623651@163.com', '员工', 6500, 'default.jpg');
INSERT INTO `login` VALUES (123464, 'ISMvKXpXpadDiUoOSoAfww==', 'admin1', 1, '管理员1', '男', '1989-01-29 15:49:31.000000', '6548526255', '6548526255@163.com', '组长', 8555, 'default.jpg');
INSERT INTO `login` VALUES (123465, 'ISMvKXpXpadDiUoOSoAfww==', 'admin3', 1, '管理员33', '女', '1993-09-15 00:00:00.000000', '45126398744', '45123698744@163.com', '组长', 7444, 'default.jpg');
INSERT INTO `login` VALUES (123466, 'ISMvKXpXpadDiUoOSoAfww==', 'admin4', 1, '管理员4', '男', '1981-05-02 15:51:53.000000', '14796325874', '14796325874@163.com', '主任', 9200, 'default.jpg');
INSERT INTO `login` VALUES (123468, '7hHLsZBS5AsHqsDKBgwj7g==', 'delete1', 0, '备删1', '男', '1986-04-02 00:00:00.000000', '45612312311', '456123123112@qq.com', '员工', 4500, 'default.jpg');
INSERT INTO `login` VALUES (123469, '7hHLsZBS5AsHqsDKBgwj7g==', 'delete2', 0, '备删除2', '女', '1986-04-19 00:00:00.000000', '456121', '56123123112@qq.com', '员工', 4500, 'default.jpg');
INSERT INTO `login` VALUES (123470, '7hHLsZBS5AsHqsDKBgwj7g==', 'user5', 0, '员工5', '女', '1997-07-13 00:00:00.000000', '15615623626', '15615625625@qq.com', '组长', 8555, 'default.jpg');
INSERT INTO `login` VALUES (123472, '7hHLsZBS5AsHqsDKBgwj7g==', 'testprize', 0, '测试prize', '女', '2019-04-17 00:00:00.000000', 'aaa', 'asdfs@qq.com', '员工', 411, 'default.jpg');
INSERT INTO `login` VALUES (123474, '7hHLsZBS5AsHqsDKBgwj7g==', 'testppp', 0, 'cecececece', '男', '2019-04-17 00:00:00.000000', 'aaaaaaa', '45646@a.com', '员工', 3322, 'default.jpg');
INSERT INTO `login` VALUES (123475, 'ISMvKXpXpadDiUoOSoAfww==', 'admina', 1, '测试管理a', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '总监', 7456, 'default.jpg');
INSERT INTO `login` VALUES (123476, 'ISMvKXpXpadDiUoOSoAfww==', 'adminb', 1, '测试管理b', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '总监', 7456, 'default.jpg');
INSERT INTO `login` VALUES (123477, 'ISMvKXpXpadDiUoOSoAfww==', 'adminc', 1, '测试管理c', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '总监', 7456, 'default.jpg');
INSERT INTO `login` VALUES (123479, 'ISMvKXpXpadDiUoOSoAfww==', 'admine', 1, '测试管理e', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '总监', 7456, 'default.jpg');
INSERT INTO `login` VALUES (123481, 'ISMvKXpXpadDiUoOSoAfww==', 'adming', 1, '测试管理g', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '总监', 7456, 'default.jpg');
INSERT INTO `login` VALUES (123484, 'ISMvKXpXpadDiUoOSoAfww==', 'adminj', 1, '测试管理j', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '总监', 7456, 'default.jpg');
INSERT INTO `login` VALUES (123486, 'ISMvKXpXpadDiUoOSoAfww==', 'adminl', 1, '测试管理l', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '总监', 7456, 'default.jpg');
INSERT INTO `login` VALUES (123487, 'ISMvKXpXpadDiUoOSoAfww==', 'adminm', 1, '测试管理m', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '总监', 7456, 'default.jpg');
INSERT INTO `login` VALUES (123488, '7hHLsZBS5AsHqsDKBgwj7g==', 'usera', 0, '测试员工a', '男', '1997-07-17 00:00:00.000000', '15626146373', '15626146373@163.com', '员工', 7456, 'default.jpg');
INSERT INTO `login` VALUES (123489, '7hHLsZBS5AsHqsDKBgwj7g==', 'userb', 0, '测试用户b', '男', '1995-06-14 00:00:00.000000', '156', '156@qq.com', '员工', 7456, 'default.jpg');
INSERT INTO `login` VALUES (123491, '7hHLsZBS5AsHqsDKBgwj7g==', 'userx', 0, '测试xxx', '女', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '员工', 8000, 'default.jpg');
INSERT INTO `login` VALUES (123492, '7hHLsZBS5AsHqsDKBgwj7g==', 'usery', 0, '测试y', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '员工', 8000, 'default.jpg');
INSERT INTO `login` VALUES (123496, '7hHLsZBS5AsHqsDKBgwj7g==', 'userf', 0, '测试f', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '员工', 8000, 'default.jpg');
INSERT INTO `login` VALUES (123499, '7hHLsZBS5AsHqsDKBgwj7g==', 'useri', 0, '测试i', '男', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '员工', 8000, 'default.jpg');
INSERT INTO `login` VALUES (123500, '7hHLsZBS5AsHqsDKBgwj7g==', 'userjj', 0, '测试j', '女', '1991-07-04 23:00:00.000000', '88888', '88888888888@qq.com', '员工', 8000, 'default.jpg');
INSERT INTO `login` VALUES (123503, '7hHLsZBS5AsHqsDKBgwj7g==', 'userw', 0, '测试用户2', '女', '1997-12-02 00:00:00.000000', '456121', '45646@a.com', '员工', 3245, 'default.jpg');
INSERT INTO `login` VALUES (123505, '7hHLsZBS5AsHqsDKBgwj7g==', 'adminaa', 1, '测试用户a', '女', '1997-08-04 00:00:00.000000', '423344', 'sfd@qq.com', '员工', 451, 'default.jpg');
INSERT INTO `login` VALUES (123508, 't6hgTZWSp9H08XOfaC0JDw==', 'testww', 0, '测试ww', '男', '1994-11-21 00:00:00.000000', '451', '45@qq.com', '员工', 3444, 'default.jpg');
INSERT INTO `login` VALUES (123509, '22vMsIqLQHoGu9jwMPj82Q==', 'userwww', 0, '测试www', '女', '1996-07-05 00:00:00.000000', '5456', '4564@163.com', '组长', 7444, 'default.jpg');
INSERT INTO `login` VALUES (123510, 'FP6NahBYQfCIwdl7rJAoTQ==', 'adminaaa', 1, '新测试管理', '女', '1995-05-04 00:00:00.000000', '', '', '组长', 8555, 'default.jpg');

SET FOREIGN_KEY_CHECKS = 1;
