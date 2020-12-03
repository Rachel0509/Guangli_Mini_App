/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : coopers

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2020-12-02 22:35:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `desc` text,
  `video` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', './images/1.jpg', null, null, null, './videos/mini_car1.mp4', 'video');
INSERT INTO `items` VALUES ('2', './images/2.jpg', null, null, null, './videos/mini_car2.mp4', 'video');
INSERT INTO `items` VALUES ('3', './images/3.jpg', null, null, null, './videos/mini_car3.mp4', 'video');
INSERT INTO `items` VALUES ('4', './images/4.jpg', 'MINI CLUBMAN', '22700', '<p>MINI Cooper uses front-engine front-wheel drive.</p>\r\n<p>The four-cylinder 16-valve engine has a displacement of 1.6L.</p>\r\n<p>Although the body is lighter, if you want to pursue sports passion, the power is still slightly insufficient.</p>\r\n', null, 'text');
INSERT INTO `items` VALUES ('5', './images/5.png', 'MINI COUPE', '25000', '<p>Countryman is the first SUV model launched by Mini Motor Company. </p>\r\n<p>The Countryman is also the first production model in the MINI family</p> \r\n<p>with a body length of more than 4 meters and an optional full-time four-wheel drive.</p>\r\n', null, 'text');
INSERT INTO `items` VALUES ('6', './images/6.jpg', 'MINI CABRIO', '23000', '<p>In 1965, he won the Monte Carlo Rally Championship for the second consecutive year.<p>\r\n<p>At the Green Valley Circuit in Texas, \r\nthe Mini Pan American Championship was ranked first, second and fourth.</p> \r\n<p>Ford\'s Mustang won third place.</p>\r\n', null, 'text');
