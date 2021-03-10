/*
 Navicat Premium Data Transfer

 Source Server         : onepiece
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : onepiece

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 10/03/2021 08:04:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `update_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES (24, '世界这么小，我想呆在家！', '<h2 style=\"text-align:center;\">世界这么小，我想呆在家！</h2>', '2021-03-10 08:02:12.364384', '2021-03-10 08:02:12.364428');
INSERT INTO `content` VALUES (23, '周传强', '<h3 style=\"text-align:center;\">周传强 的年度报告</h3><p> </p><p style=\"margin-left:0px;text-align:justify;\">在3月9日的中国外交部例行记者会上，发言人赵立坚对此表示，我们对英国通信管理局有关决定表示关切，坚决反对该局“一再对中国媒体在英国开展正常新闻报道工作，人为设置障碍”，再次敦促其撤销错误决定。</p><figure class=\"image image_resized image-style-align-right\" style=\"width:15.36%;\"><img src=\"http://test.io\\uploads\\20210309\\2ec0d06b458a4fc898ea6b3d9e6ffddf.jpg\"></figure><p style=\"margin-left:0px;text-align:justify;\">赵立坚强调，CGTN一贯秉持客观公正原则进行报道，对于此前英国通信管理局一意孤行、蛮横吊销CGTN英语新闻频道在英的许可证的错误行径，中方已经多次表明了坚决反对的立场。此次该局再次执意作出错误判法的决定，反映了它对中国保持的强烈意识形态偏见，是赤裸裸的政治打压，荒唐可笑。</p><p style=\"margin-left:0px;text-align:justify;\">“英国通信管理局应该做的，是对一些英媒长期以来涉华涉港失实虚假报道进行查处。”赵立坚进一步表示，中方敦促英国通信管理局及英方某些人立即停止政治操弄，纠正错误，中方保留进一步作出正当和必要反应的权利</p><p> </p><p> </p><p> </p>', '2021-03-09 19:38:39.859530', '2021-03-09 19:38:39.859563');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nengli` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jituan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '路飞', '超人系橡胶果实', '草帽海贼团', '');
INSERT INTO `users` VALUES (2, '乔巴', '动物系人人果实', '草帽海贼团', '');
INSERT INTO `users` VALUES (3, '罗宾111', '超人系花花果实', '草帽海贼团', '');
INSERT INTO `users` VALUES (4, '红发-香克斯', '霸王色霸气、武装色霸气', '红发海贼团', '');

SET FOREIGN_KEY_CHECKS = 1;
