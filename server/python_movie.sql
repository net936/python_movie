/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_movie

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 13/06/2024 20:31:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1718280455795.jpeg', 'https://www.baidu.com/', '2024-06-13 20:07:38.908983');
INSERT INTO `b_ad` VALUES (2, 'ad/1718280462895.jpeg', 'https://www.gitapp.cn', '2024-06-13 20:07:45.375667');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '动作片', '2024-06-12 20:35:16.033402');
INSERT INTO `b_classification` VALUES (2, '爱情片', '2024-06-12 20:35:21.116311');
INSERT INTO `b_classification` VALUES (3, '战争片', '2024-06-12 20:35:28.216257');
INSERT INTO `b_classification` VALUES (4, '科幻片', '2024-06-12 20:35:34.907460');
INSERT INTO `b_classification` VALUES (5, '剧情片', '2024-06-12 21:12:57.598565');
INSERT INTO `b_classification` VALUES (6, '喜剧片', '2024-06-12 21:13:08.865304');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '111', '2024-06-12 21:48:43.344964', 0, 4, 3);
INSERT INTO `b_comment` VALUES (2, '222', '2024-06-12 21:48:44.458818', 0, 4, 3);
INSERT INTO `b_comment` VALUES (3, '1122222', '2024-06-13 20:05:55.205934', 0, 3, 3);
INSERT INTO `b_comment` VALUES (4, '33333', '2024-06-13 20:05:56.848739', 0, 3, 3);
INSERT INTO `b_comment` VALUES (5, '122', '2024-06-13 20:15:08.522496', 0, 3, 5);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '122222211', '韩路', '11111011@gmail.com', '13583333222', '2024-06-13 20:09:05.122501');
INSERT INTO `b_feedback` VALUES (2, '哈哈哈哈哈2223', '哈哈哈哈哈哈哈87777', '周聪', '29888@qq.com', '13988887777', '2024-06-13 20:09:31.618518');
INSERT INTO `b_feedback` VALUES (3, '哈哈哈哈哈2223', 'hhhhhdssssssssss', 'hhhhhhkkkkop', '2333011@gmail.com', '14558165132', '2024-06-13 20:10:13.174715');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-12 20:33:04.865525');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-12 21:36:20.142500');
INSERT INTO `b_login_log` VALUES (3, 'fff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-13 20:06:19.960674');
INSERT INTO `b_login_log` VALUES (4, 'test003', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-06-13 20:14:05.620934');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '哈哈哈哈哈211', '2024-06-13 20:08:05.604700');
INSERT INTO `b_notice` VALUES (2, '你好通知271', '哈哈哈哈你好', '2024-06-13 20:08:17.702774');
INSERT INTO `b_notice` VALUES (3, '哈哈哈哈', '哈哈哈哈哈887766655', '2024-06-13 20:08:28.748747');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1129 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-06-12 20:32:18.415466', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-06-12 20:32:18.425461', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-06-12 20:32:18.462512', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-06-12 20:32:22.713817', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-06-12 20:32:22.715816', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-06-12 20:32:23.739464', '/myapp/admin/classification/list', 'GET', NULL, '1034');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-06-12 20:32:27.318347', '/myapp/admin/adminLogin', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-06-12 20:33:04.876356', '/myapp/admin/adminLogin', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-06-12 20:33:05.196789', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-06-12 20:33:05.201792', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-06-12 20:33:08.162439', '/myapp/admin/user/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-06-12 20:33:21.390500', '/myapp/admin/user/create', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-06-12 20:33:21.461446', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-06-12 20:33:27.341563', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-06-12 20:33:27.344563', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-06-12 20:35:07.192070', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-06-12 20:35:16.045900', '/myapp/admin/classification/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-06-12 20:35:16.082226', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-06-12 20:35:21.130764', '/myapp/admin/classification/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-06-12 20:35:21.177786', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-06-12 20:35:28.230615', '/myapp/admin/classification/create', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-06-12 20:35:28.299437', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-06-12 20:35:34.914537', '/myapp/admin/classification/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-06-12 20:35:34.958183', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-06-12 20:35:37.632544', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-06-12 20:35:37.635739', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-06-12 20:35:58.377800', '/myapp/admin/thing/create', 'POST', NULL, '518');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-06-12 20:35:58.460885', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-06-12 20:42:35.956209', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-06-12 20:42:36.669558', '/myapp/admin/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-06-12 20:42:36.665576', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-06-12 20:42:39.341562', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-06-12 20:42:53.589464', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-06-12 20:42:53.612599', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-06-12 20:44:13.882457', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-06-12 20:44:13.912282', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-06-12 20:44:37.428133', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-06-12 20:44:37.445887', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-06-12 20:45:14.013132', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-06-12 20:45:14.042817', '/myapp/admin/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-06-12 20:45:16.557033', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-06-12 20:45:16.583547', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-06-12 20:45:17.521538', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-06-12 20:51:44.733614', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-06-12 20:51:44.740698', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-06-12 20:52:27.964374', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-06-12 20:52:27.996456', '/myapp/admin/classification/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-06-12 20:52:55.804493', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-06-12 20:54:55.356542', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-06-12 20:54:55.374367', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-06-12 20:54:55.999463', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-06-12 20:54:56.746108', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-06-12 20:54:56.769975', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-06-12 20:56:53.382105', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-06-12 20:56:53.477376', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-06-12 21:00:11.466728', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-06-12 21:00:11.496309', '/myapp/admin/classification/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-06-12 21:00:45.143425', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-06-12 21:00:45.225735', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-06-12 21:01:52.178684', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-06-12 21:01:52.808914', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-06-12 21:01:52.831798', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-06-12 21:02:24.910115', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-06-12 21:02:25.006530', '/myapp/admin/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-06-12 21:02:44.386521', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-06-12 21:02:44.467345', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-06-12 21:02:46.991147', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-06-12 21:02:47.582561', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-06-12 21:02:47.600399', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-06-12 21:04:10.576159', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-06-12 21:04:11.298375', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-06-12 21:04:11.320350', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-06-12 21:04:26.177920', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-06-12 21:04:26.282100', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-06-12 21:05:27.552783', '/myapp/admin/thing/update', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-06-12 21:05:27.644366', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-06-12 21:10:59.056387', '/myapp/admin/thing/create', 'POST', NULL, '518');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-06-12 21:10:59.162034', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-06-12 21:11:04.175124', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-06-12 21:11:04.815453', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-06-12 21:11:04.827878', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-06-12 21:11:07.251068', '/upload/cover/1718197771289.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-06-12 21:11:45.783572', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-06-12 21:11:46.534307', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-06-12 21:11:46.589125', '/myapp/admin/classification/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-06-12 21:11:51.139194', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-06-12 21:11:51.246632', '/myapp/admin/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-06-12 21:11:52.858158', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-06-12 21:11:53.395442', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-06-12 21:11:53.434206', '/myapp/admin/classification/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-06-12 21:11:58.506177', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-06-12 21:11:58.613113', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-06-12 21:12:01.862518', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-06-12 21:12:01.892890', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-06-12 21:12:24.316819', '/upload/cover/1718197771289.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-06-12 21:12:28.483732', '/myapp/admin/thing/update', 'POST', NULL, '74');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-06-12 21:12:28.606265', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-06-12 21:12:30.194434', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-06-12 21:12:30.778718', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-06-12 21:12:30.805921', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-06-12 21:12:49.413813', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-06-12 21:12:57.614016', '/myapp/admin/classification/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-06-12 21:12:57.658884', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-06-12 21:13:08.871844', '/myapp/admin/classification/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-06-12 21:13:08.937037', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-06-12 21:13:13.552457', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-06-12 21:13:13.578189', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-06-12 21:14:50.367832', '/myapp/admin/thing/create', 'POST', NULL, '90');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-06-12 21:14:50.511895', '/myapp/admin/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-06-12 21:15:58.044130', '/myapp/admin/thing/create', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-06-12 21:15:58.198069', '/myapp/admin/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-06-12 21:17:19.392190', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-06-12 21:17:20.224133', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-06-12 21:17:20.315443', '/myapp/admin/classification/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-06-12 21:17:29.937741', '/upload/cover/1718198003099.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-06-12 21:17:40.644689', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-06-12 21:17:40.847305', '/myapp/admin/thing/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-06-12 21:17:51.015813', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-06-12 21:17:51.227658', '/myapp/admin/thing/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-06-12 21:18:10.829417', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-06-12 21:18:11.010776', '/myapp/admin/thing/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-06-12 21:19:23.122186', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-06-12 21:19:24.300262', '/myapp/admin/classification/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-06-12 21:19:24.405324', '/myapp/admin/classification/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-06-12 21:19:44.000534', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-06-12 21:19:44.289587', '/myapp/admin/thing/list', 'GET', NULL, '193');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-06-12 21:20:02.523027', '/myapp/admin/thing/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-06-12 21:20:02.805990', '/myapp/admin/thing/list', 'GET', NULL, '179');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-06-12 21:20:17.404051', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-06-12 21:20:17.700138', '/myapp/admin/thing/list', 'GET', NULL, '180');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-06-12 21:20:37.654947', '/myapp/admin/thing/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-06-12 21:20:37.938487', '/myapp/admin/thing/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-06-12 21:22:30.127262', '/upload/cover/1718198097347.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-06-12 21:22:33.481722', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-06-12 21:22:33.751552', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-06-12 21:22:36.775650', '/upload/cover/1718198003099.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-06-12 21:22:39.297876', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-06-12 21:22:39.554499', '/myapp/admin/thing/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-06-12 21:22:44.179178', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-06-12 21:22:44.393525', '/myapp/admin/thing/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-06-12 21:22:49.056661', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-06-12 21:22:49.323779', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-06-12 21:22:53.087509', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-06-12 21:22:53.342464', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-06-12 21:22:56.834367', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-06-12 21:22:57.102676', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-06-12 21:23:00.978389', '/myapp/admin/thing/update', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-06-12 21:23:01.240679', '/myapp/admin/thing/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-06-12 21:23:05.210744', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-06-12 21:23:05.460951', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-06-12 21:23:09.467581', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-06-12 21:23:09.776665', '/myapp/admin/thing/list', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-06-12 21:23:14.195495', '/myapp/admin/thing/update', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-06-12 21:23:14.441176', '/myapp/admin/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-06-12 21:23:19.318415', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-06-12 21:23:19.628810', '/myapp/admin/thing/list', 'GET', NULL, '215');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-06-12 21:23:20.618252', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-06-12 21:23:23.173516', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-06-12 21:23:23.472782', '/myapp/admin/thing/list', 'GET', NULL, '235');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-06-12 21:23:43.549947', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-06-12 21:23:43.660159', '/myapp/admin/classification/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-06-12 21:23:52.119106', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-06-12 21:23:54.031018', '/myapp/admin/thing/list', 'GET', NULL, '164');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-06-12 21:23:56.174009', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-06-12 21:23:58.466710', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-06-12 21:23:58.599608', '/myapp/admin/classification/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-06-12 21:25:36.675231', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-06-12 21:25:39.642277', '/myapp/admin/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-06-12 21:25:41.101531', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-06-12 21:25:42.332210', '/myapp/admin/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-06-12 21:26:02.949238', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-06-12 21:26:03.082080', '/myapp/admin/classification/list', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-06-12 21:26:09.350666', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-06-12 21:26:09.410031', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-06-12 21:26:09.486793', '/myapp/index/thing/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-06-12 21:26:09.559940', '/upload/cover/1718197771289.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-06-12 21:26:09.566937', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-06-12 21:26:09.569940', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-06-12 21:26:09.599348', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-06-12 21:26:09.933022', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '392');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-06-12 21:26:33.294548', '/myapp/admin/thing/update', 'POST', NULL, '67');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-06-12 21:26:33.550984', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-06-12 21:26:45.277258', '/myapp/admin/thing/update', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-06-12 21:26:45.519690', '/myapp/admin/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-06-12 21:26:53.496714', '/myapp/admin/thing/update', 'POST', NULL, '80');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-06-12 21:26:53.755784', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-06-12 21:27:00.827288', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-06-12 21:27:01.118847', '/myapp/admin/thing/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-06-12 21:27:10.519335', '/myapp/admin/thing/update', 'POST', NULL, '82');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-06-12 21:27:10.773756', '/myapp/admin/thing/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-06-12 21:27:13.824807', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-06-12 21:27:13.829367', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-06-12 21:27:13.903287', '/myapp/index/user/info', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-06-12 21:27:14.001237', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-06-12 21:27:14.003252', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-06-12 21:27:14.006797', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-06-12 21:27:14.007799', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-06-12 21:27:14.058596', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-06-12 21:27:14.070622', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-06-12 21:27:14.122144', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-06-12 21:27:34.005491', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-06-12 21:27:34.215586', '/myapp/admin/thing/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-06-12 21:27:37.473242', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-06-12 21:27:37.477692', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-06-12 21:27:37.553090', '/myapp/index/user/info', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-06-12 21:27:37.667424', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-06-12 21:27:37.671994', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-06-12 21:27:37.671094', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-06-12 21:27:37.673013', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-06-12 21:27:37.674510', '/upload/cover/1718198852834.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-06-12 21:27:37.691621', '/upload/cover/1718198852834.jpeg', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-06-12 21:27:37.694616', '/upload/cover/1718198852834.jpeg', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-06-12 21:27:37.747197', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-06-12 21:29:35.941614', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-06-12 21:29:35.976187', '/myapp/index/classification/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-06-12 21:29:36.018887', '/myapp/index/classification/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-06-12 21:29:36.136200', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-06-12 21:29:36.137200', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-06-12 21:29:36.137200', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-06-12 21:29:36.134195', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-06-12 21:29:36.138990', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-06-12 21:29:36.138990', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-06-12 21:29:36.140004', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-06-12 21:29:36.165566', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-06-12 21:29:36.222862', '/upload/cover/1718197771289.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-06-12 21:29:36.222862', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-06-12 21:30:03.631695', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-06-12 21:30:04.299142', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-06-12 21:30:04.932984', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-06-12 21:30:05.400673', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-06-12 21:30:05.792781', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-06-12 21:30:06.132902', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-06-12 21:30:07.118879', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-06-12 21:30:07.741944', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-06-12 21:30:08.582777', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-06-12 21:30:19.017052', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-06-12 21:30:19.220160', '/myapp/admin/thing/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-06-12 21:30:24.539632', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-06-12 21:30:24.602549', '/myapp/index/thing/getRecommend', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-06-12 21:30:24.655788', '/myapp/index/thing/getRecommend', 'GET', NULL, '146');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-06-12 21:30:24.704396', '/upload/cover/1718198812032.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-06-12 21:30:24.705402', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-06-12 21:30:24.707717', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-06-12 21:30:24.708717', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-06-12 21:30:24.709718', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-06-12 21:30:25.316947', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-06-12 21:30:25.328295', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-06-12 21:30:25.406676', '/myapp/index/thing/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-06-12 21:30:25.479151', '/myapp/index/thing/list', 'GET', NULL, '181');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-06-12 21:30:26.409755', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-06-12 21:30:27.722963', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-06-12 21:30:29.390125', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-06-12 21:30:30.442262', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-06-12 21:30:31.061057', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-06-12 21:30:51.950490', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-06-12 21:30:52.477221', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-06-12 21:30:53.326753', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-06-12 21:30:53.933419', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-06-12 21:30:54.653400', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-06-12 21:30:55.445802', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-06-12 21:30:56.244295', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-06-12 21:30:57.012954', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-06-12 21:30:57.489951', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-06-12 21:30:58.661865', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-06-12 21:31:00.818471', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-06-12 21:31:01.528296', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-06-12 21:31:59.652809', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-06-12 21:31:59.781958', '/myapp/index/thing/detail', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-06-12 21:31:59.911167', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-06-12 21:31:59.919491', '/myapp/admin/ad/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-06-12 21:31:59.923506', '/myapp/admin/ad/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-06-12 21:32:00.236225', '/myapp/admin/ad/list', 'GET', NULL, '357');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-06-12 21:36:10.651407', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-06-12 21:36:10.685514', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-06-12 21:36:10.696617', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-06-12 21:36:17.462270', '/myapp/index/user/register', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-06-12 21:36:20.152033', '/myapp/index/user/login', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-06-12 21:36:20.230440', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-06-12 21:36:20.233437', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-06-12 21:36:20.262196', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-06-12 21:36:20.293564', '/myapp/index/user/info', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-06-12 21:36:20.378125', '/upload/cover/1718198812032.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-06-12 21:36:20.381113', '/upload/cover/1718198812032.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-06-12 21:36:20.382110', '/upload/cover/1718198812032.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-06-12 21:36:20.385110', '/upload/cover/1718198852834.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-06-12 21:36:20.386111', '/upload/cover/1718198812032.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-06-12 21:36:20.395288', '/upload/cover/1718198852834.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-06-12 21:36:20.426299', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-06-12 21:36:20.431299', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-06-12 21:36:20.431299', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-06-12 21:36:23.370389', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-06-12 21:36:23.395613', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-06-12 21:36:23.399601', '/myapp/index/comment/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-06-12 21:36:23.409609', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-06-12 21:36:23.457413', '/myapp/index/comment/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-06-12 21:36:23.490218', '/myapp/index/comment/list', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-06-12 21:36:26.035418', '/myapp/index/thing/addWishUser', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-06-12 21:36:26.117929', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-06-12 21:36:26.756428', '/myapp/index/thing/addCollectUser', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-06-12 21:36:26.848760', '/myapp/index/thing/detail', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-06-12 21:36:33.308783', '/myapp/index/thing/rate', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-06-12 21:37:25.603493', '/myapp/admin/ad/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-06-12 21:37:25.606495', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-06-12 21:37:25.628188', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-06-12 21:37:25.638173', '/myapp/admin/ad/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-06-12 21:37:25.692709', '/myapp/admin/ad/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-06-12 21:37:25.710714', '/myapp/admin/ad/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-06-12 21:37:25.727423', '/upload/cover/1718198791310.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-06-12 21:37:25.766167', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-06-12 21:38:45.880193', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-06-12 21:38:45.884718', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-06-12 21:38:45.892266', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-06-12 21:38:45.937266', '/myapp/index/classification/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-06-12 21:38:45.993948', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-06-12 21:38:45.996090', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-06-12 21:38:45.998090', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-06-12 21:38:46.001092', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-06-12 21:38:46.004380', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-06-12 21:38:46.006378', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-06-12 21:38:46.028968', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-06-12 21:38:46.032264', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-06-12 21:41:27.594640', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-06-12 21:41:27.604934', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-06-12 21:41:27.658308', '/myapp/index/thing/getRecommend', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-06-12 21:41:52.478239', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-06-12 21:41:52.483240', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-06-12 21:41:52.498587', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-06-12 21:41:52.514832', '/upload/cover/1718198097347.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-06-12 21:42:13.067896', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-06-12 21:42:13.074141', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-06-12 21:42:13.093323', '/myapp/index/thing/detail', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-06-12 21:42:13.098663', '/myapp/index/thing/detail', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-06-12 21:42:13.159664', '/myapp/index/thing/detail', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-06-12 21:42:13.196936', '/myapp/index/thing/detail', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-06-12 21:42:13.256034', '/upload/cover/1718197771289.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-06-12 21:42:13.257031', '/upload/cover/1718197771289.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-06-12 21:42:15.916563', '/myapp/index/thing/addWishUser', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-06-12 21:42:16.009438', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-06-12 21:42:16.350269', '/myapp/index/thing/addCollectUser', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-06-12 21:42:16.416924', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-06-12 21:42:41.204999', '/myapp/index/thing/addCollectUser', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-06-12 21:42:41.278881', '/myapp/index/thing/detail', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-06-12 21:42:41.853770', '/myapp/index/thing/addWishUser', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-06-12 21:42:41.911582', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-06-12 21:42:45.642526', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-06-12 21:42:45.647929', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-06-12 21:42:45.689403', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-06-12 21:42:45.694416', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-06-12 21:42:45.703409', '/myapp/index/user/info', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-06-12 21:42:45.721134', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-06-12 21:42:47.259468', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-06-12 21:42:47.843700', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-06-12 21:42:49.035262', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-06-12 21:43:56.095221', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-06-12 21:43:57.617716', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-06-12 21:43:58.253000', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-06-12 21:43:59.489691', '/myapp/index/thing/removeCollectUser', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-06-12 21:43:59.619260', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-06-12 21:44:00.853373', '/myapp/index/thing/getWishThingList', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-06-12 21:44:02.062107', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-06-12 21:44:03.759730', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-06-12 21:44:03.777433', '/myapp/admin/ad/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-06-12 21:44:03.783431', '/myapp/admin/ad/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-06-12 21:44:03.799109', '/myapp/admin/ad/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-06-12 21:44:03.823726', '/myapp/admin/ad/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-06-12 21:44:03.869082', '/upload/cover/1718198791310.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-06-12 21:44:03.875193', '/upload/cover/1718198791310.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-06-12 21:44:03.921290', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-06-12 21:44:12.097063', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-06-12 21:44:12.112052', '/myapp/admin/ad/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-06-12 21:44:12.124704', '/myapp/admin/ad/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-06-12 21:44:12.128950', '/myapp/admin/ad/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-06-12 21:44:12.179050', '/myapp/admin/ad/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-06-12 21:44:12.207461', '/myapp/admin/ad/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-06-12 21:44:14.320747', '/myapp/index/thing/addWishUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-06-12 21:44:14.419311', '/myapp/index/thing/detail', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-06-12 21:44:14.767667', '/myapp/index/thing/addCollectUser', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-06-12 21:44:14.853214', '/myapp/index/thing/detail', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-06-12 21:45:20.053681', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-06-12 21:45:20.059187', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-06-12 21:45:20.074019', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-06-12 21:45:20.083353', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-06-12 21:45:20.124314', '/myapp/index/thing/detail', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-06-12 21:45:20.159745', '/upload/cover/1718198097347.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-06-12 21:45:20.166751', '/upload/cover/1718198097347.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-06-12 21:45:23.107703', '/myapp/admin/ad/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-06-12 21:45:23.113419', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-06-12 21:45:23.127607', '/myapp/admin/ad/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-06-12 21:45:23.140348', '/myapp/admin/ad/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-06-12 21:45:23.178523', '/myapp/admin/ad/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-06-12 21:45:23.210624', '/myapp/admin/ad/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-06-12 21:45:23.251288', '/upload/cover/1718197771289.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-06-12 21:45:25.700675', '/myapp/index/notice/list_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-06-12 21:45:25.707672', '/myapp/index/notice/list_api', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-06-12 21:45:25.718680', '/myapp/index/notice/list_api', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-06-12 21:45:25.725674', '/myapp/index/notice/list_api', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-06-12 21:45:25.775750', '/myapp/index/notice/list_api', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-06-12 21:45:25.802735', '/myapp/index/notice/list_api', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-06-12 21:46:32.260569', '/myapp/index/order/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-06-12 21:46:32.793578', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-06-12 21:46:32.800087', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-06-12 21:47:08.415694', '/myapp/index/order/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-06-12 21:47:08.438505', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-06-12 21:47:08.444507', '/myapp/index/order/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-06-12 21:47:08.471702', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-06-12 21:47:08.479284', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-06-12 21:47:08.495845', '/myapp/index/user/info', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-06-12 21:47:59.443845', '/myapp/index/order/cancel_order', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-06-12 21:47:59.490842', '/myapp/index/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-06-12 21:48:35.514349', '/myapp/index/comment/listMyComments', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-06-12 21:48:36.071350', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-06-12 21:48:39.303466', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-06-12 21:48:39.309765', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-06-12 21:48:39.321539', '/myapp/admin/ad/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-06-12 21:48:39.330882', '/myapp/admin/ad/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-06-12 21:48:39.397968', '/myapp/admin/ad/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-06-12 21:48:39.415597', '/upload/cover/1718198097347.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-06-12 21:48:39.425075', '/upload/cover/1718198097347.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-06-12 21:48:39.470051', '/upload/cover/1718198791310.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-06-12 21:48:43.354881', '/myapp/index/comment/create', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-06-12 21:48:43.408627', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-06-12 21:48:44.477128', '/myapp/index/comment/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-06-12 21:48:44.548451', '/myapp/index/comment/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-06-12 21:48:45.853546', '/myapp/index/comment/create', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-06-12 21:48:48.216652', '/myapp/index/comment/listMyComments', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-06-12 21:48:48.732981', '/myapp/index/order/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-06-12 21:48:49.255137', '/myapp/index/comment/listMyComments', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-06-12 21:48:49.919036', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-06-12 21:48:54.267345', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-06-12 21:48:57.875954', '/myapp/index/notice/list_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-06-12 21:49:04.789606', '/myapp/admin/order/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-06-12 21:49:24.819585', '/myapp/admin/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-06-12 21:49:27.973136', '/myapp/admin/order/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-06-12 21:49:35.885305', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-06-12 21:49:47.642538', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-06-12 21:49:47.662465', '/myapp/index/thing/getWishThingList', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-06-12 21:49:47.707508', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-06-12 21:49:47.714700', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-06-12 21:49:47.732726', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-06-12 21:49:47.758405', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-06-12 21:49:48.731270', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-06-12 21:50:19.207605', '/myapp/admin/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-06-12 21:50:26.746075', '/myapp/admin/order/cancel_order', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-06-12 21:50:26.810788', '/myapp/admin/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-06-12 21:50:38.121025', '/myapp/index/thing/getRecommend', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-06-12 21:50:38.128348', '/myapp/index/thing/getRecommend', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-06-12 21:50:38.141380', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-06-12 21:50:38.201123', '/myapp/index/thing/getRecommend', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-06-12 21:50:38.229495', '/myapp/index/thing/getRecommend', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-06-12 21:50:38.267365', '/myapp/index/thing/getRecommend', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-06-12 21:50:38.377791', '/upload/cover/1718197771289.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-06-12 21:51:16.292959', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-06-12 21:51:16.431163', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-06-12 21:51:16.434726', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-06-12 21:51:16.476935', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-06-12 21:51:16.491350', '/myapp/index/notice/list_api', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-06-12 21:51:16.496834', '/myapp/index/notice/list_api', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-06-12 21:51:16.503380', '/myapp/index/notice/list_api', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-06-12 21:51:16.555593', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-06-12 21:51:16.567468', '/myapp/index/thing/getWishThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-06-12 21:51:16.607608', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-06-12 21:51:16.618604', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-06-12 21:51:16.641107', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-06-12 21:51:16.664123', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-06-12 21:51:16.685647', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-06-12 21:51:16.695685', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-06-12 21:51:16.753477', '/upload/cover/1718198791310.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-06-12 21:51:16.769535', '/upload/cover/1718198003099.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-06-12 21:51:16.770534', '/upload/cover/1718198812032.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-06-12 21:51:16.776285', '/upload/cover/1718198852834.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-06-12 21:51:16.785973', '/upload/cover/1718198812032.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-06-12 21:51:16.788810', '/upload/cover/1718198819617.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-06-12 21:51:16.789829', '/upload/cover/1718198812032.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-06-12 21:51:16.796827', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-06-12 21:51:23.159826', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-06-12 21:51:23.169338', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-06-12 21:51:23.176000', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-06-12 21:51:23.227087', '/myapp/index/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-06-12 21:51:45.725158', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-06-12 21:51:45.733756', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-06-12 21:51:45.756918', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-06-12 21:51:45.763319', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-06-12 21:51:45.785668', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-06-12 21:51:45.791609', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-06-12 21:51:47.349359', '/myapp/index/thing/getRecommend', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-06-12 21:51:47.357098', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-06-12 21:51:47.409344', '/myapp/index/thing/getRecommend', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-06-12 21:51:48.555352', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-06-12 21:51:48.560839', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-06-12 21:51:48.568835', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-06-12 21:51:48.609779', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-06-12 21:51:49.480417', '/myapp/index/thing/getRecommend', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-06-12 21:51:49.485455', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-06-12 21:51:49.534651', '/myapp/index/thing/getRecommend', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-06-12 21:51:50.175439', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-06-12 21:51:50.178415', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-06-12 21:51:50.189806', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-06-12 21:51:50.236463', '/myapp/index/thing/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-06-12 21:51:52.239368', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-06-12 21:51:52.260426', '/myapp/index/thing/getWishThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-06-12 21:51:52.288484', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-06-12 21:51:52.300017', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-06-12 21:51:52.306041', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-06-12 21:51:52.327431', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-06-12 21:51:52.857773', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-06-12 21:51:52.868082', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-06-12 21:51:52.935383', '/myapp/index/user/info', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-06-12 21:51:53.750767', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-06-12 21:51:53.754756', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-06-12 21:51:53.772873', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-06-12 21:51:53.830926', '/myapp/index/thing/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-06-12 21:51:54.745498', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-06-12 21:51:54.772011', '/myapp/index/thing/getWishThingList', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-06-12 21:51:54.808033', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-06-12 21:51:54.816311', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-06-12 21:51:54.829660', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-06-12 21:51:54.855696', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-06-12 21:51:56.118403', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-06-12 21:51:56.133580', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-06-12 21:51:56.197314', '/myapp/index/thing/getRecommend', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-06-12 21:51:56.739104', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-06-12 21:51:56.776960', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-06-12 21:51:56.787626', '/myapp/index/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-06-12 21:51:56.801436', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-06-12 21:51:57.981836', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-06-12 21:51:57.994362', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-06-12 21:51:58.044151', '/myapp/index/user/info', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-06-12 21:51:59.076418', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-06-12 21:51:59.085487', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-06-12 21:51:59.103816', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-06-12 21:51:59.156020', '/myapp/index/thing/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-06-13 19:35:05.543538', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-06-13 19:35:05.551719', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-06-13 19:35:05.561192', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-06-13 19:35:05.579580', '/myapp/index/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-06-13 19:35:05.609759', '/upload/cover/1718198003099.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-06-13 19:35:05.614483', '/upload/cover/1718198003099.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-06-13 19:35:05.621297', '/upload/cover/1718198803762.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-06-13 19:35:05.623488', '/upload/cover/1718198003099.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-06-13 19:35:05.625592', '/upload/cover/1718198812032.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-06-13 19:35:05.635436', '/upload/cover/1718198852834.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-06-13 19:35:05.636524', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-06-13 19:35:05.637579', '/upload/cover/1718198828791.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-06-13 19:35:05.649299', '/upload/cover/1718197771289.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-06-13 19:35:05.650305', '/upload/cover/1718195752664.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-06-13 20:03:01.025935', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-06-13 20:03:01.041213', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-06-13 20:03:01.057726', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-06-13 20:03:01.057726', '/myapp/index/user/info', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-06-13 20:03:01.107379', '/myapp/index/user/info', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-06-13 20:03:01.126234', '/myapp/index/user/info', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-06-13 20:03:05.672170', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-06-13 20:03:05.672170', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-06-13 20:03:05.703903', '/myapp/index/notice/list_api', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-06-13 20:03:05.703903', '/myapp/index/notice/list_api', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-06-13 20:03:05.751693', '/myapp/index/notice/list_api', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-06-13 20:03:05.751693', '/myapp/index/notice/list_api', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-06-13 20:03:15.638273', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-06-13 20:03:15.638273', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-06-13 20:03:15.671542', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-06-13 20:03:15.687363', '/myapp/index/user/info', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-06-13 20:03:17.321126', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-06-13 20:03:17.421747', '/myapp/admin/classification/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-06-13 20:03:19.479243', '/myapp/admin/order/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-06-13 20:03:39.231996', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-06-13 20:03:39.231996', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-06-13 20:03:39.249325', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-06-13 20:03:39.282183', '/myapp/index/thing/detail', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-06-13 20:03:39.315463', '/myapp/index/thing/detail', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-06-13 20:03:39.331508', '/myapp/index/thing/detail', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-06-13 20:03:40.505002', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-06-13 20:03:40.512994', '/myapp/admin/ad/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-06-13 20:03:40.514348', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-06-13 20:03:40.557259', '/myapp/admin/ad/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-06-13 20:03:40.580647', '/myapp/admin/ad/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-06-13 20:03:40.611094', '/myapp/admin/ad/list', 'GET', NULL, '126');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-06-13 20:03:55.262642', '/myapp/index/order/create', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-06-13 20:03:55.351993', '/myapp/index/user/info', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-06-13 20:03:55.361071', '/myapp/index/user/info', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-06-13 20:03:58.315113', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-06-13 20:03:58.860436', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-06-13 20:04:03.859113', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-06-13 20:04:03.859113', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-06-13 20:04:03.909215', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-06-13 20:04:03.925413', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-06-13 20:04:03.925413', '/myapp/index/user/info', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-06-13 20:04:03.942725', '/myapp/index/user/info', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-06-13 20:04:31.219775', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-06-13 20:04:31.237890', '/myapp/index/thing/getRecommend', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-06-13 20:04:31.237890', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-06-13 20:04:31.255850', '/myapp/index/thing/getRecommend', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-06-13 20:04:31.354642', '/myapp/index/thing/getRecommend', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-06-13 20:04:31.370476', '/myapp/index/thing/getRecommend', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-06-13 20:04:33.744342', '/myapp/index/thing/rate', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-06-13 20:04:41.349976', '/myapp/index/thing/addWishUser', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-06-13 20:04:41.401284', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-06-13 20:04:43.450179', '/myapp/index/thing/addCollectUser', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-06-13 20:04:43.500025', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-06-13 20:04:50.533948', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-06-13 20:04:50.538517', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-06-13 20:04:50.544516', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-06-13 20:04:50.583934', '/myapp/index/classification/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-06-13 20:05:02.649772', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-06-13 20:05:02.662362', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-06-13 20:05:02.681703', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-06-13 20:05:02.728676', '/myapp/index/thing/detail', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-06-13 20:05:02.751257', '/myapp/index/thing/detail', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-06-13 20:05:02.761827', '/myapp/index/thing/detail', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-06-13 20:05:08.172713', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-06-13 20:05:08.195290', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-06-13 20:05:08.228144', '/myapp/index/comment/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-06-13 20:05:08.260641', '/myapp/index/comment/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-06-13 20:05:09.237268', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-06-13 20:05:09.243226', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-06-13 20:05:09.259842', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-06-13 20:05:09.274982', '/myapp/index/user/info', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-06-13 20:05:09.291926', '/myapp/index/user/info', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-06-13 20:05:09.322808', '/myapp/index/user/info', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-06-13 20:05:22.382443', '/myapp/index/order/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-06-13 20:05:22.402571', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-06-13 20:05:22.412660', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-06-13 20:05:24.515066', '/myapp/admin/user/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-06-13 20:05:24.928897', '/myapp/admin/order/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-06-13 20:05:41.663233', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-06-13 20:05:41.669554', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-06-13 20:05:41.669554', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-06-13 20:05:41.706336', '/myapp/index/user/info', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-06-13 20:05:43.952408', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-06-13 20:05:44.069047', '/myapp/admin/classification/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-06-13 20:05:44.737315', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-06-13 20:05:45.985071', '/myapp/admin/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-06-13 20:05:49.386623', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-06-13 20:05:49.401398', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-06-13 20:05:49.401398', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-06-13 20:05:49.434380', '/myapp/index/comment/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-06-13 20:05:49.451639', '/myapp/index/comment/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-06-13 20:05:49.500669', '/myapp/index/comment/list', 'GET', NULL, '122');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-06-13 20:05:55.209941', '/myapp/index/comment/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-06-13 20:05:55.246295', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-06-13 20:05:56.848739', '/myapp/index/comment/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-06-13 20:05:56.896319', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-06-13 20:06:00.169431', '/myapp/index/comment/create', 'POST', NULL, '4');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-06-13 20:06:02.022194', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-06-13 20:06:02.024850', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-06-13 20:06:02.033696', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-06-13 20:06:02.067487', '/myapp/index/classification/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-06-13 20:06:03.883512', '/myapp/admin/user/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-06-13 20:06:04.798693', '/myapp/admin/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-06-13 20:06:06.184117', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-06-13 20:06:17.171101', '/myapp/index/user/register', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-06-13 20:06:19.966678', '/myapp/index/user/login', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-06-13 20:06:20.004738', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-06-13 20:06:20.011623', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-06-13 20:06:20.028719', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-06-13 20:06:20.061325', '/myapp/index/user/info', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-06-13 20:06:23.764765', '/myapp/admin/order/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-06-13 20:06:24.248652', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-06-13 20:06:38.841682', '/myapp/admin/user/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-06-13 20:06:38.876692', '/myapp/admin/user/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-06-13 20:06:47.289209', '/myapp/admin/user/update', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-06-13 20:06:47.341273', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-06-13 20:07:04.058907', '/myapp/admin/order/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-06-13 20:07:05.271613', '/myapp/admin/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-06-13 20:07:06.667597', '/myapp/admin/user/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-06-13 20:07:07.752915', '/myapp/admin/order/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-06-13 20:07:10.669251', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-06-13 20:07:10.665196', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-06-13 20:07:10.683481', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-06-13 20:07:10.713149', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-06-13 20:07:10.745144', '/myapp/index/comment/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-06-13 20:07:10.783032', '/myapp/index/comment/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-06-13 20:07:11.811143', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-06-13 20:07:11.814930', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-06-13 20:07:11.832494', '/myapp/index/user/info', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-06-13 20:07:11.880066', '/myapp/index/user/info', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-06-13 20:07:11.895748', '/myapp/index/user/info', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-06-13 20:07:11.911439', '/myapp/index/user/info', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-06-13 20:07:22.773202', '/myapp/index/order/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-06-13 20:07:22.806199', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-06-13 20:07:22.808996', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-06-13 20:07:25.131343', '/myapp/admin/user/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-06-13 20:07:25.712092', '/myapp/admin/order/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-06-13 20:07:32.297751', '/myapp/admin/ad/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-06-13 20:07:38.911436', '/myapp/admin/ad/create', 'POST', NULL, '366');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-06-13 20:07:38.927827', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-06-13 20:07:38.979298', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-06-13 20:07:45.375667', '/myapp/admin/ad/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-06-13 20:07:45.428408', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-06-13 20:07:45.460506', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-06-13 20:07:48.005947', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-06-13 20:07:48.006973', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-06-13 20:07:48.024778', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-06-13 20:07:48.074024', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-06-13 20:07:48.789796', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-06-13 20:07:48.811747', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-06-13 20:07:48.812779', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-06-13 20:07:48.839676', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-06-13 20:07:48.890342', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-06-13 20:07:48.905078', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-06-13 20:07:48.922294', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-06-13 20:07:48.939987', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-06-13 20:07:55.173130', '/myapp/admin/notice/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-06-13 20:08:05.620760', '/myapp/admin/notice/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-06-13 20:08:05.638965', '/myapp/admin/notice/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-06-13 20:08:17.702774', '/myapp/admin/notice/create', 'POST', NULL, '6');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-06-13 20:08:17.736196', '/myapp/admin/notice/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-06-13 20:08:28.765063', '/myapp/admin/notice/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-06-13 20:08:28.783712', '/myapp/admin/notice/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-06-13 20:08:31.303930', '/myapp/admin/loginLog/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-06-13 20:08:32.763184', '/myapp/admin/opLog/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-06-13 20:08:34.480976', '/myapp/admin/overview/count', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-06-13 20:08:36.207083', '/myapp/admin/feedback/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-06-13 20:08:39.079084', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1075');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-06-13 20:08:39.634022', '/myapp/admin/feedback/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-06-13 20:08:43.980385', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-06-13 20:08:43.980385', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-06-13 20:09:05.125275', '/myapp/index/feedback/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-06-13 20:09:06.943136', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-06-13 20:09:06.943136', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-06-13 20:09:31.622017', '/myapp/index/feedback/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-06-13 20:09:34.361125', '/myapp/admin/overview/count', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-06-13 20:09:34.518674', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-06-13 20:09:34.530968', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-06-13 20:09:34.814312', '/myapp/admin/feedback/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-06-13 20:09:59.192595', '/myapp/index/feedback/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-06-13 20:10:02.778825', '/myapp/index/feedback/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-06-13 20:10:04.743069', '/myapp/index/feedback/create', 'POST', NULL, '2');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-06-13 20:10:08.756747', '/myapp/admin/overview/count', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-06-13 20:10:09.413772', '/myapp/admin/feedback/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-06-13 20:10:13.177864', '/myapp/index/feedback/create', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-06-13 20:10:14.990994', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-06-13 20:10:14.988582', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-06-13 20:10:17.541054', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1025');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-06-13 20:10:18.138406', '/myapp/admin/feedback/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-06-13 20:10:19.646402', '/myapp/admin/overview/count', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-06-13 20:10:24.487173', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-06-13 20:10:24.487885', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-06-13 20:10:24.505487', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-06-13 20:10:24.538209', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-06-13 20:10:30.538449', '/myapp/index/thing/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-06-13 20:10:31.936152', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-06-13 20:10:31.936152', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-06-13 20:10:31.952728', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-06-13 20:10:31.969516', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-06-13 20:10:32.002641', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-06-13 20:10:32.052633', '/myapp/index/thing/detail', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-06-13 20:10:33.387975', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-06-13 20:10:33.402684', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-06-13 20:10:33.420877', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-06-13 20:10:33.455060', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-06-13 20:10:34.370611', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-06-13 20:10:34.370611', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-06-13 20:10:34.386057', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-06-13 20:10:34.419970', '/myapp/index/thing/detail', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-06-13 20:10:34.435214', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-06-13 20:10:34.464366', '/myapp/index/thing/detail', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-06-13 20:10:35.858519', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-06-13 20:10:35.868038', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-06-13 20:10:35.873635', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-06-13 20:10:35.920230', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-06-13 20:10:36.803863', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-06-13 20:10:36.818539', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-06-13 20:10:36.818539', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-06-13 20:10:36.835323', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-06-13 20:10:36.901995', '/myapp/index/comment/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-06-13 20:10:36.918305', '/myapp/index/comment/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-06-13 20:10:37.735125', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-06-13 20:10:37.735125', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-06-13 20:10:37.751481', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-06-13 20:10:37.802598', '/myapp/index/user/info', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-06-13 20:10:38.609544', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-06-13 20:10:38.613982', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-06-13 20:10:38.622001', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-06-13 20:10:38.639035', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-06-13 20:10:38.653557', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-06-13 20:10:38.653557', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-06-13 20:10:39.786725', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-06-13 20:10:39.786725', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-06-13 20:10:39.799954', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-06-13 20:10:39.839003', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-06-13 20:10:41.068016', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-06-13 20:10:41.068016', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-06-13 20:10:41.086099', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-06-13 20:10:41.096119', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-06-13 20:10:41.152278', '/myapp/index/thing/detail', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-06-13 20:10:41.181133', '/myapp/index/thing/detail', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-06-13 20:10:42.298712', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-06-13 20:10:42.306715', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-06-13 20:10:42.316558', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-06-13 20:10:42.351384', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-06-13 20:10:43.567610', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-06-13 20:10:43.583889', '/myapp/index/thing/detail', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-06-13 20:10:43.567610', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-06-13 20:10:43.583889', '/myapp/index/thing/detail', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-06-13 20:10:43.650668', '/myapp/index/thing/detail', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-06-13 20:10:43.656671', '/myapp/index/thing/detail', 'GET', NULL, '172');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-06-13 20:10:44.517627', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-06-13 20:10:44.528622', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-06-13 20:10:44.534050', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-06-13 20:10:44.585866', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-06-13 20:10:45.652594', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-06-13 20:10:45.667373', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-06-13 20:10:45.684259', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-06-13 20:10:45.716903', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-06-13 20:10:45.766502', '/myapp/index/comment/list', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-06-13 20:10:45.767338', '/myapp/index/comment/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-06-13 20:10:46.570355', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-06-13 20:10:46.584122', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-06-13 20:10:46.584122', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-06-13 20:10:46.637829', '/myapp/index/thing/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-06-13 20:10:47.783293', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-06-13 20:10:47.806434', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-06-13 20:10:47.806434', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-06-13 20:10:47.833710', '/myapp/index/comment/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-06-13 20:10:47.877946', '/myapp/index/comment/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-06-13 20:10:47.899525', '/myapp/index/comment/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-06-13 20:10:48.583217', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-06-13 20:10:48.599081', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-06-13 20:10:48.600363', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-06-13 20:10:48.651986', '/myapp/index/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-06-13 20:10:53.003789', '/myapp/admin/feedback/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-06-13 20:10:53.583049', '/myapp/admin/overview/count', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-06-13 20:11:37.487091', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-06-13 20:11:37.494301', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-06-13 20:11:37.499195', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-06-13 20:11:37.543690', '/myapp/index/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-06-13 20:11:39.459667', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-06-13 20:11:39.459667', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-06-13 20:11:39.478698', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-06-13 20:11:39.510017', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-06-13 20:11:40.545838', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-06-13 20:11:40.551405', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-06-13 20:11:40.609556', '/myapp/index/thing/getRecommend', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-06-13 20:11:40.990489', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-06-13 20:11:40.990489', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-06-13 20:11:41.007555', '/myapp/index/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-06-13 20:11:41.044999', '/myapp/index/classification/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-06-13 20:12:55.961667', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-06-13 20:12:55.978079', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-06-13 20:12:55.978079', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-06-13 20:12:55.978079', '/myapp/index/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-06-13 20:12:58.135262', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-06-13 20:12:58.140855', '/myapp/index/thing/getRecommend', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-06-13 20:12:58.204699', '/myapp/index/thing/getRecommend', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-06-13 20:12:58.928499', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-06-13 20:12:58.942501', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-06-13 20:12:58.944136', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-06-13 20:12:58.985378', '/myapp/index/user/info', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-06-13 20:13:51.728160', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-06-13 20:13:51.746218', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-06-13 20:13:51.752959', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-06-13 20:13:51.769354', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-06-13 20:13:54.673290', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-06-13 20:13:54.673290', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-06-13 20:13:54.689014', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-06-13 20:13:54.722242', '/myapp/index/user/info', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-06-13 20:13:57.846474', '/myapp/index/thing/getRecommend', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-06-13 20:13:57.868259', '/myapp/index/thing/getRecommend', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-06-13 20:13:57.900694', '/myapp/index/thing/getRecommend', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-06-13 20:13:58.665263', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-06-13 20:13:58.669281', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-06-13 20:13:58.683984', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-06-13 20:13:58.719105', '/myapp/index/user/info', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-06-13 20:14:05.627841', '/myapp/index/user/login', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-06-13 20:14:05.668096', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-06-13 20:14:05.672419', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-06-13 20:14:05.685102', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-06-13 20:14:05.717696', '/myapp/index/user/info', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-06-13 20:14:54.273506', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-06-13 20:14:54.279846', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-06-13 20:14:54.287732', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-06-13 20:14:54.307859', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-06-13 20:14:54.330665', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-06-13 20:14:54.346973', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-06-13 20:14:55.787792', '/myapp/index/order/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-06-13 20:14:56.392024', '/myapp/index/comment/listMyComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-06-13 20:14:57.869783', '/myapp/index/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-06-13 20:14:58.529469', '/myapp/index/comment/listMyComments', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-06-13 20:14:59.221653', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-06-13 20:15:01.065702', '/myapp/index/comment/listMyComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-06-13 20:15:02.387799', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-06-13 20:15:04.209845', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-06-13 20:15:04.215848', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-06-13 20:15:04.228003', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-06-13 20:15:04.271551', '/myapp/index/user/info', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-06-13 20:15:05.254444', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-06-13 20:15:05.263550', '/myapp/admin/ad/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-06-13 20:15:05.277498', '/myapp/admin/ad/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-06-13 20:15:05.353616', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-06-13 20:15:05.361256', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-06-13 20:15:05.372473', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-06-13 20:15:05.374478', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-06-13 20:15:05.410425', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-06-13 20:15:08.527398', '/myapp/index/comment/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-06-13 20:15:08.587298', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-06-13 20:15:10.350206', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-06-13 20:15:10.356128', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-06-13 20:15:10.378332', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-06-13 20:15:10.382336', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-06-13 20:15:10.394330', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-06-13 20:15:10.412352', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-06-13 20:15:12.475287', '/myapp/index/comment/listMyComments', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-06-13 20:15:13.603603', '/myapp/index/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-06-13 20:15:14.124307', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-06-13 20:15:21.360499', '/myapp/index/user/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-06-13 20:15:22.205919', '/myapp/index/thing/getWishThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-06-13 20:15:22.220127', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-06-13 20:15:22.238118', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-06-13 20:15:22.246105', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-06-13 20:15:22.260117', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-06-13 20:15:22.265099', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-06-13 20:15:22.293488', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-06-13 20:16:00.156059', '/myapp/admin/overview/count', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-06-13 20:16:00.486814', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-06-13 20:16:00.489815', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-06-13 20:16:00.496813', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-06-13 20:16:00.514260', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-06-13 20:16:00.520266', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-06-13 20:16:00.522599', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-06-13 20:16:00.540166', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-06-13 20:16:01.103430', '/myapp/index/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-06-13 20:16:01.902553', '/myapp/index/comment/listMyComments', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-06-13 20:16:02.593488', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-06-13 20:16:04.168655', '/myapp/index/notice/list_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-06-13 20:16:05.131101', '/myapp/index/order/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-06-13 20:16:06.502339', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-06-13 20:16:07.540089', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-06-13 20:18:08.076009', '/myapp/index/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-06-13 20:18:08.446296', '/myapp/index/comment/listMyComments', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-06-13 20:18:09.213133', '/myapp/index/order/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-06-13 20:18:10.671165', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-06-13 20:18:10.681939', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-06-13 20:18:10.700013', '/myapp/index/user/info', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-06-13 20:18:10.748749', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-06-13 20:18:10.751749', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-06-13 20:18:11.781359', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-06-13 20:18:11.791578', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-06-13 20:18:11.805999', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-06-13 20:18:11.815595', '/myapp/index/thing/getRecommend', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-06-13 20:18:11.866774', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-06-13 20:18:11.876869', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-06-13 20:18:11.887965', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2024-06-13 20:18:11.916334', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2024-06-13 20:18:13.151982', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2024-06-13 20:18:13.157992', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2024-06-13 20:18:13.166971', '/myapp/index/user/info', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2024-06-13 20:18:13.176973', '/myapp/index/user/info', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2024-06-13 20:18:13.226690', '/myapp/index/user/info', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2024-06-13 20:18:13.242064', '/myapp/index/user/info', 'GET', NULL, '112');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2024-06-13 20:18:25.533198', '/myapp/index/order/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2024-06-13 20:18:25.957495', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2024-06-13 20:18:25.974953', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2024-06-13 20:18:26.930475', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2024-06-13 20:18:26.947485', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2024-06-13 20:18:26.952475', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2024-06-13 20:18:26.978495', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2024-06-13 20:18:26.984502', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2024-06-13 20:18:26.988478', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2024-06-13 20:18:29.623629', '/myapp/admin/ad/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2024-06-13 20:18:29.627626', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2024-06-13 20:18:29.639865', '/myapp/admin/ad/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2024-06-13 20:18:29.653275', '/myapp/admin/ad/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2024-06-13 20:18:29.687367', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2024-06-13 20:18:29.702417', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2024-06-13 20:18:29.742896', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2024-06-13 20:18:35.639363', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2024-06-13 20:18:35.657519', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2024-06-13 20:18:35.676794', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2024-06-13 20:18:35.705742', '/myapp/index/comment/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2024-06-13 20:18:35.731985', '/myapp/index/comment/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2024-06-13 20:18:35.768826', '/myapp/index/comment/list', 'GET', NULL, '148');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2024-06-13 20:18:37.455355', '/myapp/index/thing/rate', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2024-06-13 20:18:41.012489', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2024-06-13 20:18:41.017480', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2024-06-13 20:18:41.073476', '/myapp/admin/ad/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2024-06-13 20:18:41.106886', '/myapp/admin/ad/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2024-06-13 20:18:46.959506', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2024-06-13 20:18:47.085939', '/myapp/admin/classification/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2024-06-13 20:18:48.250361', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2024-06-13 20:18:49.155366', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2024-06-13 20:18:49.271699', '/myapp/admin/thing/list', 'GET', NULL, '123');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2024-06-13 20:18:50.115328', '/myapp/admin/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2024-06-13 20:18:50.998095', '/myapp/admin/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2024-06-13 20:18:51.110913', '/myapp/admin/classification/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2024-06-13 20:19:00.043301', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2024-06-13 20:19:00.229576', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2024-06-13 20:19:07.395265', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2024-06-13 20:19:07.403241', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2024-06-13 20:19:07.411314', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2024-06-13 20:19:07.451518', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2024-06-13 20:19:07.467621', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2024-06-13 20:19:08.732878', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2024-06-13 20:19:09.522802', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2024-06-13 20:19:10.310780', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2024-06-13 20:19:10.803300', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2024-06-13 20:19:11.244281', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2024-06-13 20:19:12.348289', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2024-06-13 20:19:12.714631', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2024-06-13 20:19:29.086068', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2024-06-13 20:19:29.232909', '/myapp/admin/thing/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2024-06-13 20:19:30.593178', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2024-06-13 20:19:30.986211', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2024-06-13 20:19:31.055628', '/myapp/admin/classification/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2024-06-13 20:19:34.847717', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2024-06-13 20:19:34.852631', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2024-06-13 20:19:34.868637', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2024-06-13 20:19:34.899723', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2024-06-13 20:19:34.918822', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2024-06-13 20:19:43.860821', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2024-06-13 20:19:43.868823', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2024-06-13 20:19:43.881766', '/myapp/index/thing/detail', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2024-06-13 20:19:43.956141', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2024-06-13 20:19:43.961354', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2024-06-13 20:19:43.984626', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2024-06-13 20:19:43.999570', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2024-06-13 20:19:44.020992', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2024-06-13 20:21:16.253551', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2024-06-13 20:21:16.742203', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2024-06-13 20:21:16.784890', '/myapp/admin/classification/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2024-06-13 20:22:16.677299', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2024-06-13 20:22:16.677299', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2024-06-13 20:22:16.680298', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2024-06-13 20:22:16.681785', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2024-06-13 20:22:16.683261', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2024-06-13 20:22:16.703280', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2024-06-13 20:22:16.705276', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2024-06-13 20:22:16.707275', '/upload/ad/1718280455795.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2024-06-13 20:22:16.712299', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2024-06-13 20:22:17.581747', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2024-06-13 20:22:17.582855', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2024-06-13 20:22:17.586341', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2024-06-13 20:22:17.600943', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2024-06-13 20:22:17.606081', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2024-06-13 20:22:17.608538', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2024-06-13 20:22:29.404816', '/myapp/index/order/create', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2024-06-13 20:22:29.440905', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2024-06-13 20:22:29.460789', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2024-06-13 20:22:34.479161', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2024-06-13 20:22:34.601625', '/myapp/admin/thing/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2024-06-13 20:22:45.816651', '/myapp/admin/thing/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2024-06-13 20:22:46.005311', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2024-06-13 20:22:48.179624', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2024-06-13 20:22:48.621945', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2024-06-13 20:22:48.692123', '/myapp/admin/classification/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2024-06-13 20:22:53.345516', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2024-06-13 20:22:53.528431', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2024-06-13 20:23:08.132931', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2024-06-13 20:23:08.138929', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2024-06-13 20:23:08.147200', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2024-06-13 20:23:08.183282', '/myapp/index/classification/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2024-06-13 20:23:09.247261', '/myapp/admin/ad/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2024-06-13 20:23:09.257190', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2024-06-13 20:23:09.262732', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2024-06-13 20:23:09.321256', '/myapp/admin/ad/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2024-06-13 20:23:09.346731', '/myapp/admin/ad/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2024-06-13 20:23:09.373584', '/myapp/admin/ad/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2024-06-13 20:23:14.661629', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2024-06-13 20:23:14.670690', '/myapp/index/user/info', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2024-06-13 20:23:14.701769', '/myapp/index/user/info', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2024-06-13 20:23:14.749112', '/myapp/index/user/info', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2024-06-13 20:23:14.753114', '/myapp/index/user/info', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2024-06-13 20:23:14.782657', '/myapp/index/user/info', 'GET', NULL, '149');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2024-06-13 20:23:21.383306', '/myapp/index/order/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2024-06-13 20:23:32.924884', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2024-06-13 20:23:33.095837', '/myapp/admin/thing/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2024-06-13 20:25:09.689180', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2024-06-13 20:25:10.502133', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2024-06-13 20:25:10.529691', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2024-06-13 20:25:23.668668', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2024-06-13 20:25:23.847123', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2024-06-13 20:25:28.511591', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2024-06-13 20:25:28.723393', '/myapp/admin/thing/list', 'GET', NULL, '180');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2024-06-13 20:25:33.623127', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2024-06-13 20:25:33.802962', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2024-06-13 20:25:38.164277', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2024-06-13 20:25:38.373322', '/myapp/admin/thing/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2024-06-13 20:25:43.736444', '/myapp/admin/thing/update', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2024-06-13 20:25:43.920853', '/myapp/admin/thing/list', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2024-06-13 20:25:49.446656', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2024-06-13 20:25:49.612064', '/myapp/admin/thing/list', 'GET', NULL, '140');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2024-06-13 20:25:53.983041', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2024-06-13 20:25:54.159497', '/myapp/admin/thing/list', 'GET', NULL, '148');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2024-06-13 20:26:00.685964', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2024-06-13 20:26:00.775989', '/myapp/admin/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2024-06-13 20:26:04.784552', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2024-06-13 20:26:04.970331', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2024-06-13 20:26:06.263141', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2024-06-13 20:26:06.740795', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2024-06-13 20:26:06.804585', '/myapp/admin/classification/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2024-06-13 20:26:11.111190', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2024-06-13 20:26:11.282363', '/myapp/admin/thing/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2024-06-13 20:26:14.783040', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2024-06-13 20:26:14.789052', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2024-06-13 20:26:14.797087', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2024-06-13 20:26:14.849418', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2024-06-13 20:26:14.853346', '/upload/avatar/1718280917105.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2024-06-13 20:26:15.958946', '/myapp/admin/ad/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2024-06-13 20:26:15.967997', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2024-06-13 20:26:15.999119', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2024-06-13 20:26:16.035258', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2024-06-13 20:26:16.047237', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2024-06-13 20:26:16.063689', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2024-06-13 20:26:16.067665', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2024-06-13 20:26:16.107959', '/upload/ad/1718280462895.jpeg', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2024-06-13 20:29:37.585492', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2024-06-13 20:29:38.897475', '/myapp/admin/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2024-06-13 20:29:41.773445', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2024-06-13 20:29:43.240652', '/myapp/admin/order/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2024-06-13 20:29:45.909262', '/myapp/admin/overview/count', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2024-06-13 20:29:47.714698', '/myapp/admin/feedback/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2024-06-13 20:29:49.006326', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2024-06-13 20:29:49.157994', '/myapp/admin/classification/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2024-06-13 20:29:51.820627', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2024-06-13 20:29:51.846679', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2024-06-13 20:29:51.859697', '/myapp/index/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2024-06-13 20:29:51.879937', '/myapp/index/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2024-06-13 20:29:55.424459', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2024-06-13 20:29:55.451587', '/myapp/index/thing/getRecommend', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2024-06-13 20:29:55.484584', '/myapp/index/thing/getRecommend', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2024-06-13 20:29:56.514251', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2024-06-13 20:29:56.524061', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2024-06-13 20:29:56.527590', '/myapp/index/thing/getWishThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2024-06-13 20:29:56.542313', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2024-06-13 20:29:56.550587', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2024-06-13 20:29:56.592767', '/myapp/index/user/info', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2024-06-13 20:29:57.941262', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2024-06-13 20:29:58.952799', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2024-06-13 20:29:59.752588', '/myapp/index/comment/listMyComments', 'GET', NULL, '18');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1718199992241', 2, '2', '2024-06-12 21:46:32.252569', '刘德华', '', '12333', '', 4, 3);
INSERT INTO `b_order` VALUES (2, '1718280235248', 2, '1', '2024-06-13 20:03:55.256730', '刘雯雯', '', '13222224322', 'aaa', 5, 3);
INSERT INTO `b_order` VALUES (3, '1718280322361', 1, '1', '2024-06-13 20:05:22.368681', '周先生', '', '13566665555', '', 1, 3);
INSERT INTO `b_order` VALUES (4, '1718280442749', 2, '1', '2024-06-13 20:07:22.759038', '韩女士', '', '13544443333', '', 6, 4);
INSERT INTO `b_order` VALUES (5, '1718281105519', 1, '1', '2024-06-13 20:18:25.527898', '李路', '', '13211112222', '', 6, 5);
INSERT INTO `b_order` VALUES (6, '1718281349383', 2, '1', '2024-06-13 20:22:29.392727', '韩梅梅', '', '13222221111', '', 3, 5);

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 4, 11, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 3, 14, '127.0.0.1');
INSERT INTO `b_record` VALUES (3, 1, 8, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 5, 6, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 6, 6, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 12, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (7, 2, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (8, 11, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (9, 10, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (10, 9, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (11, 8, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (12, 7, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `daoyan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `fangying` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fangyingting` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nianfen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `renyuan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `repertory` int(11) NOT NULL,
  `shichang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yuyan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shangying` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '天下无贼', 'cover/1718195752664.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '32', '冯小刚', '中国', '0', '2024-06-12 20:35:58.343070', 8, 0, 1, 0, 6, NULL, 3, '下午14:30', '三号厅', '2021', '刘德华、王宝强、范冰冰', 1022, '2小时', '国语', '2020年9月');
INSERT INTO `b_thing` VALUES (2, '红海行动2', 'cover/1718197771289.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '90', '刘德华', '中国', '0', '2024-06-12 21:10:59.020621', 1, 0, 0, 0, 1, NULL, 3, '下午15点20', '9号厅', '2020', '刘冰冰、韩梅梅', 1091, '3小时', '粤语', '2019年10月');
INSERT INTO `b_thing` VALUES (3, '我的姐姐', 'cover/1718198791310.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '55', '王文', '韩国', '0', '2024-06-12 21:14:50.340240', 14, 0, 1, 1, 5, NULL, 4, '下午18点', '8号厅', '2020', '张三、李四', 1098, '3小时', '英语', '2020年8月');
INSERT INTO `b_thing` VALUES (4, '孙悟空2009', 'cover/1718198097347.jpeg', '这是一部2011年上映的电影由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '80', '张艺谋', '美国', '0', '2024-06-12 21:15:58.005631', 11, 0, 1, 1, 4, NULL, 3, '下午18点', '3号厅', '2019', '张三、王六', 1212, '1小时', '日语', '2019年');
INSERT INTO `b_thing` VALUES (5, '霜花店', 'cover/1718198003099.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '55', '王文', '香港', '0', '2024-06-12 21:14:50.340240', 6, 0, 1, 1, 5, NULL, 4, '下午18点', '8号厅', '2020', '张三、李四', 2200, '3小时', '英语', '2020年8月');
INSERT INTO `b_thing` VALUES (6, '西路的海', 'cover/1718198803762.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '55', '王文', '香港', '0', '2024-06-12 21:14:50.340240', 6, 0, 0, 0, 5, NULL, 4, '下午18点', '8号厅', '2020', '张三、李四', 2300, '3小时', '英语', '2020年8月');
INSERT INTO `b_thing` VALUES (7, '测试影片8888', 'cover/1718198812032.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '55', '王文', '香港', '0', '2024-06-12 21:14:50.340240', 1, 0, 0, 0, 3, NULL, 3, '下午18点', '8号厅', '2020', '张三、李四', 2400, '3小时', '韩语', '2020年8月');
INSERT INTO `b_thing` VALUES (8, '测试电影2', 'cover/1718198003099.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '55', '王文', '香港', '0', '2024-06-12 21:14:50.340240', 1, 0, 0, 0, 1, NULL, 3, '下午18点', '8号厅', '2020', '张三、李四', 2100, '3小时', '法语', '2020年8月');
INSERT INTO `b_thing` VALUES (9, '来自天空的你', 'cover/1718198852834.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '55', '王文', '香港', '0', '2024-06-12 21:14:50.340240', 1, 0, 0, 0, 2, NULL, 3, '下午18点', '8号厅', '2020', '张三、李四', 2300, '3小时', '日语', '2020年8月');
INSERT INTO `b_thing` VALUES (10, '野马行动', 'cover/1718198819617.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '55', '王文', '香港', '0', '2024-06-12 21:14:50.340240', 1, 0, 0, 0, 5, NULL, 3, '下午18点', '8号厅', '2020', '张三、李四', 200, '3小时', '英语', '2020年8月');
INSERT INTO `b_thing` VALUES (11, '测试电影111', 'cover/1718198828791.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '55', '王文', '香港', '0', '2024-06-12 21:14:50.340240', 1, 0, 0, 0, 5, NULL, 3, '下午18点', '8号厅', '2020', '张三、李四', 2300, '3小时', '西班牙语', '2020年8月');
INSERT INTO `b_thing` VALUES (12, '野马行动', 'cover/1718198003099.jpeg', '这是一部2011年上映的电影，由导演李濬益执导，宋慧乔、张东健、宋仲基等演员主演。该电影是根据真实事件改编的，讲述了在19世纪时期发生的一段感人故事。\r\n\r\n故事设定时期，主要讲述了一个富有感情的爱情三角关系。宋仲基饰演的财主的儿子阳混（英勋）和宋慧乔饰演的歌伶江木袋子之间的爱情故事。其中，江木袋子原本是阳混的妻子，但阳混却爱上了卖花女郎凤子（由李英爱饰演），使得三人之间纠葛复杂，产生许多戏剧性的情节。\r\n\r\n这部电影在情感和道德方面都有着深刻探讨，展现出19世纪社会的道德观念和文化背景。影片通过具有传统文化意味的叙事风格和细腻感人的表现方式，引起了观众们的共鸣与思考。\r\n\r\n该电影在上映后获得了广泛的好评，不仅在本土取得了不俗的票房成绩，也在国际上赢得了一定的声誉。通过细腻感人的叙事和表现方式，深刻地描绘了人性与道德的较量，是一部值得观众深入思考和感受的影片。', '55', '王文', '香港', '0', '2024-06-12 21:14:50.340240', 2, 0, 0, 0, 5, NULL, 3, '下午18点', '8号厅', '2020', '张三、李四', 2100, '3小时', '英语', '2020年8月');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (1, 3, 3);
INSERT INTO `b_thing_collect` VALUES (3, 4, 3);
INSERT INTO `b_thing_collect` VALUES (4, 5, 3);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (2, 1, 3);
INSERT INTO `b_thing_wish` VALUES (1, 3, 3);
INSERT INTO `b_thing_wish` VALUES (3, 4, 3);
INSERT INTO `b_thing_wish` VALUES (4, 5, 3);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-12 20:33:21.374842', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (3, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', NULL, '', '12333', '111011@gmail.com', NULL, NULL, '2024-06-12 21:36:17.445453', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (4, 'fff', '343d9040a671c45832ee5381860e2996', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-06-13 20:06:17.157171', 0, NULL, 0, NULL, '343d9040a671c45832ee5381860e2996');
INSERT INTO `b_user` VALUES (5, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', '211a', 'avatar/1718280917105.jpeg', '32221534', '222011@gmail.com', NULL, NULL, '2024-06-13 20:06:38.825316', 0, NULL, 0, NULL, 'db270e0074bad27c1177f31627818618');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-12 20:23:55.922192');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-06-12 20:23:56.466459');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-06-12 20:23:56.578974');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-06-12 20:23:56.593980');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-12 20:23:56.610998');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-06-12 20:23:56.791616');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-06-12 20:23:56.868584');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-06-12 20:23:56.977427');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-06-12 20:23:56.999923');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-06-12 20:23:57.092411');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-06-12 20:23:57.097612');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-12 20:23:57.111627');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-06-12 20:23:57.196461');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-12 20:23:57.281957');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-06-12 20:23:57.372191');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-06-12 20:23:57.391232');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-12 20:23:57.476952');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-06-12 20:23:58.919023');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-06-12 20:23:59.033081');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-06-12 20:23:59.375522');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-06-12 20:23:59.553787');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240612_2023', '2024-06-12 20:24:00.109867');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-06-12 20:24:00.179451');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_auto_20240612_2028', '2024-06-12 20:28:30.546564');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0007_thing_shangying', '2024-06-12 21:03:57.561148');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
