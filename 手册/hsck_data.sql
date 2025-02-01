/*
 Navicat Premium Dump SQL

 Source Server         : sa
 Source Server Type    : MySQL
 Source Server Version : 80403 (8.4.3)
 Source Host           : localhost:3306
 Source Schema         : hsck_data

 Target Server Type    : MySQL
 Target Server Version : 80403 (8.4.3)
 File Encoding         : 65001

 Date: 19/01/2025 01:49:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_approval
-- ----------------------------
DROP TABLE IF EXISTS `app_approval`;
CREATE TABLE `app_approval`  (
  `h5_id` int NOT NULL,
  `approval` float NOT NULL,
  PRIMARY KEY (`h5_id`) USING BTREE,
  CONSTRAINT `app_approval_ibfk_1` FOREIGN KEY (`h5_id`) REFERENCES `h5_apps` (`h5_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_approval
-- ----------------------------
INSERT INTO `app_approval` VALUES (1, 12);
INSERT INTO `app_approval` VALUES (2, 23);
INSERT INTO `app_approval` VALUES (3, 78);
INSERT INTO `app_approval` VALUES (4, 34);
INSERT INTO `app_approval` VALUES (5, 112);
INSERT INTO `app_approval` VALUES (6, 56);
INSERT INTO `app_approval` VALUES (7, 89);
INSERT INTO `app_approval` VALUES (8, 123);
INSERT INTO `app_approval` VALUES (9, 101);
INSERT INTO `app_approval` VALUES (10, 134);

-- ----------------------------
-- Table structure for app_exposure
-- ----------------------------
DROP TABLE IF EXISTS `app_exposure`;
CREATE TABLE `app_exposure`  (
  `h5_id` int NOT NULL,
  `exposure` float NOT NULL,
  PRIMARY KEY (`h5_id`) USING BTREE,
  CONSTRAINT `app_exposure_ibfk_1` FOREIGN KEY (`h5_id`) REFERENCES `h5_apps` (`h5_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_exposure
-- ----------------------------
INSERT INTO `app_exposure` VALUES (1, 11);
INSERT INTO `app_exposure` VALUES (2, 22);
INSERT INTO `app_exposure` VALUES (3, 55);
INSERT INTO `app_exposure` VALUES (4, 66);
INSERT INTO `app_exposure` VALUES (5, 55);
INSERT INTO `app_exposure` VALUES (6, 77);
INSERT INTO `app_exposure` VALUES (7, 88);
INSERT INTO `app_exposure` VALUES (8, 44);
INSERT INTO `app_exposure` VALUES (9, 33);
INSERT INTO `app_exposure` VALUES (10, 56);

-- ----------------------------
-- Table structure for app_feedback
-- ----------------------------
DROP TABLE IF EXISTS `app_feedback`;
CREATE TABLE `app_feedback`  (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `h5_id` int NOT NULL,
  `user_id` int NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `user_score` int NOT NULL,
  PRIMARY KEY (`feedback_id`) USING BTREE,
  INDEX `h5_id`(`h5_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `app_feedback_ibfk_1` FOREIGN KEY (`h5_id`) REFERENCES `h5_apps` (`h5_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `app_feedback_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_feedback
-- ----------------------------
INSERT INTO `app_feedback` VALUES (61, 1, 4, '这个 H5 页面加载有点慢呀，希望能优化一下。', '2025-01-01', 5);
INSERT INTO `app_feedback` VALUES (62, 2, 4, '功能操作不太方便，找了半天才找到对应的按钮呢。', '2025-01-02', 4);
INSERT INTO `app_feedback` VALUES (63, 3, 4, '页面的显示效果不太清晰，看着有点费劲哦。', '2025-01-03', 5);
INSERT INTO `app_feedback` VALUES (64, 4, 4, '感觉交互体验还可以再提升提升呀。', '2025-01-04', 4);
INSERT INTO `app_feedback` VALUES (65, 5, 4, '有些内容的排版看着不太舒服呢，建议调整下。', '2025-01-05', 5);
INSERT INTO `app_feedback` VALUES (66, 6, 4, '部分功能提示不太明确，容易让人迷糊哦。', '2025-01-06', 4);
INSERT INTO `app_feedback` VALUES (67, 7, 4, '页面色彩搭配可以再优化优化，现在看着有点单调啦。', '2025-01-07', 5);
INSERT INTO `app_feedback` VALUES (68, 8, 4, '操作流程要是能简化一点就更好啦。', '2025-01-08', 5);
INSERT INTO `app_feedback` VALUES (69, 9, 4, '感觉这个 H5 应用的稳定性不太够呀，偶尔会卡顿呢。', '2025-01-09', 4);
INSERT INTO `app_feedback` VALUES (70, 10, 4, '内容更新有点慢哦，希望能加快更新频率呢。', '2025-01-10', 5);
INSERT INTO `app_feedback` VALUES (77, 8, 4, '我是帅比', '2025-01-15', 5);
INSERT INTO `app_feedback` VALUES (78, 8, 4, '我是帅比', '2025-01-15', 5);
INSERT INTO `app_feedback` VALUES (79, 8, 5, '我是帅比', '2025-01-15', 5);
INSERT INTO `app_feedback` VALUES (80, 8, 5, '我是帅比', '2025-01-15', 5);
INSERT INTO `app_feedback` VALUES (83, 8, 5, '我是帅比', '2025-01-15', 5);
INSERT INTO `app_feedback` VALUES (84, 8, 5, '我是帅比', '2025-01-15', 5);
INSERT INTO `app_feedback` VALUES (85, 8, 5, '我是帅比', '2025-01-15', 5);
INSERT INTO `app_feedback` VALUES (86, 5, 4, '我是帅比', '2025-01-18', 4);
INSERT INTO `app_feedback` VALUES (87, 5, 4, '我是帅比', '2025-01-18', 5);
INSERT INTO `app_feedback` VALUES (88, 5, 4, '我是帅比', '2025-01-18', 5);

-- ----------------------------
-- Table structure for app_feedback_copy_0110232836
-- ----------------------------
DROP TABLE IF EXISTS `app_feedback_copy_0110232836`;
CREATE TABLE `app_feedback_copy_0110232836`  (
  `feedback_id` int NOT NULL DEFAULT 0,
  `h5_id` int NOT NULL,
  `user_id` int NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_feedback_copy_0110232836
-- ----------------------------

-- ----------------------------
-- Table structure for app_feedback_copy_0110232912
-- ----------------------------
DROP TABLE IF EXISTS `app_feedback_copy_0110232912`;
CREATE TABLE `app_feedback_copy_0110232912`  (
  `feedback_id` int NOT NULL DEFAULT 0,
  `h5_id` int NOT NULL,
  `user_id` int NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_feedback_copy_0110232912
-- ----------------------------

-- ----------------------------
-- Table structure for app_feedback_copy_0110232927
-- ----------------------------
DROP TABLE IF EXISTS `app_feedback_copy_0110232927`;
CREATE TABLE `app_feedback_copy_0110232927`  (
  `feedback_id` int NOT NULL DEFAULT 0,
  `h5_id` int NOT NULL,
  `user_id` int NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_feedback_copy_0110232927
-- ----------------------------

-- ----------------------------
-- Table structure for app_feedback_copy_0110233003
-- ----------------------------
DROP TABLE IF EXISTS `app_feedback_copy_0110233003`;
CREATE TABLE `app_feedback_copy_0110233003`  (
  `feedback_id` int NOT NULL DEFAULT 0,
  `h5_id` int NOT NULL,
  `user_id` int NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_feedback_copy_0110233003
-- ----------------------------

-- ----------------------------
-- Table structure for app_feedback_copy_0116032107
-- ----------------------------
DROP TABLE IF EXISTS `app_feedback_copy_0116032107`;
CREATE TABLE `app_feedback_copy_0116032107`  (
  `feedback_id` int NOT NULL DEFAULT 0,
  `h5_id` int NOT NULL,
  `user_id` int NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `user_score` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_feedback_copy_0116032107
-- ----------------------------

-- ----------------------------
-- Table structure for app_release_date
-- ----------------------------
DROP TABLE IF EXISTS `app_release_date`;
CREATE TABLE `app_release_date`  (
  `h5_id` int NOT NULL,
  `release_date` date NOT NULL,
  PRIMARY KEY (`h5_id`) USING BTREE,
  CONSTRAINT `app_release_date_ibfk_1` FOREIGN KEY (`h5_id`) REFERENCES `h5_apps` (`h5_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_release_date
-- ----------------------------
INSERT INTO `app_release_date` VALUES (1, '2024-12-06');
INSERT INTO `app_release_date` VALUES (2, '2024-12-06');
INSERT INTO `app_release_date` VALUES (3, '2024-12-06');
INSERT INTO `app_release_date` VALUES (4, '2024-12-06');
INSERT INTO `app_release_date` VALUES (5, '2024-12-06');
INSERT INTO `app_release_date` VALUES (6, '2024-12-06');
INSERT INTO `app_release_date` VALUES (7, '2024-12-07');
INSERT INTO `app_release_date` VALUES (8, '2024-12-07');
INSERT INTO `app_release_date` VALUES (9, '2024-12-08');
INSERT INTO `app_release_date` VALUES (10, '2024-12-08');

-- ----------------------------
-- Table structure for app_user_count
-- ----------------------------
DROP TABLE IF EXISTS `app_user_count`;
CREATE TABLE `app_user_count`  (
  `h5_id` int NOT NULL,
  `user_number` int NOT NULL,
  PRIMARY KEY (`h5_id`) USING BTREE,
  CONSTRAINT `app_user_count_ibfk_1` FOREIGN KEY (`h5_id`) REFERENCES `h5_apps` (`h5_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_user_count
-- ----------------------------
INSERT INTO `app_user_count` VALUES (1, 4534);
INSERT INTO `app_user_count` VALUES (2, 456);
INSERT INTO `app_user_count` VALUES (3, 5421);
INSERT INTO `app_user_count` VALUES (4, 2305);
INSERT INTO `app_user_count` VALUES (5, 1200);
INSERT INTO `app_user_count` VALUES (6, 4505);
INSERT INTO `app_user_count` VALUES (7, 4812);
INSERT INTO `app_user_count` VALUES (8, 54);
INSERT INTO `app_user_count` VALUES (9, 45201);
INSERT INTO `app_user_count` VALUES (10, 48550);

-- ----------------------------
-- Table structure for app_user_scores
-- ----------------------------
DROP TABLE IF EXISTS `app_user_scores`;
CREATE TABLE `app_user_scores`  (
  `h5_id` int NOT NULL,
  `app_score` decimal(4, 1) NOT NULL,
  PRIMARY KEY (`h5_id`) USING BTREE,
  CONSTRAINT `app_user_scores_ibfk_1` FOREIGN KEY (`h5_id`) REFERENCES `h5_apps` (`h5_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_user_scores
-- ----------------------------
INSERT INTO `app_user_scores` VALUES (1, 5.0);
INSERT INTO `app_user_scores` VALUES (2, 4.0);
INSERT INTO `app_user_scores` VALUES (3, 5.0);
INSERT INTO `app_user_scores` VALUES (4, 4.0);
INSERT INTO `app_user_scores` VALUES (5, 4.8);
INSERT INTO `app_user_scores` VALUES (6, 4.0);
INSERT INTO `app_user_scores` VALUES (7, 5.0);
INSERT INTO `app_user_scores` VALUES (8, 5.0);
INSERT INTO `app_user_scores` VALUES (9, 4.0);
INSERT INTO `app_user_scores` VALUES (10, 5.0);

-- ----------------------------
-- Table structure for card_codes
-- ----------------------------
DROP TABLE IF EXISTS `card_codes`;
CREATE TABLE `card_codes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `value` int NOT NULL,
  `is_used` tinyint(1) NULL DEFAULT NULL,
  `used_at` datetime NULL DEFAULT NULL,
  `used_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code` ASC) USING BTREE,
  INDEX `used_by`(`used_by` ASC) USING BTREE,
  CONSTRAINT `card_codes_ibfk_1` FOREIGN KEY (`used_by`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of card_codes
-- ----------------------------

-- ----------------------------
-- Table structure for h5_apps
-- ----------------------------
DROP TABLE IF EXISTS `h5_apps`;
CREATE TABLE `h5_apps`  (
  `h5_id` int NOT NULL AUTO_INCREMENT,
  `uploader` int NOT NULL,
  `h5_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deploy_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `detail_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `navbar` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`h5_id`) USING BTREE,
  INDEX `uploader`(`uploader` ASC) USING BTREE,
  CONSTRAINT `h5_apps_ibfk_1` FOREIGN KEY (`uploader`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h5_apps
-- ----------------------------
INSERT INTO `h5_apps` VALUES (1, 4, 'bilibili', 'https://bilibili.com', '1.png', 'B站网页端', 'B站网页端测试版', '应用', 1);
INSERT INTO `h5_apps` VALUES (2, 4, '淘宝', 'https://taobao.com', '2.png', '淘宝网页端', '淘宝网页端', '应用', 1);
INSERT INTO `h5_apps` VALUES (3, 4, '小红书', 'https://xiaohongshu.com', '3.png', '小红书网页端', '小红书网页端', '应用', 1);
INSERT INTO `h5_apps` VALUES (4, 4, '01代换', 'https://putianikun.cn/H5/01reverse/index.html', '4.png', '一款简洁的加密解密软件', '一款简洁的加密解密软件', '页面', 0);
INSERT INTO `h5_apps` VALUES (5, 4, '奥奇传说', 'https://aoqi.100bt.com/h5/', '5.png', '奥奇H5', '奥奇H5', '游戏', 0);
INSERT INTO `h5_apps` VALUES (6, 4, '京东', 'https://m.jd.com/', '7.png', '京东网页版', '京东网页版', '应用', 1);
INSERT INTO `h5_apps` VALUES (7, 4, '网易云音乐', 'https://y.music.163.com/m/', '8.png', '网易云音乐网页版', '网易云音乐网页版', '应用', 1);
INSERT INTO `h5_apps` VALUES (8, 4, '微博', 'https://weibo.com/', '10.png', '微博网页端', '微博网页端', '应用', 1);
INSERT INTO `h5_apps` VALUES (9, 4, '酷狗音乐', 'https://m.kugou.com/', '11.png', '酷狗音乐网页端', '酷狗音乐网页端', '应用', 1);
INSERT INTO `h5_apps` VALUES (10, 4, '优酷', 'https://www.youku.com/', '12.png', '优酷网页端', '优酷网页端', '应用', 1);

-- ----------------------------
-- Table structure for h5_apps_copy_0116032034
-- ----------------------------
DROP TABLE IF EXISTS `h5_apps_copy_0116032034`;
CREATE TABLE `h5_apps_copy_0116032034`  (
  `h5_id` int NOT NULL DEFAULT 0,
  `uploader` int NOT NULL,
  `h5_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deploy_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `detail_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `navbar` tinyint(1) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h5_apps_copy_0116032034
-- ----------------------------

-- ----------------------------
-- Table structure for h5_apps_copy_0116032046
-- ----------------------------
DROP TABLE IF EXISTS `h5_apps_copy_0116032046`;
CREATE TABLE `h5_apps_copy_0116032046`  (
  `h5_id` int NOT NULL DEFAULT 0,
  `uploader` int NOT NULL,
  `h5_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deploy_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `detail_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `navbar` tinyint(1) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of h5_apps_copy_0116032046
-- ----------------------------

-- ----------------------------
-- Table structure for user_h5_apps
-- ----------------------------
DROP TABLE IF EXISTS `user_h5_apps`;
CREATE TABLE `user_h5_apps`  (
  `user_id` int NOT NULL,
  `h5_id` int NOT NULL,
  PRIMARY KEY (`user_id`, `h5_id`) USING BTREE,
  INDEX `h5_id`(`h5_id` ASC) USING BTREE,
  CONSTRAINT `user_h5_apps_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_h5_apps_ibfk_2` FOREIGN KEY (`h5_id`) REFERENCES `h5_apps` (`h5_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_h5_apps
-- ----------------------------
INSERT INTO `user_h5_apps` VALUES (4, 3);
INSERT INTO `user_h5_apps` VALUES (4, 5);
INSERT INTO `user_h5_apps` VALUES (4, 9);
INSERT INTO `user_h5_apps` VALUES (4, 10);

-- ----------------------------
-- Table structure for user_login_data
-- ----------------------------
DROP TABLE IF EXISTS `user_login_data`;
CREATE TABLE `user_login_data`  (
  `user_id` int NOT NULL,
  `login_date` date NOT NULL,
  PRIMARY KEY (`user_id`, `login_date`) USING BTREE,
  CONSTRAINT `user_login_data_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_login_data
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coin` int NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (4, '用户2', 'default_avatar.png', 'xiaolinbenben@gmail.com', 'scrypt:32768:8:1$jjEF5yw8S9ZKScOm$633441161b5a18666e4cc0e0fa437fe8a52855df6ab2a58de48f2a33891ea7cbd936034bb096a94058ba999bcfb51de1f5f61597cd5947265fc3f523c8e16eba', 0);
INSERT INTO `users` VALUES (5, '用户2', 'default_avatar.png', '3370942916@qq.com', 'scrypt:32768:8:1$4yH1iBhzeTUAE2Tg$7d9d3856c5405a80f4d4c6851649ef5f027a77b89727895ddb8179f03db1c33b7eeb5242b7a1ad0d1a19947b3bd7ae8c1ff6da53219548bef2fa07e6906f968b', 0);
INSERT INTO `users` VALUES (6, '用户3', '6.png', '17738440858@163.com', 'pbkdf2:sha256:1000000$rw33aWpDXNYiNl1v$0e0e058febb6eeac48a5a7e459a9ec7e70a50bf04b15bae836f3c7d855ce3cda', 0);

-- ----------------------------
-- Triggers structure for table app_feedback
-- ----------------------------
DROP TRIGGER IF EXISTS `after_app_feedback_insert`;
delimiter ;;
CREATE TRIGGER `after_app_feedback_insert` AFTER INSERT ON `app_feedback` FOR EACH ROW BEGIN
    -- 计算新的平均评分
    UPDATE app_user_scores
    SET app_score = (
        SELECT AVG(user_score)
        FROM app_feedback
        WHERE h5_id = NEW.h5_id
    )
    WHERE h5_id = NEW.h5_id;
 END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table app_feedback
-- ----------------------------
DROP TRIGGER IF EXISTS `update_app_user_scores`;
delimiter ;;
CREATE TRIGGER `update_app_user_scores` AFTER INSERT ON `app_feedback` FOR EACH ROW BEGIN
    -- 计算并更新相应 h5_id 的平均分
    UPDATE `app_user_scores` aus
    JOIN (
        SELECT `h5_id`, AVG(user_score) AS average_score
        FROM `app_feedback`
        GROUP BY `h5_id`
    ) subquery ON aus.h5_id = subquery.h5_id
    SET aus.app_score = subquery.average_score;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
