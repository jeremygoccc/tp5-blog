/*
Navicat MySQL Data Transfer

Source Server         : centos7
Source Server Version : 50556
Source Host           : 192.168.142.129:3306
Source Database       : jeremy_blog

Target Server Type    : MYSQL
Target Server Version : 50556
File Encoding         : 65001

Date: 2018-03-04 10:34:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jeremy_articles
-- ----------------------------
DROP TABLE IF EXISTS `jeremy_articles`;
CREATE TABLE `jeremy_articles` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `c_id` int(255) DEFAULT NULL,
  `u_id` int(255) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `create_time` int(255) NOT NULL,
  `update_time` int(255) DEFAULT NULL,
  `status` int(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeremy_articles
-- ----------------------------
INSERT INTO `jeremy_articles` VALUES ('1', 'React Fundamentals', '1', '1', 'The modularity of the React ecosystem is extremely powerful for building applications. However, it makes learning React a nightmare when first starting out. To even get a React app up and running, you need the right combination of React, Webpack, and Babel. In this course we\'ll start from a blank folder and we\'ll build an application that encompasses everything you need to get started building production ready applications with React (including Routing and Ajax requests). This course is the most popular and highest rated way to learn React. Completely up to date with the recent changes to React v16.', '123456', '1519306081', '1');
INSERT INTO `jeremy_articles` VALUES ('2', 'Vue Fundamentals', '1', '1', 'The modularity of the React ecosystem is extremely powerful for building applications. However, it makes learning React a nightmare when first starting out. To even get a React app up and running, you need the right combination of React, Webpack, and Babel. In this course we\'ll start from a blank folder and we\'ll build an application that encompasses everything you need to get started building production ready applications with React (including Routing and Ajax requests). This course is the most popular and highest rated way to learn React. Completely up to date with the recent changes to React v16.', '123456', '1519307037', '1');
INSERT INTO `jeremy_articles` VALUES ('3', 'Angular Fundamentals', '1', '1', 'The story for server side rendering is still being figured out with React 16 (Fiber). Once that settles down, this course will go into production', '123456', '1519307101', '1');
INSERT INTO `jeremy_articles` VALUES ('4', 'Advanced React', '1', '1', 'The story for server side rendering is still being figured out with React 16 (Fiber). Once that settles down, this course will go into production', '123456', '1519307106', '1');
INSERT INTO `jeremy_articles` VALUES ('5', 'Advanced Vue', '1', '1', 'The story for server side rendering is still being figured out with React 16 (Fiber). Once that settles down, this course will go into production', '123456', '1519307111', '1');
INSERT INTO `jeremy_articles` VALUES ('6', 'Advanced Angular', '1', '1', 'The modularity of the React ecosystem is extremely powerful for building applications. However, it makes learning React a nightmare when first starting out. To even get a React app up and running, you need the right combination of React, Webpack, and Babel. In this course we\'ll start from a blank folder and we\'ll build an application that encompasses everything you need to get started building production ready applications with React (including Routing and Ajax requests). This course is the most popular and highest rated way to learn React. Completely up to date with the recent changes to React v16.', '123456', '1519307069', '1');
INSERT INTO `jeremy_articles` VALUES ('7', 'Node', '2', '1', 'The modularity of the React ecosystem is extremely powerful for building applications. However, it makes learning React a nightmare when first starting out. To even get a React app up and running, you need the right combination of React, Webpack, and Babel. In this course we\'ll start from a blank folder and we\'ll build an application that encompasses everything you need to get started building production ready applications with React (including Routing and Ajax requests). This course is the most popular and highest rated way to learn React. Completely up to date with the recent changes to React v16.', '123456', '1519307064', '1');
INSERT INTO `jeremy_articles` VALUES ('8', 'MongoDB', '2', '1', 'The story for server side rendering is still being figured out with React 16 (Fiber). Once that settles down, this course will go into production', '123456', '1519307118', '1');
INSERT INTO `jeremy_articles` VALUES ('12', 'Vue Test', '1', '1', 'Vue Vue Vue!!!', '1519305826', '1519305840', '1');
INSERT INTO `jeremy_articles` VALUES ('13', 'React Native', '3', '1', 'The description is simple, learn to build a production ready iOS and Android React Native app that you\'ll submit to both the App Store as well as the Google Play store. With over seven hours of video, 9,500 words of text, and curriculum to work through yourself, this is the most in depth React Native course ever built.', '1519306660', null, '1');
INSERT INTO `jeremy_articles` VALUES ('14', 'Vue Test', '1', '1', 'Vue Vue Vue!!!', '1519305826', '1519305840', '1');
INSERT INTO `jeremy_articles` VALUES ('15', 'Vue Test', '1', '1', 'Vue Vue Vue!!!', '1519305826', '1519305840', '1');

-- ----------------------------
-- Table structure for jeremy_category
-- ----------------------------
DROP TABLE IF EXISTS `jeremy_category`;
CREATE TABLE `jeremy_category` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `summary` varchar(10000) NOT NULL,
  `status` int(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeremy_category
-- ----------------------------
INSERT INTO `jeremy_category` VALUES ('1', 'Front End', 'Front-end web development is the practice of producing HTML,CSS and JavaScript for a website or Web Application so that a user can see and interact with them directly. ', '1');
INSERT INTO `jeremy_category` VALUES ('2', 'Back End', 'In processor design,Back-end design would be the process of mapping that behavior to physical transistors on a die.', '1');
INSERT INTO `jeremy_category` VALUES ('3', 'Full Stack', 'A Full Stack Developer is someone with familiarity in each layer,if not mastery in many and a genuine interset in all software technology.', '1');

-- ----------------------------
-- Table structure for jeremy_user
-- ----------------------------
DROP TABLE IF EXISTS `jeremy_user`;
CREATE TABLE `jeremy_user` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `register_time` int(255) DEFAULT NULL,
  `status` int(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeremy_user
-- ----------------------------
INSERT INTO `jeremy_user` VALUES ('1', 'jeremy', 'guohao1998', '1519317416', '2');
INSERT INTO `jeremy_user` VALUES ('2', 'user', '123456', null, '1');
INSERT INTO `jeremy_user` VALUES ('15', 'UserTest', '123456', '1519572570', '1');
