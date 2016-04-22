/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : om_liyuan

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-02-03 16:39:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_1_activities
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities`;
CREATE TABLE `om_1_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `img` text,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_activities
-- ----------------------------
INSERT INTO `om_1_activities` VALUES ('1', '1', '世华城鄱阳湖官网', 'http://www.dbwave-tech.com/uploadfile/2014/0627/2014062714062863.jpg', '鄱阳湖', '“鄱阳县鄱阳湖国家湿地公园旅游投资发展有限公司”为“香港世华旅游投资有限公司”鄱阳子公司，是鄱阳湖国家湿地公园战略合作方。', '1', '1', 'omooo', '9', 'http://liyuan.in/activities/index.php?c=show&id=1', '0', '127.0.0.1', '1418374633', '1418374633', '0', null);
INSERT INTO `om_1_activities` VALUES ('2', '1', '世界小姐中国', 'http://img01.shuwon.com/uploadfile/2014/0520/2014052018121186.jpg', '世界小姐,中国', '斯克佩迪注册成立于2010年，公司业务涉及组织策划国际顶级品牌文化交流活动、赛事、公关、设计、代理发布广告、市场信息咨询、展览展示服务等领域，是一家以媒体经营为依托、其它媒体服务并举的全方位品牌文化传媒公...', '1', '1', 'omooo', '9', 'http://liyuan.in/activities/index.php?c=show&id=2', '0', '127.0.0.1', '1418374822', '1418374822', '0', null);
INSERT INTO `om_1_activities` VALUES ('3', '1', '国色天乡官网', 'http://img02.shuwon.com/uploadfile/2014/0430/2014043021453922.jpg', '', '国色天乡位于成都市温江区万春镇，这里距成都约15公里，平原沃野，也是10万亩花卉业的基地，由于项目请来了世界一流的设计公司，在发展规划和定位上放眼世界，资源的整合和利用不仅仅局 限于成都，在规划、营销和建...', '0', '1', 'omooo', '9', 'http://liyuan.in/activities/index.php?c=show&id=3', '0', '127.0.0.1', '1418374951', '1418374951', '0', null);
INSERT INTO `om_1_activities` VALUES ('4', '1', '（KAE）法国佧伊有机护肤品', 'http://img02.shuwon.com/uploadfile/2014/0317/2014031711100927.jpg', '护肤品,法国', '网络针对KAE美人油护肤品的品牌形象，运用完美的视觉呈现、有逻辑的品牌产品类别成列及最新产品发布，有效的传达给受众其品牌个性。独具特色的效果增加了网站的趣味性。...', '4', '1', 'omooo', '9', 'http://liyuan.in/activities/index.php?c=show&id=4', '0', '127.0.0.1', '1418374999', '1418375070', '0', null);
INSERT INTO `om_1_activities` VALUES ('5', '1', '标卓现代装饰工程', 'http://img03.shuwon.com/uploadfile/2014/0310/2014031009294225.jpg', '装饰工程', '标卓装饰作为建筑业内的知名设计公司，蜀美网络根据其设计理念多元化的特点，整体网站色彩采用黑色为背景，以线条贯穿整个网站，整体网站突出空间感，其次用建筑魔方做为导航，更能凸显建筑设计理念，清晰明确的提高...', '4', '1', 'omooo', '9', 'http://liyuan.in/activities/index.php?c=show&id=5', '0', '127.0.0.1', '1418375091', '1418375091', '0', null);
INSERT INTO `om_1_activities` VALUES ('6', '1', '丹寇服饰有限公司', 'http://img03.shuwon.com/uploadfile/2014/0227/2014022717032590.jpg', '有限公司,服饰', '丹寇服饰不仅在网站设计风格方面追求异曲同工之精华，而且在实际的视觉呈现方面融合CAGLIARI 2011年的最新服装主题，将“荒芜美下衬托的绚烂和时尚”发挥地淋漓尽致，内页采用春、夏、秋、冬。设计理念，突出其“不...', '12', '1', 'omooo', '9', 'http://liyuan.in/activities/index.php?c=show&id=6', '0', '127.0.0.1', '1418375116', '1419478469', '0', 'a:2:{s:4:\\\"file\\\";a:2:{i:0;s:1:\\\"9\\\";i:1;s:2:\\\"10\\\";}s:5:\\\"title\\\";a:2:{i:0;s:17:\\\"blog_fullwidth_01\\\";i:1;s:17:\\\"blog_fullwidth_02\\\";}}');

-- ----------------------------
-- Table structure for om_1_activities_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_buy_0`;
CREATE TABLE `om_1_activities_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_activities_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_buy_1`;
CREATE TABLE `om_1_activities_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_activities_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_buy_2`;
CREATE TABLE `om_1_activities_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_activities_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_buy_3`;
CREATE TABLE `om_1_activities_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_activities_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_buy_4`;
CREATE TABLE `om_1_activities_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_activities_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_buy_5`;
CREATE TABLE `om_1_activities_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_activities_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_buy_6`;
CREATE TABLE `om_1_activities_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_activities_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_buy_7`;
CREATE TABLE `om_1_activities_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_activities_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_buy_8`;
CREATE TABLE `om_1_activities_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_activities_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_buy_9`;
CREATE TABLE `om_1_activities_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_activities_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_category`;
CREATE TABLE `om_1_activities_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_activities_category
-- ----------------------------
INSERT INTO `om_1_activities_category` VALUES ('1', '0', '0', '社区活动', 'C', 'CommunityActivities', '', '0', '1', '91', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:1:\\\"2\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";a:0:{}s:6:\\\"member\\\";a:0:{}}', '0');

-- ----------------------------
-- Table structure for om_1_activities_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_category_data`;
CREATE TABLE `om_1_activities_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_activities_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_category_data_0`;
CREATE TABLE `om_1_activities_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_activities_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_data_0`;
CREATE TABLE `om_1_activities_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_activities_data_0
-- ----------------------------
INSERT INTO `om_1_activities_data_0` VALUES ('1', '1', '1', '<p><span style=\"color: rgb(62, 62, 62); font-family: å¾®è½¯é›…é»‘, å®‹ä½“, tahoma, Srial, helvetica, sans-serif; font-size: 12px; line-height: 22px; background-color: rgb(244, 244, 244);\">“鄱阳县鄱阳湖国家湿地公园旅游投资发展有限公司”为“香港世华旅游投资有限公司”鄱阳子公司，是鄱阳湖国家湿地公园战略合作方。</span></p>');
INSERT INTO `om_1_activities_data_0` VALUES ('2', '1', '1', '<p><span style=\"color: rgb(62, 62, 62); font-family: å¾®è½¯é›…é»‘, å®‹ä½“, tahoma, Srial, helvetica, sans-serif; font-size: 12px; line-height: 22px; background-color: rgb(244, 244, 244);\">斯克佩迪注册成立于2010年，公司业务涉及组织策划国际顶级品牌文化交流活动、赛事、公关、设计、代理发布广告、市场信息咨询、展览展示服务等领域，是一家以媒体经营为依托、其它媒体服务并举的全方位品牌文化传媒公司。</span></p>');
INSERT INTO `om_1_activities_data_0` VALUES ('3', '1', '1', '<p><span style=\"color: rgb(62, 62, 62); font-family: å¾®è½¯é›…é»‘, å®‹ä½“, tahoma, Srial, helvetica, sans-serif; font-size: 12px; line-height: 22px; background-color: rgb(244, 244, 244);\">国色天乡位于成都市温江区万春镇，这里距成都约15公里，平原沃野，也是10万亩花卉业的基地，由于项目请来了世界一流的设计公司，在发展规划和定位上放眼世界，资源的整合和利用不仅仅局 限于成都，在规划、营销和建设上是大手笔。</span></p>');
INSERT INTO `om_1_activities_data_0` VALUES ('4', '1', '1', '<p><span style=\"color: rgb(62, 62, 62); font-family: å¾®è½¯é›…é»‘, å®‹ä½“, tahoma, Srial, helvetica, sans-serif; font-size: 12px; line-height: 22px; background-color: rgb(244, 244, 244);\">网络针对</span><span style=\"margin: 0px; padding: 0px; color: rgb(62, 62, 62); font-family: å¾®è½¯é›…é»‘, å®‹ä½“, tahoma, Srial, helvetica, sans-serif; font-size: 12px; line-height: 22px; background-color: rgb(244, 244, 244);\">KAE</span><span style=\"color: rgb(62, 62, 62); font-family: å¾®è½¯é›…é»‘, å®‹ä½“, tahoma, Srial, helvetica, sans-serif; font-size: 12px; line-height: 22px; background-color: rgb(244, 244, 244);\">美人油护肤品的品牌形象，运用完美的视觉呈现、有逻辑的品牌产品类别成列及最新产品发布，有效的传达给受众其品牌个性。独具特色的效果增加了网站的趣味性。</span></p>');
INSERT INTO `om_1_activities_data_0` VALUES ('5', '1', '1', '<p><span style=\"color: rgb(62, 62, 62); font-family: å¾®è½¯é›…é»‘, å®‹ä½“, tahoma, Srial, helvetica, sans-serif; font-size: 12px; line-height: 22px; background-color: rgb(244, 244, 244);\">标卓装饰作为建筑业内的知名设计公司，蜀美网络根据其设计理念多元化的特点，整体网站色彩采用黑色为背景，以线条贯穿整个网站，整体网站突出空间感，其次用建筑魔方做为导航，更能凸显建筑设计理念，清晰明确的提高了浏览品质的同时，也体现了专业具有创造力</span></p>');
INSERT INTO `om_1_activities_data_0` VALUES ('6', '1', '1', '<p>丹寇服饰不仅在网站设计风格方面追求异曲同工之精华，而且在实际的视觉呈现方面融合CAGLIARI 2011年的最新服装主题，将“荒芜美下衬托的绚烂和时尚”发挥地淋漓尽致，内页采用春、夏、秋、冬。设计理念，突出其“不盲目造势，追求共同生活价值”的品牌宗旨。</p>');

-- ----------------------------
-- Table structure for om_1_activities_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_extend_index`;
CREATE TABLE `om_1_activities_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_activities_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_extend_verify`;
CREATE TABLE `om_1_activities_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_activities_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_favorite_0`;
CREATE TABLE `om_1_activities_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_activities_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_favorite_1`;
CREATE TABLE `om_1_activities_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_activities_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_favorite_2`;
CREATE TABLE `om_1_activities_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_activities_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_favorite_3`;
CREATE TABLE `om_1_activities_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_activities_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_favorite_4`;
CREATE TABLE `om_1_activities_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_activities_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_favorite_5`;
CREATE TABLE `om_1_activities_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_activities_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_favorite_6`;
CREATE TABLE `om_1_activities_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_activities_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_favorite_7`;
CREATE TABLE `om_1_activities_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_activities_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_favorite_8`;
CREATE TABLE `om_1_activities_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_activities_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_favorite_9`;
CREATE TABLE `om_1_activities_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_activities_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_flag`;
CREATE TABLE `om_1_activities_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_activities_flag
-- ----------------------------
INSERT INTO `om_1_activities_flag` VALUES ('1', '1', '1', '1');
INSERT INTO `om_1_activities_flag` VALUES ('1', '2', '1', '1');
INSERT INTO `om_1_activities_flag` VALUES ('1', '3', '1', '1');
INSERT INTO `om_1_activities_flag` VALUES ('1', '4', '1', '1');
INSERT INTO `om_1_activities_flag` VALUES ('1', '5', '1', '1');
INSERT INTO `om_1_activities_flag` VALUES ('1', '6', '1', '1');

-- ----------------------------
-- Table structure for om_1_activities_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_form`;
CREATE TABLE `om_1_activities_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_activities_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_html`;
CREATE TABLE `om_1_activities_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_activities_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_index`;
CREATE TABLE `om_1_activities_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_activities_index
-- ----------------------------
INSERT INTO `om_1_activities_index` VALUES ('1', '1', '1', '9', '1418374633');
INSERT INTO `om_1_activities_index` VALUES ('2', '1', '1', '9', '1418374822');
INSERT INTO `om_1_activities_index` VALUES ('3', '1', '1', '9', '1418374951');
INSERT INTO `om_1_activities_index` VALUES ('4', '1', '1', '9', '1418374999');
INSERT INTO `om_1_activities_index` VALUES ('5', '1', '1', '9', '1418375091');
INSERT INTO `om_1_activities_index` VALUES ('6', '1', '1', '9', '1418375116');

-- ----------------------------
-- Table structure for om_1_activities_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_search`;
CREATE TABLE `om_1_activities_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_activities_search
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_activities_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_tag`;
CREATE TABLE `om_1_activities_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_activities_tag
-- ----------------------------
INSERT INTO `om_1_activities_tag` VALUES ('1', '鄱阳湖', 'panyanghu', '0');
INSERT INTO `om_1_activities_tag` VALUES ('2', '世界小姐', 'shijiexiaojie', '0');
INSERT INTO `om_1_activities_tag` VALUES ('3', '中国', 'zhongguo', '0');
INSERT INTO `om_1_activities_tag` VALUES ('4', '护肤品', 'hufupin', '0');
INSERT INTO `om_1_activities_tag` VALUES ('5', '法国', 'faguo', '0');
INSERT INTO `om_1_activities_tag` VALUES ('6', '装饰工程', 'zhuangshigongcheng', '0');
INSERT INTO `om_1_activities_tag` VALUES ('7', '有限公司', 'youxiangongsi', '0');
INSERT INTO `om_1_activities_tag` VALUES ('8', '服饰', 'fushi', '0');

-- ----------------------------
-- Table structure for om_1_activities_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_activities_verify`;
CREATE TABLE `om_1_activities_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_activities_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_block
-- ----------------------------
DROP TABLE IF EXISTS `om_1_block`;
CREATE TABLE `om_1_block` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '文本块名称',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='文本块表';

-- ----------------------------
-- Records of om_1_block
-- ----------------------------
INSERT INTO `om_1_block` VALUES ('1', 'facebook链接', '#');
INSERT INTO `om_1_block` VALUES ('2', 'google-plus链接', '#');
INSERT INTO `om_1_block` VALUES ('3', 'twitter', '#');
INSERT INTO `om_1_block` VALUES ('4', 'youtube', '#');
INSERT INTO `om_1_block` VALUES ('5', 'linkedin', '#');
INSERT INTO `om_1_block` VALUES ('6', 'dribbble', '#');
INSERT INTO `om_1_block` VALUES ('7', 'skype', '#');
INSERT INTO `om_1_block` VALUES ('8', 'Email邮箱', 'kefu@omooo.com');
INSERT INTO `om_1_block` VALUES ('9', '400电话', '400-651-5550');
INSERT INTO `om_1_block` VALUES ('10', '英文地址', '#');
INSERT INTO `om_1_block` VALUES ('11', '首页关于我们概况标题一', '摩恩网络有限公司，');
INSERT INTO `om_1_block` VALUES ('12', '首页关于我们概况标题二', '中国建站哪家强？');
INSERT INTO `om_1_block` VALUES ('13', '首页关于我们概况跑马灯，逗号分隔', '文艺范, 时尚界, 技术帝,90后,很niuX');
INSERT INTO `om_1_block` VALUES ('14', '首页关于我们概况_描述', '摩恩网络企业服务平台（www.omooo.com）隶属于上海摩恩网络科技有限公司，总部位于上海,\r\n在全国多个城市建立了分站服务中心，平台业务涵盖一站式网站设计开发、Logo/VI设计、域名/主机/邮箱、400电话，平台不同于传统的网站设计公司');
INSERT INTO `om_1_block` VALUES ('15', '首页创新和技术', '数码防伪技术融合了INTERNET计算机、移动通信、数据库、信息编码技术。系统采用无规则编码生成技术，为每件商品附属的标签设定出唯一的防伪号码，使每件商品都拥有一个数字 \"身份证\"号（即数字ID），购买了相应产品的消费者无论何时何地');
INSERT INTO `om_1_block` VALUES ('16', '首页社区活动', '为了尊重客户的商业机密，WinSafe坚持一贯的原则，不透露任何客户非公开的商业信息；内容中描述的数据有可能非真实性，请注意理解。 ');
INSERT INTO `om_1_block` VALUES ('17', '首页关于我们概况跑马灯后缀语言', '中国建站哪家强？');
INSERT INTO `om_1_block` VALUES ('18', '首页新闻描述', '作为全链追溯行业的领先企业，WinSafe时刻关注国内外相关的产业动向，以及政府部门各项法律法规和规章制度的调整变化。同时WinSafe也积极响应国家和政府号召，把更好的解决方案介绍给各个行业的潜在客户。');
INSERT INTO `om_1_block` VALUES ('19', '头部查询地址', '#');
INSERT INTO `om_1_block` VALUES ('20', '返回首页', '返回');
INSERT INTO `om_1_block` VALUES ('21', 'QQ号码', '844785116');

-- ----------------------------
-- Table structure for om_1_cass
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass`;
CREATE TABLE `om_1_cass` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `thumb2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_cass
-- ----------------------------
INSERT INTO `om_1_cass` VALUES ('1', '1', '汽车零部件追踪', '116', '汽车零部件', '汽车零部件追踪', '1', '1', 'omooo', '9', 'http://liyuan.in/cass/index.php?c=show&id=1', '0', '127.0.0.1', '1422870494', '1422870494', '0', '116');
INSERT INTO `om_1_cass` VALUES ('2', '1', '“New IS 系统正式发布”开启产品溯源全新体验', '117', '产品', '按时打算', '2', '1', 'omooo', '9', 'http://liyuan.in/cass/index.php?c=show&id=2', '0', '127.0.0.1', '1422870568', '1422870568', '0', '117');

-- ----------------------------
-- Table structure for om_1_cass_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_buy_0`;
CREATE TABLE `om_1_cass_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_cass_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_buy_1`;
CREATE TABLE `om_1_cass_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_cass_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_buy_2`;
CREATE TABLE `om_1_cass_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_cass_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_buy_3`;
CREATE TABLE `om_1_cass_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_cass_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_buy_4`;
CREATE TABLE `om_1_cass_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_cass_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_buy_5`;
CREATE TABLE `om_1_cass_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_cass_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_buy_6`;
CREATE TABLE `om_1_cass_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_cass_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_buy_7`;
CREATE TABLE `om_1_cass_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_cass_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_buy_8`;
CREATE TABLE `om_1_cass_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_cass_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_buy_9`;
CREATE TABLE `om_1_cass_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_cass_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_category`;
CREATE TABLE `om_1_cass_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_cass_category
-- ----------------------------
INSERT INTO `om_1_cass_category` VALUES ('1', '0', '0', '最新项目', 'z', 'zuixinxiangmu', '', '0', '1', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_cass_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_category_data`;
CREATE TABLE `om_1_cass_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_cass_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_category_data_0`;
CREATE TABLE `om_1_cass_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_cass_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_data_0`;
CREATE TABLE `om_1_cass_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_cass_data_0
-- ----------------------------
INSERT INTO `om_1_cass_data_0` VALUES ('1', '1', '1', '<p>汽车零部件追踪</p>');
INSERT INTO `om_1_cass_data_0` VALUES ('2', '1', '1', '<p>按时打算按时打算</p>');

-- ----------------------------
-- Table structure for om_1_cass_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_extend_index`;
CREATE TABLE `om_1_cass_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_cass_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_extend_verify`;
CREATE TABLE `om_1_cass_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_cass_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_favorite_0`;
CREATE TABLE `om_1_cass_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_cass_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_favorite_1`;
CREATE TABLE `om_1_cass_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_cass_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_favorite_2`;
CREATE TABLE `om_1_cass_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_cass_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_favorite_3`;
CREATE TABLE `om_1_cass_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_cass_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_favorite_4`;
CREATE TABLE `om_1_cass_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_cass_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_favorite_5`;
CREATE TABLE `om_1_cass_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_cass_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_favorite_6`;
CREATE TABLE `om_1_cass_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_cass_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_favorite_7`;
CREATE TABLE `om_1_cass_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_cass_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_favorite_8`;
CREATE TABLE `om_1_cass_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_cass_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_favorite_9`;
CREATE TABLE `om_1_cass_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_cass_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_flag`;
CREATE TABLE `om_1_cass_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_cass_flag
-- ----------------------------
INSERT INTO `om_1_cass_flag` VALUES ('1', '1', '1', '1');
INSERT INTO `om_1_cass_flag` VALUES ('1', '2', '1', '1');

-- ----------------------------
-- Table structure for om_1_cass_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_form`;
CREATE TABLE `om_1_cass_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_cass_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_html`;
CREATE TABLE `om_1_cass_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_cass_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_index`;
CREATE TABLE `om_1_cass_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_cass_index
-- ----------------------------
INSERT INTO `om_1_cass_index` VALUES ('1', '1', '1', '9', '1422870494');
INSERT INTO `om_1_cass_index` VALUES ('2', '1', '1', '9', '1422870568');

-- ----------------------------
-- Table structure for om_1_cass_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_search`;
CREATE TABLE `om_1_cass_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_cass_search
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_cass_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_tag`;
CREATE TABLE `om_1_cass_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_cass_tag
-- ----------------------------
INSERT INTO `om_1_cass_tag` VALUES ('1', '汽车零部件', 'qichelingbujian', '0');
INSERT INTO `om_1_cass_tag` VALUES ('2', '产品', 'chanpin', '0');

-- ----------------------------
-- Table structure for om_1_cass_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_cass_verify`;
CREATE TABLE `om_1_cass_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_cass_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_form`;
CREATE TABLE `om_1_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `table` varchar(50) NOT NULL COMMENT '表名',
  `setting` text COMMENT '配置信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='表单模型表';

-- ----------------------------
-- Records of om_1_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_navigator
-- ----------------------------
DROP TABLE IF EXISTS `om_1_navigator`;
CREATE TABLE `om_1_navigator` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级id',
  `pids` text COMMENT '所有上级id数据项',
  `type` tinyint(1) unsigned NOT NULL COMMENT '导航类型',
  `name` varchar(255) NOT NULL COMMENT '导航名称',
  `title` varchar(255) NOT NULL COMMENT 'seo标题',
  `description` varchar(255) NOT NULL COMMENT '描述内容',
  `url` varchar(255) NOT NULL COMMENT '导航地址',
  `thumb` varchar(255) NOT NULL COMMENT '图片标示',
  `thumb2` varchar(255) NOT NULL COMMENT '副图片',
  `imgbg` varchar(255) NOT NULL COMMENT '背景图片',
  `css` tinyint(1) NOT NULL COMMENT '样式选择器',
  `words` varchar(255) NOT NULL COMMENT '文本内容',
  `mp4` varchar(255) NOT NULL COMMENT 'MP4广告视频',
  `flv` varchar(255) NOT NULL COMMENT 'Flv广告视频',
  `webm` varchar(255) NOT NULL COMMENT 'webm广告视频',
  `ogv` varchar(255) NOT NULL COMMENT 'ogv广告视频',
  `show` tinyint(1) unsigned NOT NULL COMMENT '显示',
  `mark` varchar(255) DEFAULT NULL COMMENT '类型标示',
  `extend` tinyint(1) unsigned DEFAULT NULL COMMENT '是否继承下级',
  `child` tinyint(1) unsigned NOT NULL COMMENT '是否有下级',
  `childids` text COMMENT '所有下级数据项',
  `target` tinyint(1) unsigned NOT NULL COMMENT '是否站外链接',
  `displayorder` tinyint(3) NOT NULL COMMENT '显示顺序',
  PRIMARY KEY (`id`),
  KEY `list` (`id`,`type`,`show`,`displayorder`),
  KEY `mark` (`mark`),
  KEY `extend` (`extend`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='网站导航表';

-- ----------------------------
-- Records of om_1_navigator
-- ----------------------------
INSERT INTO `om_1_navigator` VALUES ('1', '0', '0', '0', '关于我们', '关于我们', '', '#', '', '', '', '0', '', '', '', '', '', '1', '', '0', '1', '1,2,3,4', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('2', '1', '0,1', '0', '公司简介', '', '', 'http://liyuan.in/index.php?c=page&amp;id=2', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '2', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('3', '1', '0,1', '0', '公司大事记', '公司大事记', '', 'http://liyuan.in/index.php?c=page&amp;id=3', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '3', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('4', '1', '0,1', '0', '公司团队', '', '', 'http://liyuan.in/solution/', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '4', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('5', '0', '0', '0', '科研项目', '科研项目', '', 'http://', '', '', '', '0', '', '', '', '', '', '1', '', '0', '1', '5,6,7,8', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('6', '5', '0,5', '0', '产品中心', '产品中心', '', 'http://liyuan.in/product/index.php?c=category&amp;id=1', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '6', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('7', '5', '0,5', '0', '科技与创新', '科技与创新', '', 'http://liyuan.in/product/index.php?c=category&amp;id=2', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '7', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('8', '5', '0,5', '0', '社区活动', '社区活动', '', 'http://liyuan.in/activities/index.php?c=category&amp;id=1', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '8', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('9', '0', '0', '0', '新闻中心', '新闻中心', '', 'http://', '', '', '', '0', '', '', '', '', '', '1', '', '0', '1', '9,10,11', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('10', '9', '0,9', '0', '公司新闻', '公司新闻', '公司新闻', 'http://liyuan.in/news/index.php?c=category&amp;id=2', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '10', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('11', '9', '0,9', '0', '行业新闻', '行业新闻', '', 'http://liyuan.in/news/index.php?c=category&amp;id=3', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '11', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('12', '0', '0', '0', '解决方案', '解决方案', '', 'http://', '', '', '', '1', '', '', '', '', '', '1', '', '0', '1', '12,13,25,26,27,28,29,30,31', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('13', '12', '0,12', '0', '农业食品领域', '', '', 'http://liyuan.in/solution/index.php?c=category&amp;id=1', '', '', '', '0', '', '', '', '', '', '1', '', '0', '1', '13,25,26', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('14', '0', '0', '0', '联系我们', '联系我们', '', 'http://liyuan.in/index.php?c=page&amp;id=5', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '14', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('15', '0', '0', '1', 'banner1', '', '', 'http://www.omooo.com', '97', '', '109', '1', '我们的创造力', '', '', '', '', '1', '', '0', '0', '15', '0', '1');
INSERT INTO `om_1_navigator` VALUES ('16', '0', '0', '1', 'banner2', '', '了解市场 赢得客户', '#', '110', '', '98', '2', '倍受推崇的促销积分管理', '', '', '', '', '1', '', '0', '0', '16', '0', '1');
INSERT INTO `om_1_navigator` VALUES ('17', '0', '0', '1', 'banner3', '', '', '#', '113', '114', '112', '3', '客户的满意是我们最大追求', '', '', '', '', '1', '', '0', '0', '17', '0', '1');
INSERT INTO `om_1_navigator` VALUES ('18', '0', '0', '2', '关于我们', '', '', 'http://liyuan.in/index.php?c=page&amp;id=2', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '18', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('19', '0', '0', '2', '产品展示', '', '', 'http://liyuan.in/product/index.php?c=category&amp;id=1', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '19', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('20', '0', '0', '2', '解决方案', '', '', 'http://liyuan.in/solution/index.php?c=category&amp;id=1', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '20', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('21', '0', '0', '2', '新闻中心', '', '', 'http://liyuan.in/news/index.php?c=category&amp;id=1', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '21', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('22', '0', '0', '2', '联系我们', '', '', 'http://liyuan.in/index.php?c=page&amp;id=5', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '22', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('23', '0', '0', '3', 'logo', '', '', 'http://', '89', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '23', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('24', '0', '0', '3', '扫一扫二维码', '', '', 'http://', '90', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '24', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('25', '13', '0,12,13', '0', '食品追踪追溯管理系统', '', '', 'http://liyuan.in/solution/index.php?c=show&amp;id=1', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '25', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('26', '13', '0,12,13', '0', '农药防伪及防窜货解决方案', '', '', 'http://liyuan.in/solution/index.php?c=show&amp;id=1', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '26', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('27', '12', '0,12', '0', '流通领域', '', '', '#', '', '', '', '0', '', '', '', '', '', '1', '', '0', '1', '27,28,29,30,31', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('28', '27', '0,12,27', '0', '分销渠道管理解决方案（IS系统）', '', '', 'http://liyuan.in/solution/index.php?c=show&amp;id=1', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '28', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('29', '27', '0,12,27', '0', '零售终端实时/无线信息采集方案', '', '', '#', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '29', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('30', '27', '0,12,27', '0', '超市/便利店信息管理解决方案', '', '', 'http://liyuan.in/solution/index.php?c=show&amp;id=1', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '30', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('31', '27', '0,12,27', '0', '连锁行业信息化管理系统', '', '', '#', '', '', '', '0', '', '', '', '', '', '1', '', '0', '0', '31', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('32', '0', '0', '1', 'banner4视频广告', '', '由于广告文本有限  6个行业修改在文本链接内容修改', '#', '', '', '115', '4', '完善的全链追踪管理之道', '102', '', '103', '104', '1', '', '0', '0', '32', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('33', '0', '0', '1', 'banner5', '', '支持多种终端形式', '#', '106', '', '105', '5', '高效的分销渠道信息化管理', '', '', '', '', '1', '', '0', '0', '33', '0', '1');
INSERT INTO `om_1_navigator` VALUES ('34', '0', '0', '1', 'banner6', '', '保护您的品牌,保护您的客户', '#', '108', '', '107', '6', '有效的商品防伪管理方案', '', '', '', '', '1', '', '0', '0', '34', '0', '1');

-- ----------------------------
-- Table structure for om_1_news
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news`;
CREATE TABLE `om_1_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_news
-- ----------------------------
INSERT INTO `om_1_news` VALUES ('1', '2', '“直面食品安全挑战，开启大数据时代营销革命”—— WinSafe参加中国食品饮料大会', '', '', '9月18日-19日，WinSafe参加了北京召开的“2014中国食品饮料大会”，100多家国内外知名公司的500多位业界决策者的参与此次盛会。 大会由中国食品药品国际交流中心主办，中国保健协会协办。大会以“直面食品安全挑战，...', '5', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=1', '0', '127.0.0.1', '1419479839', '1419480232', '0');
INSERT INTO `om_1_news` VALUES ('2', '2', '王老吉公司采购和IT部门等一行考察WinSafe总部', '', '王老吉', '作为国内凉茶类饮料巨头的王老吉，2013年销售额超过150亿元（2014年预计将达200亿元），2013年度市场份额接近50%。 为了更好的管理好市场销售网络，公司对在线赋码/产品追溯/APP查询等高效的管理工具有迫切的需求。...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=2', '0', '127.0.0.1', '1419480302', '1419480302', '0');
INSERT INTO `om_1_news` VALUES ('3', '2', ' “与醋业领头羊强强联手”—— 山西水塔醋业项目签约成功', '', '山西,项目', '山西水塔老陈醋股份有限公司拥有资产4．52亿元，职工2000余人，占地1平方公里，年产食醋18万吨，年销售额达到10亿元，是目前国内规模最大、产量最高、品种最多、 市场占有率最高的老陈醋生产企业，公司产品远销全国3...', '3', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=3', '0', '127.0.0.1', '1419480361', '1419480361', '0');
INSERT INTO `om_1_news` VALUES ('4', '2', '“移动互联+移动商务”杜邦商品管理系统通过验收上线投入使用', '', '管理系统,商务', '杜邦农业部门2013年销售额达到117亿美元。 作为全球知名的农用化学品公司，杜邦植保已经于WinSafe合作超过10年，通过多个项目的成功实施，双方都对合作成果表示满意。 为进一步提升大中华区杜邦植保的管理效率，整顿...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=4', '0', '127.0.0.1', '1419480431', '1419480431', '0');
INSERT INTO `om_1_news` VALUES ('5', '3', '中国农垦追踪追溯项目顺利签约', '', '中国,项目', '中国农垦（集团）总公司（以下简称中农垦公司）成立于1980年，是原国家农业部直属企业，目前是国务院国资委出资监管的国有特大型农业企业。 其下属的大豆加工业务部门，是以大豆加工为主导，集国际贸易、资本运营为...', '2', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=5', '0', '127.0.0.1', '1419480487', '1419480487', '0');
INSERT INTO `om_1_news` VALUES ('6', '2', '“加强互信，合作共赢”—— 圣元乳业质量部客人一行来访', '', '圣元乳业', '圣元是中国母婴营养食品领域的知名品牌。2005年4月，圣元成为第一家在美国纳斯达克上市的中国营养食品公司，致力于整合全球优势资源，优化和改善母婴营养方案。 圣元乳业质量部客人一行昨天对公司上海总部进行了业务...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=6', '0', '127.0.0.1', '1419482478', '1419482478', '0');
INSERT INTO `om_1_news` VALUES ('7', '3', '上海追溯酒品信息中心：为每一瓶酒赋予“身份证”', '', '身份证,上海,信息,一瓶,中心', '作为国家商务部和上海市政府的项目，上海追溯酒品信息中心是专业的第三方追溯平台，公司是上海国际酒类现代商贸服务区八大功能之一 。 上海追溯酒品信息中心，集股东、成本及公信力三大优势，为酒企提供最直观的追溯...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=7', '0', '127.0.0.1', '1419482528', '1419482528', '0');
INSERT INTO `om_1_news` VALUES ('8', '2', 'WinSafe被贝恩美授予“2012年度供应保障奖”', '', '', '贝恩美是国内领先的婴童食品和服务厂商，年销售额超过60亿元。贝恩美是消费者心中的最佳国产奶粉品牌之一，具有较高的市场知名度。 在近期升级项目实施过程中，WinSafe工程人员为了保证工厂正常生产，联系两周在工厂...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=8', '0', '127.0.0.1', '1419482589', '1419482589', '0');
INSERT INTO `om_1_news` VALUES ('9', '2', 'WinSafe 实施的杜邦追溯项目被杜邦总部授予“杰出贡献奖”', '', '项目', '作为全球领先的植保产品品牌，杜邦植保与WinSafe已经进行多年愉快的项目合作。 WinSafe主导实施的行业内最领先的“四码合一”防伪防窜货系统，帮助杜邦植保在市场销售管理方面取得了很大的进步。也正因为此，WinSafe...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=9', '0', '127.0.0.1', '1419482645', '1419482645', '0');
INSERT INTO `om_1_news` VALUES ('10', '2', '“更专业、更耐心、更快速”——WinSafe 打造完美客服，提供优质服务！', '', '专业', '美国哈佛商业杂志发表的调研报告指出：“公司若能降低5%的客户流失率，就能增加25% ~ 85%的利润，在赢得客户回头的众多因素中，首是服务质量的好坏，其次是产品质量的好坏，最后才是价格的高低。”由此可见，在如今...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=10', '0', '127.0.0.1', '1419482679', '1419482679', '0');
INSERT INTO `om_1_news` VALUES ('11', '2', 'WinSafe重“心”出发 ——2014 winsafe 新版官网正式上线', '', '', '2014年10月30日，产品全链追溯行业的领导者——WinSafe励元科技正式推出了改版后的官方网站，对企业形象又一次全新的诠释及延伸。改版后的网站在秉承WinSafe一贯的“稳重、专业、创新”的企业形象的同时，在风格上也...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=11', '0', '127.0.0.1', '1419482713', '1419482713', '0');
INSERT INTO `om_1_news` VALUES ('12', '2', '与“都教授”甜蜜约会 ——2014 winsafe 员工中秋关怀', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=28&amp;width=407&amp;height=282&amp;water=1', '约会', '明月几时有？把酒问青天。又到中秋佳节时，公司祝各位员工及家属中秋快乐，愿大家：梦想圆圆都实现，成功圆圆舞翩跹！ 公司为了感谢全体员工为公司长期以来的辛勤付出，也让在外打工的游子感到佳节温馨与家的温暖，...', '2', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=12', '0', '127.0.0.1', '1419482746', '1419489031', '0');
INSERT INTO `om_1_news` VALUES ('13', '2', 'Philips协同SGS对我司生产基地进行EICC审查获得高度肯定', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=29&amp;width=897&amp;height=507&amp;water=1', '协同', '历时三个多月的飞利浦可持续发展项目随着SGS审核结束也落下了帷幕，最终的审核结果获得了Philips的高度肯定。 EICC审核主要包括五大体系：一、 劳工：包含自由选择职业、禁止使用童工、工作时间、工资于福利、不歧视...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=13', '0', '127.0.0.1', '1419482820', '1419489008', '0');
INSERT INTO `om_1_news` VALUES ('14', '2', '哑巴英语怎么行！winsafe英语角邀您一起来加入！', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=31&amp;width=680&amp;height=510&amp;water=1', '哑巴英语,英语角', '为了进一步提高员工学习英语的兴趣、口语的表达能力；同时营造健康向上、积极进取的学习氛围，WinSafe不仅为员工同时也为爱好英语口语交流的朋友们搭建一个施展才华、提高英语能力的平台，准备了一系列丰富多彩的英...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=14', '0', '127.0.0.1', '1419482876', '1419488985', '0');
INSERT INTO `om_1_news` VALUES ('15', '2', '“New IS 系统正式发布”开启产品溯源全新体验', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=38&amp;width=529&amp;height=271&amp;water=1', '产品', '在市场经济快速发展，企业间竞争日趋激烈的今天，产品质量对于一家企业的重要性日益明显。保证产品质量等同于保证企业占有市场。然而，当今我国的产品质量安全仍旧多次遭受打击，国家检测标准的产品安全已经不能满足...', '11', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=15', '0', '127.0.0.1', '1419482934', '1419488965', '0');
INSERT INTO `om_1_news` VALUES ('16', '2', '学！赢在学习，胜在改变”——2014 winsafe 销售培训圆满落幕', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=40&amp;width=570&amp;height=372&amp;water=1', '销售培训', '在春意盎然的季节，WinSfe 2014销售培训会议在苏州雍景山庄圆满落幕。通过为期三天的培训让所有参与人员对公司未来的发展计划有了更好地了解，并且引导员工与公司一同发展，从而增强团队凝聚力，提高企业的整体效益...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=16', '0', '127.0.0.1', '1419483541', '1419488947', '0');
INSERT INTO `om_1_news` VALUES ('17', '2', '3个1dea为您解读全新winsafe “V号码”', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=41&amp;width=799&amp;height=378&amp;water=1', '', '多年来，在企业产品防伪追溯领域一中直存在很多技术，但是其中大多存都在一个问题，如何使消费者能够快速准确的进行真伪识别，并且其技术具备 易识别、私密性强、易传播 等特性？ WinSafe！作为企业品牌安全保护卫士...', '4', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=17', '0', '127.0.0.1', '1419483577', '1419483577', '0');
INSERT INTO `om_1_news` VALUES ('18', '2', '励元“绿色菜园  健康生活”', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=42&amp;width=958&amp;height=710&amp;water=1', '健康生活', '最近几年随着生活慢慢提高，人们也在慢慢提高自身的生活质量！提倡“绿色生活”“健康生活”，WinSafe为了加强人们对健康生活的认识和了解！正在准备“绿色菜园 健康生活”主题活动！ “绿色菜园 健康生活”这个活动...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=18', '0', '127.0.0.1', '1419483658', '1419483658', '0');
INSERT INTO `om_1_news` VALUES ('19', '2', ' Winsafe官方微博正式上', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=43&amp;width=1268&amp;height=788&amp;water=1', '微博', '随着现在网络信息时代的快速发现，微博这个线上互动工具给我们带来更多的有价值的信息！Winsafe经过前期的了解和调查为了刚好的更好地服务我们广大的客户和给大家带更多有用的信息！将于2014年3月22日正式开通“励元...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=19', '0', '127.0.0.1', '1419484284', '1419484328', '0');
INSERT INTO `om_1_news` VALUES ('20', '2', 'Winsafe2014下半年项目管理会议正式召开', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=44&amp;width=995&amp;height=745&amp;water=1', '项目管理', 'Winsafe2014年下半年项目管理讨论会议于8月13日正式召开，此次会议主要参加人员为技术部门和销售部门！本次会议主要围绕如何更好的服务于客户？提高项目质量和管理来进行讨论！技术部门主要提出在技术方的方面如何提...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=20', '0', '127.0.0.1', '1419489474', '1419489474', '0');
INSERT INTO `om_1_news` VALUES ('21', '2', 'Winsafe北京分公司成立', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=45&amp;width=840&amp;height=583&amp;water=1', '分公司,北京', '随着Winsafe励元科技一年一年的成长和发展，Winsafe也成为了国际性的大公司！为了适应企业规模的壮大继我们的深圳分公司后，北京分公司于2014年正式成立！ 北京分公司位于北京市朝阳区西大望路，CBD东区金角之上，南...', '0', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=21', '0', '127.0.0.1', '1419489513', '1419489513', '0');
INSERT INTO `om_1_news` VALUES ('22', '2', '“WinSafe励元科技”官方微信正式开通', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=46&amp;width=507&amp;height=672&amp;water=1', '', '微信是在微博和QQ互动平台以，发展最快的一个互动平台！为了更好地服务于广大的客户，“winSafe励元科技“官方微信将于今年十月份正式开通！ 我们的官方微信设有“W官网”、“W资讯”、“W助理”三个菜单！在“W官网...', '6', '1', 'omooo', '9', 'http://liyuan.in/news/index.php?c=show&id=22', '0', '127.0.0.1', '1419489575', '1419489575', '0');

-- ----------------------------
-- Table structure for om_1_news_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_0`;
CREATE TABLE `om_1_news_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_1`;
CREATE TABLE `om_1_news_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_2`;
CREATE TABLE `om_1_news_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_3`;
CREATE TABLE `om_1_news_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_4`;
CREATE TABLE `om_1_news_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_5`;
CREATE TABLE `om_1_news_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_6`;
CREATE TABLE `om_1_news_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_7`;
CREATE TABLE `om_1_news_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_8`;
CREATE TABLE `om_1_news_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_9`;
CREATE TABLE `om_1_news_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_category`;
CREATE TABLE `om_1_news_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_news_category
-- ----------------------------
INSERT INTO `om_1_news_category` VALUES ('1', '0', '0', '新闻中心', 'x', 'xinwenzhongxin', '', '1', '1,2,3', '', '1', '', 'a:6:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"10\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";a:1:{i:2;a:4:{s:4:\\\"show\\\";s:1:\\\"1\\\";s:3:\\\"add\\\";s:1:\\\"1\\\";s:4:\\\"edit\\\";s:1:\\\"1\\\";s:3:\\\"del\\\";s:1:\\\"1\\\";}}}', '0');
INSERT INTO `om_1_news_category` VALUES ('2', '1', '0,1', '公司新闻', 'g', 'gongsixinwen', 'xinwenzhongxin/', '0', '2', '', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"10\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";a:1:{i:2;a:4:{s:4:\\\"show\\\";s:1:\\\"1\\\";s:3:\\\"add\\\";s:1:\\\"1\\\";s:4:\\\"edit\\\";s:1:\\\"1\\\";s:3:\\\"del\\\";s:1:\\\"1\\\";}}s:6:\\\"member\\\";a:0:{}}', '0');
INSERT INTO `om_1_news_category` VALUES ('3', '1', '0,1', '行业新闻', 'x', 'xingyexinwen', 'xinwenzhongxin/', '0', '3', '', '1', '', 'a:6:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"10\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";a:1:{i:2;a:4:{s:4:\\\"show\\\";s:1:\\\"1\\\";s:3:\\\"add\\\";s:1:\\\"1\\\";s:4:\\\"edit\\\";s:1:\\\"1\\\";s:3:\\\"del\\\";s:1:\\\"1\\\";}}}', '0');

-- ----------------------------
-- Table structure for om_1_news_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_category_data`;
CREATE TABLE `om_1_news_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_news_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_category_data_0`;
CREATE TABLE `om_1_news_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_news_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_data_0`;
CREATE TABLE `om_1_news_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_news_data_0
-- ----------------------------
INSERT INTO `om_1_news_data_0` VALUES ('1', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">9月18日-19日，WinSafe参加了北京召开的“2014中国食品饮料大会”，100多家国内外知名公司的500多位业界决策者的参与此次盛会。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">大会由中国食品药品国际交流中心主办，中国保健协会协办。大会以“直面食品安全挑战，开启大数据时代营销革命”为主题，探讨包括食品质量安全、亚洲食品新兴市场、食品营销及品牌创新、产品创新及新兴技术等议题；同时，为中国食品行业监督部门提供参考信息，为中外食品生产企业、原材料供应商、包装供应商及咨询机构提供一个政策学习、技术分享和项目展示平台。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">作为大会主要赞助商，励元在大会会场入场和主要通道设置了公司产品业务员传的展台和易拉宝，保证让最多的潜在客户能够看到我们的品牌展示，并为所有潜在客户企业提供相关的咨询交流。在这样一个高端的交流平台上，我们与在参会的众多跨国企业高管（包括杜邦，达能，雅培，亿滋，恒天然等）分别进行了交流，对双方的企业情况和相关业务开展情况等，都有了进一步的认识。&nbsp;通过前期的客情沟通，为将来能在第一时间了解客户在全链追溯领域方面的需求打下扎实基础。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;本届食品饮料大会将分为主题大会、分会场、圆桌讨论、一对一会晤等互动环节，共同探讨中国食品饮料行业市场发展动态、解读最新行业政策、学习最前沿技术、定位发展机遇，现场聆听来自全球的20余位食品饮料产业顶尖专家的覆盖食品饮料全局、最新创新及未来发展战略的专题演讲和小组讨论。这一切将对了解中内外食品饮料产业最新的宏观现状，制定出最正确的商业战略，帮助企业家建立无限广阔的商业人脉，为食品饮料业内人士深入探讨行业发展难题，寻求解决方案，构建国际化交流平台。而作为为所有食品和食品原料厂商提供解决方案服务的WinSafe，也将借得益于平台的建立发展，获得宝贵的行业客户资源。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=15&width=791&height=516&water=1\" title=\"83592e7f92.jpg\" alt=\"图片4.jpg\" id=\"OmWeb_img_15\"/></p><p><br/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=16&width=778&height=523&water=1\" title=\"2dec4be018.jpg\" alt=\"图片5.jpg\" id=\"OmWeb_img_16\"/></p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('2', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">作为国内凉茶类饮料巨头的王老吉，2013年销售额超过150亿元（2014年预计将达200亿元），2013年度市场份额接近50%。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">为了更好的管理好市场销售网络，公司对在线赋码/产品追溯/APP查询等高效的管理工具有迫切的需求。而作为国内全链追溯行业领军企业，WinSafe丰富的针对超大型企业解决方案开发经验，毫无疑问将会是双方合作谈判的重要基础。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">王老吉采购部，IT部，设备部和项目部等一行首先参观了位于张江高科园的WinSafe总部大楼。与公司领导和负责项目销售经理进行了深入的交流。客人对WinSafe已完成项目取得的良好反馈表示认可，相信如果双方取得合作，WinSafe将能提供最可靠的产品和服务。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">第二天，王老吉客人一行去张家港东海粮油进行WinSafe已实施项目现场考察，并于当天返回广州。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=17&width=480&height=360&water=1\" title=\"cb93003013.jpg\" alt=\"图片6.jpg\" id=\"OmWeb_img_17\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('3', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">山西水塔老陈醋股份有限公司拥有资产4．52亿元，职工2000余人，占地1平方公里，年产食醋18万吨，年销售额达到10亿元，是目前国内规模最大、产量最高、品种最多、&nbsp;市场占有率最高的老陈醋生产企业，公司产品远销全国30多个省市区。同时也是国家八部委命名的全国农业产业化重点龙头企业。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">为了更好的管理好市场渠道，保证经销商体系的健康稳定运行。公司经过长时间的考察调研，启动了在线赋码和产品追溯项目。WinSafe凭借技术和服务整体的强大实力，经过多轮激烈竞争，最终脱颖而出赢得了该项目合同。相信项目顺利实施后，水塔集团的产品销售网络管理效率，将会有大幅度的提高。同时具备防伪查询的产品条码，让终端消费者也可以通过第三方扫码软件能够很容易就分辨出是否是水塔老陈醋系列的正品。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">经过多年调味品行业的耕耘，在太太乐等企业之后，与水塔集团的顺利签约，标志着公司在国家加紧食品安全追溯系统建设的大背景下，取得了食品调味料行业业务的顺利推进，巩固公司在传统强项食品大类上的市场优势。</span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=18&width=841&height=561&water=1\" title=\"45d7d65828.jpg\" alt=\"图片7.jpg\" id=\"OmWeb_img_18\"/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=19&width=313&height=337&water=1\" title=\"bb805bb4a5.png\" alt=\"图片8.png\" id=\"OmWeb_img_19\"/>&nbsp; &nbsp;<img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=20&width=291&height=258&water=1\" title=\"e844d47d2c.png\" alt=\"图片9.png\" id=\"OmWeb_img_20\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('4', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">杜邦农业部门2013年销售额达到117亿美元。&nbsp;作为全球知名的农用化学品公司，杜邦植保已经于WinSafe合作超过10年，通过多个项目的成功实施，双方都对合作成果表示满意。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">为进一步提升大中华区杜邦植保的管理效率，整顿市场销售秩序，给终端消费者农户一个健康有序的产品销售环境。2013年9月份开始，双方就原方案基础上，开发全新的后台管理系统，并增加手机APP系统管理查询（涵盖杜邦，经销商和零售商三个层面的管理体系）。自从2014年4月份测试上线以来，经过3个月的试运行，系统的稳定性和可靠性得到了双方公司，以及所有使用者的肯定。特别是广大的经销商和零售商，能否高效率的使用APP进行扫描出货操作，而且操作简单易懂。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">杜邦作为跨国企业，在除中国大陆的其他亚洲地区也具有很强的品牌号召力，所以我们也将于客户与时俱进，共同把先进的商品管理系统推广的其他国家和地区，更好的为战略客户提供高质量的产品和服务。这也将为公司更稳步的在海外开展业务打下扎实的基础。</span></p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('5', '1', '3', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">中国农垦（集团）总公司（以下简称中农垦公司）成立于1980年，是原国家农业部直属企业，目前是国务院国资委出资监管的国有特大型农业企业。</span><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;其下属的大豆加工业务部门，是以大豆加工为主导，集国际贸易、资本运营为一体的大型大豆经营加工企业集团。现有员工2770人，年加工大豆能力1000万吨。以大豆加工为主营业务，主产品有蛋白、油脂、保健食品、药品四大系列近百个品种，年加工大豆总能力1000万吨，销售收入300亿元。五次入围中国制造业500强，产品注册商标被国家工商总局认定为“中国驰名商标”，被商务部评为“最具市场竞争力品牌”。作为知名品牌，在全国范围内进行渠道销售，不得不面对渠道管理上的挑战，原来完全靠纸质文件+传真+邮箱的方式，已远远无法满足实际业务发展的需要。而此时WinSafe积累多年经验定制开发的防伪追溯系统完美的解决了中国农垦亟需解决的问题，为保证在下一个战略规划年度实现快速增长打下了良好的基础。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">作为国内最大的非转基因大豆压榨企业，非转基因大豆在市场上非常容易受到的仿冒造假产品的侵扰。重要原因是老百姓对于转基因食品后大行其道的担忧。WinSafe通过参与粮油制品行业的高效的方案，也体现WinSafe响应国家号召，践行对保障市场食品安全的承诺。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=21&width=400&height=266&water=1\" title=\"775ce47040.jpg\" alt=\"图片10.jpg\" id=\"OmWeb_img_21\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('6', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">圣元</span><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">是</span><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">中国母婴营养食品领域的知名品牌。2005年4月，圣元成为第一家在美国纳斯达克上市的中国营养食品公司，致力于整合</span><a href=\"http://clk.gentags.net/clk/iv-7786/st-18/cr-2/oi-171130/or-3221/adv-11/pcon-0/http%3A%2F%2Fwww.shengyuan.com%2Fhtml%2Findex.html\"><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">全球优势资源</span></a><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">，优化和</span><a href=\"http://clk.gentags.net/clk/iv-7786/st-18/cr-2/oi-171131/or-3221/adv-11/pcon-0/http%3A%2F%2Fwww.shengyuan.com%2Fhtml%2Findex.html\"><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">改善母婴营养方案</span></a><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">圣元乳业质量部客人一行昨天对公司上海总部进行了业务访问。主要是沟通双方在提升现有方案使用效率，及考虑下步升级方案上的需求。从而帮助圣元乳业在深入挖掘现有市场潜力，扩展市场占有率方面起到更加支持和积极的作用。作为圣元的长期合格供应商，WinSafe上次的赋码防伪和积分方案已经协助圣元在竞争异常激烈的奶粉市场获得了更好的管理效率和消费者认同度。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">会后在陈总的带领下，客人一行参观了公司防伪标签印刷工厂，工厂先进的设备技术受到了客人的好评。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=22&width=588&height=372&water=1\" title=\"06d08d1a6f.jpg\" alt=\"图片11.jpg\" id=\"OmWeb_img_22\"/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=23&width=500&height=333&water=1\" title=\"2689aa3ea4.jpg\" alt=\"图片12.jpg\" id=\"OmWeb_img_23\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('7', '1', '3', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">作为国家商务部和上海市政府的项目，上海追溯酒品信息中心是专业的第三方追溯平台，公司是上海国际酒类现代商贸服务区八大功能之一&nbsp;。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">上海追溯酒品信息中心，集股东、成本及公信力三大优势，为酒企提供最直观的追溯打假服务，实现点对点的追溯，即酒厂到消费者的两点追溯，同时有效地实现将品牌宣传推广、消费者互动、精准营销融合进追溯服务之中，成为集防伪追溯、营销推广于一体的第三方酒品追溯平台。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">为建设专业的酒类追溯平台，追溯酒品信息中心以云数据服务为中心，为消费提供酒类商品移动电子商务服务，并实现以上海为中心辐射全国的酒类综合服务平台。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-weight:bold;font-size:12px;font-family:&#39;微软雅黑&#39;\">市场定位：依托多年经验打造酒品追溯平台</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">上海追溯酒品信息中心的前身是一家从事追溯产业超过１５年之久的信息追溯企业，８０％的客户为世界５００强企业。２０１２年年底，公司根据以前的一些追溯技术，并结合酒类企的特征，在政府支持下，打造了上海追溯酒品信息中心这一平台。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">依托多年的产品追溯实际操作经验，上海追溯酒品信息中心努力打造一个集现代物联网、云数据中心技术的酒类商品追溯信息咨询、酒文化传播及智能营销推广平台，有效地将品牌宣传推广、消费者互动、精准营销融合进追溯服务之中。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;商报记者在采访过程中了解到，上海追溯酒品信息中心的服务重心定位在为酒企提供最直观的追溯打假服务，实现点对点的追溯，即酒厂到消费者的两点追溯。通过手机ＡＰＰ、网站以及中国电信１１４呼叫中心为酒企进行品牌宣传服务，包括品牌渊源介绍、酒品知识及信息、经销商地理信息资料等，真正调动消费者互动积极性，采用精准营销的方式以有效促进销售。为酒商酒企建立与消费者的互动模式，通过数据挖掘做到精准营销。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">同时，上海追溯酒品信息中心还为政府监管及行业规范提供有效的辅助作用，致力于解决市场上的酒品真假难辨、价格虚高以及信息不对称的问题。这也是将消费者逐渐转变成为市场的守护者的一次实践和探索。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">通过将近一年的时间，上海追溯酒品信息中心已经完成了数据的开发、系统的集成、市场的推广等。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">上海追溯酒品信息中心总裁赵兵告诉商报记者，上海追溯酒品信息中心提供全社会、全方位的追溯打假服务，为每一瓶酒赋予“身份证”，实现对酒品的精细化管理。“我们利用物联网技术，建立覆盖全流通领域的产品信息监控网络，同时，实时数据采集分析，及时把握渠道及市场最新咨询，预警、报警，有效防范可能发生的市场风险。”</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-weight:bold;font-size:12px;font-family:&#39;微软雅黑&#39;\">资源优势：拥有股东、成本及公信力三大优势</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">据上海追溯酒品信息中心方面介绍，上海追溯酒品信息中心的股东之一为励元科技。励元科技是世界领先的产品全链追踪解决方案提供商，服务于全球５００强企业（如：雀巢、飞利浦、大众、杜邦、三菱、三星、强生等）和国内知名企业（如：中粮、中国盐业、中国化工、中石油等）；另一方面，中国电信为上海追溯酒品信息中心的战略合作伙伴。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">中心方面认为：“励元科技可确保上海追溯酒品信息中心的技术先进和领先。拥有１．２亿用户及５０００多家商户的中国电信则可以与中心进行资源共享，同时确保可覆盖全国的客户呼叫中心服务。这样的股东优势是一般追溯公司无法比拟的。”</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">此外，上海追溯酒品信息中心还拥有两大优势——成本优势及公信力优势。商报记者在采访过程中了解到，中心是上海市政府特许成立的追溯服务提供商，为酒商酒企提供服务，由于规模性，所以在成本上相比酒企单独采购追溯服务有较大的优势。同时，由于独立于酒企本身，所以上海追溯酒品信息中心具有较高的公信力。这也是大多数追溯公司无法模仿的。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-weight:bold;font-size:12px;font-family:&#39;微软雅黑&#39;\">商业模式：为酒企提供解决方案及品牌推广&nbsp;&nbsp;&nbsp;&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">上海追溯酒品信息中心拥有独特的创新型商业模式，公司不仅可提供一般追溯公司可提供的服务，同时有效地实现将品牌宣</span></p><p><br/></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">传推广、消费者互动、精准营销融合进追溯服务之中。这是现有追溯公司模式中不会涉及的元素。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">具体而言，上海追溯酒品信息中心为酒企提供基于ＲＦＩＤ、二维码、条码等各种类型追溯技术的解决方案，实现酒品一件一码，对单个酒品赋予“身份证”，不仅有着防伪作用，还有追溯作用。而以前酒瓶上的防伪码不能做到每一瓶酒有一张“身份证”，而且之前的防伪码仅仅只有防伪的作用。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">据上海追溯酒品信息中心总裁赵兵介绍，目前，中心的盈利模式主要是帮助企业提供外包的系统开发与收集。“我们根据每家酒企的不同的需求，如大数据的挖掘采集与营销、仓储物流管理、真伪防伪管理，提供不同的解决方案，从中收取服务费。企业可以买断这套解决方案，也可以进行租赁。”</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">“酒企开发这类系统的成本很贵，他们也没有采集大数据的能力。而我们作为第三方平台，根据多年的系统开发经验以及数据采集经验，为酒企量身定制一套解决方案。”赵兵表示。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">同时，上海追溯酒品信息中心也可以为酒企进行智能推广，提升酒企、酒商品牌价值，抢占市场先机。公司特有的智能推广系统帮助企业实现精准营销并提高客户粘度，通过对渠道、消费数据的实时采集分析，帮助企业及时把握市场动向。另外，公司拥有的第三方公信力平台认证则可提升企业品牌价值及市场认知度。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">自上海追溯酒品信息中心成立以来，国内的白酒生产企业古井贡酒以及国外的卡斯特红酒酒庄产区、法国波尔多红酒酒庄产区等都已经加入了上海追溯酒品信息中心这一平台。　</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">从另一方面来看，上海追溯酒品信息这样一个平台满足了政府、企业以及消费者三方面的需求。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">“因为政府要对酒品市场的生产、流通、安全进行监督、数据采集等，企业则需要打假、防窜货，消费者则需要利用简单的工具来进行真伪识别、了解到酒品价格是否虚高、信息是否对称等。”上海追溯酒品信息中心总裁赵兵称：“我们是为三方搭建了这样一个平台，提供酒品信息追溯的解决方案。”</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\"><br/></span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=24&width=475&height=373&water=1\" title=\"3b933a45f5.jpg\" alt=\"图片13.jpg\" id=\"OmWeb_img_24\"/></p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('8', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">贝恩美是国内领先的婴童食品和服务厂商，年销售额超过60亿元。贝恩美是消费者心中的最佳国产奶粉品牌之一，具有较高的市场知名度。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">在近期升级项目实施过程中，WinSafe工程人员为了保证工厂正常生产，联系两周在工厂晚上下班后进行设备相关的升级和调整。终于保质保量的在规定时间之前完成了所有生产线的升级改造，获得了公司上下一致好评，并被授予“2012年度供应保障奖”</span></p><p><br/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=25&width=635&height=752&water=1\" title=\"b82ca1e165.jpg\" alt=\"图片14.jpg\" id=\"OmWeb_img_25\"/></p><p><br/></p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('9', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">作为全球领先的植保产品品牌，杜邦植保与WinSafe已经进行多年愉快的项目合作。</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe主导实施的行业内最领先的“四码合一”防伪防窜货系统，帮助杜邦植保在市场销售管理方面取得了很大的进步。也正因为此，WinSafe近期获得了有杜邦总部授予的“杰出贡献奖”。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=26&width=745&height=786&water=1\" title=\"7e82816c13.jpg\" alt=\"图片15.jpg\" id=\"OmWeb_img_26\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('10', '1', '2', '<p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">美国哈佛商业杂志发表的调研报告指出：“公司若能降低5%的客户流失率，就能增加25%&nbsp;~&nbsp;85%的利润，在赢得客户回头的众多因素中，首是服务质量的好坏，其次是产品质量的好坏，最后才是价格的高低。”由此可见，在如今无时无刻不充斥着竞争与机遇的经济市场，能在这样复杂的环境中牢牢地抓住机遇，更好地生存下去，服务质量是其中的重要制胜法宝之一。WinSafe深知不稳定的服务质量，对消费者而言如同冒险；唯有稳定优质的服务，才能让消费者对公司产生依赖感，从而获得长期发展。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">在今年9月的董事长寄语中，陈总（WinSafe&nbsp;CEO）注重强调了优质服务的重要性并安排了为期三天的“完美客服培训课程”。本次培训主要围绕：公司产品及相关业务、电话服务技巧5W2H法、客服艺术、如何处理客户投诉、客服人员压力缓解的技巧与方法五大主题展开。在培训过程中客服部同事们全身心投入，多次与指导老师积极探讨工作中遇到的问题，从而获得更多的启发。通过此次的专业培训，客服部同事们不仅获取了大量的专业知识，同时也认清了自身服务水平与卓越服务之间的差距。会后，大家纷纷都树立了个人目标，例如：接电话要快，铃声响三声要接起；态度要恭谦，培养积极地服务态度；树立不说“不”的服务和不说“他们”只说“我们”的责任承担理念</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">……</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">获得了陈总的高度肯定，培训效果令人满意。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">客服人员每一次与客户的交流都是一次心与心的沟通，都需要拥有全面的专业知识以及真诚的服务态度。在未来的工作中，WinSafe将会不断为客服部门提供更好的工作环境以及更多的学习机会，并开启评选活动，努力打造完美客服，为每一位客户提供更优质的服务！</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=27&width=1024&height=1018&water=1\" title=\"f284f22e53.jpg\" alt=\"图片16.jpg\" id=\"OmWeb_img_27\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('11', '1', '2', '<p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">2014</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">年10月30日，</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">产品全链追溯行业的领导者</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">——</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe励元科技</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">正式推出了改版后的官方网站，对企业形象又一次</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">全新的</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">诠释及延伸。改版后的网站在秉承</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">一贯的“稳重、专业、</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">创新</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">”的企业形象的同时，在风格上也</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">发生了巨大的变化</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">此次改版除了重新定位</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">更改</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">网站视觉风格外，还对网站的栏目、功能进行了重新划分，并增加了大量有价值的新内容，力求让客户更快、更便捷、更全面地了解</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe最新</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">动态。改版后的网站主要分为五大版块，包括“</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">产品中心</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">”、“解决方案”、“</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">新闻中心</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">”、“</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">科技与创新</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">”以及“</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">社区活动</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">”。其中，内容更为丰富的“解决方案”版块，将帮助客户更加全面和系统地了解</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe产品全链溯源服务</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">;而详细且</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">丰富多彩</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">的</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">“社区活动”</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">也成为改版后的一大亮点，充分体现了</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">在</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">产品全链追溯</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">领域为社会</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">所做的贡献。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">还有</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">值得一提的是，改版后的网站集成了更为多样的人性化展现形式。例如，“</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">产品中心</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">”版块，在保留原有的丰富内容的基础上，进一步扩大了用户与</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">我们</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">之间的互动方式，</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">通过用户的使用感想、用户寄语等，</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">提升了网站的活跃度</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">；</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">简洁并易于浏览的前台界面则不仅为用户带来了更好的阅读</span><a href=\"http://search.yesky.com/search.do?wd=%CC%E5%D1%E9\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">体验</span></a><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">，操作使用也更方便快捷。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">一贯坚持“以客户为中心”的公司</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">服务</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">理念，此次官方网站的改版，在强化企业形象的同时，更从用户的实际体验出发，大大增强了网站的可用性。相信通过改版后的全新网站，</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">不仅将与客户分享更多先进的公司理念以及优秀的产品、技术和解决方案，更希望借助这一互动平台，帮助客户及合作伙伴开拓行业商机、扩展新业务，提升企业核心竞争力。</span></p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('12', '1', '2', '<p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">明月几时有？把酒问青天。又到中秋佳节时，公司祝各位员工及家属中秋快乐，愿大家：</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">梦想圆圆都实现，成功圆圆舞翩跹</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">！</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">公司为了感谢全体员工为公司长期以来的辛勤付出，也让在外打工的游子感到佳节温馨与家的温暖，在这红枫秋韵之际，公司邀您来一场浪漫邂逅！&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">具体活动如下：</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">活动对象：公司全体员工</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">礼品标准：中国大陆地区哈根达斯礼品卡1张</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=28&width=407&height=282&water=1\" title=\"3220ae1f9b.png\" alt=\"图片17.png\" id=\"OmWeb_img_28\"/></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">发放时间：8月15日——8月22日之间统一发放，请各位同仁有序进行领取。</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">带上WinSafe的祝福，爱她就带他去吃哈根达斯吧~</span></p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('13', '1', '2', '<p><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">历时三个多月的飞利浦可持续发展项目随着SGS审核结束也落下了帷幕，最终的审核结果获得了Philips的高度肯定。</span></p><p><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">EICC审核主要包括五大体系：</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">一、&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">劳工：</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">包含自由选择职业、禁止使用童工、工作时间、工资于福利、不歧视、自由结社，使员工得到国际社会所共识的尊重和尊严。</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">二、&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">健康与安全：</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">包含职业安全、应急准备、职业伤害与疾病、工业卫生、体力要求高的工作、机器防护、公共卫生，从而使得员工尽量减少与工作有关的事故和疾病外，也为员工提供了安全、健康的工作环境。</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">三、&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">环境：</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">包含环境许可报告、预防污染和节约资源、有害物质的安全处理、废水固体废弃物的处置、空气排放，确保工厂在生产过程中尽量减少对社会、环境、自然资源造成不利影响，同时保护公众的健康和安全。</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">四、&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">道德规范：</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">包含廉洁经营、无不正当收益、信息公开、知识产权、公平交易、身份保密、保护隐私、杜绝打击报复，确保工厂履行社会职责并在市场上获取成功。</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">五、&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">管理体系</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">包含公司的承诺、管理职责与责任、法律和客户的要求、风险评估和风险管理、改进目标、培训、沟通、工人反馈与参与、审核与评估、校正措施、文件和记录、供应商责任，促使工厂建立完整的管理突袭。</span></p><p style=\"margin-left: 91px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">回顾此次审核，工厂在硬件方面发生了巨大的改进：完成危化品中间室的建立；获取了3张经过红十字培训的急救人员的证书，这项还开创了梅村的先例；完成空气净化系统的安装及检测；安装好暴露在外的齿轮的防护罩；所有的液体化学品均做到了二次防泄漏</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">……</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">为此项目共投入总资金约为110万。工厂文件方面，我们围绕5大模块（劳工、健康安全、环境、道德、管理体系）共完成了133份相关文件制度，大大完善了工厂的管理制度，以至于获得了SGS审核人员的高度称赞！通过对工厂工人的培训，无论是思想教育还是行为规范也都得到了巨大的提高。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">虽然此次审核我们获得了令人满意的结果，但在审核过程中也了解到了不足之处，我们还有可以进步的空间。因此对于WinSafe来说，可持续发展并不是一次单纯的审核、一句口号，而是一种使命，是WinSafe对社会的承诺！我们将坚持不懈的锐意进取！</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=29&width=897&height=507&water=1\" title=\"095fb25273.jpg\" alt=\"图片18.jpg\" id=\"OmWeb_img_29\"/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=30&width=896&height=506&water=1\" title=\"50358c72df.jpg\" alt=\"图片19.jpg\" id=\"OmWeb_img_30\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('14', '1', '2', '<p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">为了进一步提高员工学习英语的兴趣、口语的表达能力；同时营造健康向上、积极进取的学习氛围，WinSafe不仅为员工同时也为爱好英语口语交流的朋友们搭建一个施展才华、提高英语能力的平台，准备了一系列丰富多彩的英语教活动。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe市场部将更热情、更轻松、更用心的投入，欢迎新Fans的参与，Please&nbsp;join&nbsp;us！</span></p><p style=\"text-indent: 43px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-weight:bold;font-size:12px;font-family:&#39;微软雅黑&#39;\">本期主题：黄金周</span></p><p style=\"text-indent: 43px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-weight:bold;font-size:12px;font-family:&#39;微软雅黑&#39;\">活动对象、时间及地点：</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">活动对象：所以WinSafe员工及热爱英语口语的朋友们；</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">活动时间：每周五下午5:00-6:00；</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">活动地点：WinSafe上海总部（浦东新区张江高科技园区祖冲之路2277号12号楼）。</span></p><p style=\"text-indent: 43px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-weight:bold;font-size:12px;font-family:&#39;微软雅黑&#39;\">报名方式：</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">邮箱：</span><a href=\"mailto:Chris.li@winsafe.cn\"><span style=\"color: rgb(0, 0, 255);letter-spacing: 1px;font-size: 12px;font-family: 微软雅黑\">Chris.li@winsafe.cn</span></a><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;邮件请写明参与英语角，谢谢！</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">联系电话：68879030*2551</span></p><p style=\"text-indent: 43px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-weight:bold;font-size:12px;font-family:&#39;微软雅黑&#39;\">表达形式：不限（如需道具，请提前通知WinSafe市场部或自备）</span></p><p style=\"text-indent: 43px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">报名参与者请携带您的名片。谢谢！</span></p><p style=\"text-indent: 43px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe期待与你相遇！</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=31&width=680&height=510&water=1\" title=\"a5c317aacd.jpg\" alt=\"图片20.jpg\" id=\"OmWeb_img_31\"/></p><p><br/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=32&width=681&height=511&water=1\" title=\"e2e3ae539d.jpg\" alt=\"图片21.jpg\" id=\"OmWeb_img_32\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('15', '1', '2', '<p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">在市场经济快速发展，企业间竞争日趋激烈的今天，产品质量对于一家企业的重要性日益明显。保证产品质量等同于保证企业占有市场。然而，当今我国的产品质量安全仍旧多次遭受打击，</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">国家检测标准的</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">产品</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">安全已经不能满足人们的需求,质量认证也仅仅是流程的认证……</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">因此，如何从根源上打击假冒伪劣产品？</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">一旦出现</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">产品</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">安全问题，有关部门可以迅速做出反应，区分出问题</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">产品</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">，保护企业信誉，将危害减到最小</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">？等等问题都已必须受到每一位企业管理者的重视。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe，作为一家具有高度社会责任感的企业，为生产企业提供了全新的对供应链实施全程监管、过程掌控的有效企业运营管理系统New&nbsp;IS，帮助企业解决打假防伪、追溯召回、库存管理、分销管理、</span><a href=\"http://www.acctrue.com/anti-channel.html\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">防窜货</span></a><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">管理、流向管理、产品数据管理等方面的问题，同时通过短信中心、微信等真正做到实时掌控，移动商务，从而提升企业形象，保护产品质量。</span></p><p><br/></p><p style=\"text-indent: 43px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">关于New&nbsp;IS系统开发者的</span><span style=\";letter-spacing:1px;font-weight:bold;font-size:12px;font-family:&#39;微软雅黑&#39;\">新创意</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">：</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">l&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">让繁复的数据以图形化的方式展现，使使用者更直观的了解当前信息，让枯燥的数据成为悦动的音符。</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\"><br/></span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=37&width=206&height=136&water=1\" title=\"820e68f204.png\" alt=\"图片22.png\" id=\"OmWeb_img_37\"/></span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><br/></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">l&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">细节决定体验，全新的界面，扁平化的界面设计风格，为传统的界面增添色彩，让一切更惊艳。</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\"><br/></span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=38&width=529&height=271&water=1\" title=\"4b024406da.png\" alt=\"图片23.png\" id=\"OmWeb_img_38\"/></span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing: 1px; font-size: 12px; font-family: Wingdings;\"><br/></span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing: 1px; font-size: 12px; font-family: Wingdings;\">l </span><span style=\"letter-spacing: 1px; font-size: 12px; font-family: 微软雅黑;\">个性化设置给您提供更便捷的操作。快捷配置功能提高工作效率给从一而终的模块搬个家，更具创新精神。</span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing: 1px; font-size: 12px; font-family: 微软雅黑;\"><br/></span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing: 1px; font-size: 12px; font-family: 微软雅黑;\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=39&width=733&height=485&water=1\" title=\"35832e1731.png\" alt=\"图片24.png\" id=\"OmWeb_img_39\"/></span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing: 1px; font-size: 12px; font-family: 微软雅黑;\"><br/></span></p><p style=\"margin-left: 71px;margin-top: 0;margin-bottom: 0\"><br/></p><p style=\"text-indent: 24px;margin-top: 0;margin-bottom: 0\"><span style=\"position:absolute;z-index:1;left:0px;margin-left:413.8667px;margin-top:780.0000px;width:343.0000px;height:227.0000px\"><img width=\"343\" height=\"227\" src=\"/member/ueditor142/themes/default/images/spacer.gif\" word_img=\"file:///C:\\Users\\omooo\\AppData\\Local\\Temp\\ksohtml\\wps8ECF.tmp.png\" style=\"background:url(/member/ueditor142/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd\"/></span><span style=\"position:absolute;z-index:1;left:0px;margin-left:413.8667px;margin-top:780.0000px;width:343.0000px;height:227.0000px\"><img width=\"343\" height=\"227\" src=\"/member/ueditor142/themes/default/images/spacer.gif\" word_img=\"file:///C:\\Users\\omooo\\AppData\\Local\\Temp\\ksohtml\\wps8EDF.tmp.png\" style=\"background:url(/member/ueditor142/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd\"/></span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe全力辅助开发者，只为更好地保卫产品安全！&nbsp;</span></p><p style=\"margin-left: 71px; margin-top: 0px; margin-bottom: 0px;\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\"></span></p>');
INSERT INTO `om_1_news_data_0` VALUES ('16', '1', '2', '<p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">在春意盎然的季节，WinSfe&nbsp;2014销售培训会议在苏州雍景山庄圆满落幕。通过为期三天的培训让所有参与人员对公司未来的发展计划有了更好地了解，并且引导员工与公司一同发展，从而增强团队凝聚力，提高企业的整体效益。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">俗话说锯用久了会钝，只有重新磨后才会锋利再现。作为一名优秀的销售人员，必须要不断加强学习，提升自身水平，及时吸取专业知识，才能不断取得成功。会议上，销售人员与培训导师积极互动。通过阶段性小测试，也大大提升了培训效果，使销售人员对公司业务及产品有了更深层次的了解，提高了未来在销售过程中向客户介绍展示WinSafe业务产品的能力。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">会后，各位领导们还参与了团队活动，与员工一同感受了中国江南最美山庄带来的轻松惬意。所有的与会人员也都感受到了来自领导们的深切关怀。在此，衷心祝愿WinSfe所有销售人员都能完成个人的销售目标及公司未来的发展规划。加油WinSafe！&nbsp;</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=40&width=570&height=372&water=1\" title=\"b570c771db.jpg\" alt=\"图片25.jpg\" id=\"OmWeb_img_40\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('17', '1', '2', '<p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">多年来，在企业产品防伪追溯领域一中直存在很多技术，但是其中大多存都在一个问题，如何使消费者能够快速准确的进行真伪识别，并且其技术具备&nbsp;易识别、私密性强、易传播&nbsp;等特性？</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">WinSafe！作为企业品牌安全保护卫士，推出的“V”号码使企业拥有独一无二的防伪追溯短信号，有效提高识别度，从而为企业解决这一困扰！</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">“V号码”三个唯一，使企业拥有专属防伪追溯短信号：</span></p><p style=\"margin-left: 28px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">三网合一,让查询更快捷。</span></p><p style=\"margin-left: 28px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">全面覆盖电信、移动、联通，便于消费者进行快速查询、辨别与防伪同时还可以帮助企业解决商品溯源，防止串货回货等流通问题。&nbsp;&nbsp;</span></p><p style=\"margin-left: 28px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">上下行同一，营造健康市场氛围。</span></p><p style=\"margin-left: 28px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">从技术上更加严格规范企业短信应用，有助于企业用户建立诚信服务机制，便于监管部门监督短信息应用企业的经营行为。</span></p><p style=\"margin-left: 28px;margin-top: 0;margin-bottom: 0\"><span style=\"letter-spacing:1px;font-size:12px;font-family:&#39;Wingdings&#39;\">Ø&nbsp;</span><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">企业代码唯一，更具识别度</span></p><p style=\"margin-left: 28px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">号码可独享，为企业获得更高公信力！不同号码可独立分配给客户,让企业短信服务更具公信力，积极引导移动信息行业朝着健康的方向发展！</span></p><p style=\"margin-left: 28px;margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">多种套餐选择，让不同更有料！</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=41&width=799&height=378&water=1\" title=\"4e4650c697.png\" alt=\"4e4650c697.png\" id=\"OmWeb_img_41\" width=\"799\" height=\"378\" border=\"0\" vspace=\"0\" style=\"width: 799px; height: 378px;\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('18', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">最近几年随着生活慢慢提高，人们也在慢慢提高自身的生活质量！提倡“绿色生活”“健康生活”，WinSafe为了加强人们对健康生活的认识和了解！正在准备“绿色菜园&nbsp;健康生活”主题活动！</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">“绿色菜园&nbsp;健康生活”这个活动，Winsafe会在上海选取一个农家地，种植一些蔬菜参考Winsafe总公司阳台植物种植来进行种植！届时会邀请我们的客户进行参观了解，我们会选取一些客户进行种植地分配包养！真是去感受种植绿色蔬菜的感觉，我们也会在蔬菜成熟的时节，采摘一些蔬菜以包养这块的公司名义去慰问孤寡老人！欢迎各界人士届时光临！</span></p><p><br/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=42&width=958&height=710&water=1\" title=\"0d19ae46c2.jpg\" alt=\"图片27.jpg\" id=\"OmWeb_img_42\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('19', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">随着现在网络信息时代的快速发现，微博这个线上互动工具给我们带来更多的有价值的信息！Winsafe经过前期的了解和调查为了刚好的更好地服务我们广大的客户和给大家带更多有用的信息！将于2014年3月22日正式开通“励元科技Winsafe”官方微博！</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">“励元科技Winsafe“官方微博开通后，会定时的发布一些行业新闻以及Winsafe新技术和产品的发布！可以让客户在最快的时间了解我们的新产品,可以通过在线互动和留言与我们进行交流！希望可以更好的服务大家！</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=43&width=1268&height=788&water=1\" title=\"99fd3a0ea9.jpg\" alt=\"图片28.jpg\" id=\"OmWeb_img_43\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('20', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">Winsafe2014年下半年项目管理讨论会议于8月13日正式召开，此次会议主要参加人员为技术部门和销售部门！本次会议主要围绕如何更好的服务于客户？提高项目质量和管理来进行讨论！技术部门主要提出在技术方的方面如何提高项目质量！对技术部门下半年要求更加的严格，体现出了励元科技对客户高度负责的责任心！销售部门的同事提出为了使给到客户的方案更加全面，一要注意每个细节所有方案要经过详细谈论给到客户，体现出我们的在行业的专业性！在会议上励元科技的同事踊跃发言，会使我们的更加全面专业的服务我们的客户！这次会议顺利的召开，使Winsafe接下来的工作更上一个台阶！</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=44&width=995&height=745&water=1\" title=\"96f0364c61.jpg\" alt=\"图片29.jpg\" id=\"OmWeb_img_44\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('21', '1', '2', '<p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">随着Winsafe励元科技一年一年的成长和发展，Winsafe也成为了国际性的大公司！为了适应企业规模的壮大继我们的深圳分公司后，北京分公司于2014年正式成立！</span></p><p><span style=\";font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\";letter-spacing:1px;font-size:12px;font-family:&#39;微软雅黑&#39;\">北京分公司位</span><span style=\"font-size: 12px;font-family: 微软雅黑\">于北京市朝阳区西大望路，CBD东区金角之上，南临广渠路，西接西大望路，两大交通主动脉交汇之处。</span><span style=\"font-size: 12px;font-family: 微软雅黑\">北京分公司的成立标示Winsafe的发展已经走向成熟的阶段，北京是我国的首都与Winsafe总部上海还有深圳是我们国家最重要国际性大都市，更体现出我们的国际性！</span></p><p><span style=\"font-size: 12px;font-family: 微软雅黑\">&nbsp;</span></p><p><span style=\"font-size: 12px;font-family: 微软雅黑\">北京的市场对于Winsafe是一个重要的发展对象，而且有许多我们合作的客户有一部分来自北京！为了刚好的发展北京市场，我们在北京分公司派入了我们最专业的技术和销售人才！为了更好地建立和客户的合作Winsafe总部会给出最好的支持！相信北京分公司会遵循Winsafe核心价值“创新&nbsp;&nbsp;完美的服务&nbsp;&nbsp;职业道德”更好地发展下去，成为励元最美的一道风景！</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=45&width=840&height=583&water=1\" title=\"2f7be86687.jpg\" alt=\"图片30.jpg\" id=\"OmWeb_img_45\"/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('22', '1', '2', '<p><span style=\"font-size: 12px;font-family: 微软雅黑\">微信是在微博和QQ互动平台以，发展最快的一个互动平台！为了更好地服务于广大的客户，“winSafe励元科技“官方微信将于今年十月份正式开通！</span></p><p><span style=\";font-weight:bold;font-size:12px;font-family:&#39;微软雅黑&#39;\">&nbsp;</span></p><p><span style=\"font-size: 12px;font-family: 微软雅黑\">我们的官方微信设有“W官网”、“W资讯”、“W助理”三个菜单！在“W官网”我们加入了公司的最新介绍，还有我们的技术方案和客户案例，以及励元科技的新闻！这些内容可以让广大的客户更加深入了解我们和产品方案,让您可以更加的放心与我们合作！后期我们也加入一些更加多的内容方便对我们公司的了解！“W资讯”中我们放入了我们新的资讯信息，让您可以了解到我们最新发展！像“新产品”、“新技术”、“新方案”会显示我们在追踪追溯方面最新的发布，“最新闻”也会给大家带来最新的及时资讯！在“W助理”中主要是为了给大家提供更多的帮助，我们放入了“验证平台”、“微问卷”、</span><span style=\"font-size: 12px;font-family: 微软雅黑\">“</span><span style=\"font-size: 12px;font-family: 微软雅黑\">微招聘”、“联系我们”模块，给客户提供了查询验证的功能，我们通过“微问卷”的形式可以更好地了解到客户的需求和难题，这样有利于我们更完善的服务客户！我们放入的招聘内容，希望能有能之士来我司共同发展！</span></p><p><span style=\"font-size: 12px;font-family: 微软雅黑\">&nbsp;</span></p><p><span style=\"font-size: 12px;font-family: 微软雅黑\">“WinSafe励元科技”公众微信平台的开通，将会更大限度服务客户提高WinSafe的影响度！给大家带更多便利！希望大家踊跃关注！</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=46&width=507&height=672&water=1\" title=\"f9915d482a.png\" alt=\"图片31.png\" id=\"OmWeb_img_46\"/></p><p><br/></p>');

-- ----------------------------
-- Table structure for om_1_news_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_extend_index`;
CREATE TABLE `om_1_news_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_news_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_extend_verify`;
CREATE TABLE `om_1_news_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_news_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_0`;
CREATE TABLE `om_1_news_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_1`;
CREATE TABLE `om_1_news_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_2`;
CREATE TABLE `om_1_news_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_3`;
CREATE TABLE `om_1_news_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_4`;
CREATE TABLE `om_1_news_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_5`;
CREATE TABLE `om_1_news_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_6`;
CREATE TABLE `om_1_news_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_7`;
CREATE TABLE `om_1_news_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_8`;
CREATE TABLE `om_1_news_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_9`;
CREATE TABLE `om_1_news_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_flag`;
CREATE TABLE `om_1_news_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_news_flag
-- ----------------------------
INSERT INTO `om_1_news_flag` VALUES ('1', '12', '1', '2');
INSERT INTO `om_1_news_flag` VALUES ('1', '13', '1', '2');
INSERT INTO `om_1_news_flag` VALUES ('1', '14', '1', '2');
INSERT INTO `om_1_news_flag` VALUES ('1', '15', '1', '2');
INSERT INTO `om_1_news_flag` VALUES ('1', '16', '1', '2');
INSERT INTO `om_1_news_flag` VALUES ('1', '20', '1', '2');
INSERT INTO `om_1_news_flag` VALUES ('1', '21', '1', '2');
INSERT INTO `om_1_news_flag` VALUES ('1', '22', '1', '2');

-- ----------------------------
-- Table structure for om_1_news_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_form`;
CREATE TABLE `om_1_news_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_news_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_html`;
CREATE TABLE `om_1_news_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_news_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_index`;
CREATE TABLE `om_1_news_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_news_index
-- ----------------------------
INSERT INTO `om_1_news_index` VALUES ('1', '1', '2', '9', '1419479839');
INSERT INTO `om_1_news_index` VALUES ('2', '1', '2', '9', '1419480302');
INSERT INTO `om_1_news_index` VALUES ('3', '1', '2', '9', '1419480361');
INSERT INTO `om_1_news_index` VALUES ('4', '1', '2', '9', '1419480431');
INSERT INTO `om_1_news_index` VALUES ('5', '1', '3', '9', '1419480487');
INSERT INTO `om_1_news_index` VALUES ('6', '1', '2', '9', '1419482478');
INSERT INTO `om_1_news_index` VALUES ('7', '1', '3', '9', '1419482528');
INSERT INTO `om_1_news_index` VALUES ('8', '1', '2', '9', '1419482589');
INSERT INTO `om_1_news_index` VALUES ('9', '1', '2', '9', '1419482645');
INSERT INTO `om_1_news_index` VALUES ('10', '1', '2', '9', '1419482679');
INSERT INTO `om_1_news_index` VALUES ('11', '1', '2', '9', '1419482713');
INSERT INTO `om_1_news_index` VALUES ('12', '1', '2', '9', '1419482746');
INSERT INTO `om_1_news_index` VALUES ('13', '1', '2', '9', '1419482820');
INSERT INTO `om_1_news_index` VALUES ('14', '1', '2', '9', '1419482876');
INSERT INTO `om_1_news_index` VALUES ('15', '1', '2', '9', '1419482934');
INSERT INTO `om_1_news_index` VALUES ('16', '1', '2', '9', '1419483541');
INSERT INTO `om_1_news_index` VALUES ('17', '1', '2', '9', '1419483577');
INSERT INTO `om_1_news_index` VALUES ('18', '1', '2', '9', '1419483658');
INSERT INTO `om_1_news_index` VALUES ('19', '1', '2', '9', '1419484284');
INSERT INTO `om_1_news_index` VALUES ('20', '1', '2', '9', '1419489474');
INSERT INTO `om_1_news_index` VALUES ('21', '1', '2', '9', '1419489513');
INSERT INTO `om_1_news_index` VALUES ('22', '1', '2', '9', '1419489575');

-- ----------------------------
-- Table structure for om_1_news_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_search`;
CREATE TABLE `om_1_news_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_news_search
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_tag`;
CREATE TABLE `om_1_news_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_news_tag
-- ----------------------------
INSERT INTO `om_1_news_tag` VALUES ('1', '王老吉', 'wanglaoji', '0');
INSERT INTO `om_1_news_tag` VALUES ('2', '山西', 'shanxi', '0');
INSERT INTO `om_1_news_tag` VALUES ('3', '项目', 'xiangmu', '0');
INSERT INTO `om_1_news_tag` VALUES ('4', '管理系统', 'guanlixitong', '0');
INSERT INTO `om_1_news_tag` VALUES ('5', '商务', 'shangwu', '0');
INSERT INTO `om_1_news_tag` VALUES ('6', '中国', 'zhongguo', '0');
INSERT INTO `om_1_news_tag` VALUES ('7', '圣元乳业', 'shengyuanruye', '0');
INSERT INTO `om_1_news_tag` VALUES ('8', '身份证', 'shenfenzheng', '0');
INSERT INTO `om_1_news_tag` VALUES ('9', '上海', 'shanghai', '0');
INSERT INTO `om_1_news_tag` VALUES ('10', '信息', 'xinxi', '0');
INSERT INTO `om_1_news_tag` VALUES ('11', '一瓶', 'yiping', '0');
INSERT INTO `om_1_news_tag` VALUES ('12', '中心', 'zhongxin', '0');
INSERT INTO `om_1_news_tag` VALUES ('13', '专业', 'zhuanye', '0');
INSERT INTO `om_1_news_tag` VALUES ('14', '约会', 'yuehui', '0');
INSERT INTO `om_1_news_tag` VALUES ('15', '协同', 'xietong', '0');
INSERT INTO `om_1_news_tag` VALUES ('16', '哑巴英语', 'yabayingyu', '0');
INSERT INTO `om_1_news_tag` VALUES ('17', '英语角', 'yingyujiao', '0');
INSERT INTO `om_1_news_tag` VALUES ('18', '产品', 'chanpin', '0');
INSERT INTO `om_1_news_tag` VALUES ('19', '销售培训', 'xiaoshoupeixun', '0');
INSERT INTO `om_1_news_tag` VALUES ('20', '健康生活', 'jiankangshenghuo', '0');
INSERT INTO `om_1_news_tag` VALUES ('21', '微博', 'weibo', '0');
INSERT INTO `om_1_news_tag` VALUES ('22', '项目管理', 'xiangmuguanli', '0');
INSERT INTO `om_1_news_tag` VALUES ('23', '分公司', 'fengongsi', '0');
INSERT INTO `om_1_news_tag` VALUES ('24', '北京', 'beijing', '0');

-- ----------------------------
-- Table structure for om_1_news_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_verify`;
CREATE TABLE `om_1_news_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_news_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_page
-- ----------------------------
DROP TABLE IF EXISTS `om_1_page`;
CREATE TABLE `om_1_page` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL COMMENT '模块dir',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(255) NOT NULL COMMENT '单页名称',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL COMMENT '是否有子类',
  `childids` varchar(255) NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `title` varchar(255) NOT NULL COMMENT 'seo标题',
  `keywords` varchar(255) NOT NULL COMMENT 'seo关键字',
  `description` varchar(255) NOT NULL COMMENT 'seo描述',
  `content` mediumtext COMMENT '单页内容',
  `attachment` text COMMENT '附件信息',
  `template` varchar(30) NOT NULL COMMENT '模板文件',
  `urlrule` smallint(5) unsigned DEFAULT NULL COMMENT 'url规则id',
  `urllink` varchar(255) NOT NULL COMMENT 'url外链',
  `getchild` tinyint(1) unsigned NOT NULL COMMENT '将下级第一个菜单作为当前菜单',
  `show` tinyint(1) unsigned NOT NULL COMMENT '是否显示在菜单',
  `url` varchar(255) NOT NULL COMMENT 'url地址',
  `setting` mediumtext NOT NULL COMMENT '自定义内容',
  `displayorder` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`module`),
  KEY `pid` (`pid`),
  KEY `show` (`show`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='单页表';

-- ----------------------------
-- Records of om_1_page
-- ----------------------------
INSERT INTO `om_1_page` VALUES ('1', '', '0', '0', '关于我们', 'guanyuwomen', '', '1', '1,2,3,4', '', '', '', '', null, null, 'page.html', '0', '', '1', '1', 'http://liyuan.in/index.php?c=page&id=1', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('2', '', '1', '0,1', '公司简介', 'gongsijianjie', 'guanyuwomen/', '0', '2', '1', '', '', '', '<p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\"></span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">公司简介</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">（励元科技）成立于</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">1997</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">年，作为世界领先的</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">“</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">产品全链追踪</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">解决方案提供商</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">”</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">服务全球<span style=\"font-family:Arial\">500</span><span style=\"font-family:宋体\">强企业（如雀巢</span></span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Nestle</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">、飞利浦</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Philips</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">、大众</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Volkswagen</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">、杜邦</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">DuPont</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">三菱</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">MITSUBISHI</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">、三星<span style=\"font-family:Arial\">SAMSUNG</span><span style=\"font-family:宋体\">、</span></span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">巴斯夫</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">BASF</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">强生</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Johnson</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">拉法基</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Lafarge</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">、住友化学</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Sumitomo</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">、伊顿</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">EATON</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">等）和国内知名企业（如</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">中粮、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">中</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">国</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">盐业、中国化工、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">中石油、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">中国农</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">资</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">等）</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">！</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">目标</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">通过创新服务、勤恳务实，努力成为最具有创新的企业，并在所服务的市场和社会成为倍受推崇的合作伙伴！</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">核心业务</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">定位于为全球性的客户提供专业的服务，如：产品防伪管理、产品追踪追溯管理、食品全链管理、物料质量追溯管理、生产过程跟踪管理、产品召回管理、追踪咨询服务，以及订单管理、仓储配送管理、分销渠道管理、零售商管理、消费者管理、费用和绩效管理、促销积分会员管理等。</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">核心优势</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">通过更多的应用扩展技术，如生产线赋码系统、防伪物流查询平台、短信平台、呼叫平台、防伪技术、条码技术、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">GPS</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">RFID</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">OCR</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">等创新专利技术，为客户提供更全面的商品信息服务。</span></p><p style=\";line-height:21px\"><span style=\";letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">核心价值</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">♦</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">创新</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;Inspiration</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">♦</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">完美的客户服务</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Total&nbsp;customer&nbsp;satisfaction</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">♦</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">职业道德</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;Moralities</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\"><br/></span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">知道，要实现该价值，需要不断提高自身文化、诚恳负责、创新发展。同时，我们和客户、供应商伙伴精诚合作、开诚布公，在任何情况下绝不妥协对核心价值的改变！</span><span style=\"font-family: Arial; font-size: 12px; letter-spacing: 0px;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">客户</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">帮助客户保证商品信息化的有效运作和提高商品的附加值而声誉卓著！不论是新兴企业还是传统公司，我们都为其提供战略性解决方案和本土化服务。</span><span style=\"font-family: Arial; font-size: 12px; letter-spacing: 0px;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">员工</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">充满创造力和精力充沛的员工对于</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">的成功至关重要，公司创造公平、和谐地环境，尊重员工及家庭，我们的队伍力求专业、稳定，以确保我们的服务做到更加完美。</span><span style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 12px; letter-spacing: 0px;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">社会责任</span></p><p style=\";line-height:21px\"><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">WinSafe</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">认为，无论他身处何处，每名儿童都应拥有健康、安全的童年并接受良好的教育。因此，</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">WinSafe&nbsp;</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">支持各种短期、长期项目，旨在让儿童拥有一个良好的人生起点。</span><br/></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\"text-align: center;\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=3&width=333&height=58&water=1\" title=\"联合国儿童基金会\" alt=\"联合国儿童基金会\" id=\"OmWeb_img_3\" width=\"333\" height=\"58\" border=\"0\" vspace=\"0\" style=\"width: 333px; height: 58px;\"/></p><p><br/></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">对</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">于</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">儿童健康、营养、教育及社会、情绪和认知发展以及实现性别平等的投资不仅可促进社会公平和民主发展，而且可促进健康和提高文化程度，最终达到提升国家生产力。从另一个角度看来，对儿童发展的投资也是一件在道义上应做的事情。而且也是具有高投资回报而合理的经济投资。</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\"><br/></span></p><p style=\"text-align: center;\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=4&width=642&height=495&water=1\" title=\"教育关爱留守儿童\" alt=\"教育关爱留守儿童\" id=\"OmWeb_img_4\" width=\"642\" height=\"495\" border=\"0\" vspace=\"0\" style=\"width: 642px; height: 495px;\"/></span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\"><br/></span></p><p><br/></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">我们一直认为应该将利润用于慈善用途。通过我们微薄的力量来保障儿童的生存权利，帮助他们茁壮成长，使每个儿童都能充分发挥自身潜力。所以，长期以来，我们每年都通过与联合国儿童基金会合作的团体保持着紧密合作关系，集各方力量共同为儿童创造更美好的明天。</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">WinSafe<span style=\"font-family:宋体\">一直通过不同的途径来关爱儿童，致力于让他们拥有公平、健康的生存环境。</span></span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">公平贸易</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">一直以来，<span style=\"font-family:Arial\">WinSafe&nbsp;</span><span style=\"font-family:宋体\">都坚持公平贸易的原则。透过公平贸易，我们为供应商带来稳定及长期的收入来源，供应商从交易过程中建立更美好的未来。</span></span></p><p style=\"margin-top:7px;margin-bottom:7px;line-height:21px;background:rgb(255,255,255)\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">我们尽最大可能在产品中使用基于环保和公平贸易采购而来的原料。我们要求所有的供应商遵守支持道德交易计划的供货商行为守则，为所有原料提供详细的检测说明以确保原料的环保性。旨在改善供应链中所有工人的工作生活状况并维护他们的人权。此项守则在严格的执行与监控下，确保所有的供应商都能在童工使用、歧视、工人工资、工时与工作环境状况等议题上达到标准。</span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\"><br/></span></p><p style=\"text-align: center;\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=5&width=400&height=484&water=1\" title=\"公平贸易\" alt=\"公平贸易\" id=\"OmWeb_img_5\" width=\"400\" height=\"484\" border=\"0\" vspace=\"0\" style=\"width: 400px; height: 484px;\"/></span></p>', 'a:2:{s:4:\\\"file\\\";a:2:{i:0;s:1:\\\"1\\\";i:1;s:1:\\\"2\\\";}s:5:\\\"title\\\";a:2:{i:0;s:15:\\\"about_slider_01\\\";i:1;s:15:\\\"about_slider_02\\\";}}', 'page.html', '0', '', '1', '1', 'http://liyuan.in/index.php?c=page&id=2', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('3', '', '1', '0,1', '公司大事记', 'gongsidashiji', 'guanyuwomen/', '0', '3', '', '', '', '', '<p>公司简介公司简介</p>', '', 'page.html', '0', '', '1', '1', 'http://liyuan.in/index.php?c=page&id=3', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('4', '', '1', '0,1', '公司团队', 'gongsituandui', 'guanyuwomen/', '0', '4', '', '', '', '', '<p>公司团队公司团队公司团队</p>', '', 'page.html', '0', 'http://liyuan.in/solution/', '1', '1', 'http://liyuan.in/solution/', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('5', '', '0', '0', '联系我们', 'contact', '', '0', '5', '6', '', '', '', '<h3 style=\"line-height: 21px;\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\"></span>我们能为您提供什么？</h3><p style=\";line-height:21px\">WinSafe坚持为客户提供高质量和远见的服务，我们绝不把未经考验的方案推荐给你，一旦选择WinSafe的服务，将确保阁下投资的成功!</p><p>工作机会正是WinSafe人的无穷智慧和辛勤努力，推动了我们业务不断发展，让WinSafe 在所服务的领域中始终处于领先地位！因此，我们始终将员工视为最重要的财富，并为他们提供最佳的职业发展规划。</p><p><br/></p>', 'a:2:{s:4:\\\"file\\\";a:2:{i:0;s:1:\\\"7\\\";i:1;s:1:\\\"8\\\";}s:5:\\\"title\\\";a:2:{i:0;s:13:\\\"about_mini_01\\\";i:1;s:13:\\\"about_mini_02\\\";}}', 'contact.html', '0', '', '1', '1', 'http://liyuan.in/index.php?c=page&id=5', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');

-- ----------------------------
-- Table structure for om_1_product
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product`;
CREATE TABLE `om_1_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_product
-- ----------------------------
INSERT INTO `om_1_product` VALUES ('1', '4', '数码防伪标签', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=60&amp;width=319&amp;height=207&amp;water=1', '防伪标签', '数码防伪标签数码防伪技术融合了INTERNET计算机、移动通信、数据库、信息编码技术。系统采用无规则编码生成技术，为每件商品附属的标签设定出唯一的防伪号码，使每件商品都拥有一个数字 \"身份证\"号（即数字ID），购...', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=1', '0', '127.0.0.1', '1419824290', '1419824594', '0');
INSERT INTO `om_1_product` VALUES ('2', '4', '喷码防伪', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=62&amp;width=234&amp;height=307&amp;water=1', '防伪', '跟数码防伪技术相似，工艺不同，喷码防伪采用喷码设备在线将唯一身份的数码喷印在产品上，该技术成本低，适合大批量自动化生产线同步作业。', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=2', '0', '127.0.0.1', '1419824610', '1419824657', '0');
INSERT INTO `om_1_product` VALUES ('3', '4', '纹理防伪标签', '63', '防伪标签', '利用自然物质纹理随机这一特点，在白色纸浆中掺入黑色纤维，造出纤维随机分布的“纹理纸”，印制防伪标签，再对每一枚标签的纹理图案进行动态采集编码、存入防伪系统数据库中。消费者通过电话、互联网、传真核对标签...', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=3', '0', '127.0.0.1', '1419824672', '1419824672', '0');
INSERT INTO `om_1_product` VALUES ('4', '4', '烫金纹理防伪标签', '64', '防伪标签', '此种防伪技术不仅具有普通纹理防伪技术的全部优点，同时烫印到包装物上的纹理防伪标识，无法从包装物上剥离下来，可以防止造假者回收防伪标识，与普通纹理防伪相比，更具有不可转移性。...', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=4', '0', '127.0.0.1', '1419824731', '1419824731', '0');
INSERT INTO `om_1_product` VALUES ('5', '4', '撕揭型防伪标签', '', '防伪标签', '此种标识的显著特点在于将标识揭开后，能规则的显露出图文。留住层显现铝薄阳字时，揭去层则显现镂空阴字，阴阳相对．内容相同，大小相等，揭露图文的分辨率可高达200dPi。它具有一次使用，识别方便和仿冒困难的优点...', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=5', '0', '127.0.0.1', '1419824792', '1419824792', '0');
INSERT INTO `om_1_product` VALUES ('6', '4', '全息定位镂空防伪标签', '', '防伪标签,镂空', '此类标签是利用激光图制版技术和模压复制技术完成的防伪标识，可根据客户不同需求进行随意位置和图案的实现，它反映的光刻制版技术包括：点阵动态、3D光学微缩背景、双视觉道、多彩光学随机干涉、英文微缩文字、浮化...', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=6', '0', '127.0.0.1', '1419824805', '1419824805', '0');
INSERT INTO `om_1_product` VALUES ('7', '4', '特种油墨防伪标签', '65', '防伪标签', '光变油墨技术货币级防伪技术，印品具有绚丽金属光泽，在白光下正看或侧看，随着视角的改变，呈现两种完全不同的颜色，光变特征请，色差变化特征明显，且颜色角度效果无法用高清晰扫描设备复制。...', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=7', '0', '127.0.0.1', '1419824825', '1419824825', '0');
INSERT INTO `om_1_product` VALUES ('8', '4', '温变油墨防伪标签', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=66&amp;width=454&amp;height=230&amp;water=1', '防伪标签', '采用此油墨印刷的图案在加热到一定温度时，会改变颜色，且当热源撤离后，颜色回复，鉴别方法简单、直观。', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=8', '0', '127.0.0.1', '1419824862', '1419824921', '0');
INSERT INTO `om_1_product` VALUES ('9', '4', '发光油墨防伪标签', '67', '防伪标签', '用专用笔照射，呈现绿色发光效果', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=9', '0', '127.0.0.1', '1419824889', '1419824889', '0');
INSERT INTO `om_1_product` VALUES ('10', '4', '化学变化油墨防伪标签', '68', '防伪标签', '特殊油墨印刷文字或图案，用专用笔检测后呈现颜色，如绿色，红色。呈现红色技术一直由全球少数几家企业掌握。', '2', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=10', '0', '127.0.0.1', '1419824950', '1419824950', '0');
INSERT INTO `om_1_product` VALUES ('11', '5', '不干胶标签', '69', '不干胶标签', '• 不干胶,标准尺寸 Adhesive Sticker: Standard Size• 频率范围Frequency：860MHz~960MHz• 性能稳定可靠Functional Stability and Reliability• 单卷Each Single Roll: 1,000张Pcs• 标签协议可选Labels conform...', '5', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=11', '0', '127.0.0.1', '1419825019', '1419825019', '0');
INSERT INTO `om_1_product` VALUES ('12', '4', '金属基材标签', '70', '标签,金属', '• 为金属基材专门设计Specially designed for metals • 提供陶瓷和PCB两种封装形式available for such packaging as Ceramic and PCB • 能够提供如下尺寸的标签Sizes Available： 137 x 27 x 6(mm)，97 x 17 x 2....', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=12', '0', '127.0.0.1', '1419825070', '1419825070', '0');
INSERT INTO `om_1_product` VALUES ('13', '4', '不同应用定制标签', '71', '标签', '• 为不同的应用定制标签的尺寸和外形Labels’ Size and Shape can be designed to various applications • 能够提供用于纸、塑料、玻璃、金属等材质的标签Labels can be used on paper, plastic, glass, and metal...', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=13', '0', '127.0.0.1', '1419825099', '1419825099', '0');
INSERT INTO `om_1_product` VALUES ('14', '6', '一维条码标签', '72', '标签,条码', '一维条码标签', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=14', '0', '127.0.0.1', '1419825149', '1419825149', '0');
INSERT INTO `om_1_product` VALUES ('15', '4', '二维条码标签', '74', '标签,条码', '二维条码标签', '4', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=15', '0', '127.0.0.1', '1419825199', '1419825199', '0');
INSERT INTO `om_1_product` VALUES ('16', '3', '代表客户：国家专控之食用盐业之一 中国 中央直属企业', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=75&amp;width=436&amp;height=230&amp;water=1', '中国,国家', '根据国家目前的食品安全的政策方针，食品管理与生产部门必须对食品的生产、流通建立起监管和质量追溯手段，有能力防止由于食品引发的安全问题；加强食盐产品动态与实时的流通监管和质量追溯的技术手段，实现产品的“...', '0', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=16', '0', '127.0.0.1', '1419828292', '1419828601', '0');
INSERT INTO `om_1_product` VALUES ('17', '3', '低成本防伪解决方案', '80', '解决方案,成本,防伪', '为了尊重客户的商业机密，WinSafe坚持一贯的原则，不透露任何客户非公开的商业信息；内容中描述的数据有可能非真实性，请注意理解。  代表客户：全球最大农业企业之一 美国 全球500强 企业—全球500强，一直受假冒所...', '1', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=17', '0', '127.0.0.1', '1419828474', '1419828474', '0');
INSERT INTO `om_1_product` VALUES ('18', '3', '高价值产品防伪方案', '82', '产品防伪,价值', '为了尊重客户的商业机密，WinSafe坚持一贯的原则，不透露任何客户非公开的商业信息；内容中描述的数据有可能非真实性，请注意理解。  代表客户：全球最知名防雷开关 德国 打假假冒已经成为全球性课题。尤其是一些假...', '3', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=18', '0', '127.0.0.1', '1419828659', '1419828659', '0');
INSERT INTO `om_1_product` VALUES ('19', '3', '汽车零部件追踪', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=83&amp;width=640&amp;height=251&amp;water=1', '汽车零部件', '为了尊重客户的商业机密，WinSafe坚持一贯的原则，不透露任何客户非公开的商业信息；内容中描述的数据有可能非真实性，请注意理解。   代表客户：全球最大汽车蓄电池制造企业之一 美国 全球500强 今天，召回制度在越...', '4', '1', 'omooo', '9', 'http://liyuan.in/product/index.php?c=show&id=19', '0', '127.0.0.1', '1419828713', '1419828828', '0');

-- ----------------------------
-- Table structure for om_1_product_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_0`;
CREATE TABLE `om_1_product_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_1`;
CREATE TABLE `om_1_product_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_2`;
CREATE TABLE `om_1_product_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_3`;
CREATE TABLE `om_1_product_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_4`;
CREATE TABLE `om_1_product_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_5`;
CREATE TABLE `om_1_product_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_6`;
CREATE TABLE `om_1_product_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_7`;
CREATE TABLE `om_1_product_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_8`;
CREATE TABLE `om_1_product_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_9`;
CREATE TABLE `om_1_product_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_category`;
CREATE TABLE `om_1_product_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_product_category
-- ----------------------------
INSERT INTO `om_1_product_category` VALUES ('1', '0', '0', '产品中心', 'c', 'product', '', '1', '1,2,4,5,6,3', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_product_category` VALUES ('2', '1', '0,1', '创新和技术', 'c', 'chuangxinhejishu', 'product/', '1', '2,4,5,6', '35', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";a:0:{}s:6:\\\"member\\\";a:0:{}}', '0');
INSERT INTO `om_1_product_category` VALUES ('3', '1', '0,1', '最新项目', 'z', 'zuixinxiangmu', 'product/', '0', '3', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_product_category` VALUES ('4', '2', '0,1,2', '防伪标签', 'f', 'fangweibiaoqian', 'product/chuangxinhejishu/', '0', '4', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_product_category` VALUES ('5', '2', '0,1,2', 'RFID标签', 'r', 'rfidbiaoqian', 'product/chuangxinhejishu/', '0', '5', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_product_category` VALUES ('6', '2', '0,1,2', '条码标签', 't', 'tiaomabiaoqian', 'product/chuangxinhejishu/', '0', '6', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_product_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_category_data`;
CREATE TABLE `om_1_product_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_product_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_category_data_0`;
CREATE TABLE `om_1_product_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_product_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_data_0`;
CREATE TABLE `om_1_product_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_product_data_0
-- ----------------------------
INSERT INTO `om_1_product_data_0` VALUES ('1', '1', '4', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">数码防伪标签</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">数码防伪技术融合了</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">INTERNET</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">计算机、移动通信、数据库、信息编码技术。系统采用无规则编码生成技术，为每件商品附属的标签设定出唯一的防伪号码，使每件商品都拥有一个数字</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;&quot;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">身份证</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&quot;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">号（即数字</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">ID</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">），购买了相应产品的消费者无论何时何地，只需将印刷于该商品封装上的防伪号码任选发送短信息、电话或上网三种方式，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">“</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">数码防伪系统</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">”</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">即自动将相应的核实结果由系统以手机短信息、语音留言或文字显示方式回复消费者，实现了安全、快速、可靠的数码防伪查询识别。可和其他防伪方式组合使用，实现多元防伪，增加造假难度。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\"font-family: 宋体; font-size: 16px; text-align: center;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">刮开式</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; line-height: 21px;\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=60&width=319&height=207&water=1\" title=\"a6ee6ae7eb.png\" alt=\"图片1.png\" id=\"OmWeb_img_60\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; line-height: 21px;\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; line-height: 21px;\"><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">揭开式</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; line-height: 21px;\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\"></span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; line-height: 21px;\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=61&width=319&height=208&water=1\" title=\"c529af2cea.png\" alt=\"图片2.png\" id=\"OmWeb_img_61\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('2', '1', '4', '<p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">跟数码防伪技术相似，工艺不同，喷码防伪采用喷码设备在线将唯一身份的数码喷印在产品上，该技术成本低，适合大批量自动化生产线同步作业。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=62&width=234&height=307&water=1\" title=\"d75d9cbcb6.jpg\" alt=\"图片3.jpg\" id=\"OmWeb_img_62\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('3', '1', '4', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">利用自然物质纹理随机这一特点，在白色纸浆中掺入黑色纤维，造出纤维随机分布的</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">“</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">纹理纸</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">”</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">，印制防伪标签，再对每一枚标签的纹理图案进行动态采集编码、存入防伪系统数据库中。消费者通过电话、互联网、传真核对标签的纹理特征。该防伪效果极高，适合高价值的产品。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\"><br/></span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=63&width=246&height=153&water=1\" title=\"12c25ed5d7.png\" alt=\"图片4.png\" id=\"OmWeb_img_63\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('4', '1', '4', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">此种防伪技术不仅具有普通纹理防伪技术的全部优点，同时烫印到包装物上的纹理防伪标识，无法从包装物上剥离下来，可以防止造假者回收防伪标识，与普通纹理防伪相比，更具有不可转移性。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=64&width=216&height=214&water=1\" title=\"17a69710ef.png\" alt=\"图片5.png\" id=\"OmWeb_img_64\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('5', '1', '4', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">此种标识的显著特点在于将标识揭开后，能规则的显露出图文。留住层显现铝薄阳字时，揭去层则显现镂空阴字，阴阳相对．内容相同，大小相等，揭露图文的分辨率可高达</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">200dPi</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">。它具有一次使用，识别方便和仿冒困难的优点，十分适合封口类防伪标识，另外这种类型的标识是单位面积信息容量最大的载体，能显现多种互不干扰的图文信息。</span></p><p><br/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('6', '1', '4', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">此类标签是利用激光图制版技术和模压复制技术完成的防伪标识，可根据客户不同需求进行随意位置和图案的实现，它反映的光刻制版技术包括：点阵动态、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">3D</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">光学微缩背景、双视觉道、多彩光学随机干涉、英文微缩文字、浮化激光还原密码、激光透视暗码、阴文微缩文字等。</span></p><p><br/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('7', '1', '4', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">光变油墨技术</span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">货币级防伪技术，印品具有绚丽金属光泽，在白光下正看或侧看，随着视角的改变，呈现两种完全不同的颜色，光变特征请，色差变化特征明显，且颜色角度效果无法用高清晰扫描设备复制。</span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\"><br/></span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=65&width=482&height=271&water=1\" title=\"224d759a91.jpg\" alt=\"图片6.jpg\" id=\"OmWeb_img_65\"/></span></p><p><br/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('8', '1', '4', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">采用此油墨印刷的图案在加热到一定温度时，会改变颜色，且当热源撤离后，颜色回复，鉴别方法简单、直观。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=66&width=454&height=230&water=1\" title=\"38c131905c.png\" alt=\"图片7.png\" id=\"OmWeb_img_66\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('9', '1', '4', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">用专用笔照射，呈现绿色发光效果</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=67&width=454&height=169&water=1\" title=\"022a3a4ca6.png\" alt=\"图片8.png\" id=\"OmWeb_img_67\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('10', '1', '4', '<p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">特殊油墨印刷文字或图案，用专用笔检测后呈现颜色，如绿色，红色。呈现红色技术一直由全球少数几家企业掌握。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=68&width=454&height=201&water=1\" title=\"a52da97845.png\" alt=\"图片9.png\" id=\"OmWeb_img_68\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('11', '1', '5', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">不干胶</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">,</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">标准尺寸</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;Adhesive&nbsp;Sticker:&nbsp;Standard&nbsp;Size</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">频率范围</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Frequency</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">：</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">860MHz~960MHz</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">性能稳定可靠</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Functional&nbsp;Stability&nbsp;and&nbsp;Reliability</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">单卷</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Each&nbsp;Single&nbsp;Roll:&nbsp;1,000</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">张</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Pcs</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">标签协议可选</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Labels&nbsp;conformed&nbsp;to&nbsp;the&nbsp;following&nbsp;standards</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">：</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">EPC&nbsp;Class0,&nbsp;EPC&nbsp;Class1,&nbsp;Class&nbsp;0+,&nbsp;ISO&nbsp;18000-6b&nbsp;&amp;&nbsp;-6c,&nbsp;UCODE&nbsp;1.19,&nbsp;EPC&nbsp;Class1&nbsp;Gen2</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=69&width=236&height=204&water=1\" title=\"46d884d50b.png\" alt=\"图片10.png\" id=\"OmWeb_img_69\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('12', '1', '4', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">为金属基材专门设计</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Specially&nbsp;designed&nbsp;for&nbsp;metals&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">提供陶瓷和</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">PCB</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">两种封装形式</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">available&nbsp;for&nbsp;such&nbsp;packaging&nbsp;as&nbsp;Ceramic&nbsp;and&nbsp;PCB&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">能够提供如下尺寸的标签</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Sizes&nbsp;Available</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">：</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;137&nbsp;x&nbsp;27&nbsp;x&nbsp;6(mm)</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">97&nbsp;x&nbsp;17&nbsp;x&nbsp;2.6(mm)</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">115&nbsp;x&nbsp;17&nbsp;x&nbsp;2(mm)</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">97&nbsp;x&nbsp;7x&nbsp;7(mm),28&nbsp;x&nbsp;28&nbsp;x&nbsp;4(mm)&nbsp;,27&nbsp;x&nbsp;27&nbsp;x&nbsp;3(mm),&nbsp;Ø23&nbsp;x&nbsp;3(mm),&nbsp;Ø&nbsp;27&nbsp;x&nbsp;2(mm)</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">能够提供如下协议的标签</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Standard&nbsp;Conformity</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">：</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">EPC&nbsp;Class0,&nbsp;EPC&nbsp;Class1,&nbsp;Class&nbsp;0+,&nbsp;ISO&nbsp;18000-6b&nbsp;&amp;&nbsp;-6c,&nbsp;UCODE&nbsp;1.19,&nbsp;EPC&nbsp;Class1&nbsp;Gen2</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=70&width=302&height=106&water=1\" title=\"aa921c8ba4.jpg\" alt=\"图片11.jpg\" id=\"OmWeb_img_70\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('13', '1', '4', '<p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">为不同的应用定制标签的尺寸和外形</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Labels’&nbsp;Size&nbsp;and&nbsp;Shape&nbsp;can&nbsp;be&nbsp;designed&nbsp;to&nbsp;various&nbsp;applications&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">能够提供用于纸、塑料、玻璃、金属等材质的标签</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Labels&nbsp;can&nbsp;be&nbsp;used&nbsp;on&nbsp;paper,&nbsp;plastic,&nbsp;glass,&nbsp;and&nbsp;metals,&nbsp;etc.</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">能够提供如下尺寸的标签</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Sizes&nbsp;available</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">：</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Ø9(mm),&nbsp;Ø24(mm),&nbsp;Ø32(mm),&nbsp;8*15(mm),&nbsp;21*21(mm),&nbsp;8*32(mm),&nbsp;8*92(mm),&nbsp;11*93(mm),&nbsp;30*50(mm),&nbsp;86*86(mm)</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">能够提供如下协议的标签</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Standard&nbsp;Conformity:</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">：</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">EPC&nbsp;Class0,&nbsp;EPC&nbsp;Class1,&nbsp;Class&nbsp;0+,&nbsp;ISO&nbsp;18000-6b&nbsp;&amp;&nbsp;-6c,&nbsp;UCODE&nbsp;1.19,&nbsp;EPC&nbsp;Gen2</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=71&width=276&height=72&water=1\" title=\"bc2894beec.png\" alt=\"图片12.png\" id=\"OmWeb_img_71\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('14', '1', '6', '<p>一维条码标签</p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=72&width=421&height=229&water=1\" title=\"5bafe5675b.jpg\" alt=\"图片13.jpg\" id=\"OmWeb_img_72\"/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=73&width=151&height=225&water=1\" title=\"effd05b8a4.png\" alt=\"图片14.png\" id=\"OmWeb_img_73\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('15', '1', '4', '<p>二维条码标签</p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=74&width=281&height=224&water=1\" title=\"c936faba56.png\" alt=\"图片15.png\" id=\"OmWeb_img_74\"/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('16', '1', '3', '<p style=\"margin-top: 7px;margin-bottom: 7px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">根据国家目前的食品安全的政策方针，食品管理与生产部门必须对食品的生产、流通建立起监管和质量追溯手段，有能力防止由于食品引发的安全问题；</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">加强食盐产品动态与实时的流通监管和质量追溯的技术手段，实现产品的</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">“</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">四可</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">”</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">管理（可记录、可查询、可追溯和可召回）是食品安全管理的必然趋势。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">客户需求</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">生产过程管理</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">防伪</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">实施</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">概述</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">在盐的包装袋上通过喷码机喷印</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&quot;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">商品身份码（该码具有随机、唯一等防伪特征）</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&quot;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">。喷码机系统可以由</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">公司提供，也可由盐业企业自己提供。</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">积累高速自动化喷码的技术，不管何种印刷或包装系我们都可以娴熟的嫁接。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">在每袋产品包装上喷印物流码，产品物流码长度也可根据产品生产量作调整。根据设定好的每箱产品数量喷印完后由电脑控制条码打印机打印出贴于箱上的条形码，该条形码以条码和数字编码显示，满足一托盘设定的箱数后，生成一托盘条形码，该托盘条形码也以条码和数字编码显示，数值与每箱的的条形码形成逻辑关系，这样每托盘、每箱和每袋三者之间就形成一一对应关系，实现物流管理功能。</span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=75&width=436&height=230&water=1\" title=\"90128e3cad.jpg\" alt=\"图片17.jpg\" id=\"OmWeb_img_75\"/></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">总体架构图</span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=76&width=500&height=388&water=1\" title=\"cc3a453420.jpg\" alt=\"图片18.jpg\" id=\"OmWeb_img_76\"/></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">物流查询</span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=77&width=354&height=254&water=1\" title=\"b223a56bfe.jpg\" alt=\"图片19.jpg\" id=\"OmWeb_img_77\"/></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">防伪查询</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">提供专用的</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">800</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">查询号码和线路，满足盐业庞大数据的要求，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">是中国电信</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">800</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">的最高级客户，享受很多优惠条件，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">800</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">通讯成本很低。同时为了方便消费者的上网查询和了解更多信息和服务，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">直接把出库后相关数据通过内部网传至数据中心。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=78&width=491&height=489&water=1\" title=\"95c3d4ad83.jpg\" alt=\"图片20.jpg\" id=\"OmWeb_img_78\"/></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">详细资料，请阁下马上联系我们：</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">400&nbsp;880&nbsp;4100</span></p><p><br/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('17', '1', '3', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">为了尊重客户的商业机密，</span><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">W</span><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">inSafe</span><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">坚持一贯的原则，不透露任何客户非公开的商业信息；内容中描述的数据有可能非真实性，请注意理解。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:16px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:16px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">代表客户：全球最大农业企业之一</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">美国</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">全球</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">500</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">强</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(102,102,102);font-size:16px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">企业</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">—</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">全球</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">500</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">强，一直受假冒所困扰，但是产品的特点是批量大（</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">1</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">亿数量</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">/</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">年以上）、价值低（大概在</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">5</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">元以下），对方一直在探索一种能够起到很好效果并且成本很低的防伪技术，经过两年的试验、推广、论证，完全取得的了低成本的防伪效果！我们作为该企业的战略合作伙伴，希望该解决方案分享给更多的企业。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">客户需求</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">低成本的防伪</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">适合高速自动化生产线</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">实施</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">概述</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">由计算机运用信息编码技术为每一件产品生成一组</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">16</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">至</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">20</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">位的随机、唯一数码，存于中心数据库中，并将该数码生成软件，通过喷码机直接喷印在产品上，一件产品一组数码，绝无重复。任何人在任何地点想知道产品的真伪，只须拨打相关免费查询电话，按语音或提示正确输入产品上的</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">16</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">至</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">20</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">位数码，便可立即知道产品的真伪！</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">是国内最早研究防伪喷码技术的创新企业，自</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">1999</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">年至今，一直倍受客户推崇！</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(102,102,102);font-size:16px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";color:rgb(102,102,102);font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;<img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=79&width=234&height=307&water=1\" title=\"993a9aef12.jpg\" alt=\"图片21.jpg\" id=\"OmWeb_img_79\"/></span></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(102,102,102);font-size:16px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">适合产品对象</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">产品价值低（大概在</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">20</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">元以下）</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">数量大（年数量在几千万以上）</span></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">自动化生产线</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=80&width=351&height=264&water=1\" title=\"1ffa36da05.jpg\" alt=\"图片22.jpg\" id=\"OmWeb_img_80\"/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">流程图</span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=81&width=446&height=303&water=1\" title=\"95be689e65.jpg\" alt=\"图片23.jpg\" id=\"OmWeb_img_81\"/></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">技术优势</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">整个防伪码系统的性能可靠，造假者无法批量伪造，而失去赢利的空间；</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">网络安全、可靠、抵御攻击性。查询系统全部采用</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">IBM</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">大型服务器；数据库采用</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">ORACLE(</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">甲骨文</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">)</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">；</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">查询流程个性化，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">坚持</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&quot;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">随需而变</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&quot;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">！很多防伪企业软件已经固定，而我们可以随时根据客户的需要不断优化，如当出现假冒的防伪吗，系统锁定、跟踪、查询有限次数跟不同的防伪码可以调整，当客户需要促销，我们的系统有中奖功能等等；</span></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">喷码端（标签供应商处）技术安全、可靠。我们提供技术支持，在喷印防伪码技术方面，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">是全国家研究该技术的企业，我们掌握全面技术和实际经验。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">防伪效果</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">防伪码是随机编码的，没有任何规律，造假者无法批量伪造；</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">虽然是明码，但是造假者要收集批量的防伪码有困难；</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">因为产品价值低，如果造假者小批量伪造，不值得；</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">消费者购买产品是很容易初步识别真假，因为每个产品都有唯一、不同的编码。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\";color:rgb(102,102,102);font-size:16px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">详细资料，请阁下马上联系我们：&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">400&nbsp;880&nbsp;4100</span></p><p><br/></p><p><br/></p><p><br/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('18', '1', '3', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">为了尊重客户的商业机密，</span><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">W</span><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">inSafe</span><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">坚持一贯的原则，不透露任何客户非公开的商业信息；内容中描述的数据有可能非真实性，请注意理解。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:16px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:16px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">代表客户：全球最知名防雷开关</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">德国</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">打假假冒已经成为全球性课题。尤其是一些假冒产品直接对人身等造成安全危害！如电工、机械、药品等。该公司作为全球最知名防雷开关，一直备受假冒的困扰，因为该产品价值高，很多仿造者一年伪造几百个就利润丰厚。针对这种情况，对方选择防伪的技术必须满足两个条件：使用的防伪技术</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">100%</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">不能被伪造；用户自己可以鉴别真伪！评估众多国内外防伪技术，对方选择</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">-</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">纹理防伪！</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">客户需求</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">防止假冒</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">质量保证</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">实施</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">概述</span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">纹理防伪是由生物防伪衍生而来的。以人的指纹为例，每个人的指纹都是由不同的点、线组成，指纹的特异性、稳定性达到了</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&quot;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">终生不变、无人相同</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&quot;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">的地步。纹理防伪正是应用这一原理，利用自然物质纹理随机这一特点，在白色纸浆中掺入黑色纤维，造出纤维随机分布的</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&quot;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">纹理纸</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&quot;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">，印制防伪标签，</span></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">再对每一枚标签的纹理图案进行动态采集编码、存入防伪系统数据库中。消费者通过电话、互联网、传真核对标签的纹理特征。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=82&width=587&height=153&water=1\" title=\"4c40b1cf1b.png\" alt=\"图片24.png\" id=\"OmWeb_img_82\"/></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">技术特点</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">无法伪造：造纸时，在白色纸浆中掺入了类似于头发丝的黑色纤维，造出的纸内具有清晰的、随机分布的黑色纤维，用这种纸印制标签，每一枚标签纤维纹理分布都不相同，寻找两张纤维图案完全一样的纸片，如同寻找两个指纹完全相同的人一样，几乎不可能；</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">准确可靠：防伪标签的纹理特征的唯一性决定了查询结果的准确率是</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">100</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">％；</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">信息公开：纹理信息无须保密，造假者依据这些信息无法仿制纹理完全相同的标签，因而回收纹理标签毫无意义，且防伪标签采用易碎纸、强力胶制成，防止从产品上完整揭下再用；</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">永久有效：纹理防伪是古老的原始防伪手段与现代信息技术完美结合的产物。古老的防伪原理，预示着纹理防伪长久的生命活力。</span></p><p style=\"margin-top: 0;margin-bottom: 0\"><span style=\"font-size: 12px;font-family: &#39;ˎ̥,Verdana,Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">详细资料，请阁下马上联系我们：&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">400&nbsp;880&nbsp;4100</span></p><p><br/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('19', '1', '3', '<p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">为了尊重客户的商业机密，</span><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">W</span><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">inSafe</span><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">坚持一贯的原则，不透露任何客户非公开的商业信息；内容中描述的数据有可能非真实性，请注意理解。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(102,102,102);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\"font-size: 16px;font-family: 宋体\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">代表客户：全球最大汽车蓄电池制造企业之一</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">美国</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">全球</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">500</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">强</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\"font-size: 16px;font-family: 宋体\">&nbsp;</span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">今天，召回制度在越来越多的领域推行，一般它是强制性的，尤其是在汽车制造行业！处于供应链中的您，无论上、下游，息息相关。召回制让产品信息有了更大的延伸，从成品到里面的部件，从供应商到供应批次和采购订单，从质量信息到制造流程等等。同时，对应客户的反馈中，您需要更</span><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; letter-spacing: 0px; line-height: 21px;\">快速、准确的寻找问题原因，提出改善的建议。这样，即使存在现实的问题，客户依然会保持对您的信任。</span></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">客户需求</span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=83&width=640&height=251&water=1\" title=\"80ad8373c0.png\" alt=\"图片25.png\" id=\"OmWeb_img_83\"/><span style=\"color: rgb(51, 51, 51); font-family: 宋体; font-size: 12px; letter-spacing: 0px; line-height: 21px;\"></span><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">精准招回</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">原材料追溯</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">防窜货管理</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";font-weight:bold;font-size:16px;font-family:&#39;宋体&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;宋体&#39;\">实施</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">概述</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">每个蓄电池标签上加入物流码（数字和条形码的结合体、物流码是随机的、唯一的编码），在箱上也贴条形码标签，生产线在装箱过程中，网络控制的扫描器扫描蓄电池上的物流码和箱上的条形码使之建立对应关系，当扫描一定数量时网络控制的条码打印机会打印托盘的条形码标签。蓄电池上的物流码、箱的条形码和托盘的条形码形成了对应关系；仓库根据客户</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">ID</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">扫描产品出库，实现对产品的识别和追踪。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\"font-size: 16px;font-family: 宋体\">&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Arial; font-size: 12px; letter-spacing: 0px; text-align: center;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">流程</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">◦&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">数据中心</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">在贵公司市场部或物流部管理的计算机中，创建管理数据库、数据库备份、数据修改和调整，物流码管理软件。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">◦&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">生产线</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">生产线添加工业控制机、扫描器、条码打印机、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">LED</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">显示屏</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">生产上线前，根据生产计划（生产订单）设置工业控制机的界面</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">员工贴蓄电池的标签</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">装箱员工贴外箱标签，并且封箱前扫描蓄电池的条码和外箱的条码</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">装托盘的员工贴托盘的条码</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">工业控制机的信息通过内部网致数据中心</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">◦&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">货仓</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">产品出库时输入客户的信息，及出货品种、数量等，扫描产品箱</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">/</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">托盘出库，数据上传数据库，建立产品与客户的逻辑关系。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">出库后相关数据通过内部网传至数据中心。</span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=84&width=519&height=402&water=1\" title=\"324e04657c.png\" alt=\"图片26.png\" id=\"OmWeb_img_84\"/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=85&width=553&height=401&water=1\" title=\"dfefa2de0e.jpg\" alt=\"图片27.jpg\" id=\"OmWeb_img_85\"/></p><p><br/></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">◦&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">市场</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">企业的销售人员或经销商可通过数据库的信息，实时掌握产品的流向、各经销商的情况、并作信息分析和统计等等；</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">根据质量反馈报告，企业可以精准、迅速的实施产品召回行动。</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\"margin-top: 0;margin-bottom: 0;line-height: 21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;宋体&#39;\">详细资料，请阁下马上联系我们：&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">400&nbsp;880&nbsp;4100</span></p><p><br/></p>');

-- ----------------------------
-- Table structure for om_1_product_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_extend_index`;
CREATE TABLE `om_1_product_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_product_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_extend_verify`;
CREATE TABLE `om_1_product_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_product_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_0`;
CREATE TABLE `om_1_product_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_1`;
CREATE TABLE `om_1_product_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_2`;
CREATE TABLE `om_1_product_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_3`;
CREATE TABLE `om_1_product_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_4`;
CREATE TABLE `om_1_product_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_5`;
CREATE TABLE `om_1_product_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_6`;
CREATE TABLE `om_1_product_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_7`;
CREATE TABLE `om_1_product_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_8`;
CREATE TABLE `om_1_product_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_9`;
CREATE TABLE `om_1_product_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_flag`;
CREATE TABLE `om_1_product_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_product_flag
-- ----------------------------
INSERT INTO `om_1_product_flag` VALUES ('1', '8', '1', '4');
INSERT INTO `om_1_product_flag` VALUES ('1', '9', '1', '4');
INSERT INTO `om_1_product_flag` VALUES ('1', '10', '1', '4');
INSERT INTO `om_1_product_flag` VALUES ('1', '11', '1', '5');
INSERT INTO `om_1_product_flag` VALUES ('1', '12', '1', '4');
INSERT INTO `om_1_product_flag` VALUES ('1', '13', '1', '4');
INSERT INTO `om_1_product_flag` VALUES ('1', '14', '1', '6');
INSERT INTO `om_1_product_flag` VALUES ('1', '15', '1', '4');

-- ----------------------------
-- Table structure for om_1_product_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_form`;
CREATE TABLE `om_1_product_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_product_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_html`;
CREATE TABLE `om_1_product_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_product_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_index`;
CREATE TABLE `om_1_product_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_product_index
-- ----------------------------
INSERT INTO `om_1_product_index` VALUES ('1', '1', '4', '9', '1419824290');
INSERT INTO `om_1_product_index` VALUES ('2', '1', '4', '9', '1419824610');
INSERT INTO `om_1_product_index` VALUES ('3', '1', '4', '9', '1419824672');
INSERT INTO `om_1_product_index` VALUES ('4', '1', '4', '9', '1419824731');
INSERT INTO `om_1_product_index` VALUES ('5', '1', '4', '9', '1419824792');
INSERT INTO `om_1_product_index` VALUES ('6', '1', '4', '9', '1419824805');
INSERT INTO `om_1_product_index` VALUES ('7', '1', '4', '9', '1419824825');
INSERT INTO `om_1_product_index` VALUES ('8', '1', '4', '9', '1419824862');
INSERT INTO `om_1_product_index` VALUES ('9', '1', '4', '9', '1419824889');
INSERT INTO `om_1_product_index` VALUES ('10', '1', '4', '9', '1419824950');
INSERT INTO `om_1_product_index` VALUES ('11', '1', '5', '9', '1419825019');
INSERT INTO `om_1_product_index` VALUES ('12', '1', '4', '9', '1419825070');
INSERT INTO `om_1_product_index` VALUES ('13', '1', '4', '9', '1419825099');
INSERT INTO `om_1_product_index` VALUES ('14', '1', '6', '9', '1419825149');
INSERT INTO `om_1_product_index` VALUES ('15', '1', '4', '9', '1419825199');
INSERT INTO `om_1_product_index` VALUES ('16', '1', '3', '9', '1419828292');
INSERT INTO `om_1_product_index` VALUES ('17', '1', '3', '9', '1419828474');
INSERT INTO `om_1_product_index` VALUES ('18', '1', '3', '9', '1419828659');
INSERT INTO `om_1_product_index` VALUES ('19', '1', '3', '9', '1419828713');

-- ----------------------------
-- Table structure for om_1_product_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_search`;
CREATE TABLE `om_1_product_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_product_search
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_tag`;
CREATE TABLE `om_1_product_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_product_tag
-- ----------------------------
INSERT INTO `om_1_product_tag` VALUES ('1', '防伪标签', 'fangweibiaoqian', '0');
INSERT INTO `om_1_product_tag` VALUES ('2', '防伪', 'fangwei', '0');
INSERT INTO `om_1_product_tag` VALUES ('3', '镂空', 'loukong', '0');
INSERT INTO `om_1_product_tag` VALUES ('4', '不干胶标签', 'buganjiaobiaoqian', '0');
INSERT INTO `om_1_product_tag` VALUES ('5', '标签', 'biaoqian', '0');
INSERT INTO `om_1_product_tag` VALUES ('6', '金属', 'jinshu', '0');
INSERT INTO `om_1_product_tag` VALUES ('7', '条码', 'tiaoma', '0');
INSERT INTO `om_1_product_tag` VALUES ('8', '中国', 'zhongguo', '0');
INSERT INTO `om_1_product_tag` VALUES ('9', '国家', 'guojia', '0');
INSERT INTO `om_1_product_tag` VALUES ('10', '解决方案', 'jiejuefangan', '0');
INSERT INTO `om_1_product_tag` VALUES ('11', '成本', 'chengben', '0');
INSERT INTO `om_1_product_tag` VALUES ('12', '产品防伪', 'chanpinfangwei', '0');
INSERT INTO `om_1_product_tag` VALUES ('13', '价值', 'jiazhi', '0');
INSERT INTO `om_1_product_tag` VALUES ('14', '汽车零部件', 'qichelingbujian', '0');

-- ----------------------------
-- Table structure for om_1_product_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_verify`;
CREATE TABLE `om_1_product_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_product_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution`;
CREATE TABLE `om_1_solution` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_solution
-- ----------------------------
INSERT INTO `om_1_solution` VALUES ('1', '2', '食品追踪追溯管理系统', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=47&amp;width=492&amp;height=330&amp;water=1', '管理系统,食品', '从田间到餐桌，WinSafe 帮助企业实现全链追踪！ 民以食为天，随着入世和近年来食品安全事故的频发，激起社会对这一全球性话题的空前关注。关于食品安全，最重要的是可靠的生产流程以及在整条供应链上的过程管理！因...', '6', '1', 'omooo', '9', 'http://liyuan.in/solution/index.php?c=show&id=1', '0', '127.0.0.1', '1419490074', '1419822476', '0');
INSERT INTO `om_1_solution` VALUES ('2', '2', '农药防伪及防窜货解决方案', 'http://liyuan.in/member/index.php?c=api&amp;m=thumb&amp;id=49&amp;width=595&amp;height=346&amp;water=1', '解决方案,防伪', '在农业领域，WinSafe享有极高的荣誉和口碑，全球20强和国内20强超过80%的农化企业正在使用我们的技术、系统、服务。不论防伪手段还是防窜货能力、以及分销渠道管理方面，WinSafe具有无与伦比的优势！ 在防伪方面在防...', '1', '1', 'omooo', '9', 'http://liyuan.in/solution/index.php?c=show&id=2', '0', '127.0.0.1', '1419490336', '1419822456', '0');

-- ----------------------------
-- Table structure for om_1_solution_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_0`;
CREATE TABLE `om_1_solution_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_1`;
CREATE TABLE `om_1_solution_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_2`;
CREATE TABLE `om_1_solution_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_3`;
CREATE TABLE `om_1_solution_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_4`;
CREATE TABLE `om_1_solution_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_5`;
CREATE TABLE `om_1_solution_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_6`;
CREATE TABLE `om_1_solution_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_7`;
CREATE TABLE `om_1_solution_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_8`;
CREATE TABLE `om_1_solution_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_9`;
CREATE TABLE `om_1_solution_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_category`;
CREATE TABLE `om_1_solution_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_solution_category
-- ----------------------------
INSERT INTO `om_1_solution_category` VALUES ('1', '0', '0', '解决方案', 's', 'solution', '', '1', '1,2,3,4,5,6,7', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_solution_category` VALUES ('2', '1', '0,1', '农业/食品领域解决方案', 'n', 'nongyeshipinlingyujiejuefangan', 'solution/', '0', '2', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_solution_category` VALUES ('3', '1', '0,1', '流通领域管理解决方案', 'l', 'liutonglingyuguanlijiejuefanga', 'solution/', '0', '3', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_solution_category` VALUES ('4', '1', '0,1', '制造业解决方案', 'z', 'zhizaoyejiejuefangan', 'solution/', '0', '4', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_solution_category` VALUES ('5', '1', '0,1', '跨行业解决方案', 'k', 'kuaxingyejiejuefangan', 'solution/', '0', '5', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_solution_category` VALUES ('6', '1', '0,1', 'RFID就在你身边', 'r', 'rfidjiuzainishenbian', 'solution/', '0', '6', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_solution_category` VALUES ('7', '1', '0,1', '移动商务应用（IS-Mobile™系统）', '1', '10', 'solution/', '0', '7', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_solution_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_category_data`;
CREATE TABLE `om_1_solution_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_solution_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_category_data_0`;
CREATE TABLE `om_1_solution_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_solution_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_data_0`;
CREATE TABLE `om_1_solution_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_solution_data_0
-- ----------------------------
INSERT INTO `om_1_solution_data_0` VALUES ('1', '1', '2', '<p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">从田间到餐桌，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">帮助企业实现全链追踪！</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">民以食为天，随着入世和近年来食品安全事故的频发，激起社会对这一全球性话题的空前关注。关于食品安全，最重要的是可靠的生产流程以及在整条供应链上的过程管理！因此，为提高食品质量，有效监控商品流通，避免食品安全事故，一套行之有效的跟踪体制和快速预警系统的构建迫在眉睫。而备受食品行业认可的</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">WinSafe</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">追踪追溯技术和整体解决方案无疑为整个食品行业提供了借鉴经验。</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=47&width=492&height=330&water=1\" title=\"30670e7819.jpg\" alt=\"图片32.jpg\" id=\"OmWeb_img_47\"/></p><p><br/></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">系统特点</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">利用条码、二维码、</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">RFID</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">（追溯码）读取数据，在生产工厂可以快速构建原料数据库</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">充分融合工厂原有的</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">ERP</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">管理系统，避免重复性作业和信息孤岛，同时大大增强</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">ERP</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">数据采集效率</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">通过</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Web</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">或</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">Call&nbsp;Center</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">方式实现技术查询记录信息</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">使</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">“</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">原料</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">-</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">药剂</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">-</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">检验</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">-</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">分析</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">-</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">评估</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">”</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">成为可能，帮助甄别、排除</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">NG</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">原料</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">•&nbsp;</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">即使发生问题，也能精准锁定流通范围，迅速处理应对</span></p><p style=\";line-height:21px\"><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">•&nbsp;</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">中低度投资，工厂只需构建追溯码标识、采集数据、查询就系统。与</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">ERP</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">系统也能同时协作，提高</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">ERP</span><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\">效率</span><br/></p><p style=\";line-height:21px\"><span style=\"color: rgb(51, 51, 51); letter-spacing: 0px; font-size: 12px; font-family: Arial;\"><br/></span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=48&width=470&height=250&water=1\" title=\"92a392df60.jpg\" alt=\"图片33.jpg\" id=\"OmWeb_img_48\"/></p><p><br/></p>');
INSERT INTO `om_1_solution_data_0` VALUES ('2', '1', '2', '<p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">在农业领域，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">享有极高的荣誉和口碑，全球</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">20</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">强和国内</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">20</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">强超过</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">80%</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">的农化企业正在使用我们的技术、系统、服务。</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">不论防伪手段还是防窜货能力、以及分销渠道管理方面，</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">WinSafe</span><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">具有无与伦比的优势！</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-size:12px;font-family:&#39;Arial&#39;\">&nbsp;</span></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">在防伪方面</span></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=49&width=595&height=346&water=1\" title=\"8f48797231.png\" alt=\"图片34.png\" id=\"OmWeb_img_49\"/></p><p><br/></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\"><br/></span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">在防窜货方面</span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\"><br/></span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\"><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=50&width=546&height=564&water=1\" title=\"26989589e3.png\" alt=\"图片35.png\" id=\"OmWeb_img_50\"/></span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\"><br/></span></p><p><br/></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">在渠道管理方面</span></p><p><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\"></span><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=51&width=650&height=475&water=1\" title=\"2bbbb604a2.jpg\" alt=\"图片36.jpg\" id=\"OmWeb_img_51\"/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=52&width=650&height=449&water=1\" title=\"e34ff4f02c.jpg\" alt=\"图片37.jpg\" id=\"OmWeb_img_52\"/></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=53&width=650&height=299&water=1\" title=\"225c49a20e.jpg\" alt=\"图片38.jpg\" id=\"OmWeb_img_53\"/></p><p><br/></p><p style=\";line-height:21px\"><span style=\";color:rgb(51,51,51);letter-spacing:0;font-weight:bold;font-size:12px;font-family:&#39;Arial&#39;\">在农化行业的客户</span></p><p><br/></p><p><img src=\"http://liyuan.in/member/index.php?c=api&m=thumb&id=54&width=502&height=231&water=1\" title=\"2e56bfe995.jpg\" alt=\"图片39.jpg\" id=\"OmWeb_img_54\"/></p><p><br/></p>');

-- ----------------------------
-- Table structure for om_1_solution_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_extend_index`;
CREATE TABLE `om_1_solution_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_solution_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_extend_verify`;
CREATE TABLE `om_1_solution_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_solution_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_0`;
CREATE TABLE `om_1_solution_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_1`;
CREATE TABLE `om_1_solution_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_2`;
CREATE TABLE `om_1_solution_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_3`;
CREATE TABLE `om_1_solution_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_4`;
CREATE TABLE `om_1_solution_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_5`;
CREATE TABLE `om_1_solution_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_6`;
CREATE TABLE `om_1_solution_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_7`;
CREATE TABLE `om_1_solution_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_8`;
CREATE TABLE `om_1_solution_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_9`;
CREATE TABLE `om_1_solution_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_flag`;
CREATE TABLE `om_1_solution_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_solution_flag
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_form`;
CREATE TABLE `om_1_solution_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_solution_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_html`;
CREATE TABLE `om_1_solution_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_solution_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_index`;
CREATE TABLE `om_1_solution_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_solution_index
-- ----------------------------
INSERT INTO `om_1_solution_index` VALUES ('1', '1', '2', '9', '1419490074');
INSERT INTO `om_1_solution_index` VALUES ('2', '1', '2', '9', '1419490336');

-- ----------------------------
-- Table structure for om_1_solution_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_search`;
CREATE TABLE `om_1_solution_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_solution_search
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_tag`;
CREATE TABLE `om_1_solution_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_solution_tag
-- ----------------------------
INSERT INTO `om_1_solution_tag` VALUES ('1', '管理系统', 'guanlixitong', '0');
INSERT INTO `om_1_solution_tag` VALUES ('2', '食品', 'shipin', '0');
INSERT INTO `om_1_solution_tag` VALUES ('3', '解决方案', 'jiejuefangan', '0');
INSERT INTO `om_1_solution_tag` VALUES ('4', '防伪', 'fangwei', '0');

-- ----------------------------
-- Table structure for om_1_solution_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_verify`;
CREATE TABLE `om_1_solution_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_solution_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team`;
CREATE TABLE `om_1_team` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `position` varchar(255) DEFAULT NULL,
  `profile` mediumtext,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_team
-- ----------------------------
INSERT INTO `om_1_team` VALUES ('1', '1', '李超', '55', '李超', '70后，做过铁路工人、JAVA程序员、技术支持、IT讲师、还干过几天管理，06年底策划并创立兄弟连，对教育的本质有较为深刻的理解，坚持兄弟的核心价值，认为最浪漫的事情就是离开这个世界的时候兄弟连还在且越来越强大...', '0', '1', 'omooo', '9', 'http://liyuan.in/team/index.php?c=show&id=1', '0', '127.0.0.1', '1419822644', '1419822644', '0', '兄弟连创始人', '<p><span style=\"color: rgb(85, 85, 85); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\">70后，做过铁路工人、JAVA程序员、技术支持、IT讲师、还干过几天管理，06年底策划并创立兄弟连，对教育的本质有较为深刻的理解，坚持兄弟的核心价值，认为最浪漫的事情就是离开这个世界的时候兄弟连还在且越来越强大。</span></p>', null);
INSERT INTO `om_1_team` VALUES ('2', '1', '高洛峰', '58', '', '敢于技术高难度挑战。近年致力于国内LAMP技术推广和研发，目标桃李满天下，每个互联网公司都有我的学员，每个PHP开发者都用《细说PHP》。', '0', '1', 'omooo', '9', 'http://liyuan.in/team/index.php?c=show&id=2', '0', '127.0.0.1', '1419822754', '1419822865', '0', '教学总监', '<p><span style=\"color: rgb(85, 85, 85); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\">敢于技术高难度挑战。近年致力于国内LAMP技术推广和研发，目标桃李满天下，每个互联网公司都有我的学员，每个PHP开发者都用《细说PHP》。</span></p>', null);
INSERT INTO `om_1_team` VALUES ('3', '1', '李明', '57', '', '70后北漂老男孩，做过程序员，干过运维，跑过市场，当过讲师，LAMP兄弟连副校长，Linux 狂热分子，PHP技术推动者，致力于开源技术推广，坚信授之以鱼不如授之以渔，曲径通幽天道酬勤。...', '0', '1', 'omooo', '9', 'http://liyuan.in/team/index.php?c=show&id=3', '0', '127.0.0.1', '1419822805', '1419822805', '0', '副校长', '<p><span style=\"color: rgb(85, 85, 85); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\">70后北漂老男孩，做过程序员，干过运维，跑过市场，当过讲师，LAMP兄弟连副校长，Linux 狂热分子，PHP技术推动者，致力于开源技术推广，坚信授之以鱼不如授之以渔，曲径通幽天道酬勤。</span></p>', null);
INSERT INTO `om_1_team` VALUES ('4', '1', '张涛', '59', '', '兄弟连教育金牌讲师，DWZ开源框架开发成员，国内互联网技术培训专家，有多年的软件开发、项目管理和教学经验。在移动互联应用技术开发方面深有研究，具有较强的企业级自主框架开发经验。 精通软件工程、C C++、JavaE...', '1', '1', 'omooo', '9', 'http://liyuan.in/team/index.php?c=show&id=4', '0', '127.0.0.1', '1419822888', '1419822888', '0', '金牌讲师', '<p><span style=\"color: rgb(85, 85, 85); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\">兄弟连教育金牌讲师，DWZ开源框架开发成员，国内互联网技术培训专家，有多年的软件开发、项目管理和教学经验。在移动互联应用技术开发方面深有研究，具有较强的企业级自主框架开发经验。 精通软件工程、C C++、JavaEE技术体系、PHP、JavaScript、HTML5等多种开发语言。</span></p>', null);

-- ----------------------------
-- Table structure for om_1_team_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_buy_0`;
CREATE TABLE `om_1_team_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_team_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_buy_1`;
CREATE TABLE `om_1_team_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_team_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_buy_2`;
CREATE TABLE `om_1_team_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_team_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_buy_3`;
CREATE TABLE `om_1_team_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_team_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_buy_4`;
CREATE TABLE `om_1_team_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_team_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_buy_5`;
CREATE TABLE `om_1_team_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_team_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_buy_6`;
CREATE TABLE `om_1_team_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_team_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_buy_7`;
CREATE TABLE `om_1_team_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_team_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_buy_8`;
CREATE TABLE `om_1_team_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_team_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_buy_9`;
CREATE TABLE `om_1_team_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_team_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_category`;
CREATE TABLE `om_1_team_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_team_category
-- ----------------------------
INSERT INTO `om_1_team_category` VALUES ('1', '0', '0', '团队成员', 't', 'team', '', '0', '1', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_team_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_category_data`;
CREATE TABLE `om_1_team_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_team_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_category_data_0`;
CREATE TABLE `om_1_team_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_team_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_data_0`;
CREATE TABLE `om_1_team_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_team_data_0
-- ----------------------------
INSERT INTO `om_1_team_data_0` VALUES ('1', '1', '1', '<p><span style=\"color: rgb(85, 85, 85); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\">70后，做过铁路工人、JAVA程序员、技术支持、IT讲师、还干过几天管理，06年底策划并创立兄弟连，对教育的本质有较为深刻的理解，坚持兄弟的核心价值，认为最浪漫的事情就是离开这个世界的时候兄弟连还在且越来越强大。</span></p>');
INSERT INTO `om_1_team_data_0` VALUES ('2', '1', '1', '<p><span style=\"color: rgb(85, 85, 85); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\">敢于技术高难度挑战。近年致力于国内LAMP技术推广和研发，目标桃李满天下，每个互联网公司都有我的学员，每个PHP开发者都用《细说PHP》。</span></p>');
INSERT INTO `om_1_team_data_0` VALUES ('3', '1', '1', '<p><span style=\"color: rgb(85, 85, 85); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\">70后北漂老男孩，做过程序员，干过运维，跑过市场，当过讲师，LAMP兄弟连副校长，Linux 狂热分子，PHP技术推动者，致力于开源技术推广，坚信授之以鱼不如授之以渔，曲径通幽天道酬勤。</span></p>');
INSERT INTO `om_1_team_data_0` VALUES ('4', '1', '1', '<p><span style=\"color: rgb(85, 85, 85); font-family: tahoma, arial, 微软雅黑, sans-serif; font-size: 12px; line-height: 24px; background-color: rgb(255, 255, 255);\">兄弟连教育金牌讲师，DWZ开源框架开发成员，国内互联网技术培训专家，有多年的软件开发、项目管理和教学经验。在移动互联应用技术开发方面深有研究，具有较强的企业级自主框架开发经验。 精通软件工程、C C++、JavaEE技术体系、PHP、JavaScript、HTML5等多种开发语言。</span></p>');

-- ----------------------------
-- Table structure for om_1_team_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_extend_index`;
CREATE TABLE `om_1_team_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_team_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_extend_verify`;
CREATE TABLE `om_1_team_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_team_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_favorite_0`;
CREATE TABLE `om_1_team_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_team_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_favorite_1`;
CREATE TABLE `om_1_team_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_team_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_favorite_2`;
CREATE TABLE `om_1_team_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_team_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_favorite_3`;
CREATE TABLE `om_1_team_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_team_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_favorite_4`;
CREATE TABLE `om_1_team_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_team_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_favorite_5`;
CREATE TABLE `om_1_team_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_team_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_favorite_6`;
CREATE TABLE `om_1_team_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_team_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_favorite_7`;
CREATE TABLE `om_1_team_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_team_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_favorite_8`;
CREATE TABLE `om_1_team_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_team_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_favorite_9`;
CREATE TABLE `om_1_team_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_team_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_flag`;
CREATE TABLE `om_1_team_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_team_flag
-- ----------------------------
INSERT INTO `om_1_team_flag` VALUES ('1', '1', '1', '1');
INSERT INTO `om_1_team_flag` VALUES ('1', '2', '1', '1');
INSERT INTO `om_1_team_flag` VALUES ('1', '3', '1', '1');
INSERT INTO `om_1_team_flag` VALUES ('1', '4', '1', '1');

-- ----------------------------
-- Table structure for om_1_team_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_form`;
CREATE TABLE `om_1_team_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_team_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_html`;
CREATE TABLE `om_1_team_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_team_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_index`;
CREATE TABLE `om_1_team_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_team_index
-- ----------------------------
INSERT INTO `om_1_team_index` VALUES ('1', '1', '1', '9', '1419822644');
INSERT INTO `om_1_team_index` VALUES ('2', '1', '1', '9', '1419822754');
INSERT INTO `om_1_team_index` VALUES ('3', '1', '1', '9', '1419822805');
INSERT INTO `om_1_team_index` VALUES ('4', '1', '1', '9', '1419822888');

-- ----------------------------
-- Table structure for om_1_team_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_search`;
CREATE TABLE `om_1_team_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_team_search
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_team_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_tag`;
CREATE TABLE `om_1_team_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_team_tag
-- ----------------------------
INSERT INTO `om_1_team_tag` VALUES ('1', '李超', 'lichao', '0');

-- ----------------------------
-- Table structure for om_1_team_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_team_verify`;
CREATE TABLE `om_1_team_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_team_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_admin
-- ----------------------------
DROP TABLE IF EXISTS `om_admin`;
CREATE TABLE `om_admin` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `realname` varchar(50) DEFAULT NULL COMMENT '管理员姓名',
  `usermenu` text COMMENT '自定义面板菜单，序列化数组格式',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of om_admin
-- ----------------------------
INSERT INTO `om_admin` VALUES ('1', '网站创始人', '');

-- ----------------------------
-- Table structure for om_admin_login
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_login`;
CREATE TABLE `om_admin_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned DEFAULT NULL COMMENT '会员uid',
  `loginip` varchar(50) NOT NULL COMMENT '登录Ip',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `useragent` varchar(255) NOT NULL COMMENT '客户端信息',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `loginip` (`loginip`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='登录日志记录';

-- ----------------------------
-- Records of om_admin_login
-- ----------------------------
INSERT INTO `om_admin_login` VALUES ('1', '1', '127.0.0.1', '1418373570', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v39.0.2171.71');
INSERT INTO `om_admin_login` VALUES ('2', '1', '127.0.0.1', '1419491375', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v39.0.2171.71');
INSERT INTO `om_admin_login` VALUES ('3', '1', '127.0.0.1', '1419834872', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v38.0.2125.122');
INSERT INTO `om_admin_login` VALUES ('4', '1', '127.0.0.1', '1420613726', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v39.0.2171.71');
INSERT INTO `om_admin_login` VALUES ('5', '1', '127.0.0.1', '1420682940', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v38.0.2125.122');
INSERT INTO `om_admin_login` VALUES ('6', '1', '127.0.0.1', '1420782460', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v39.0.2171.71');
INSERT INTO `om_admin_login` VALUES ('7', '1', '127.0.0.1', '1421371012', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v38.0.2125.122');
INSERT INTO `om_admin_login` VALUES ('8', '1', '127.0.0.1', '1422423934', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v39.0.2171.71');
INSERT INTO `om_admin_login` VALUES ('9', '1', '127.0.0.1', '1422869415', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v39.0.2171.71');

-- ----------------------------
-- Table structure for om_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_menu`;
CREATE TABLE `om_admin_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级菜单id',
  `name` text NOT NULL COMMENT '菜单语言名称',
  `uri` varchar(255) DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址',
  `mark` varchar(20) DEFAULT NULL COMMENT '菜单标识',
  `displayorder` tinyint(3) unsigned DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `list` (`pid`),
  KEY `displayorder` (`displayorder`),
  KEY `mark` (`mark`),
  KEY `uri` (`uri`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of om_admin_menu
-- ----------------------------
INSERT INTO `om_admin_menu` VALUES ('1', '0', '首页', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('2', '0', '系统', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('3', '0', '网站', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('4', '0', '会员', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('5', '0', '应用', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('6', '1', '我的面板', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('7', '6', '后台首页', 'admin/home/main', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('8', '2', '系统功能', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('9', '2', '系统维护', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('10', '2', '角色权限', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('11', '8', '后台菜单', 'admin/menu/index', '', '', '4');
INSERT INTO `om_admin_menu` VALUES ('12', '9', '数据结构', 'admin/db/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('13', '10', '角色管理', 'admin/role/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('14', '10', '管理员管理', 'admin/root/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('15', '3', '网站功能', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('40', '24', '单页管理', 'admin/page/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('18', '15', '网站配置', 'admin/site/config', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('19', '8', '网站管理', 'admin/site/index', '', '', '8');
INSERT INTO `om_admin_menu` VALUES ('20', '15', '网站导航', 'admin/navigator/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('21', '8', '模块管理', 'admin/module/index', '', '', '9');
INSERT INTO `om_admin_menu` VALUES ('22', '15', '附件管理', 'admin/attachment/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('24', '3', '内容相关', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('25', '4', '会员管理', '/', null, '', '1');
INSERT INTO `om_admin_menu` VALUES ('26', '25', '会员列表', 'member/admin/home/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('27', '25', '会 员 组', 'member/admin/group/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('30', '25', '会员设置', 'member/admin/setting/index', '', '', '98');
INSERT INTO `om_admin_menu` VALUES ('32', '4', '模板风格', '/', null, '', '4');
INSERT INTO `om_admin_menu` VALUES ('33', '25', '自定义字段', 'admin/field/index/rname/member/rid/0', '', '', '99');
INSERT INTO `om_admin_menu` VALUES ('35', '15', '下载镜像', 'admin/downservers/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('37', '25', '快捷登录', 'member/admin/setting/oauth', '', '', '4');
INSERT INTO `om_admin_menu` VALUES ('38', '10', '审核流程', 'admin/verify/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('39', '25', '会员权限', 'member/admin/setting/permission', '', '', '7');
INSERT INTO `om_admin_menu` VALUES ('59', '25', '财务管理', 'member/admin/pay/card', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('60', '24', '联动菜单', 'admin/linkage/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('61', '8', '邮件系统', 'admin/mail/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('62', '9', '系统升级', 'admin/upgrade/index', '', '', '1');
INSERT INTO `om_admin_menu` VALUES ('63', '8', '系统配置', 'admin/system/index', '', '', '1');
INSERT INTO `om_admin_menu` VALUES ('65', '9', '系统体检', 'admin/check/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('66', '8', '操作日志', 'admin/system/oplog', '', '', '4');
INSERT INTO `om_admin_menu` VALUES ('67', '3', '模板风格', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('68', '67', '模板管理', 'admin/tpl/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('69', '67', '风格管理', 'admin/theme/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('70', '67', '标签向导', 'admin/tpl/tag', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('71', '32', '会员模板', 'member/admin/tpl/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('72', '32', '会员风格', 'member/admin/theme/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('73', '80', '空间模板', 'member/admin/spacetpl/index', '', '', '99');
INSERT INTO `om_admin_menu` VALUES ('74', '80', '空间管理', 'member/admin/space/index', '', '', '1');
INSERT INTO `om_admin_menu` VALUES ('75', '5', '应用中心', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('76', '75', '应用管理', 'admin/application/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('77', '24', '文本块管理', 'admin/block/index', '', '', '99');
INSERT INTO `om_admin_menu` VALUES ('78', '25', '会员菜单', 'member/admin/menu/index', '', '', '5');
INSERT INTO `om_admin_menu` VALUES ('79', '6', '资料修改', 'admin/root/my', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('80', '4', '会员空间', '', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('81', '80', '空间模型', 'member/admin/model/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('82', '24', '表单管理', 'admin/form/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('83', '80', '文章管理', 'member/admin/content/index/mid/1', '', 'space-1', '6');
INSERT INTO `om_admin_menu` VALUES ('84', '80', '外链管理', 'member/admin/content/index/mid/2', '', 'space-2', '7');
INSERT INTO `om_admin_menu` VALUES ('85', '80', '日志管理', 'member/admin/content/index/mid/3', '', 'space-3', '8');
INSERT INTO `om_admin_menu` VALUES ('86', '80', '相册管理', 'member/admin/content/index/mid/4', '', 'space-4', '9');
INSERT INTO `om_admin_menu` VALUES ('87', '80', '幻灯管理', 'member/admin/content/index/mid/5', '', 'space-5', '10');
INSERT INTO `om_admin_menu` VALUES ('88', '80', '空间设置', 'member/admin/setting/space', '', '', '199');
INSERT INTO `om_admin_menu` VALUES ('89', '8', '任务队列', 'admin/cron/index', '', '', '3');
INSERT INTO `om_admin_menu` VALUES ('90', '8', '短信系统', 'admin/sms/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('91', '24', 'URL规则', 'admin/urlrule/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('92', '80', '自定义字段', 'admin/field/index/rname/spacetable/rid/0', '', '', '200');
INSERT INTO `om_admin_menu` VALUES ('93', '6', '登录日志', 'admin/root/log', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('94', '6', '后台菜单', 'admin/menu/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('95', '6', '会员菜单', 'member/admin/menu/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('96', '6', '应用管理', 'admin/application/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('97', '6', '模块管理', 'admin/module/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('98', '6', '更新数据', 'admin/home/clear', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('99', '6', '更新全站', 'admin/home/cache', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('100', '6', '系统体检', 'admin/check/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('101', '6', '生成伪静态', 'admin/route/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('102', '80', '默认栏目', 'member/admin/space/init', '', '', '198');
INSERT INTO `om_admin_menu` VALUES ('103', '6', '<b><font color=red>新手入门必看</font></b>', '', 'http://www.omooo.com/help/list-341.html', '', '99');
INSERT INTO `om_admin_menu` VALUES ('104', '25', '会员互动', 'member/admin/sns/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('105', '0', '内容相关', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('106', '105', '内容管理', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('107', '106', '单页管理', 'admin/page/index', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('108', '106', '导航/baner/广告', 'admin/navigator/index', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('109', '106', '文本链接内容', 'admin/block/index', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('241', '239', '待审核文档', 'solution/admin/home/verify', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('240', '239', '已通过文档', 'solution/admin/home/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('239', '238', '文档管理', '', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('237', '234', '标签向导', 'news/admin/tpl/tag', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('238', '0', '解决方案', '', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('236', '234', '风格管理', 'news/admin/theme/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('234', '222', '模板风格', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('235', '234', '模板管理', 'news/admin/tpl/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('233', '229', '模块属性配置', 'admin/module/config/id/8', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('231', '229', '生成静态', 'news/admin/home/html', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('232', '229', '自定义字段', 'admin/field/index/rname/module/rid/8', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('230', '229', '更新地址', 'news/admin/home/url', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('229', '222', '相关功能', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('227', '223', 'Tag标签', 'news/admin/tag/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('228', '223', '单页管理', 'news/admin/page/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('222', '0', '新闻中心', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('223', '222', '文档管理', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('224', '223', '已通过文档', 'news/admin/home/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('226', '223', '栏目分类', 'news/admin/category/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('225', '223', '待审核文档', 'news/admin/home/verify', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('172', '170', '风格管理', 'activities/admin/theme/index', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('173', '170', '标签向导', 'activities/admin/tpl/tag', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('170', '158', '模板风格', '', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('171', '170', '模板管理', 'activities/admin/tpl/index', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('169', '165', '模块属性配置', 'admin/module/config/id/4', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('167', '165', '生成静态', 'activities/admin/home/html', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('168', '165', '自定义字段', 'admin/field/index/rname/module/rid/4', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('166', '165', '更新地址', 'activities/admin/home/url', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('165', '158', '相关功能', '', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('163', '159', 'Tag标签', 'activities/admin/tag/index', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('164', '159', '单页管理', 'activities/admin/page/index', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('162', '159', '栏目分类', 'activities/admin/category/index', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('161', '159', '待审核文档', 'activities/admin/home/verify', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('160', '159', '已通过文档', 'activities/admin/home/index', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('159', '158', '文档管理', '', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('158', '0', '社区活动', '', null, 'module-activities', '0');
INSERT INTO `om_admin_menu` VALUES ('250', '238', '模板风格', '', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('249', '245', '模块属性配置', 'admin/module/config/id/9', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('248', '245', '自定义字段', 'admin/field/index/rname/module/rid/9', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('247', '245', '生成静态', 'solution/admin/home/html', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('246', '245', '更新地址', 'solution/admin/home/url', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('245', '238', '相关功能', '', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('244', '239', '单页管理', 'solution/admin/page/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('243', '239', 'Tag标签', 'solution/admin/tag/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('242', '239', '栏目分类', 'solution/admin/category/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('328', '325', '自定义字段', 'admin/field/index/rname/module/rid/14', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('327', '325', '生成静态', 'product/admin/home/html', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('326', '325', '更新地址', 'product/admin/home/url', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('324', '319', '单页管理', 'product/admin/page/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('325', '318', '相关功能', '', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('323', '319', 'Tag标签', 'product/admin/tag/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('322', '319', '栏目分类', 'product/admin/category/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('321', '319', '待审核文档', 'product/admin/home/verify', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('253', '250', '标签向导', 'solution/admin/tpl/tag', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('252', '250', '风格管理', 'solution/admin/theme/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('251', '250', '模板管理', 'solution/admin/tpl/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('320', '319', '已通过文档', 'product/admin/home/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('319', '318', '文档管理', '', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('317', '314', '标签向导', 'team/admin/tpl/tag', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('318', '0', '产品中心', '', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('316', '314', '风格管理', 'team/admin/theme/index', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('315', '314', '模板管理', 'team/admin/tpl/index', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('314', '302', '模板风格', '', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('312', '309', '自定义字段', 'admin/field/index/rname/module/rid/13', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('313', '309', '模块属性配置', 'admin/module/config/id/13', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('311', '309', '生成静态', 'team/admin/home/html', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('310', '309', '更新地址', 'team/admin/home/url', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('309', '302', '相关功能', '', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('308', '303', '单页管理', 'team/admin/page/index', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('307', '303', 'Tag标签', 'team/admin/tag/index', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('306', '303', '栏目分类', 'team/admin/category/index', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('305', '303', '待审核文档', 'team/admin/home/verify', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('304', '303', '已通过文档', 'team/admin/home/index', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('303', '302', '文档管理', '', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('302', '0', '团队成员', '', null, 'module-team', '0');
INSERT INTO `om_admin_menu` VALUES ('329', '325', '模块属性配置', 'admin/module/config/id/14', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('330', '318', '模板风格', '', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('331', '330', '模板管理', 'product/admin/tpl/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('332', '330', '风格管理', 'product/admin/theme/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('333', '330', '标签向导', 'product/admin/tpl/tag', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('334', '0', '最新项目', '', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('335', '334', '文档管理', '', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('336', '335', '已通过文档', 'cass/admin/home/index', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('337', '335', '待审核文档', 'cass/admin/home/verify', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('338', '335', '栏目分类', 'cass/admin/category/index', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('339', '335', 'Tag标签', 'cass/admin/tag/index', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('340', '335', '单页管理', 'cass/admin/page/index', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('341', '334', '相关功能', '', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('342', '341', '更新地址', 'cass/admin/home/url', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('343', '341', '生成静态', 'cass/admin/home/html', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('344', '341', '自定义字段', 'admin/field/index/rname/module/rid/15', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('345', '341', '模块属性配置', 'admin/module/config/id/15', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('346', '334', '模板风格', '', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('347', '346', '模板管理', 'cass/admin/tpl/index', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('348', '346', '风格管理', 'cass/admin/theme/index', null, 'module-cass', '0');
INSERT INTO `om_admin_menu` VALUES ('349', '346', '标签向导', 'cass/admin/tpl/tag', null, 'module-cass', '0');

-- ----------------------------
-- Table structure for om_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_role`;
CREATE TABLE `om_admin_role` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL COMMENT '允许管理的站点，序列化数组格式',
  `name` text NOT NULL COMMENT '角色组语言名称',
  `system` text NOT NULL COMMENT '系统权限',
  `module` text NOT NULL COMMENT '模块权限',
  `application` text NOT NULL COMMENT '应用权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台角色权限表';

-- ----------------------------
-- Records of om_admin_role
-- ----------------------------
INSERT INTO `om_admin_role` VALUES ('1', '', '超级管理员', '', '', '');
INSERT INTO `om_admin_role` VALUES ('2', '', '网站编辑员', '', '', '');

-- ----------------------------
-- Table structure for om_admin_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_verify`;
CREATE TABLE `om_admin_verify` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '名称',
  `verify` text NOT NULL COMMENT '审核部署',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='审核管理表';

-- ----------------------------
-- Records of om_admin_verify
-- ----------------------------
INSERT INTO `om_admin_verify` VALUES ('1', '审核一次', 'a:1:{i:1;a:2:{i:0;s:1:\\\"2\\\";i:1;s:1:\\\"3\\\";}}');

-- ----------------------------
-- Table structure for om_application
-- ----------------------------
DROP TABLE IF EXISTS `om_application`;
CREATE TABLE `om_application` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `module` text COMMENT '模块划分',
  `dirname` varchar(50) NOT NULL COMMENT '目录名称',
  `setting` text COMMENT '配置信息',
  `disabled` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用表';

-- ----------------------------
-- Records of om_application
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment`;
CREATE TABLE `om_attachment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `siteid` tinyint(3) unsigned NOT NULL COMMENT '站点id',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `tableid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '附件副表id',
  `download` mediumint(8) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `filesize` int(10) unsigned NOT NULL COMMENT '文件大小',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filemd5` varchar(50) NOT NULL COMMENT '文件md5值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `author` (`author`),
  KEY `relatedtid` (`related`),
  KEY `fileext` (`fileext`),
  KEY `filemd5` (`filemd5`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of om_attachment
-- ----------------------------
INSERT INTO `om_attachment` VALUES ('1', '1', 'omooo', '1', 'om_1_page-2', '1', '0', '156201', 'jpg', '1f986fd98f03baa01ea329981a5b7617');
INSERT INTO `om_attachment` VALUES ('2', '1', 'omooo', '1', 'om_1_page-2', '1', '0', '138209', 'jpg', '31c3d4e2b0749a57b16889e3b9800a7c');
INSERT INTO `om_attachment` VALUES ('3', '1', 'omooo', '1', 'om_1_page-2', '1', '0', '4577', 'jpg', '24f7fa89d18485c6e8385f6d762e30c8');
INSERT INTO `om_attachment` VALUES ('4', '1', 'omooo', '1', 'om_1_page-2', '1', '0', '46806', 'jpg', 'ca8426de2f1307e6f7e8466fd2182f1b');
INSERT INTO `om_attachment` VALUES ('5', '1', 'omooo', '1', 'om_1_page-2', '1', '0', '27063', 'jpg', 'c77dc15fe99751c2d671fb7204acaf80');
INSERT INTO `om_attachment` VALUES ('7', '1', 'omooo', '1', 'om_1_page-5', '1', '0', '70031', 'jpg', '861a3d33d21c0b05d63e67d741e10bd7');
INSERT INTO `om_attachment` VALUES ('8', '1', 'omooo', '1', 'om_1_page-5', '1', '0', '75868', 'jpg', '4e59f7d0846bae35978311046ff0297f');
INSERT INTO `om_attachment` VALUES ('9', '1', 'omooo', '1', 'om_1_activities-6', '1', '0', '64010', 'jpg', 'b4bf6cfd3d576ac4348e09b6f5e2dafb');
INSERT INTO `om_attachment` VALUES ('10', '1', 'omooo', '1', 'om_1_activities-6', '1', '0', '68168', 'jpg', '761c14d157e4f06dcda31450fa413c5e');
INSERT INTO `om_attachment` VALUES ('16', '1', 'omooo', '1', 'om_1_news-1', '1', '0', '72556', 'jpg', '3cc5c65cb345125466c3e5bad9ee8db2');
INSERT INTO `om_attachment` VALUES ('15', '1', 'omooo', '1', 'om_1_news-1', '1', '0', '49356', 'jpg', 'caa8280d1941798248ea07ad8e2c42ff');
INSERT INTO `om_attachment` VALUES ('18', '1', 'omooo', '1', 'om_1_news-3', '1', '0', '81252', 'jpg', '41701132a4090ae839174e90584d13da');
INSERT INTO `om_attachment` VALUES ('17', '1', 'omooo', '1', 'om_1_news-2', '1', '0', '30856', 'jpg', '8cbe712a690ff500cd2c4bae091d0f93');
INSERT INTO `om_attachment` VALUES ('19', '1', 'omooo', '1', 'om_1_news-3', '1', '0', '138185', 'png', 'b2bc752259a8a3fc827b936afdbed0ee');
INSERT INTO `om_attachment` VALUES ('20', '1', 'omooo', '1', 'om_1_news-3', '1', '0', '71315', 'png', '3dde788beae7a13af072cacd90381bea');
INSERT INTO `om_attachment` VALUES ('21', '1', 'omooo', '1', 'om_1_news-5', '1', '0', '30024', 'jpg', '05329e8332223b41c7bbce7e35e2215c');
INSERT INTO `om_attachment` VALUES ('22', '1', 'omooo', '1', 'om_1_news-6', '1', '0', '33605', 'jpg', 'f45e82deff57f0641669c005ca2554fa');
INSERT INTO `om_attachment` VALUES ('23', '1', 'omooo', '1', 'om_1_news-6', '1', '0', '29393', 'jpg', 'bd39388719f16200e1755b698b0b3fd0');
INSERT INTO `om_attachment` VALUES ('24', '1', 'omooo', '1', 'om_1_news-7', '1', '0', '21811', 'jpg', '4431c7ff14b4571c5249b4313f43d862');
INSERT INTO `om_attachment` VALUES ('25', '1', 'omooo', '1', 'om_1_news-8', '1', '0', '42220', 'jpg', '0b016f4d300b259f7ec0feaccbab3d36');
INSERT INTO `om_attachment` VALUES ('26', '1', 'omooo', '1', 'om_1_news-9', '1', '0', '76066', 'jpg', '0d6159b89730d35f561e2d46b415c230');
INSERT INTO `om_attachment` VALUES ('27', '1', 'omooo', '1', 'om_1_news-10', '1', '0', '82648', 'jpg', 'b063d902e7b5150e5a3f3596160f727e');
INSERT INTO `om_attachment` VALUES ('28', '1', 'omooo', '1', 'om_1_news-12', '1', '0', '128584', 'png', 'cc82318b3e6331e9641cb4b9ff4a9f1a');
INSERT INTO `om_attachment` VALUES ('29', '1', 'omooo', '1', 'om_1_news-13', '1', '0', '46625', 'jpg', 'ff8f21eb4d4e962f6d1daa4d11041945');
INSERT INTO `om_attachment` VALUES ('30', '1', 'omooo', '1', 'om_1_news-13', '1', '0', '44372', 'jpg', '1eb75244d682a8ba06ebc57a82b606b8');
INSERT INTO `om_attachment` VALUES ('31', '1', 'omooo', '1', 'om_1_news-14', '1', '0', '50692', 'jpg', '4b1fd72cdf1207919de34097e3eda050');
INSERT INTO `om_attachment` VALUES ('32', '1', 'omooo', '1', 'om_1_news-14', '1', '0', '55336', 'jpg', '7af658a5e2ec10b213356aa331eb9590');
INSERT INTO `om_attachment` VALUES ('39', '1', 'omooo', '1', 'om_1_news-15', '1', '0', '190565', 'png', '165d5d8e878dc4adaa518fa0235ca730');
INSERT INTO `om_attachment` VALUES ('35', '1', 'omooo', '1', 'om_1_product_category-2', '1', '0', '190565', 'png', '165d5d8e878dc4adaa518fa0235ca730');
INSERT INTO `om_attachment` VALUES ('38', '1', 'omooo', '1', 'om_1_news-15', '1', '0', '46795', 'png', '2508df8e876d1618c4c5790d1c8d8536');
INSERT INTO `om_attachment` VALUES ('37', '1', 'omooo', '1', 'om_1_news-15', '1', '0', '28075', 'png', 'cf79f36b204a4e0bc8aa3c2a8e832735');
INSERT INTO `om_attachment` VALUES ('40', '1', 'omooo', '1', 'om_1_news-16', '1', '0', '37044', 'jpg', '624b33b2576dd14847641fabc1fb7d8e');
INSERT INTO `om_attachment` VALUES ('41', '1', 'omooo', '1', 'om_1_news-17', '1', '0', '166697', 'png', '8fe578c0e94ff31c81ec29d0c60a91d2');
INSERT INTO `om_attachment` VALUES ('42', '1', 'omooo', '1', 'om_1_news-18', '1', '0', '168514', 'jpg', 'e311dee4659f9e06931d71b7fcb51f37');
INSERT INTO `om_attachment` VALUES ('43', '1', 'omooo', '1', 'om_1_news-19', '1', '0', '173925', 'jpg', 'd47287e7f4b45a37f84ed50f8c07bbbf');
INSERT INTO `om_attachment` VALUES ('44', '1', 'omooo', '1', 'om_1_news-20', '1', '0', '54782', 'jpg', 'b949f3da382356d9abd2b78908510bca');
INSERT INTO `om_attachment` VALUES ('45', '1', 'omooo', '1', 'om_1_news-21', '1', '0', '74080', 'jpg', '38cf910c620485b609e8f9715c0e9004');
INSERT INTO `om_attachment` VALUES ('46', '1', 'omooo', '1', 'om_1_news-22', '1', '0', '64189', 'png', 'c968bd218d57829fac891f32183a51ef');
INSERT INTO `om_attachment` VALUES ('47', '1', 'omooo', '1', 'om_1_solution-1', '1', '0', '36837', 'jpg', 'cfab8a0de8ba12627dd787e6fe7a772a');
INSERT INTO `om_attachment` VALUES ('48', '1', 'omooo', '1', 'om_1_solution-1', '1', '0', '30412', 'jpg', '58d1d46c418f25e817eb05eb5c72e62a');
INSERT INTO `om_attachment` VALUES ('49', '1', 'omooo', '1', 'om_1_solution-2', '1', '0', '49113', 'png', '91b15f57b3d98a78184e8239b4bb6c53');
INSERT INTO `om_attachment` VALUES ('50', '1', 'omooo', '1', 'om_1_solution-2', '1', '0', '62069', 'png', 'df1ee771329b8d10791230791d9d375a');
INSERT INTO `om_attachment` VALUES ('51', '1', 'omooo', '1', 'om_1_solution-2', '1', '0', '45987', 'jpg', '603cdc111a1cf6e2c0d772cff0ca63c0');
INSERT INTO `om_attachment` VALUES ('52', '1', 'omooo', '1', 'om_1_solution-2', '1', '0', '43066', 'jpg', '062075bc747cfbb40f36fa8fc79fc806');
INSERT INTO `om_attachment` VALUES ('53', '1', 'omooo', '1', 'om_1_solution-2', '1', '0', '26782', 'jpg', '9156a15339d0ed41aeb45a498472cd8d');
INSERT INTO `om_attachment` VALUES ('54', '1', 'omooo', '1', 'om_1_solution-2', '1', '0', '16738', 'jpg', 'f7df6a7dd803f66efb30805d3af685e8');
INSERT INTO `om_attachment` VALUES ('55', '1', 'omooo', '1', 'om_1_team-1', '1', '0', '61911', 'png', 'd840b5e3acf2a69808846a9530014a94');
INSERT INTO `om_attachment` VALUES ('59', '1', 'omooo', '1', 'om_1_team-4', '1', '0', '71404', 'png', 'e931e83fe87f9cf27c9119b326770c16');
INSERT INTO `om_attachment` VALUES ('57', '1', 'omooo', '1', 'om_1_team-3', '1', '0', '71680', 'png', '1809165f85ce7295e3b43739e5db0ec3');
INSERT INTO `om_attachment` VALUES ('58', '1', 'omooo', '1', 'om_1_team-2', '1', '0', '55828', 'png', '436da7802ef73dca5dd6593705fd6285');
INSERT INTO `om_attachment` VALUES ('60', '1', 'omooo', '1', 'om_1_product-1', '1', '0', '71973', 'png', 'f11373b258e2ce405b363d8c99feafb7');
INSERT INTO `om_attachment` VALUES ('61', '1', 'omooo', '1', 'om_1_product-1', '1', '0', '60761', 'png', '419436aa8cb12096ed401a1b1d366595');
INSERT INTO `om_attachment` VALUES ('62', '1', 'omooo', '1', 'om_1_product-2', '1', '0', '13426', 'jpg', 'a9aebeb0ac0ee13f7906295397e10d3b');
INSERT INTO `om_attachment` VALUES ('63', '1', 'omooo', '1', 'om_1_product-3', '1', '0', '49639', 'png', '5a4fc64ab3e4970d0fbf1e678626d79f');
INSERT INTO `om_attachment` VALUES ('64', '1', 'omooo', '1', 'om_1_product-4', '1', '0', '65625', 'png', 'd3e14ae025007731fcf66d5ecb8d018c');
INSERT INTO `om_attachment` VALUES ('65', '1', 'omooo', '1', 'om_1_product-7', '1', '0', '18391', 'jpg', 'b5b1e8cf5ba8ac5a1d8171b7a9fe42ef');
INSERT INTO `om_attachment` VALUES ('66', '1', 'omooo', '1', 'om_1_product-8', '1', '0', '59685', 'png', '85145f6421fbb5773d58beea19f96db1');
INSERT INTO `om_attachment` VALUES ('67', '1', 'omooo', '1', 'om_1_product-9', '1', '0', '57633', 'png', '287b109a4e31d90635b25a7d3d1d517d');
INSERT INTO `om_attachment` VALUES ('68', '1', 'omooo', '1', 'om_1_product-10', '1', '0', '58457', 'png', 'f1a9cc40b7983648b2b5757092eac3f3');
INSERT INTO `om_attachment` VALUES ('69', '1', 'omooo', '1', 'om_1_product-11', '1', '0', '41797', 'png', '761c3b795ab34d54f6a57208122ea121');
INSERT INTO `om_attachment` VALUES ('70', '1', 'omooo', '1', 'om_1_product-12', '1', '0', '5394', 'jpg', '41559579cbc45fc4e0d9c5bf96fb6d81');
INSERT INTO `om_attachment` VALUES ('71', '1', 'omooo', '1', 'om_1_product-13', '1', '0', '16864', 'png', '42d4111fdadb9d3c30b672772ad25f0e');
INSERT INTO `om_attachment` VALUES ('72', '1', 'omooo', '1', 'om_1_product-14', '1', '0', '16146', 'jpg', 'e886bcac1773a21776c314417838b027');
INSERT INTO `om_attachment` VALUES ('73', '1', 'omooo', '1', 'om_1_product-14', '1', '0', '65109', 'png', 'c981a5c617f5e17c18ce46c20f66f366');
INSERT INTO `om_attachment` VALUES ('74', '1', 'omooo', '1', 'om_1_product-15', '1', '0', '72335', 'png', '55c40d187c83e5215d9bf1f7804f5aa4');
INSERT INTO `om_attachment` VALUES ('75', '1', 'omooo', '1', 'om_1_product-16', '1', '0', '17476', 'jpg', 'ba3dae09916f9ea140f50470467d619e');
INSERT INTO `om_attachment` VALUES ('76', '1', 'omooo', '1', 'om_1_product-16', '1', '0', '22550', 'jpg', '7b2d7d6cc8dc864a2763de88a65c01d0');
INSERT INTO `om_attachment` VALUES ('77', '1', 'omooo', '1', 'om_1_product-16', '1', '0', '18264', 'jpg', '930b895106729eec1ba23865efb345d3');
INSERT INTO `om_attachment` VALUES ('78', '1', 'omooo', '1', 'om_1_product-16', '1', '0', '43532', 'jpg', '475d1255792bc3307b34a3c737c4e884');
INSERT INTO `om_attachment` VALUES ('79', '1', 'omooo', '1', 'om_1_product-17', '1', '0', '13426', 'jpg', 'a9aebeb0ac0ee13f7906295397e10d3b');
INSERT INTO `om_attachment` VALUES ('80', '1', 'omooo', '1', 'om_1_product-17', '1', '0', '21011', 'jpg', 'afead5b3a6f5ab2bb351cefc1af733ef');
INSERT INTO `om_attachment` VALUES ('81', '1', 'omooo', '1', 'om_1_product-17', '1', '0', '17166', 'jpg', '5de972dc55854ee1c3070e6437b09e9b');
INSERT INTO `om_attachment` VALUES ('82', '1', 'omooo', '1', 'om_1_product-18', '1', '0', '70597', 'png', '2d4fb08b0f0373c34290d690c9bc770a');
INSERT INTO `om_attachment` VALUES ('83', '1', 'omooo', '1', 'om_1_product-19', '1', '0', '176308', 'png', '2db3d7c4faa3420882d85c1f98c309a6');
INSERT INTO `om_attachment` VALUES ('84', '1', 'omooo', '1', 'om_1_product-19', '1', '0', '103658', 'png', 'f9c2d899937cc17107be176a141f5b08');
INSERT INTO `om_attachment` VALUES ('85', '1', 'omooo', '1', 'om_1_product-19', '1', '0', '39659', 'jpg', '60d37aa92e2ee1303b9f076b32028102');
INSERT INTO `om_attachment` VALUES ('98', '1', 'omooo', '1', 'om_1_navigator-16', '1', '0', '136591', 'jpg', 'd185871d30232fee120d0f50688a8fb5');
INSERT INTO `om_attachment` VALUES ('106', '1', 'omooo', '1', 'om_1_navigator-33', '1', '0', '274801', 'png', 'c5e69cb0dd31a0c168a47b0db12eaa12');
INSERT INTO `om_attachment` VALUES ('102', '1', 'omooo', '1', 'om_1_navigator-32', '1', '0', '3296123', 'mp4', 'ea64c5995136966a9f7931e584b80547');
INSERT INTO `om_attachment` VALUES ('89', '1', 'omooo', '1', 'om_1_navigator-23', '1', '0', '1495', 'png', 'b6d1c015f630f98037276942f3d6409d');
INSERT INTO `om_attachment` VALUES ('90', '1', 'omooo', '1', 'om_1_navigator-24', '1', '0', '38636', 'jpg', '743bd4c2faf68dcecc74e12b3d7d0498');
INSERT INTO `om_attachment` VALUES ('91', '1', 'omooo', '1', 'om_1_activities_category-1', '1', '0', '190566', 'png', '165d5d8e878dc4adaa518fa0235ca730');
INSERT INTO `om_attachment` VALUES ('105', '1', 'omooo', '1', 'om_1_navigator-33', '1', '0', '50125', 'jpg', 'dd92992abd0511d2b6ca121afb44a504');
INSERT INTO `om_attachment` VALUES ('113', '1', 'omooo', '1', 'om_1_navigator-17', '1', '0', '95334', 'png', '494a3b309ef6d3291b0a38fad0e74d5e');
INSERT INTO `om_attachment` VALUES ('103', '1', 'omooo', '1', 'om_1_navigator-32', '1', '0', '6880338', 'webm', '77a9b0006d1acd3a6b41fe8d534352a0');
INSERT INTO `om_attachment` VALUES ('104', '1', 'omooo', '1', 'om_1_navigator-32', '1', '0', '934779', 'ogv', '994735f67986a1a8f228d9e01eb570a1');
INSERT INTO `om_attachment` VALUES ('97', '1', 'omooo', '1', 'om_1_navigator-15', '1', '0', '8735', 'png', '1c78c9ea70e22b170d5c079e24eadd26');
INSERT INTO `om_attachment` VALUES ('107', '1', 'omooo', '1', 'om_1_navigator-34', '1', '0', '134083', 'jpg', 'b13b50eefc914897a872a70a08fecdbb');
INSERT INTO `om_attachment` VALUES ('108', '1', 'omooo', '1', 'om_1_navigator-34', '1', '0', '184556', 'png', '869c36cb632e314b5d39e5fdba8cdd1c');
INSERT INTO `om_attachment` VALUES ('109', '1', 'omooo', '1', 'om_1_navigator-15', '1', '0', '319836', 'jpg', 'b99fedbba3e7abacbbf87c74c1e51b4f');
INSERT INTO `om_attachment` VALUES ('110', '1', 'omooo', '1', 'om_1_navigator-16', '1', '0', '143268', 'png', 'be3b02395c14741e205f4b115aa90a50');
INSERT INTO `om_attachment` VALUES ('115', '1', 'omooo', '1', 'om_1_navigator-32', '1', '0', '177295', 'jpg', '46f778a34c8a3ac87c82e1ec1580b30e');
INSERT INTO `om_attachment` VALUES ('112', '1', 'omooo', '1', 'om_1_navigator-17', '1', '0', '10691', 'jpg', 'a0ac68497309a6220c39ef1b00f04d37');
INSERT INTO `om_attachment` VALUES ('114', '1', 'omooo', '1', 'om_1_navigator-17', '1', '0', '6820', 'png', 'fd948c20d812192ece2debf4cd536d86');
INSERT INTO `om_attachment` VALUES ('116', '1', 'omooo', '1', 'om_1_cass-1', '1', '0', '103619', 'png', '373840ae802954ed151dc19283317310');
INSERT INTO `om_attachment` VALUES ('117', '1', 'omooo', '1', 'om_1_cass-2', '1', '0', '103619', 'png', '373840ae802954ed151dc19283317310');

-- ----------------------------
-- Table structure for om_attachment_0
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_0`;
CREATE TABLE `om_attachment_0` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表0';

-- ----------------------------
-- Records of om_attachment_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_1
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_1`;
CREATE TABLE `om_attachment_1` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表1';

-- ----------------------------
-- Records of om_attachment_1
-- ----------------------------
INSERT INTO `om_attachment_1` VALUES ('1', '1', 'omooo', 'om_1_page-2', 'about_slider_01', 'jpg', '156201', 'member/uploadfile/201412/6b0e8caf91.jpg', '0', '', '1418368133');
INSERT INTO `om_attachment_1` VALUES ('2', '1', 'omooo', 'om_1_page-2', 'about_slider_02', 'jpg', '138209', 'member/uploadfile/201412/a09b53293a.jpg', '0', '', '1418368143');
INSERT INTO `om_attachment_1` VALUES ('4', '1', 'omooo', 'om_1_page-2', '图片2', 'jpg', '46806', 'member/uploadfile/ueditor/201412/f7479b1193.jpg', '0', '', '1419470686');
INSERT INTO `om_attachment_1` VALUES ('3', '1', 'omooo', 'om_1_page-2', '图片1', 'jpg', '4577', 'member/uploadfile/ueditor/201412/dcb83e4270.jpg', '0', '', '1419470659');
INSERT INTO `om_attachment_1` VALUES ('5', '1', 'omooo', 'om_1_page-2', '图片3', 'jpg', '27063', 'member/uploadfile/ueditor/201412/46bbe9a34e.jpg', '0', '', '1419470712');
INSERT INTO `om_attachment_1` VALUES ('7', '1', 'omooo', 'om_1_page-5', 'about_mini_01 (1)', 'jpg', '70031', 'member/uploadfile/201412/57ca746e4b.jpg', '0', '', '1419476353');
INSERT INTO `om_attachment_1` VALUES ('8', '1', 'omooo', 'om_1_page-5', 'about_mini_02', 'jpg', '75868', 'member/uploadfile/201412/a4ce8924ba.jpg', '0', '', '1419476388');
INSERT INTO `om_attachment_1` VALUES ('9', '1', 'omooo', 'om_1_activities-6', 'blog_fullwidth_01', 'jpg', '64010', 'member/uploadfile/201412/bb92b5c440.jpg', '0', '', '1419478452');
INSERT INTO `om_attachment_1` VALUES ('10', '1', 'omooo', 'om_1_activities-6', 'blog_fullwidth_02', 'jpg', '68168', 'member/uploadfile/201412/970676d635.jpg', '0', '', '1419478461');
INSERT INTO `om_attachment_1` VALUES ('15', '1', 'omooo', 'om_1_news-1', '图片4', 'jpg', '49356', 'member/uploadfile/ueditor/201412/83592e7f92.jpg', '0', '', '1419480258');
INSERT INTO `om_attachment_1` VALUES ('16', '1', 'omooo', 'om_1_news-1', '图片5', 'jpg', '72556', 'member/uploadfile/ueditor/201412/2dec4be018.jpg', '0', '', '1419480263');
INSERT INTO `om_attachment_1` VALUES ('17', '1', 'omooo', 'om_1_news-2', '图片6', 'jpg', '30856', 'member/uploadfile/ueditor/201412/cb93003013.jpg', '0', '', '1419480341');
INSERT INTO `om_attachment_1` VALUES ('18', '1', 'omooo', 'om_1_news-3', '图片7', 'jpg', '81252', 'member/uploadfile/ueditor/201412/45d7d65828.jpg', '0', '', '1419480400');
INSERT INTO `om_attachment_1` VALUES ('19', '1', 'omooo', 'om_1_news-3', '图片8', 'png', '138185', 'member/uploadfile/ueditor/201412/bb805bb4a5.png', '0', '', '1419480407');
INSERT INTO `om_attachment_1` VALUES ('20', '1', 'omooo', 'om_1_news-3', '图片9', 'png', '71315', 'member/uploadfile/ueditor/201412/e844d47d2c.png', '0', '', '1419480412');
INSERT INTO `om_attachment_1` VALUES ('21', '1', 'omooo', 'om_1_news-5', '图片10', 'jpg', '30024', 'member/uploadfile/ueditor/201412/775ce47040.jpg', '0', '', '1419480516');
INSERT INTO `om_attachment_1` VALUES ('22', '1', 'omooo', 'om_1_news-6', '图片11', 'jpg', '33605', 'member/uploadfile/ueditor/201412/06d08d1a6f.jpg', '0', '', '1419482506');
INSERT INTO `om_attachment_1` VALUES ('23', '1', 'omooo', 'om_1_news-6', '图片12', 'jpg', '29393', 'member/uploadfile/ueditor/201412/2689aa3ea4.jpg', '0', '', '1419482514');
INSERT INTO `om_attachment_1` VALUES ('24', '1', 'omooo', 'om_1_news-7', '图片13', 'jpg', '21811', 'member/uploadfile/ueditor/201412/3b933a45f5.jpg', '0', '', '1419482568');
INSERT INTO `om_attachment_1` VALUES ('25', '1', 'omooo', 'om_1_news-8', '图片14', 'jpg', '42220', 'member/uploadfile/ueditor/201412/b82ca1e165.jpg', '0', '', '1419482631');
INSERT INTO `om_attachment_1` VALUES ('26', '1', 'omooo', 'om_1_news-9', '图片15', 'jpg', '76066', 'member/uploadfile/ueditor/201412/7e82816c13.jpg', '0', '', '1419482664');
INSERT INTO `om_attachment_1` VALUES ('27', '1', 'omooo', 'om_1_news-10', '图片16', 'jpg', '82648', 'member/uploadfile/ueditor/201412/f284f22e53.jpg', '0', '', '1419482705');
INSERT INTO `om_attachment_1` VALUES ('28', '1', 'omooo', 'om_1_news-12', '图片17', 'png', '128584', 'member/uploadfile/ueditor/201412/3220ae1f9b.png', '0', '', '1419482795');
INSERT INTO `om_attachment_1` VALUES ('29', '1', 'omooo', 'om_1_news-13', '图片18', 'jpg', '46625', 'member/uploadfile/ueditor/201412/095fb25273.jpg', '0', '', '1419482856');
INSERT INTO `om_attachment_1` VALUES ('30', '1', 'omooo', 'om_1_news-13', '图片19', 'jpg', '44372', 'member/uploadfile/ueditor/201412/50358c72df.jpg', '0', '', '1419482860');
INSERT INTO `om_attachment_1` VALUES ('31', '1', 'omooo', 'om_1_news-14', '图片20', 'jpg', '50692', 'member/uploadfile/ueditor/201412/a5c317aacd.jpg', '0', '', '1419482915');
INSERT INTO `om_attachment_1` VALUES ('32', '1', 'omooo', 'om_1_news-14', '图片21', 'jpg', '55336', 'member/uploadfile/ueditor/201412/e2e3ae539d.jpg', '0', '', '1419482920');
INSERT INTO `om_attachment_1` VALUES ('38', '1', 'omooo', 'om_1_news-15', '图片23', 'png', '46795', 'member/uploadfile/ueditor/201412/4b024406da.png', '0', '', '1419483487');
INSERT INTO `om_attachment_1` VALUES ('37', '1', 'omooo', 'om_1_news-15', '图片22', 'png', '28075', 'member/uploadfile/ueditor/201412/820e68f204.png', '0', '', '1419483482');
INSERT INTO `om_attachment_1` VALUES ('39', '1', 'omooo', 'om_1_news-15', '图片24', 'png', '190565', 'member/uploadfile/ueditor/201412/35832e1731.png', '0', '', '1419483492');
INSERT INTO `om_attachment_1` VALUES ('40', '1', 'omooo', 'om_1_news-16', '图片25', 'jpg', '37044', 'member/uploadfile/ueditor/201412/b570c771db.jpg', '0', '', '1419483558');
INSERT INTO `om_attachment_1` VALUES ('41', '1', 'omooo', 'om_1_news-17', '图片26', 'png', '166697', 'member/uploadfile/ueditor/201412/4e4650c697.png', '0', '', '1419483609');
INSERT INTO `om_attachment_1` VALUES ('42', '1', 'omooo', 'om_1_news-18', '图片27', 'jpg', '168514', 'member/uploadfile/ueditor/201412/0d19ae46c2.jpg', '0', '', '1419483685');
INSERT INTO `om_attachment_1` VALUES ('43', '1', 'omooo', 'om_1_news-19', '图片28', 'jpg', '173925', 'member/uploadfile/ueditor/201412/99fd3a0ea9.jpg', '0', '', '1419484318');
INSERT INTO `om_attachment_1` VALUES ('44', '1', 'omooo', 'om_1_news-20', '图片29', 'jpg', '54782', 'member/uploadfile/ueditor/201412/96f0364c61.jpg', '0', '', '1419489491');
INSERT INTO `om_attachment_1` VALUES ('45', '1', 'omooo', 'om_1_news-21', '图片30', 'jpg', '74080', 'member/uploadfile/ueditor/201412/2f7be86687.jpg', '0', '', '1419489540');
INSERT INTO `om_attachment_1` VALUES ('46', '1', 'omooo', 'om_1_news-22', '图片31', 'png', '64189', 'member/uploadfile/ueditor/201412/f9915d482a.png', '0', '', '1419489595');
INSERT INTO `om_attachment_1` VALUES ('47', '1', 'omooo', 'om_1_solution-1', '图片32', 'jpg', '36837', 'member/uploadfile/ueditor/201412/30670e7819.jpg', '0', '', '1419490127');
INSERT INTO `om_attachment_1` VALUES ('48', '1', 'omooo', 'om_1_solution-1', '图片33', 'jpg', '30412', 'member/uploadfile/ueditor/201412/92a392df60.jpg', '0', '', '1419490210');
INSERT INTO `om_attachment_1` VALUES ('51', '1', 'omooo', 'om_1_solution-2', '图片36', 'jpg', '45987', 'member/uploadfile/ueditor/201412/2bbbb604a2.jpg', '0', '', '1419490406');
INSERT INTO `om_attachment_1` VALUES ('50', '1', 'omooo', 'om_1_solution-2', '图片35', 'png', '62069', 'member/uploadfile/ueditor/201412/26989589e3.png', '0', '', '1419490385');
INSERT INTO `om_attachment_1` VALUES ('49', '1', 'omooo', 'om_1_solution-2', '图片34', 'png', '49113', 'member/uploadfile/ueditor/201412/8f48797231.png', '0', '', '1419490357');
INSERT INTO `om_attachment_1` VALUES ('52', '1', 'omooo', 'om_1_solution-2', '图片37', 'jpg', '43066', 'member/uploadfile/ueditor/201412/e34ff4f02c.jpg', '0', '', '1419490417');
INSERT INTO `om_attachment_1` VALUES ('53', '1', 'omooo', 'om_1_solution-2', '图片38', 'jpg', '26782', 'member/uploadfile/ueditor/201412/225c49a20e.jpg', '0', '', '1419490429');
INSERT INTO `om_attachment_1` VALUES ('54', '1', 'omooo', 'om_1_solution-2', '图片39', 'jpg', '16738', 'member/uploadfile/ueditor/201412/2e56bfe995.jpg', '0', '', '1419490447');
INSERT INTO `om_attachment_1` VALUES ('55', '1', 'omooo', 'om_1_team-1', '01_team', 'png', '61911', 'member/uploadfile/201412/d04c5d13dc.png', '0', '', '1419822736');
INSERT INTO `om_attachment_1` VALUES ('58', '1', 'omooo', 'om_1_team-2', '02_team', 'png', '55828', 'member/uploadfile/201412/f9686608bd.png', '0', '', '1419822882');
INSERT INTO `om_attachment_1` VALUES ('57', '1', 'omooo', 'om_1_team-3', '03_team', 'png', '71680', 'member/uploadfile/201412/73f1783a11.png', '0', '', '1419822830');
INSERT INTO `om_attachment_1` VALUES ('59', '1', 'omooo', 'om_1_team-4', '04_team', 'png', '71404', 'member/uploadfile/201412/e4ee5b0545.png', '0', '', '1419822902');
INSERT INTO `om_attachment_1` VALUES ('60', '1', 'omooo', 'om_1_product-1', '图片1', 'png', '71973', 'member/uploadfile/ueditor/201412/a6ee6ae7eb.png', '0', '', '1419824393');
INSERT INTO `om_attachment_1` VALUES ('61', '1', 'omooo', 'om_1_product-1', '图片2', 'png', '60761', 'member/uploadfile/ueditor/201412/c529af2cea.png', '0', '', '1419824468');
INSERT INTO `om_attachment_1` VALUES ('62', '1', 'omooo', 'om_1_product-2', '图片3', 'jpg', '13426', 'member/uploadfile/ueditor/201412/d75d9cbcb6.jpg', '0', '', '1419824651');
INSERT INTO `om_attachment_1` VALUES ('63', '1', 'omooo', 'om_1_product-3', '图片4', 'png', '49639', 'member/uploadfile/ueditor/201412/12c25ed5d7.png', '0', '', '1419824705');
INSERT INTO `om_attachment_1` VALUES ('64', '1', 'omooo', 'om_1_product-4', '图片5', 'png', '65625', 'member/uploadfile/ueditor/201412/17a69710ef.png', '0', '', '1419824760');
INSERT INTO `om_attachment_1` VALUES ('65', '1', 'omooo', 'om_1_product-7', '图片6', 'jpg', '18391', 'member/uploadfile/ueditor/201412/224d759a91.jpg', '0', '', '1419824851');
INSERT INTO `om_attachment_1` VALUES ('66', '1', 'omooo', 'om_1_product-8', '图片7', 'png', '59685', 'member/uploadfile/ueditor/201412/38c131905c.png', '0', '', '1419824879');
INSERT INTO `om_attachment_1` VALUES ('67', '1', 'omooo', 'om_1_product-9', '图片8', 'png', '57633', 'member/uploadfile/ueditor/201412/022a3a4ca6.png', '0', '', '1419824912');
INSERT INTO `om_attachment_1` VALUES ('68', '1', 'omooo', 'om_1_product-10', '图片9', 'png', '58457', 'member/uploadfile/ueditor/201412/a52da97845.png', '0', '', '1419824967');
INSERT INTO `om_attachment_1` VALUES ('69', '1', 'omooo', 'om_1_product-11', '图片10', 'png', '41797', 'member/uploadfile/ueditor/201412/46d884d50b.png', '0', '', '1419825056');
INSERT INTO `om_attachment_1` VALUES ('70', '1', 'omooo', 'om_1_product-12', '图片11', 'jpg', '5394', 'member/uploadfile/ueditor/201412/aa921c8ba4.jpg', '0', '', '1419825089');
INSERT INTO `om_attachment_1` VALUES ('71', '1', 'omooo', 'om_1_product-13', '图片12', 'png', '16864', 'member/uploadfile/ueditor/201412/bc2894beec.png', '0', '', '1419825116');
INSERT INTO `om_attachment_1` VALUES ('72', '1', 'omooo', 'om_1_product-14', '图片13', 'jpg', '16146', 'member/uploadfile/ueditor/201412/5bafe5675b.jpg', '0', '', '1419825171');
INSERT INTO `om_attachment_1` VALUES ('73', '1', 'omooo', 'om_1_product-14', '图片14', 'png', '65109', 'member/uploadfile/ueditor/201412/effd05b8a4.png', '0', '', '1419825184');
INSERT INTO `om_attachment_1` VALUES ('74', '1', 'omooo', 'om_1_product-15', '图片15', 'png', '72335', 'member/uploadfile/ueditor/201412/c936faba56.png', '0', '', '1419825217');
INSERT INTO `om_attachment_1` VALUES ('78', '1', 'omooo', 'om_1_product-16', '图片20', 'jpg', '43532', 'member/uploadfile/ueditor/201412/95c3d4ad83.jpg', '0', '', '1419828433');
INSERT INTO `om_attachment_1` VALUES ('75', '1', 'omooo', 'om_1_product-16', '图片17', 'jpg', '17476', 'member/uploadfile/ueditor/201412/90128e3cad.jpg', '0', '', '1419828376');
INSERT INTO `om_attachment_1` VALUES ('76', '1', 'omooo', 'om_1_product-16', '图片18', 'jpg', '22550', 'member/uploadfile/ueditor/201412/cc3a453420.jpg', '0', '', '1419828395');
INSERT INTO `om_attachment_1` VALUES ('77', '1', 'omooo', 'om_1_product-16', '图片19', 'jpg', '18264', 'member/uploadfile/ueditor/201412/b223a56bfe.jpg', '0', '', '1419828413');
INSERT INTO `om_attachment_1` VALUES ('79', '1', 'omooo', 'om_1_product-17', '图片21', 'jpg', '13426', 'member/uploadfile/ueditor/201412/993a9aef12.jpg', '0', '', '1419828524');
INSERT INTO `om_attachment_1` VALUES ('81', '1', 'omooo', 'om_1_product-17', '图片23', 'jpg', '17166', 'member/uploadfile/ueditor/201412/95be689e65.jpg', '0', '', '1419828568');
INSERT INTO `om_attachment_1` VALUES ('80', '1', 'omooo', 'om_1_product-17', '图片22', 'jpg', '21011', 'member/uploadfile/ueditor/201412/1ffa36da05.jpg', '0', '', '1419828543');
INSERT INTO `om_attachment_1` VALUES ('82', '1', 'omooo', 'om_1_product-18', '图片24', 'png', '70597', 'member/uploadfile/ueditor/201412/4c40b1cf1b.png', '0', '', '1419828698');
INSERT INTO `om_attachment_1` VALUES ('85', '1', 'omooo', 'om_1_product-19', '图片27', 'jpg', '39659', 'member/uploadfile/ueditor/201412/dfefa2de0e.jpg', '0', '', '1419828814');
INSERT INTO `om_attachment_1` VALUES ('83', '1', 'omooo', 'om_1_product-19', '图片25', 'png', '176308', 'member/uploadfile/ueditor/201412/80ad8373c0.png', '0', '', '1419828750');
INSERT INTO `om_attachment_1` VALUES ('84', '1', 'omooo', 'om_1_product-19', '图片26', 'png', '103658', 'member/uploadfile/ueditor/201412/324e04657c.png', '0', '', '1419828799');
INSERT INTO `om_attachment_1` VALUES ('97', '1', 'omooo', 'om_1_navigator-15', 'sliderlogo_01', 'png', '8735', 'member/uploadfile/201501/b5a78ffa6b.png', '0', '', '1420781792');
INSERT INTO `om_attachment_1` VALUES ('105', '1', 'omooo', 'om_1_navigator-33', 'sliderbg_01', 'jpg', '50125', 'member/uploadfile/201501/da31f2a434.jpg', '0', '', '1420782441');
INSERT INTO `om_attachment_1` VALUES ('113', '1', 'omooo', 'om_1_navigator-17', 'sidebar_hot_05', 'png', '95334', 'member/uploadfile/201501/829e7bf037.png', '0', '', '1420785074');
INSERT INTO `om_attachment_1` VALUES ('89', '1', 'omooo', 'om_1_navigator-23', 'red_logo', 'png', '1495', 'member/uploadfile/201412/4e31c4b5c0.png', '0', '', '1419838138');
INSERT INTO `om_attachment_1` VALUES ('90', '1', 'omooo', 'om_1_navigator-24', 'saoma', 'jpg', '38636', 'member/uploadfile/201412/2192ad6ba8.jpg', '0', '', '1419838204');
INSERT INTO `om_attachment_1` VALUES ('35', '1', 'omooo', 'om_1_product_category-2', '图片24', 'png', '190565', 'member/uploadfile/ueditor/201412/ce416c8e5c.png', '0', '', '1419483031');
INSERT INTO `om_attachment_1` VALUES ('91', '1', 'omooo', 'om_1_activities_category-1', 'ce416c8e5c', 'png', '190566', 'member/uploadfile/201501/e6a250c372.png', '0', '', '1420612556');
INSERT INTO `om_attachment_1` VALUES ('102', '1', 'omooo', 'om_1_navigator-32', 'business_edit', 'mp4', '3296123', 'member/uploadfile/201501/cefc3e339d.mp4', '0', '', '1420782227');
INSERT INTO `om_attachment_1` VALUES ('103', '1', 'omooo', 'om_1_navigator-32', 'business_edit', 'webm', '6880338', 'member/uploadfile/201501/0b8ff8561a.webm', '0', '', '1420782296');
INSERT INTO `om_attachment_1` VALUES ('104', '1', 'omooo', 'om_1_navigator-32', 'business_edit', 'ogv', '934779', 'member/uploadfile/201501/f0f6f324d7.ogv', '0', '', '1420782307');
INSERT INTO `om_attachment_1` VALUES ('98', '1', 'omooo', 'om_1_navigator-16', 'sliderbg_03', 'jpg', '136591', 'member/uploadfile/201501/0f1f476295.jpg', '0', '', '1420781980');
INSERT INTO `om_attachment_1` VALUES ('106', '1', 'omooo', 'om_1_navigator-33', 'sliderman_01', 'png', '274801', 'member/uploadfile/201501/eaca7ccadd.png', '0', '', '1420782450');
INSERT INTO `om_attachment_1` VALUES ('107', '1', 'omooo', 'om_1_navigator-34', 'sliderbg_02', 'jpg', '134083', 'member/uploadfile/201501/ebb35bd17b.jpg', '0', '', '1420782580');
INSERT INTO `om_attachment_1` VALUES ('108', '1', 'omooo', 'om_1_navigator-34', 'sliderman_02', 'png', '184556', 'member/uploadfile/201501/634f48621a.png', '0', '', '1420782594');
INSERT INTO `om_attachment_1` VALUES ('109', '1', 'omooo', 'om_1_navigator-15', 'fe05403ae2', 'jpg', '319836', 'member/uploadfile/201501/28f04ba7cd.jpg', '0', '', '1420783173');
INSERT INTO `om_attachment_1` VALUES ('110', '1', 'omooo', 'om_1_navigator-16', 'slidertablet_01', 'png', '143268', 'member/uploadfile/201501/7f118b9cce.png', '0', '', '1420783485');
INSERT INTO `om_attachment_1` VALUES ('112', '1', 'omooo', 'om_1_navigator-17', 'sliderbg_07', 'jpg', '10691', 'member/uploadfile/201501/dac531f51f.jpg', '0', '', '1420784965');
INSERT INTO `om_attachment_1` VALUES ('114', '1', 'omooo', 'om_1_navigator-17', 'slider_shop_07', 'png', '6820', 'member/uploadfile/201501/5c5dbdb0bb.png', '0', '', '1420785084');
INSERT INTO `om_attachment_1` VALUES ('115', '1', 'omooo', 'om_1_navigator-32', 'video_bg', 'jpg', '177295', 'member/uploadfile/201501/eb64f81c10.jpg', '0', '', '1420785492');
INSERT INTO `om_attachment_1` VALUES ('116', '1', 'omooo', 'om_1_cass-1', '324e04657c', 'png', '103619', 'member/uploadfile/201502/60f1a1459b.png', '0', '', '1422870554');
INSERT INTO `om_attachment_1` VALUES ('117', '1', 'omooo', 'om_1_cass-2', '324e04657c', 'png', '103619', 'member/uploadfile/201502/f591313228.png', '0', '', '1422870578');

-- ----------------------------
-- Table structure for om_attachment_2
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_2`;
CREATE TABLE `om_attachment_2` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表2';

-- ----------------------------
-- Records of om_attachment_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_3
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_3`;
CREATE TABLE `om_attachment_3` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表3';

-- ----------------------------
-- Records of om_attachment_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_4
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_4`;
CREATE TABLE `om_attachment_4` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表4';

-- ----------------------------
-- Records of om_attachment_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_5
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_5`;
CREATE TABLE `om_attachment_5` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表5';

-- ----------------------------
-- Records of om_attachment_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_6
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_6`;
CREATE TABLE `om_attachment_6` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表6';

-- ----------------------------
-- Records of om_attachment_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_7
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_7`;
CREATE TABLE `om_attachment_7` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表7';

-- ----------------------------
-- Records of om_attachment_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_8
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_8`;
CREATE TABLE `om_attachment_8` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表8';

-- ----------------------------
-- Records of om_attachment_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_9
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_9`;
CREATE TABLE `om_attachment_9` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表9';

-- ----------------------------
-- Records of om_attachment_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_unused
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_unused`;
CREATE TABLE `om_attachment_unused` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `siteid` tinyint(3) unsigned NOT NULL COMMENT '站点id',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='未使用的附件表';

-- ----------------------------
-- Records of om_attachment_unused
-- ----------------------------

-- ----------------------------
-- Table structure for om_cron_queue
-- ----------------------------
DROP TABLE IF EXISTS `om_cron_queue`;
CREATE TABLE `om_cron_queue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) unsigned NOT NULL COMMENT '类型',
  `value` text NOT NULL COMMENT '值',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `error` varchar(255) NOT NULL COMMENT '错误信息',
  `updatetime` int(10) unsigned NOT NULL COMMENT '执行时间',
  `inputtime` int(10) unsigned NOT NULL COMMENT '写入时间',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='任务队列表';

-- ----------------------------
-- Records of om_cron_queue
-- ----------------------------

-- ----------------------------
-- Table structure for om_downservers
-- ----------------------------
DROP TABLE IF EXISTS `om_downservers`;
CREATE TABLE `om_downservers` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '服务器名',
  `server` varchar(255) NOT NULL COMMENT '服务器地址',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='下载镜像服务器';

-- ----------------------------
-- Records of om_downservers
-- ----------------------------

-- ----------------------------
-- Table structure for om_field
-- ----------------------------
DROP TABLE IF EXISTS `om_field`;
CREATE TABLE `om_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '字段别名语言',
  `fieldname` varchar(50) NOT NULL COMMENT '字段名称',
  `fieldtype` varchar(50) NOT NULL COMMENT '字段类型',
  `relatedid` smallint(5) unsigned NOT NULL COMMENT '相关id',
  `relatedname` varchar(20) NOT NULL COMMENT '相关表',
  `isedit` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改',
  `ismain` tinyint(1) unsigned NOT NULL COMMENT '是否主表',
  `issystem` tinyint(1) unsigned NOT NULL COMMENT '是否系统表',
  `ismember` tinyint(1) unsigned NOT NULL COMMENT '是否会员可见',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可搜索',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '禁用？',
  `setting` text NOT NULL COMMENT '配置信息',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `list` (`relatedid`,`disabled`,`issystem`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='字段表';

-- ----------------------------
-- Records of om_field
-- ----------------------------
INSERT INTO `om_field` VALUES ('1', '多图展示', 'attachment', 'Files', '1', 'page', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"80%\\\";s:4:\\\"size\\\";s:1:\\\"2\\\";s:5:\\\"count\\\";s:2:\\\"10\\\";s:3:\\\"ext\\\";s:31:\\\"jpg,gif,png,ppt,doc,xls,rar,zip\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('2', '单页内容', 'content', 'Ueditor', '1', 'page', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\"option\";a:7:{s:5:\"width\";s:3:\"90%\";s:6:\"height\";s:3:\"400\";s:4:\"mode\";s:1:\"1\";s:4:\"tool\";s:0:\"\";s:5:\"mode2\";s:1:\"1\";s:5:\"tool2\";s:0:\"\";s:5:\"value\";s:0:\"\";}s:8:\"validate\";a:9:{s:8:\"required\";s:1:\"1\";s:7:\"pattern\";s:0:\"\";s:9:\"errortips\";s:0:\"\";s:6:\"isedit\";s:1:\"0\";s:3:\"xss\";s:1:\"1\";s:5:\"check\";s:0:\"\";s:6:\"filter\";s:0:\"\";s:4:\"tips\";s:0:\"\";s:8:\"formattr\";s:0:\"\";}}', '0');
INSERT INTO `om_field` VALUES ('3', '名称', 'title', 'Text', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:34:\\\"onblur=\\\"get_keywords(\\\'keywords\\\');\\\"\\\";}}', '1');
INSERT INTO `om_field` VALUES ('4', '名称', 'title', 'Text', '2', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('5', '主题', 'title', 'Text', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:34:\\\"onblur=\\\"get_keywords(\\\'keywords\\\');\\\"\\\";}}', '1');
INSERT INTO `om_field` VALUES ('6', '名称', 'title', 'Text', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:34:\\\"onblur=\\\"get_keywords(\\\'keywords\\\');\\\"\\\";}}', '1');
INSERT INTO `om_field` VALUES ('7', '内容', 'content', 'Ueditor', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:3:\\\"key\\\";s:0:\\\"\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '4');
INSERT INTO `om_field` VALUES ('8', '链接地址', 'link', 'Redirect', '2', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:2:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('9', '内容', 'content', 'Ueditor', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:3:\\\"key\\\";s:0:\\\"\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '4');
INSERT INTO `om_field` VALUES ('10', '图片集', 'image', 'Files', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"80%\\\";s:4:\\\"size\\\";s:2:\\\"10\\\";s:5:\\\"count\\\";s:2:\\\"50\\\";s:3:\\\"ext\\\";s:11:\\\"gif,png,jpg\\\";s:10:\\\"uploadpath\\\";s:25:\\\"{siteid}/photo/{y}{m}{d}/\\\";s:3:\\\"pan\\\";s:1:\\\"0\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '3');
INSERT INTO `om_field` VALUES ('11', '简介', 'content', 'Ueditor', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:3:\\\"key\\\";s:0:\\\"\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '5');
INSERT INTO `om_field` VALUES ('12', '主题', 'title', 'Text', '5', 'space', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:4:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:4:\\\"tips\\\";N;s:9:\\\"errortips\\\";N;}}', '0');
INSERT INTO `om_field` VALUES ('13', '图片', 'image', 'File', '5', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:4:\\\"size\\\";s:2:\\\"10\\\";s:3:\\\"ext\\\";s:11:\\\"gif,png,jpg\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";s:3:\\\"pan\\\";s:1:\\\"0\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('14', '链接地址', 'link', 'Redirect', '5', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:2:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('15', '关键字', 'keywords', 'Text', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '2');
INSERT INTO `om_field` VALUES ('16', '描述', 'description', 'Textarea', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"500\\\";s:6:\\\"height\\\";s:2:\\\"60\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '3');
INSERT INTO `om_field` VALUES ('17', '关键字', 'keywords', 'Text', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '2');
INSERT INTO `om_field` VALUES ('18', '描述', 'description', 'Textarea', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:6:\\\"height\\\";s:2:\\\"60\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '3');
INSERT INTO `om_field` VALUES ('19', '关键字', 'keywords', 'Text', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '2');
INSERT INTO `om_field` VALUES ('20', '描述', 'description', 'Textarea', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:6:\\\"height\\\";s:2:\\\"60\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '4');
INSERT INTO `om_field` VALUES ('21', '名称', 'name', 'Text', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:300;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:4:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:4:\\\"tips\\\";N;s:9:\\\"errortips\\\";N;}}', '0');
INSERT INTO `om_field` VALUES ('22', 'Logo', 'logo', 'File', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"size\\\";s:1:\\\"2\\\";s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('23', '空间简介', 'introduction', 'Ueditor', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"200\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('24', 'SEO标题', 'title', 'Text', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:0:\\\"\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('25', 'SEO关键字', 'keywords', 'Text', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:0:\\\"\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('26', 'SEO描述信息', 'description', 'Textarea', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"500\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('27', '第三方代码', 'code', 'Textarea', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"500\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('28', '底部信息', 'footer', 'Ueditor', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"200\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('76', '缩略图', 'thumb', 'File', '10', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('74', '内容', 'content', 'Ueditor', '9', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('75', '名称', 'title', 'Text', '10', 'module', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:6:\\\"unique\\\";s:1:\\\"0\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"1\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('68', '描述', 'description', 'Textarea', '8', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('66', '缩略图', 'thumb', 'File', '8', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('67', '关键字', 'keywords', 'Text', '8', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('64', '多图展示', 'img', 'Files', '4', 'module', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"80%\\\";s:4:\\\"size\\\";s:0:\\\"\\\";s:5:\\\"count\\\";s:1:\\\"4\\\";s:3:\\\"ext\\\";s:16:\\\"jpg,gif,png,jpeg\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('47', '描述', 'description', 'Textarea', '4', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('48', '内容', 'content', 'Ueditor', '4', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '1');
INSERT INTO `om_field` VALUES ('65', '主题', 'title', 'Text', '8', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('45', '缩略图', 'thumb', 'File', '4', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('46', '关键字', 'keywords', 'Text', '4', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('44', '主题', 'title', 'Text', '4', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('77', '关键字', 'keywords', 'Text', '10', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('69', '内容', 'content', 'Ueditor', '8', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('70', '主题', 'title', 'Text', '9', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('71', '缩略图', 'thumb', 'File', '9', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('72', '关键字', 'keywords', 'Text', '9', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('73', '描述', 'description', 'Textarea', '9', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('78', '描述', 'description', 'Textarea', '10', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('79', '内容', 'content', 'Ueditor', '10', 'module', '1', '0', '1', '1', '1', '1', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '1');
INSERT INTO `om_field` VALUES ('80', '职位', 'position', 'Text', '10', 'module', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:6:\\\"unique\\\";s:1:\\\"0\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('81', '个人信息描述', 'info', 'Ueditor', '10', 'module', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:9:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"200\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"mode2\\\";s:1:\\\"2\\\";s:5:\\\"tool2\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"mode3\\\";s:1:\\\"2\\\";s:5:\\\"tool3\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('101', '邮箱地址', 'email', 'Text', '13', 'module', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:6:\\\"unique\\\";s:1:\\\"0\\\";s:5:\\\"value\\\";s:10:\\\"xx@163.com\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('100', '人物简介', 'profile', 'Ueditor', '13', 'module', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:9:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"200\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"mode2\\\";s:1:\\\"2\\\";s:5:\\\"tool2\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"mode3\\\";s:1:\\\"2\\\";s:5:\\\"tool3\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('94', '主题', 'title', 'Text', '13', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('95', '缩略图', 'thumb', 'File', '13', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('96', '关键字', 'keywords', 'Text', '13', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('97', '描述', 'description', 'Textarea', '13', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('98', '内容', 'content', 'Ueditor', '13', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '1');
INSERT INTO `om_field` VALUES ('99', '职位名称', 'position', 'Text', '13', 'module', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:6:\\\"unique\\\";s:1:\\\"0\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('102', '主题', 'title', 'Text', '14', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('103', '缩略图', 'thumb', 'File', '14', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('104', '关键字', 'keywords', 'Text', '14', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('105', '描述', 'description', 'Textarea', '14', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('106', '内容', 'content', 'Ueditor', '14', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('107', '主题', 'title', 'Text', '15', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('108', '缩略图', 'thumb', 'File', '15', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('109', '关键字', 'keywords', 'Text', '15', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('110', '描述', 'description', 'Textarea', '15', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('111', '内容', 'content', 'Ueditor', '15', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '1');
INSERT INTO `om_field` VALUES ('112', '缩略图2', 'thumb2', 'File', '15', 'module', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"size\\\";s:2:\\\"10\\\";s:3:\\\"ext\\\";s:16:\\\"jpg,gif,png,jpeg\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:18:\\\"首页翻转图片\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');

-- ----------------------------
-- Table structure for om_linkage
-- ----------------------------
DROP TABLE IF EXISTS `om_linkage`;
CREATE TABLE `om_linkage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `type` tinyint(1) unsigned NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `module` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联动菜单表';

-- ----------------------------
-- Records of om_linkage
-- ----------------------------
INSERT INTO `om_linkage` VALUES ('1', '中国地区', '0', 'address');

-- ----------------------------
-- Table structure for om_linkage_data_1
-- ----------------------------
DROP TABLE IF EXISTS `om_linkage_data_1`;
CREATE TABLE `om_linkage_data_1` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site` mediumint(5) unsigned NOT NULL COMMENT '站点id',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `childids` text COMMENT '下级所有id',
  `displayorder` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `list` (`site`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=1149 DEFAULT CHARSET=utf8 COMMENT='联动菜单数据表';

-- ----------------------------
-- Records of om_linkage_data_1
-- ----------------------------
INSERT INTO `om_linkage_data_1` VALUES ('1', '1', '0', '0', '北京市', '0', '1', '1');
INSERT INTO `om_linkage_data_1` VALUES ('2', '1', '0', '0', '天津市', '0', '2', '2');
INSERT INTO `om_linkage_data_1` VALUES ('3', '1', '0', '0', '河北省', '1', '3,65,66,67,68,69,70,71,72,73,74,75', '3');
INSERT INTO `om_linkage_data_1` VALUES ('4', '1', '0', '0', '山西省', '1', '4,248,259,271,277,291,298,305,317,331,346,364', '4');
INSERT INTO `om_linkage_data_1` VALUES ('5', '1', '0', '0', '辽宁省', '1', '5,491,505,516,524,532,539,546,554,561,569,577,582,590,598', '5');
INSERT INTO `om_linkage_data_1` VALUES ('6', '1', '0', '0', '吉林省', '1', '6,605,616,626,633,638,646,653,659,665', '6');
INSERT INTO `om_linkage_data_1` VALUES ('7', '1', '0', '0', '黑龙江省', '1', '7,674,693,710,720,729,738,748,766,777,782,793,800,811', '7');
INSERT INTO `om_linkage_data_1` VALUES ('8', '1', '0', '0', '江苏省', '1', '8,833,834,835,836,837,838,839,840,841,842,843,844,845', '9');
INSERT INTO `om_linkage_data_1` VALUES ('9', '1', '0', '0', '浙江省', '1', '9,846,847,848,849,850,851,852,853,854,855,856', '10');
INSERT INTO `om_linkage_data_1` VALUES ('10', '1', '0', '0', '安徽省', '1', '10,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872', '11');
INSERT INTO `om_linkage_data_1` VALUES ('11', '1', '0', '0', '福建省', '1', '11,873,874,875,876,877,878,879,880,881', '12');
INSERT INTO `om_linkage_data_1` VALUES ('12', '1', '0', '0', '江西省', '1', '12,882,883,884,885,886,887,888,889,890,891,892', '13');
INSERT INTO `om_linkage_data_1` VALUES ('13', '1', '0', '0', '山东省', '1', '13,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909', '14');
INSERT INTO `om_linkage_data_1` VALUES ('14', '1', '0', '0', '河南省', '1', '14,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926', '15');
INSERT INTO `om_linkage_data_1` VALUES ('15', '1', '0', '0', '湖北省', '1', '15,927,928,929,930,931,932,933,934,935,936,937,938,939', '16');
INSERT INTO `om_linkage_data_1` VALUES ('16', '1', '0', '0', '湖南省', '1', '16,940,941,942,943,944,945,946,947,948,949,950,951,952,953', '17');
INSERT INTO `om_linkage_data_1` VALUES ('17', '1', '0', '0', '广东省', '1', '17,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,972,973,974', '18');
INSERT INTO `om_linkage_data_1` VALUES ('18', '1', '0', '0', '海南省', '1', '18,990', '19');
INSERT INTO `om_linkage_data_1` VALUES ('19', '1', '0', '0', '重庆市', '0', '19', '20');
INSERT INTO `om_linkage_data_1` VALUES ('20', '1', '0', '0', '四川省', '1', '20,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066', '21');
INSERT INTO `om_linkage_data_1` VALUES ('21', '1', '0', '0', '贵州省', '1', '21,1067,1068,1069,1070,1071,1072,1073,1074,1075', '22');
INSERT INTO `om_linkage_data_1` VALUES ('22', '1', '0', '0', '云南省', '1', '22,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091', '23');
INSERT INTO `om_linkage_data_1` VALUES ('23', '1', '0', '0', '陕西省', '1', '23,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108', '24');
INSERT INTO `om_linkage_data_1` VALUES ('24', '1', '0', '0', '甘肃省', '1', '24,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121', '25');
INSERT INTO `om_linkage_data_1` VALUES ('25', '1', '0', '0', '青海省', '1', '25,1122,1123,1124,1125,1126,1127,1128,1129', '26');
INSERT INTO `om_linkage_data_1` VALUES ('26', '1', '0', '0', '宁夏', '1', '26,1130,1131,1132,1133,1134', '27');
INSERT INTO `om_linkage_data_1` VALUES ('27', '1', '0', '0', '西藏', '1', '27,1092,1093,1094,1095,1096,1097,1098', '28');
INSERT INTO `om_linkage_data_1` VALUES ('28', '1', '0', '0', '新疆', '1', '28,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148', '29');
INSERT INTO `om_linkage_data_1` VALUES ('29', '1', '0', '0', '内蒙古', '1', '29,378,388,398,402,415,424,433,447,455,467,474,487', '30');
INSERT INTO `om_linkage_data_1` VALUES ('30', '1', '0', '0', '香港', '0', '30', '31');
INSERT INTO `om_linkage_data_1` VALUES ('31', '1', '0', '0', '澳门', '0', '31', '32');
INSERT INTO `om_linkage_data_1` VALUES ('32', '1', '0', '0', '台湾', '0', '32', '33');
INSERT INTO `om_linkage_data_1` VALUES ('65', '1', '3', '0,3', '石家庄市', '0', '65', '0');
INSERT INTO `om_linkage_data_1` VALUES ('66', '1', '3', '0,3', '唐山市', '0', '66', '0');
INSERT INTO `om_linkage_data_1` VALUES ('67', '1', '3', '0,3', '秦皇岛市', '0', '67', '0');
INSERT INTO `om_linkage_data_1` VALUES ('68', '1', '3', '0,3', '邯郸市', '0', '68', '0');
INSERT INTO `om_linkage_data_1` VALUES ('69', '1', '3', '0,3', '邢台市', '0', '69', '0');
INSERT INTO `om_linkage_data_1` VALUES ('70', '1', '3', '0,3', '保定市', '0', '70', '0');
INSERT INTO `om_linkage_data_1` VALUES ('71', '1', '3', '0,3', '张家口市', '0', '71', '0');
INSERT INTO `om_linkage_data_1` VALUES ('72', '1', '3', '0,3', '承德市', '0', '72', '0');
INSERT INTO `om_linkage_data_1` VALUES ('73', '1', '3', '0,3', '沧州市', '0', '73', '0');
INSERT INTO `om_linkage_data_1` VALUES ('74', '1', '3', '0,3', '廊坊市', '0', '74', '0');
INSERT INTO `om_linkage_data_1` VALUES ('75', '1', '3', '0,3', '衡水市', '0', '75', '0');
INSERT INTO `om_linkage_data_1` VALUES ('248', '1', '4', '0,4', '太原市', '0', '248', '0');
INSERT INTO `om_linkage_data_1` VALUES ('259', '1', '4', '0,4', '大同市', '0', '259', '0');
INSERT INTO `om_linkage_data_1` VALUES ('271', '1', '4', '0,4', '阳泉市', '0', '271', '0');
INSERT INTO `om_linkage_data_1` VALUES ('277', '1', '4', '0,4', '长治市', '0', '277', '0');
INSERT INTO `om_linkage_data_1` VALUES ('291', '1', '4', '0,4', '晋城市', '0', '291', '0');
INSERT INTO `om_linkage_data_1` VALUES ('298', '1', '4', '0,4', '朔州市', '0', '298', '0');
INSERT INTO `om_linkage_data_1` VALUES ('305', '1', '4', '0,4', '晋中市', '0', '305', '0');
INSERT INTO `om_linkage_data_1` VALUES ('317', '1', '4', '0,4', '运城市', '0', '317', '0');
INSERT INTO `om_linkage_data_1` VALUES ('331', '1', '4', '0,4', '忻州市', '0', '331', '0');
INSERT INTO `om_linkage_data_1` VALUES ('346', '1', '4', '0,4', '临汾市', '0', '346', '0');
INSERT INTO `om_linkage_data_1` VALUES ('364', '1', '4', '0,4', '吕梁市', '0', '364', '0');
INSERT INTO `om_linkage_data_1` VALUES ('378', '1', '29', '0,29', '呼和浩特市', '0', '378', '0');
INSERT INTO `om_linkage_data_1` VALUES ('388', '1', '29', '0,29', '包头市', '0', '388', '0');
INSERT INTO `om_linkage_data_1` VALUES ('398', '1', '29', '0,29', '乌海市', '0', '398', '0');
INSERT INTO `om_linkage_data_1` VALUES ('402', '1', '29', '0,29', '赤峰市', '0', '402', '0');
INSERT INTO `om_linkage_data_1` VALUES ('415', '1', '29', '0,29', '通辽市', '0', '415', '0');
INSERT INTO `om_linkage_data_1` VALUES ('424', '1', '29', '0,29', '鄂尔多斯市', '0', '424', '0');
INSERT INTO `om_linkage_data_1` VALUES ('433', '1', '29', '0,29', '呼伦贝尔市', '0', '433', '0');
INSERT INTO `om_linkage_data_1` VALUES ('447', '1', '29', '0,29', '巴彦淖尔市', '0', '447', '0');
INSERT INTO `om_linkage_data_1` VALUES ('455', '1', '29', '0,29', '乌兰察布市', '0', '455', '0');
INSERT INTO `om_linkage_data_1` VALUES ('467', '1', '29', '0,29', '兴安盟', '0', '467', '0');
INSERT INTO `om_linkage_data_1` VALUES ('474', '1', '29', '0,29', '锡林郭勒盟', '0', '474', '0');
INSERT INTO `om_linkage_data_1` VALUES ('487', '1', '29', '0,29', '阿拉善盟', '0', '487', '0');
INSERT INTO `om_linkage_data_1` VALUES ('491', '1', '5', '0,5', '沈阳市', '0', '491', '0');
INSERT INTO `om_linkage_data_1` VALUES ('505', '1', '5', '0,5', '大连市', '0', '505', '0');
INSERT INTO `om_linkage_data_1` VALUES ('516', '1', '5', '0,5', '鞍山市', '0', '516', '0');
INSERT INTO `om_linkage_data_1` VALUES ('524', '1', '5', '0,5', '抚顺市', '0', '524', '0');
INSERT INTO `om_linkage_data_1` VALUES ('532', '1', '5', '0,5', '本溪市', '0', '532', '0');
INSERT INTO `om_linkage_data_1` VALUES ('539', '1', '5', '0,5', '丹东市', '0', '539', '0');
INSERT INTO `om_linkage_data_1` VALUES ('546', '1', '5', '0,5', '锦州市', '0', '546', '0');
INSERT INTO `om_linkage_data_1` VALUES ('554', '1', '5', '0,5', '营口市', '0', '554', '0');
INSERT INTO `om_linkage_data_1` VALUES ('561', '1', '5', '0,5', '阜新市', '0', '561', '0');
INSERT INTO `om_linkage_data_1` VALUES ('569', '1', '5', '0,5', '辽阳市', '0', '569', '0');
INSERT INTO `om_linkage_data_1` VALUES ('577', '1', '5', '0,5', '盘锦市', '0', '577', '0');
INSERT INTO `om_linkage_data_1` VALUES ('582', '1', '5', '0,5', '铁岭市', '0', '582', '0');
INSERT INTO `om_linkage_data_1` VALUES ('590', '1', '5', '0,5', '朝阳市', '0', '590', '0');
INSERT INTO `om_linkage_data_1` VALUES ('598', '1', '5', '0,5', '葫芦岛市', '0', '598', '0');
INSERT INTO `om_linkage_data_1` VALUES ('605', '1', '6', '0,6', '长春市', '0', '605', '0');
INSERT INTO `om_linkage_data_1` VALUES ('616', '1', '6', '0,6', '吉林市', '0', '616', '0');
INSERT INTO `om_linkage_data_1` VALUES ('626', '1', '6', '0,6', '四平市', '0', '626', '0');
INSERT INTO `om_linkage_data_1` VALUES ('633', '1', '6', '0,6', '辽源市', '0', '633', '0');
INSERT INTO `om_linkage_data_1` VALUES ('638', '1', '6', '0,6', '通化市', '0', '638', '0');
INSERT INTO `om_linkage_data_1` VALUES ('646', '1', '6', '0,6', '白山市', '0', '646', '0');
INSERT INTO `om_linkage_data_1` VALUES ('653', '1', '6', '0,6', '松原市', '0', '653', '0');
INSERT INTO `om_linkage_data_1` VALUES ('659', '1', '6', '0,6', '白城市', '0', '659', '0');
INSERT INTO `om_linkage_data_1` VALUES ('665', '1', '6', '0,6', '延边自治州', '0', '665', '0');
INSERT INTO `om_linkage_data_1` VALUES ('674', '1', '7', '0,7', '哈尔滨市', '0', '674', '0');
INSERT INTO `om_linkage_data_1` VALUES ('693', '1', '7', '0,7', '齐齐哈尔市', '0', '693', '0');
INSERT INTO `om_linkage_data_1` VALUES ('710', '1', '7', '0,7', '鸡西市', '0', '710', '0');
INSERT INTO `om_linkage_data_1` VALUES ('720', '1', '7', '0,7', '鹤岗市', '0', '720', '0');
INSERT INTO `om_linkage_data_1` VALUES ('729', '1', '7', '0,7', '双鸭山市', '0', '729', '0');
INSERT INTO `om_linkage_data_1` VALUES ('738', '1', '7', '0,7', '大庆市', '0', '738', '0');
INSERT INTO `om_linkage_data_1` VALUES ('748', '1', '7', '0,7', '伊春市', '0', '748', '0');
INSERT INTO `om_linkage_data_1` VALUES ('766', '1', '7', '0,7', '佳木斯市', '0', '766', '0');
INSERT INTO `om_linkage_data_1` VALUES ('777', '1', '7', '0,7', '七台河市', '0', '777', '0');
INSERT INTO `om_linkage_data_1` VALUES ('782', '1', '7', '0,7', '牡丹江市', '0', '782', '0');
INSERT INTO `om_linkage_data_1` VALUES ('793', '1', '7', '0,7', '黑河市', '0', '793', '0');
INSERT INTO `om_linkage_data_1` VALUES ('800', '1', '7', '0,7', '绥化市', '0', '800', '0');
INSERT INTO `om_linkage_data_1` VALUES ('811', '1', '7', '0,7', '大兴安岭地区', '0', '811', '0');
INSERT INTO `om_linkage_data_1` VALUES ('815', '1', '0', '0', '上海市', '0', '815', '8');
INSERT INTO `om_linkage_data_1` VALUES ('833', '1', '8', '0,8', '南京市', '0', '833', '0');
INSERT INTO `om_linkage_data_1` VALUES ('834', '1', '8', '0,8', '无锡市', '0', '834', '0');
INSERT INTO `om_linkage_data_1` VALUES ('835', '1', '8', '0,8', '徐州市', '0', '835', '0');
INSERT INTO `om_linkage_data_1` VALUES ('836', '1', '8', '0,8', '常州市', '0', '836', '0');
INSERT INTO `om_linkage_data_1` VALUES ('837', '1', '8', '0,8', '苏州市', '0', '837', '0');
INSERT INTO `om_linkage_data_1` VALUES ('838', '1', '8', '0,8', '南通市', '0', '838', '0');
INSERT INTO `om_linkage_data_1` VALUES ('839', '1', '8', '0,8', '连云港市', '0', '839', '0');
INSERT INTO `om_linkage_data_1` VALUES ('840', '1', '8', '0,8', '淮安市', '0', '840', '0');
INSERT INTO `om_linkage_data_1` VALUES ('841', '1', '8', '0,8', '盐城市', '0', '841', '0');
INSERT INTO `om_linkage_data_1` VALUES ('842', '1', '8', '0,8', '扬州市', '0', '842', '0');
INSERT INTO `om_linkage_data_1` VALUES ('843', '1', '8', '0,8', '镇江市', '0', '843', '0');
INSERT INTO `om_linkage_data_1` VALUES ('844', '1', '8', '0,8', '泰州市', '0', '844', '0');
INSERT INTO `om_linkage_data_1` VALUES ('845', '1', '8', '0,8', '宿迁市', '0', '845', '0');
INSERT INTO `om_linkage_data_1` VALUES ('846', '1', '9', '0,9', '杭州市', '0', '846', '0');
INSERT INTO `om_linkage_data_1` VALUES ('847', '1', '9', '0,9', '宁波市', '0', '847', '0');
INSERT INTO `om_linkage_data_1` VALUES ('848', '1', '9', '0,9', '温州市', '0', '848', '0');
INSERT INTO `om_linkage_data_1` VALUES ('849', '1', '9', '0,9', '嘉兴市', '0', '849', '0');
INSERT INTO `om_linkage_data_1` VALUES ('850', '1', '9', '0,9', '湖州市', '0', '850', '0');
INSERT INTO `om_linkage_data_1` VALUES ('851', '1', '9', '0,9', '绍兴市', '0', '851', '0');
INSERT INTO `om_linkage_data_1` VALUES ('852', '1', '9', '0,9', '金华市', '0', '852', '0');
INSERT INTO `om_linkage_data_1` VALUES ('853', '1', '9', '0,9', '衢州市', '0', '853', '0');
INSERT INTO `om_linkage_data_1` VALUES ('854', '1', '9', '0,9', '舟山市', '0', '854', '0');
INSERT INTO `om_linkage_data_1` VALUES ('855', '1', '9', '0,9', '台州市', '0', '855', '0');
INSERT INTO `om_linkage_data_1` VALUES ('856', '1', '9', '0,9', '丽水市', '0', '856', '0');
INSERT INTO `om_linkage_data_1` VALUES ('857', '1', '10', '0,10', '合肥市', '0', '857', '0');
INSERT INTO `om_linkage_data_1` VALUES ('858', '1', '10', '0,10', '芜湖市', '0', '858', '0');
INSERT INTO `om_linkage_data_1` VALUES ('859', '1', '10', '0,10', '蚌埠市', '0', '859', '0');
INSERT INTO `om_linkage_data_1` VALUES ('860', '1', '10', '0,10', '淮南市', '0', '860', '0');
INSERT INTO `om_linkage_data_1` VALUES ('861', '1', '10', '0,10', '马鞍山市', '0', '861', '0');
INSERT INTO `om_linkage_data_1` VALUES ('862', '1', '10', '0,10', '淮北市', '0', '862', '0');
INSERT INTO `om_linkage_data_1` VALUES ('863', '1', '10', '0,10', '铜陵市', '0', '863', '0');
INSERT INTO `om_linkage_data_1` VALUES ('864', '1', '10', '0,10', '安庆市', '0', '864', '0');
INSERT INTO `om_linkage_data_1` VALUES ('865', '1', '10', '0,10', '黄山市', '0', '865', '0');
INSERT INTO `om_linkage_data_1` VALUES ('866', '1', '10', '0,10', '滁州市', '0', '866', '0');
INSERT INTO `om_linkage_data_1` VALUES ('867', '1', '10', '0,10', '阜阳市', '0', '867', '0');
INSERT INTO `om_linkage_data_1` VALUES ('868', '1', '10', '0,10', '宿州市', '0', '868', '0');
INSERT INTO `om_linkage_data_1` VALUES ('869', '1', '10', '0,10', '六安市', '0', '869', '0');
INSERT INTO `om_linkage_data_1` VALUES ('870', '1', '10', '0,10', '亳州市', '0', '870', '0');
INSERT INTO `om_linkage_data_1` VALUES ('871', '1', '10', '0,10', '池州市', '0', '871', '0');
INSERT INTO `om_linkage_data_1` VALUES ('872', '1', '10', '0,10', '宣城市', '0', '872', '0');
INSERT INTO `om_linkage_data_1` VALUES ('873', '1', '11', '0,11', '福州市', '0', '873', '0');
INSERT INTO `om_linkage_data_1` VALUES ('874', '1', '11', '0,11', '厦门市', '0', '874', '0');
INSERT INTO `om_linkage_data_1` VALUES ('875', '1', '11', '0,11', '莆田市', '0', '875', '0');
INSERT INTO `om_linkage_data_1` VALUES ('876', '1', '11', '0,11', '三明市', '0', '876', '0');
INSERT INTO `om_linkage_data_1` VALUES ('877', '1', '11', '0,11', '泉州市', '0', '877', '0');
INSERT INTO `om_linkage_data_1` VALUES ('878', '1', '11', '0,11', '漳州市', '0', '878', '0');
INSERT INTO `om_linkage_data_1` VALUES ('879', '1', '11', '0,11', '南平市', '0', '879', '0');
INSERT INTO `om_linkage_data_1` VALUES ('880', '1', '11', '0,11', '龙岩市', '0', '880', '0');
INSERT INTO `om_linkage_data_1` VALUES ('881', '1', '11', '0,11', '宁德市', '0', '881', '0');
INSERT INTO `om_linkage_data_1` VALUES ('882', '1', '12', '0,12', '南昌市', '0', '882', '0');
INSERT INTO `om_linkage_data_1` VALUES ('883', '1', '12', '0,12', '景德镇市', '0', '883', '0');
INSERT INTO `om_linkage_data_1` VALUES ('884', '1', '12', '0,12', '萍乡市', '0', '884', '0');
INSERT INTO `om_linkage_data_1` VALUES ('885', '1', '12', '0,12', '九江市', '0', '885', '0');
INSERT INTO `om_linkage_data_1` VALUES ('886', '1', '12', '0,12', '新余市', '0', '886', '0');
INSERT INTO `om_linkage_data_1` VALUES ('887', '1', '12', '0,12', '鹰潭市', '0', '887', '0');
INSERT INTO `om_linkage_data_1` VALUES ('888', '1', '12', '0,12', '赣州市', '0', '888', '0');
INSERT INTO `om_linkage_data_1` VALUES ('889', '1', '12', '0,12', '吉安市', '0', '889', '0');
INSERT INTO `om_linkage_data_1` VALUES ('890', '1', '12', '0,12', '宜春市', '0', '890', '0');
INSERT INTO `om_linkage_data_1` VALUES ('891', '1', '12', '0,12', '抚州市', '0', '891', '0');
INSERT INTO `om_linkage_data_1` VALUES ('892', '1', '12', '0,12', '上饶市', '0', '892', '0');
INSERT INTO `om_linkage_data_1` VALUES ('893', '1', '13', '0,13', '济南市', '0', '893', '0');
INSERT INTO `om_linkage_data_1` VALUES ('894', '1', '13', '0,13', '青岛市', '0', '894', '0');
INSERT INTO `om_linkage_data_1` VALUES ('895', '1', '13', '0,13', '淄博市', '0', '895', '0');
INSERT INTO `om_linkage_data_1` VALUES ('896', '1', '13', '0,13', '枣庄市', '0', '896', '0');
INSERT INTO `om_linkage_data_1` VALUES ('897', '1', '13', '0,13', '东营市', '0', '897', '0');
INSERT INTO `om_linkage_data_1` VALUES ('898', '1', '13', '0,13', '烟台市', '0', '898', '0');
INSERT INTO `om_linkage_data_1` VALUES ('899', '1', '13', '0,13', '潍坊市', '0', '899', '0');
INSERT INTO `om_linkage_data_1` VALUES ('900', '1', '13', '0,13', '济宁市', '0', '900', '0');
INSERT INTO `om_linkage_data_1` VALUES ('901', '1', '13', '0,13', '泰安市', '0', '901', '0');
INSERT INTO `om_linkage_data_1` VALUES ('902', '1', '13', '0,13', '威海市', '0', '902', '0');
INSERT INTO `om_linkage_data_1` VALUES ('903', '1', '13', '0,13', '日照市', '0', '903', '0');
INSERT INTO `om_linkage_data_1` VALUES ('904', '1', '13', '0,13', '莱芜市', '0', '904', '0');
INSERT INTO `om_linkage_data_1` VALUES ('905', '1', '13', '0,13', '临沂市', '0', '905', '0');
INSERT INTO `om_linkage_data_1` VALUES ('906', '1', '13', '0,13', '德州市', '0', '906', '0');
INSERT INTO `om_linkage_data_1` VALUES ('907', '1', '13', '0,13', '聊城市', '0', '907', '0');
INSERT INTO `om_linkage_data_1` VALUES ('908', '1', '13', '0,13', '滨州市', '0', '908', '0');
INSERT INTO `om_linkage_data_1` VALUES ('909', '1', '13', '0,13', '菏泽市', '0', '909', '0');
INSERT INTO `om_linkage_data_1` VALUES ('910', '1', '14', '0,14', '郑州市', '0', '910', '0');
INSERT INTO `om_linkage_data_1` VALUES ('911', '1', '14', '0,14', '开封市', '0', '911', '0');
INSERT INTO `om_linkage_data_1` VALUES ('912', '1', '14', '0,14', '洛阳市', '0', '912', '0');
INSERT INTO `om_linkage_data_1` VALUES ('913', '1', '14', '0,14', '平顶山市', '0', '913', '0');
INSERT INTO `om_linkage_data_1` VALUES ('914', '1', '14', '0,14', '安阳市', '0', '914', '0');
INSERT INTO `om_linkage_data_1` VALUES ('915', '1', '14', '0,14', '鹤壁市', '0', '915', '0');
INSERT INTO `om_linkage_data_1` VALUES ('916', '1', '14', '0,14', '新乡市', '0', '916', '0');
INSERT INTO `om_linkage_data_1` VALUES ('917', '1', '14', '0,14', '焦作市', '0', '917', '0');
INSERT INTO `om_linkage_data_1` VALUES ('918', '1', '14', '0,14', '濮阳市', '0', '918', '0');
INSERT INTO `om_linkage_data_1` VALUES ('919', '1', '14', '0,14', '许昌市', '0', '919', '0');
INSERT INTO `om_linkage_data_1` VALUES ('920', '1', '14', '0,14', '漯河市', '0', '920', '0');
INSERT INTO `om_linkage_data_1` VALUES ('921', '1', '14', '0,14', '三门峡市', '0', '921', '0');
INSERT INTO `om_linkage_data_1` VALUES ('922', '1', '14', '0,14', '南阳市', '0', '922', '0');
INSERT INTO `om_linkage_data_1` VALUES ('923', '1', '14', '0,14', '商丘市', '0', '923', '0');
INSERT INTO `om_linkage_data_1` VALUES ('924', '1', '14', '0,14', '信阳市', '0', '924', '0');
INSERT INTO `om_linkage_data_1` VALUES ('925', '1', '14', '0,14', '周口市', '0', '925', '0');
INSERT INTO `om_linkage_data_1` VALUES ('926', '1', '14', '0,14', '驻马店市', '0', '926', '0');
INSERT INTO `om_linkage_data_1` VALUES ('927', '1', '15', '0,15', '武汉市', '0', '927', '0');
INSERT INTO `om_linkage_data_1` VALUES ('928', '1', '15', '0,15', '黄石市', '0', '928', '0');
INSERT INTO `om_linkage_data_1` VALUES ('929', '1', '15', '0,15', '十堰市', '0', '929', '0');
INSERT INTO `om_linkage_data_1` VALUES ('930', '1', '15', '0,15', '宜昌市', '0', '930', '0');
INSERT INTO `om_linkage_data_1` VALUES ('931', '1', '15', '0,15', '襄阳市', '0', '931', '0');
INSERT INTO `om_linkage_data_1` VALUES ('932', '1', '15', '0,15', '鄂州市', '0', '932', '0');
INSERT INTO `om_linkage_data_1` VALUES ('933', '1', '15', '0,15', '荆门市', '0', '933', '0');
INSERT INTO `om_linkage_data_1` VALUES ('934', '1', '15', '0,15', '孝感市', '0', '934', '0');
INSERT INTO `om_linkage_data_1` VALUES ('935', '1', '15', '0,15', '荆州市', '0', '935', '0');
INSERT INTO `om_linkage_data_1` VALUES ('936', '1', '15', '0,15', '黄冈市', '0', '936', '0');
INSERT INTO `om_linkage_data_1` VALUES ('937', '1', '15', '0,15', '咸宁市', '0', '937', '0');
INSERT INTO `om_linkage_data_1` VALUES ('938', '1', '15', '0,15', '随州市', '0', '938', '0');
INSERT INTO `om_linkage_data_1` VALUES ('939', '1', '15', '0,15', '恩施自治州', '0', '939', '0');
INSERT INTO `om_linkage_data_1` VALUES ('940', '1', '16', '0,16', '长沙市', '0', '940', '0');
INSERT INTO `om_linkage_data_1` VALUES ('941', '1', '16', '0,16', '株洲市', '0', '941', '0');
INSERT INTO `om_linkage_data_1` VALUES ('942', '1', '16', '0,16', '湘潭市', '0', '942', '0');
INSERT INTO `om_linkage_data_1` VALUES ('943', '1', '16', '0,16', '衡阳市', '0', '943', '0');
INSERT INTO `om_linkage_data_1` VALUES ('944', '1', '16', '0,16', '邵阳市', '0', '944', '0');
INSERT INTO `om_linkage_data_1` VALUES ('945', '1', '16', '0,16', '岳阳市', '0', '945', '0');
INSERT INTO `om_linkage_data_1` VALUES ('946', '1', '16', '0,16', '常德市', '0', '946', '0');
INSERT INTO `om_linkage_data_1` VALUES ('947', '1', '16', '0,16', '张家界市', '0', '947', '0');
INSERT INTO `om_linkage_data_1` VALUES ('948', '1', '16', '0,16', '益阳市', '0', '948', '0');
INSERT INTO `om_linkage_data_1` VALUES ('949', '1', '16', '0,16', '郴州市', '0', '949', '0');
INSERT INTO `om_linkage_data_1` VALUES ('950', '1', '16', '0,16', '永州市', '0', '950', '0');
INSERT INTO `om_linkage_data_1` VALUES ('951', '1', '16', '0,16', '怀化市', '0', '951', '0');
INSERT INTO `om_linkage_data_1` VALUES ('952', '1', '16', '0,16', '娄底市', '0', '952', '0');
INSERT INTO `om_linkage_data_1` VALUES ('953', '1', '16', '0,16', '湘西自治州', '0', '953', '0');
INSERT INTO `om_linkage_data_1` VALUES ('954', '1', '17', '0,17', '广州市', '0', '954', '0');
INSERT INTO `om_linkage_data_1` VALUES ('955', '1', '17', '0,17', '韶关市', '0', '955', '0');
INSERT INTO `om_linkage_data_1` VALUES ('956', '1', '17', '0,17', '深圳市', '0', '956', '0');
INSERT INTO `om_linkage_data_1` VALUES ('957', '1', '17', '0,17', '珠海市', '0', '957', '0');
INSERT INTO `om_linkage_data_1` VALUES ('958', '1', '17', '0,17', '汕头市', '0', '958', '0');
INSERT INTO `om_linkage_data_1` VALUES ('959', '1', '17', '0,17', '佛山市', '0', '959', '0');
INSERT INTO `om_linkage_data_1` VALUES ('960', '1', '17', '0,17', '江门市', '0', '960', '0');
INSERT INTO `om_linkage_data_1` VALUES ('961', '1', '17', '0,17', '湛江市', '0', '961', '0');
INSERT INTO `om_linkage_data_1` VALUES ('962', '1', '17', '0,17', '茂名市', '0', '962', '0');
INSERT INTO `om_linkage_data_1` VALUES ('963', '1', '17', '0,17', '肇庆市', '0', '963', '0');
INSERT INTO `om_linkage_data_1` VALUES ('964', '1', '17', '0,17', '惠州市', '0', '964', '0');
INSERT INTO `om_linkage_data_1` VALUES ('965', '1', '17', '0,17', '梅州市', '0', '965', '0');
INSERT INTO `om_linkage_data_1` VALUES ('966', '1', '17', '0,17', '汕尾市', '0', '966', '0');
INSERT INTO `om_linkage_data_1` VALUES ('967', '1', '17', '0,17', '河源市', '0', '967', '0');
INSERT INTO `om_linkage_data_1` VALUES ('968', '1', '17', '0,17', '阳江市', '0', '968', '0');
INSERT INTO `om_linkage_data_1` VALUES ('969', '1', '17', '0,17', '清远市', '0', '969', '0');
INSERT INTO `om_linkage_data_1` VALUES ('972', '1', '17', '0,17', '潮州市', '0', '972', '0');
INSERT INTO `om_linkage_data_1` VALUES ('973', '1', '17', '0,17', '揭阳市', '0', '973', '0');
INSERT INTO `om_linkage_data_1` VALUES ('974', '1', '17', '0,17', '云浮市', '0', '974', '0');
INSERT INTO `om_linkage_data_1` VALUES ('975', '1', '0', '0', '广西', '1', '975,976,977,978,979,980,981,982,983,984,985,986,987,988,989', '18');
INSERT INTO `om_linkage_data_1` VALUES ('976', '1', '975', '0,975', '南宁市', '0', '976', '0');
INSERT INTO `om_linkage_data_1` VALUES ('977', '1', '975', '0,975', '柳州市', '0', '977', '0');
INSERT INTO `om_linkage_data_1` VALUES ('978', '1', '975', '0,975', '桂林市', '0', '978', '0');
INSERT INTO `om_linkage_data_1` VALUES ('979', '1', '975', '0,975', '梧州市', '0', '979', '0');
INSERT INTO `om_linkage_data_1` VALUES ('980', '1', '975', '0,975', '北海市', '0', '980', '0');
INSERT INTO `om_linkage_data_1` VALUES ('981', '1', '975', '0,975', '防城港市', '0', '981', '0');
INSERT INTO `om_linkage_data_1` VALUES ('982', '1', '975', '0,975', '钦州市', '0', '982', '0');
INSERT INTO `om_linkage_data_1` VALUES ('983', '1', '975', '0,975', '贵港市', '0', '983', '0');
INSERT INTO `om_linkage_data_1` VALUES ('984', '1', '975', '0,975', '玉林市', '0', '984', '0');
INSERT INTO `om_linkage_data_1` VALUES ('985', '1', '975', '0,975', '百色市', '0', '985', '0');
INSERT INTO `om_linkage_data_1` VALUES ('986', '1', '975', '0,975', '贺州市', '0', '986', '0');
INSERT INTO `om_linkage_data_1` VALUES ('987', '1', '975', '0,975', '河池市', '0', '987', '0');
INSERT INTO `om_linkage_data_1` VALUES ('988', '1', '975', '0,975', '来宾市', '0', '988', '0');
INSERT INTO `om_linkage_data_1` VALUES ('989', '1', '975', '0,975', '崇左市', '0', '989', '0');
INSERT INTO `om_linkage_data_1` VALUES ('990', '1', '18', '0,18', '海口市', '0', '990', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1046', '1', '20', '0,20', '成都市', '0', '1046', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1047', '1', '20', '0,20', '自贡市', '0', '1047', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1048', '1', '20', '0,20', '攀枝花市', '0', '1048', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1049', '1', '20', '0,20', '泸州市', '0', '1049', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1050', '1', '20', '0,20', '德阳市', '0', '1050', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1051', '1', '20', '0,20', '绵阳市', '0', '1051', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1052', '1', '20', '0,20', '广元市', '0', '1052', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1053', '1', '20', '0,20', '遂宁市', '0', '1053', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1054', '1', '20', '0,20', '内江市', '0', '1054', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1055', '1', '20', '0,20', '乐山市', '0', '1055', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1056', '1', '20', '0,20', '南充市', '0', '1056', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1057', '1', '20', '0,20', '眉山市', '0', '1057', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1058', '1', '20', '0,20', '宜宾市', '0', '1058', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1059', '1', '20', '0,20', '广安市', '0', '1059', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1060', '1', '20', '0,20', '达州市', '0', '1060', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1061', '1', '20', '0,20', '雅安市', '0', '1061', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1062', '1', '20', '0,20', '巴中市', '0', '1062', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1063', '1', '20', '0,20', '资阳市', '0', '1063', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1064', '1', '20', '0,20', '阿坝自治州', '0', '1064', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1065', '1', '20', '0,20', '甘孜自治州', '0', '1065', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1066', '1', '20', '0,20', '凉山自治州', '0', '1066', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1067', '1', '21', '0,21', '贵阳市', '0', '1067', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1068', '1', '21', '0,21', '六盘水市', '0', '1068', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1069', '1', '21', '0,21', '遵义市', '0', '1069', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1070', '1', '21', '0,21', '安顺市', '0', '1070', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1071', '1', '21', '0,21', '毕节市', '0', '1071', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1072', '1', '21', '0,21', '铜仁市', '0', '1072', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1073', '1', '21', '0,21', '黔西南自治州', '0', '1073', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1074', '1', '21', '0,21', '黔东南自治州', '0', '1074', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1075', '1', '21', '0,21', '黔南自治州', '0', '1075', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1076', '1', '22', '0,22', '昆明市', '0', '1076', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1077', '1', '22', '0,22', '曲靖市', '0', '1077', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1078', '1', '22', '0,22', '玉溪市', '0', '1078', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1079', '1', '22', '0,22', '保山市', '0', '1079', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1080', '1', '22', '0,22', '昭通市', '0', '1080', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1081', '1', '22', '0,22', '丽江市', '0', '1081', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1082', '1', '22', '0,22', '普洱市', '0', '1082', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1083', '1', '22', '0,22', '临沧市', '0', '1083', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1084', '1', '22', '0,22', '楚雄自治州', '0', '1084', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1085', '1', '22', '0,22', '红河自治州', '0', '1085', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1086', '1', '22', '0,22', '文山自治州', '0', '1086', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1087', '1', '22', '0,22', '西双版纳自治州', '0', '1087', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1088', '1', '22', '0,22', '大理自治州', '0', '1088', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1089', '1', '22', '0,22', '德宏自治州', '0', '1089', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1090', '1', '22', '0,22', '怒江自治州', '0', '1090', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1091', '1', '22', '0,22', '迪庆自治州', '0', '1091', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1092', '1', '27', '0,27', '拉萨市', '0', '1092', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1093', '1', '27', '0,27', '昌都地区', '0', '1093', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1094', '1', '27', '0,27', '山南地区', '0', '1094', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1095', '1', '27', '0,27', '日喀则地区', '0', '1095', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1096', '1', '27', '0,27', '那曲地区', '0', '1096', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1097', '1', '27', '0,27', '阿里地区', '0', '1097', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1098', '1', '27', '0,27', '林芝地区', '0', '1098', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1099', '1', '23', '0,23', '西安市', '0', '1099', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1100', '1', '23', '0,23', '铜川市', '0', '1100', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1101', '1', '23', '0,23', '宝鸡市', '0', '1101', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1102', '1', '23', '0,23', '咸阳市', '0', '1102', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1103', '1', '23', '0,23', '渭南市', '0', '1103', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1104', '1', '23', '0,23', '延安市', '0', '1104', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1105', '1', '23', '0,23', '汉中市', '0', '1105', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1106', '1', '23', '0,23', '榆林市', '0', '1106', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1107', '1', '23', '0,23', '安康市', '0', '1107', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1108', '1', '23', '0,23', '商洛市', '0', '1108', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1109', '1', '24', '0,24', '兰州市', '0', '1109', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1110', '1', '24', '0,24', '嘉峪关市', '0', '1110', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1111', '1', '24', '0,24', '白银市', '0', '1111', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1112', '1', '24', '0,24', '天水市', '0', '1112', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1113', '1', '24', '0,24', '武威市', '0', '1113', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1114', '1', '24', '0,24', '张掖市', '0', '1114', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1115', '1', '24', '0,24', '平凉市', '0', '1115', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1116', '1', '24', '0,24', '酒泉市', '0', '1116', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1117', '1', '24', '0,24', '庆阳市', '0', '1117', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1118', '1', '24', '0,24', '定西市', '0', '1118', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1119', '1', '24', '0,24', '陇南市', '0', '1119', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1120', '1', '24', '0,24', '临夏自治州', '0', '1120', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1121', '1', '24', '0,24', '甘南自治州', '0', '1121', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1122', '1', '25', '0,25', '西宁市', '0', '1122', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1123', '1', '25', '0,25', '海东地区', '0', '1123', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1124', '1', '25', '0,25', '海北自治州', '0', '1124', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1125', '1', '25', '0,25', '黄南自治州', '0', '1125', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1126', '1', '25', '0,25', '海南自治州', '0', '1126', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1127', '1', '25', '0,25', '果洛自治州', '0', '1127', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1128', '1', '25', '0,25', '玉树自治州', '0', '1128', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1129', '1', '25', '0,25', '海西自治州', '0', '1129', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1130', '1', '26', '0,26', '银川市', '0', '1130', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1131', '1', '26', '0,26', '石嘴山市', '0', '1131', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1132', '1', '26', '0,26', '吴忠市', '0', '1132', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1133', '1', '26', '0,26', '固原市', '0', '1133', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1134', '1', '26', '0,26', '中卫市', '0', '1134', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1135', '1', '28', '0,28', '乌鲁木齐市', '0', '1135', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1136', '1', '28', '0,28', '克拉玛依市', '0', '1136', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1137', '1', '28', '0,28', '吐鲁番地区', '0', '1137', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1138', '1', '28', '0,28', '哈密地区', '0', '1138', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1139', '1', '28', '0,28', '昌吉自治州', '0', '1139', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1140', '1', '28', '0,28', '博尔塔拉自治州', '0', '1140', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1141', '1', '28', '0,28', '巴音郭楞自治州', '0', '1141', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1142', '1', '28', '0,28', '阿克苏地区', '0', '1142', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1143', '1', '28', '0,28', '克孜勒自治州', '0', '1143', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1144', '1', '28', '0,28', '喀什地区', '0', '1144', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1145', '1', '28', '0,28', '和田地区', '0', '1145', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1146', '1', '28', '0,28', '伊犁自治州', '0', '1146', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1147', '1', '28', '0,28', '塔城地区', '0', '1147', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1148', '1', '28', '0,28', '阿勒泰地区', '0', '1148', '0');

-- ----------------------------
-- Table structure for om_mail_queue
-- ----------------------------
DROP TABLE IF EXISTS `om_mail_queue`;
CREATE TABLE `om_mail_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL COMMENT '邮件地址',
  `subject` varchar(255) NOT NULL COMMENT '邮件标题',
  `message` text NOT NULL COMMENT '邮件内容',
  `status` tinyint(1) unsigned NOT NULL COMMENT '发送状态',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件队列表';

-- ----------------------------
-- Records of om_mail_queue
-- ----------------------------

-- ----------------------------
-- Table structure for om_mail_smtp
-- ----------------------------
DROP TABLE IF EXISTS `om_mail_smtp`;
CREATE TABLE `om_mail_smtp` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `host` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `port` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件账户表';

-- ----------------------------
-- Records of om_mail_smtp
-- ----------------------------

-- ----------------------------
-- Table structure for om_member
-- ----------------------------
DROP TABLE IF EXISTS `om_member`;
CREATE TABLE `om_member` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` char(40) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '加密密码',
  `salt` char(10) NOT NULL COMMENT '随机加密码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` char(20) NOT NULL COMMENT '手机号码',
  `avatar` varchar(255) NOT NULL COMMENT '头像地址',
  `money` decimal(10,2) unsigned NOT NULL COMMENT 'RMB',
  `freeze` decimal(10,2) unsigned NOT NULL COMMENT '冻结RMB',
  `spend` decimal(10,2) unsigned NOT NULL COMMENT '消费RMB总额',
  `score` int(10) unsigned NOT NULL COMMENT '虚拟币',
  `experience` int(10) unsigned NOT NULL COMMENT '经验值',
  `adminid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '管理组id',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `levelid` smallint(5) unsigned NOT NULL COMMENT '会员级别',
  `overdue` int(10) unsigned NOT NULL COMMENT '到期时间',
  `regip` varchar(15) NOT NULL COMMENT '注册ip',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `randcode` mediumint(6) unsigned NOT NULL COMMENT '随机验证码',
  `ismobile` tinyint(1) unsigned DEFAULT NULL COMMENT '手机认证标识',
  PRIMARY KEY (`uid`),
  KEY `email` (`email`),
  KEY `groupid` (`groupid`),
  KEY `adminid` (`adminid`),
  KEY `username` (`username`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of om_member
-- ----------------------------
INSERT INTO `om_member` VALUES ('1', 'kefu@omooo.com', 'omooo', 'd3b447425d9ef288056d2085c621e736', '3cec07e9ba', '', '', '', '9999.00', '0.00', '0.00', '10000', '10045', '1', '3', '4', '0', '', '0', '0', '0');

-- ----------------------------
-- Table structure for om_member_address
-- ----------------------------
DROP TABLE IF EXISTS `om_member_address`;
CREATE TABLE `om_member_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员id',
  `city` mediumint(8) unsigned NOT NULL COMMENT '城市id',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `zipcode` varchar(10) NOT NULL COMMENT '邮编',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `default` tinyint(1) unsigned NOT NULL COMMENT '是否默认',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`default`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员收货地址表';

-- ----------------------------
-- Records of om_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_data
-- ----------------------------
DROP TABLE IF EXISTS `om_member_data`;
CREATE TABLE `om_member_data` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `complete` tinyint(1) unsigned NOT NULL COMMENT '完善资料标识',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of om_member_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_group
-- ----------------------------
DROP TABLE IF EXISTS `om_member_group`;
CREATE TABLE `om_member_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '会员组名称',
  `theme` varchar(20) NOT NULL COMMENT '风格目录',
  `template` varchar(20) NOT NULL COMMENT '模板目录',
  `price` decimal(10,2) NOT NULL COMMENT '售价',
  `unit` tinyint(1) unsigned NOT NULL COMMENT '价格单位:1虚拟卡，2金钱',
  `limit` tinyint(1) unsigned NOT NULL COMMENT '售价限制：1月，2半年，3年',
  `overdue` smallint(5) unsigned NOT NULL COMMENT '过期后变成的组',
  `allowapply` tinyint(1) unsigned NOT NULL COMMENT '是否允许会员申请',
  `allowspace` tinyint(1) unsigned NOT NULL COMMENT '是否允许会员空间',
  `allowfield` text NOT NULL COMMENT '可用字段，序列化数组格式',
  `spacefield` text NOT NULL COMMENT '空间字段，序列化数组格式',
  `spacetemplate` varchar(50) DEFAULT NULL COMMENT '空间默认模板',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员组表';

-- ----------------------------
-- Records of om_member_group
-- ----------------------------
INSERT INTO `om_member_group` VALUES ('1', '待审核会员', 'default', 'default', '0.00', '1', '1', '0', '0', '0', '', '', 'default', '0');
INSERT INTO `om_member_group` VALUES ('2', 'OAuth会员', 'default', 'default', '0.00', '0', '0', '0', '0', '0', '', '', 'default', '0');
INSERT INTO `om_member_group` VALUES ('3', '普通会员', 'default', 'default', '0.00', '1', '1', '3', '0', '1', '', '', 'default', '0');
INSERT INTO `om_member_group` VALUES ('4', '商业会员', 'default', 'default', '10.00', '2', '1', '3', '1', '1', '', '', 'default', '0');

-- ----------------------------
-- Table structure for om_member_invite
-- ----------------------------
DROP TABLE IF EXISTS `om_member_invite`;
CREATE TABLE `om_member_invite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '邀请者',
  `rid` int(10) unsigned NOT NULL COMMENT '被邀请者',
  `rname` varchar(50) NOT NULL COMMENT '被邀请者名称',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='会员邀请注册表';

-- ----------------------------
-- Records of om_member_invite
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_level
-- ----------------------------
DROP TABLE IF EXISTS `om_member_level`;
CREATE TABLE `om_member_level` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '会员级别名称',
  `stars` tinyint(2) NOT NULL COMMENT '星星数量',
  `experience` int(10) unsigned NOT NULL COMMENT '经验值要求',
  `allowupgrade` tinyint(1) NOT NULL COMMENT '允许自动升级',
  PRIMARY KEY (`id`),
  KEY `experience` (`experience`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='会员级别表';

-- ----------------------------
-- Records of om_member_level
-- ----------------------------
INSERT INTO `om_member_level` VALUES ('1', '3', '初级', '1', '0', '0');
INSERT INTO `om_member_level` VALUES ('2', '3', '中级', '5', '200', '0');
INSERT INTO `om_member_level` VALUES ('3', '3', '高级', '10', '500', '0');
INSERT INTO `om_member_level` VALUES ('4', '3', '元老', '15', '1000', '0');
INSERT INTO `om_member_level` VALUES ('5', '4', '普通', '16', '0', '0');
INSERT INTO `om_member_level` VALUES ('6', '4', '银牌', '23', '500', '0');
INSERT INTO `om_member_level` VALUES ('7', '4', '金牌', '35', '1000', '0');
INSERT INTO `om_member_level` VALUES ('8', '4', '钻石', '55', '2000', '0');

-- ----------------------------
-- Table structure for om_member_login
-- ----------------------------
DROP TABLE IF EXISTS `om_member_login`;
CREATE TABLE `om_member_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned DEFAULT NULL COMMENT '会员uid',
  `oauthid` varchar(30) NOT NULL COMMENT '快捷登录方式',
  `loginip` varchar(50) NOT NULL COMMENT '登录Ip',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `useragent` varchar(255) NOT NULL COMMENT '客户端信息',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `loginip` (`loginip`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='登录日志记录';

-- ----------------------------
-- Records of om_member_login
-- ----------------------------
INSERT INTO `om_member_login` VALUES ('1', '1', '', '127.0.0.1', '1418368990', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v39.0.2171.71');
INSERT INTO `om_member_login` VALUES ('2', '1', '', '127.0.0.1', '1419491371', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v39.0.2171.71');
INSERT INTO `om_member_login` VALUES ('3', '1', '', '127.0.0.1', '1419857881', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v38.0.2125.122');
INSERT INTO `om_member_login` VALUES ('4', '1', '', '127.0.0.1', '1420613721', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v39.0.2171.71');
INSERT INTO `om_member_login` VALUES ('5', '1', '', '127.0.0.1', '1420782445', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v39.0.2171.71');

-- ----------------------------
-- Table structure for om_member_menu
-- ----------------------------
DROP TABLE IF EXISTS `om_member_menu`;
CREATE TABLE `om_member_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级菜单id',
  `name` text NOT NULL COMMENT '菜单名称',
  `uri` varchar(255) DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) DEFAULT NULL COMMENT 'url',
  `mark` varchar(50) DEFAULT NULL COMMENT '菜单标识',
  `target` tinyint(3) unsigned DEFAULT NULL COMMENT '新窗口',
  `displayorder` tinyint(3) unsigned DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `list` (`pid`),
  KEY `displayorder` (`displayorder`),
  KEY `mark` (`mark`),
  KEY `uri` (`uri`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COMMENT='会员菜单表';

-- ----------------------------
-- Records of om_member_menu
-- ----------------------------
INSERT INTO `om_member_menu` VALUES ('1', '0', '账号', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('2', '0', '财务', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('3', '0', '空间', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('4', '0', '应用', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('5', '1', '基本管理', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('6', '5', '基本资料', 'account/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('7', '5', '收货地址', 'address/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('8', '5', '上传头像', 'account/avatar', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('9', '5', '附件管理', 'account/attachment', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('10', '1', '会员相关', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('11', '10', '修改密码', 'account/password', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('12', '10', '快捷登录', 'account/oauth', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('13', '10', '登录记录', 'account/login', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('14', '10', '会员升级', 'account/upgrade', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('15', '10', '会员权限', 'account/permission', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('16', '2', '充值', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('17', '2', '记录', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('18', '16', '网银充值', 'pay/add', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('19', '16', '卡密充值', 'pay/card', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('20', '16', '兑换服务', 'pay/convert', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('21', '17', '收入记录', 'pay/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('22', '17', '消费记录', 'pay/spend', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('23', '17', '经验值记录', 'pay/experience', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('24', '17', '虚拟币记录', 'pay/score', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('25', '3', '基本设置', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('26', '3', '内容管理', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('27', '25', '空间设置', 'space/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('28', '25', '模板设置', 'space/template', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('29', '26', '栏目分类', 'category/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('30', '4', '应用管理', '', '', '', '0', '99');
INSERT INTO `om_member_menu` VALUES ('31', '26', '文章管理', 'space1/index', '', 'space-1', '0', '0');
INSERT INTO `om_member_menu` VALUES ('32', '26', '外链管理', 'space2/index', '', 'space-2', '0', '0');
INSERT INTO `om_member_menu` VALUES ('33', '26', '日志管理', 'space3/index', '', 'space-3', '0', '0');
INSERT INTO `om_member_menu` VALUES ('34', '26', '相册管理', 'space4/index', '', 'space-4', '0', '0');
INSERT INTO `om_member_menu` VALUES ('35', '26', '幻灯管理', 'space5/index', '', 'space-5', '0', '0');
INSERT INTO `om_member_menu` VALUES ('36', '0', '互动', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('37', '36', '互动', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('38', '37', '我的动态', 'sns/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('39', '37', '我关注的', 'sns/follow', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('40', '37', '我的粉丝', 'sns/fans', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('41', '37', '互动设置', 'sns/config', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('42', '36', '通知', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('43', '42', '短消息', 'pm/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('44', '42', '系统提醒', 'notice/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('45', '42', '会员互动', 'notice/member', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('46', '42', '模块提醒', 'notice/module', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('47', '42', '应用提醒', 'notice/app', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('118', '113', '我收藏的文档', 'solution/home/favorite', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('117', '113', '我推荐的文档', 'solution/home/flag', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('116', '113', '被退回的文档', 'solution/back/index', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('111', '105', '我购买的文档', 'news/home/buy', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('110', '105', '我收藏的文档', 'news/home/favorite', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('109', '105', '我推荐的文档', 'news/home/flag', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('108', '105', '被退回的文档', 'news/back/index', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('107', '105', '待审核的文档', 'news/verify/index', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('106', '105', '已通过的文档', 'news/home/index', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('105', '104', '文档管理', '', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('104', '0', '新闻中心', '', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('79', '73', '我购买的文档', 'activities/home/buy', '', 'module-activities', '0', '0');
INSERT INTO `om_member_menu` VALUES ('78', '73', '我收藏的文档', 'activities/home/favorite', '', 'module-activities', '0', '0');
INSERT INTO `om_member_menu` VALUES ('77', '73', '我推荐的文档', 'activities/home/flag', '', 'module-activities', '0', '0');
INSERT INTO `om_member_menu` VALUES ('76', '73', '被退回的文档', 'activities/back/index', '', 'module-activities', '0', '0');
INSERT INTO `om_member_menu` VALUES ('74', '73', '已通过的文档', 'activities/home/index', '', 'module-activities', '0', '0');
INSERT INTO `om_member_menu` VALUES ('75', '73', '待审核的文档', 'activities/verify/index', '', 'module-activities', '0', '0');
INSERT INTO `om_member_menu` VALUES ('73', '72', '文档管理', '', '', 'module-activities', '0', '0');
INSERT INTO `om_member_menu` VALUES ('72', '0', '社区活动', '', '', 'module-activities', '0', '0');
INSERT INTO `om_member_menu` VALUES ('115', '113', '待审核的文档', 'solution/verify/index', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('114', '113', '已通过的文档', 'solution/home/index', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('112', '0', '解决方案', '', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('113', '112', '文档管理', '', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('158', '153', '我收藏的文档', 'product/home/favorite', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('157', '153', '我推荐的文档', 'product/home/flag', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('156', '153', '被退回的文档', 'product/back/index', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('155', '153', '待审核的文档', 'product/verify/index', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('154', '153', '已通过的文档', 'product/home/index', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('119', '113', '我购买的文档', 'solution/home/buy', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('153', '152', '文档管理', '', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('152', '0', '产品中心', '', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('151', '145', '我购买的文档', 'team/home/buy', '', 'module-team', '0', '0');
INSERT INTO `om_member_menu` VALUES ('150', '145', '我收藏的文档', 'team/home/favorite', '', 'module-team', '0', '0');
INSERT INTO `om_member_menu` VALUES ('149', '145', '我推荐的文档', 'team/home/flag', '', 'module-team', '0', '0');
INSERT INTO `om_member_menu` VALUES ('148', '145', '被退回的文档', 'team/back/index', '', 'module-team', '0', '0');
INSERT INTO `om_member_menu` VALUES ('147', '145', '待审核的文档', 'team/verify/index', '', 'module-team', '0', '0');
INSERT INTO `om_member_menu` VALUES ('146', '145', '已通过的文档', 'team/home/index', '', 'module-team', '0', '0');
INSERT INTO `om_member_menu` VALUES ('145', '144', '文档管理', '', '', 'module-team', '0', '0');
INSERT INTO `om_member_menu` VALUES ('144', '0', '团队成员', '', '', 'module-team', '0', '0');
INSERT INTO `om_member_menu` VALUES ('159', '153', '我购买的文档', 'product/home/buy', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('160', '0', '最新项目', '', '', 'module-cass', '0', '0');
INSERT INTO `om_member_menu` VALUES ('161', '160', '文档管理', '', '', 'module-cass', '0', '0');
INSERT INTO `om_member_menu` VALUES ('162', '161', '已通过的文档', 'cass/home/index', '', 'module-cass', '0', '0');
INSERT INTO `om_member_menu` VALUES ('163', '161', '待审核的文档', 'cass/verify/index', '', 'module-cass', '0', '0');
INSERT INTO `om_member_menu` VALUES ('164', '161', '被退回的文档', 'cass/back/index', '', 'module-cass', '0', '0');
INSERT INTO `om_member_menu` VALUES ('165', '161', '我推荐的文档', 'cass/home/flag', '', 'module-cass', '0', '0');
INSERT INTO `om_member_menu` VALUES ('166', '161', '我收藏的文档', 'cass/home/favorite', '', 'module-cass', '0', '0');
INSERT INTO `om_member_menu` VALUES ('167', '161', '我购买的文档', 'cass/home/buy', '', 'module-cass', '0', '0');

-- ----------------------------
-- Table structure for om_member_new_notice
-- ----------------------------
DROP TABLE IF EXISTS `om_member_new_notice`;
CREATE TABLE `om_member_new_notice` (
  `uid` smallint(8) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新通知提醒表';

-- ----------------------------
-- Records of om_member_new_notice
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_0
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_0`;
CREATE TABLE `om_member_notice_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_1
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_1`;
CREATE TABLE `om_member_notice_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_2
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_2`;
CREATE TABLE `om_member_notice_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_3
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_3`;
CREATE TABLE `om_member_notice_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_4
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_4`;
CREATE TABLE `om_member_notice_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_5
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_5`;
CREATE TABLE `om_member_notice_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_6
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_6`;
CREATE TABLE `om_member_notice_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_7
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_7`;
CREATE TABLE `om_member_notice_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_8
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_8`;
CREATE TABLE `om_member_notice_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_9
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_9`;
CREATE TABLE `om_member_notice_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_oauth
-- ----------------------------
DROP TABLE IF EXISTS `om_member_oauth`;
CREATE TABLE `om_member_oauth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员uid',
  `oid` varchar(255) NOT NULL COMMENT 'OAuth返回id',
  `oauth` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `expire_at` int(10) unsigned NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员OAuth2授权表';

-- ----------------------------
-- Records of om_member_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paycard
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paycard`;
CREATE TABLE `om_member_paycard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card` char(20) NOT NULL COMMENT '卡号',
  `password` mediumint(6) unsigned NOT NULL COMMENT '密码',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `inputtime` int(10) unsigned NOT NULL COMMENT '生成时间',
  `endtime` int(10) unsigned NOT NULL COMMENT '结束时间',
  `usetime` int(10) unsigned NOT NULL COMMENT '使用时间',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '使用人id',
  `username` varchar(50) NOT NULL COMMENT '使用人名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `card` (`card`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付卡表';

-- ----------------------------
-- Records of om_member_paycard
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_0
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_0`;
CREATE TABLE `om_member_paylog_0` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_1
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_1`;
CREATE TABLE `om_member_paylog_1` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_2
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_2`;
CREATE TABLE `om_member_paylog_2` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_3
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_3`;
CREATE TABLE `om_member_paylog_3` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_4
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_4`;
CREATE TABLE `om_member_paylog_4` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_5
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_5`;
CREATE TABLE `om_member_paylog_5` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_6
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_6`;
CREATE TABLE `om_member_paylog_6` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_7
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_7`;
CREATE TABLE `om_member_paylog_7` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_8
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_8`;
CREATE TABLE `om_member_paylog_8` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_9
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_9`;
CREATE TABLE `om_member_paylog_9` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_0
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_0`;
CREATE TABLE `om_member_scorelog_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_1
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_1`;
CREATE TABLE `om_member_scorelog_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_1
-- ----------------------------
INSERT INTO `om_member_scorelog_1` VALUES ('1', '1', '0', '5', 'login', 'lang,m-056', '1418366590');
INSERT INTO `om_member_scorelog_1` VALUES ('2', '1', '0', '5', 'login', 'lang,m-056', '1419470339');
INSERT INTO `om_member_scorelog_1` VALUES ('3', '1', '0', '5', 'login', 'lang,m-056', '1419821837');
INSERT INTO `om_member_scorelog_1` VALUES ('4', '1', '0', '5', 'login', 'lang,m-056', '1420611917');
INSERT INTO `om_member_scorelog_1` VALUES ('5', '1', '0', '5', 'login', 'lang,m-056', '1420683010');
INSERT INTO `om_member_scorelog_1` VALUES ('6', '1', '0', '5', 'login', 'lang,m-056', '1420781717');
INSERT INTO `om_member_scorelog_1` VALUES ('7', '1', '0', '5', 'login', 'lang,m-056', '1421371283');
INSERT INTO `om_member_scorelog_1` VALUES ('8', '1', '0', '5', 'login', 'lang,m-056', '1422423951');
INSERT INTO `om_member_scorelog_1` VALUES ('9', '1', '0', '5', 'login', 'lang,m-056', '1422870327');

-- ----------------------------
-- Table structure for om_member_scorelog_2
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_2`;
CREATE TABLE `om_member_scorelog_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_3
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_3`;
CREATE TABLE `om_member_scorelog_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_4
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_4`;
CREATE TABLE `om_member_scorelog_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_5
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_5`;
CREATE TABLE `om_member_scorelog_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_6
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_6`;
CREATE TABLE `om_member_scorelog_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_7
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_7`;
CREATE TABLE `om_member_scorelog_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_8
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_8`;
CREATE TABLE `om_member_scorelog_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_9
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_9`;
CREATE TABLE `om_member_scorelog_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_session
-- ----------------------------
DROP TABLE IF EXISTS `om_member_session`;
CREATE TABLE `om_member_session` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员Session会话表';

-- ----------------------------
-- Records of om_member_session
-- ----------------------------
INSERT INTO `om_member_session` VALUES ('9c52384f3e59d6ac22ce2f7bbec3d0f8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '1420782445', 'a:3:{s:7:\"user_id\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');
INSERT INTO `om_member_session` VALUES ('6f35e5a41546ed782b615d1ba0a8639a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36', '1421369791', 'a:2:{s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');
INSERT INTO `om_member_session` VALUES ('259653d28a62cec4ba1eee9e2e72e9b6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36', '1422409256', '', '0');
INSERT INTO `om_member_session` VALUES ('f5dae46f695409977146d16f6f164bdd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '1422409367', 'a:2:{s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');
INSERT INTO `om_member_session` VALUES ('11479c72e5d55cc3858f6a0e057d8efd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '1422423918', 'a:2:{s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');
INSERT INTO `om_member_session` VALUES ('edc4a12a618a8d7e534052cf092dc0cb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 Safari/537.36', '1420682924', 'a:2:{s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');
INSERT INTO `om_member_session` VALUES ('f072b8bd6b320eee3f321fcf2065c98b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '1420775244', 'a:2:{s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');
INSERT INTO `om_member_session` VALUES ('a904bc77a38c1d9d5c30883a3b0a69b7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '1422868496', 'a:2:{s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');

-- ----------------------------
-- Table structure for om_member_setting
-- ----------------------------
DROP TABLE IF EXISTS `om_member_setting`;
CREATE TABLE `om_member_setting` (
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员属性参数表';

-- ----------------------------
-- Records of om_member_setting
-- ----------------------------
INSERT INTO `om_member_setting` VALUES ('ucentercfg', '');
INSERT INTO `om_member_setting` VALUES ('domain', '');
INSERT INTO `om_member_setting` VALUES ('pagesize', '10');
INSERT INTO `om_member_setting` VALUES ('regnotallow', 'omooo,OmWeb');
INSERT INTO `om_member_setting` VALUES ('ucenter', '0');
INSERT INTO `om_member_setting` VALUES ('regnamerule', '/^[0-9a-z]+$/i');
INSERT INTO `om_member_setting` VALUES ('register', '1');
INSERT INTO `om_member_setting` VALUES ('regcode', '0');
INSERT INTO `om_member_setting` VALUES ('regverify', '1');
INSERT INTO `om_member_setting` VALUES ('regiptime', '2');
INSERT INTO `om_member_setting` VALUES ('logincode', '1');
INSERT INTO `om_member_setting` VALUES ('permission', 'a:10:{i:1;a:13:{s:16:\\\"login_experience\\\";s:1:\\\"1\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"1\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:10:\\\"attachsize\\\";s:1:\\\"0\\\";}i:2;a:14:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"1\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:1:\\\"5\\\";}s:3:\\\"3_1\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"2\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"10\\\";}s:3:\\\"3_2\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"2\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"10\\\";}s:3:\\\"3_3\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:2:\\\"10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"2\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"20\\\";}s:3:\\\"3_4\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"3\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"30\\\";}s:3:\\\"4_5\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:2:\\\"10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"50\\\";}s:3:\\\"4_6\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"70\\\";}s:3:\\\"4_7\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:3:\\\"100\\\";}s:3:\\\"4_8\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:1:\\\"0\\\";}}');
INSERT INTO `om_member_setting` VALUES ('complete', '0');
INSERT INTO `om_member_setting` VALUES ('avatar', '0');
INSERT INTO `om_member_setting` VALUES ('pay', 'a:2:{s:6:\\\"tenpay\\\";a:3:{s:4:\\\"name\\\";s:9:\\\"财付通\\\";s:2:\\\"id\\\";s:0:\\\"\\\";s:3:\\\"key\\\";s:0:\\\"\\\";}s:6:\\\"alipay\\\";a:4:{s:4:\\\"name\\\";s:9:\\\"支付宝\\\";s:8:\\\"username\\\";s:0:\\\"\\\";s:2:\\\"id\\\";s:0:\\\"\\\";s:3:\\\"key\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_member_setting` VALUES ('space', 'a:9:{s:6:\\\"domain\\\";s:0:\\\"\\\";s:4:\\\"edit\\\";s:1:\\\"1\\\";s:6:\\\"verify\\\";s:1:\\\"0\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:5:\\\"title\\\";s:41:\\\"会员空间_OmWeb自助建站平台！\\\";s:8:\\\"keywords\\\";s:0:\\\"\\\";s:11:\\\"description\\\";s:0:\\\"\\\";s:4:\\\"flag\\\";a:9:{i:1;a:1:{s:4:\\\"name\\\";s:12:\\\"达人空间\\\";}i:2;a:1:{s:4:\\\"name\\\";s:12:\\\"推荐空间\\\";}i:3;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:4;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:5;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:6;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:7;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:8;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:9;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}}}');

-- ----------------------------
-- Table structure for om_module
-- ----------------------------
DROP TABLE IF EXISTS `om_module`;
CREATE TABLE `om_module` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` text COMMENT '站点划分',
  `dirname` varchar(50) NOT NULL COMMENT '目录名称',
  `extend` tinyint(1) unsigned DEFAULT NULL COMMENT '是否是扩展模块',
  `sitemap` tinyint(1) unsigned DEFAULT NULL COMMENT '是否生成地图',
  `setting` text COMMENT '配置信息',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用？',
  `displayorder` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of om_module
-- ----------------------------
INSERT INTO `om_module` VALUES ('4', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:5:\\\"theme\\\";s:7:\\\"default\\\";s:8:\\\"template\\\";s:9:\\\"liyuantpl\\\";s:4:\\\"html\\\";s:1:\\\"0\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";}}', 'activities', '0', '1', 'a:6:{s:4:\\\"flag\\\";a:9:{i:1;a:9:{s:4:\\\"name\\\";s:12:\\\"模块首页\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:2;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:3;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:4;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:5;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:6;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:7;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:8;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:9;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}}s:3:\\\"seo\\\";a:3:{s:12:\\\"module_title\\\";s:0:\\\"\\\";s:15:\\\"module_keywords\\\";s:0:\\\"\\\";s:18:\\\"module_description\\\";s:0:\\\"\\\";}s:3:\\\"tag\\\";a:3:{s:8:\\\"pagesize\\\";s:0:\\\"\\\";s:3:\\\"url\\\";s:0:\\\"\\\";s:8:\\\"url_page\\\";s:0:\\\"\\\";}s:6:\\\"search\\\";a:5:{s:5:\\\"close\\\";s:1:\\\"0\\\";s:5:\\\"cache\\\";s:5:\\\"10000\\\";s:5:\\\"total\\\";s:3:\\\"500\\\";s:6:\\\"length\\\";s:1:\\\"4\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";}s:10:\\\"show_cache\\\";s:5:\\\"10000\\\";s:10:\\\"postselect\\\";s:1:\\\"0\\\";}', '0', '0');
INSERT INTO `om_module` VALUES ('8', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:5:\\\"theme\\\";s:7:\\\"default\\\";s:8:\\\"template\\\";s:9:\\\"liyuantpl\\\";s:4:\\\"html\\\";s:1:\\\"0\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";}}', 'news', '0', '1', 'a:6:{s:4:\\\"flag\\\";a:9:{i:1;a:9:{s:4:\\\"name\\\";s:12:\\\"热点新闻\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:2;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:3;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:4;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:5;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:6;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:7;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:8;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:9;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}}s:3:\\\"seo\\\";a:3:{s:12:\\\"module_title\\\";s:0:\\\"\\\";s:15:\\\"module_keywords\\\";s:0:\\\"\\\";s:18:\\\"module_description\\\";s:0:\\\"\\\";}s:3:\\\"tag\\\";a:3:{s:8:\\\"pagesize\\\";s:0:\\\"\\\";s:3:\\\"url\\\";s:0:\\\"\\\";s:8:\\\"url_page\\\";s:0:\\\"\\\";}s:6:\\\"search\\\";a:5:{s:5:\\\"close\\\";s:1:\\\"0\\\";s:5:\\\"cache\\\";s:5:\\\"10000\\\";s:5:\\\"total\\\";s:3:\\\"500\\\";s:6:\\\"length\\\";s:1:\\\"4\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";}s:10:\\\"show_cache\\\";s:5:\\\"10000\\\";s:10:\\\"postselect\\\";s:1:\\\"0\\\";}', '0', '0');
INSERT INTO `om_module` VALUES ('9', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";i:1;s:4:\\\"html\\\";i:0;s:5:\\\"theme\\\";s:6:\\\"liyuan\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";s:8:\\\"template\\\";s:9:\\\"liyuantpl\\\";}}', 'solution', '0', '1', '', '0', '0');
INSERT INTO `om_module` VALUES ('13', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:5:\\\"theme\\\";s:7:\\\"default\\\";s:8:\\\"template\\\";s:9:\\\"liyuantpl\\\";s:4:\\\"html\\\";s:1:\\\"0\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";}}', 'team', '0', '1', 'a:6:{s:4:\\\"flag\\\";a:9:{i:1;a:9:{s:4:\\\"name\\\";s:21:\\\"推荐到模块首页\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:2;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:3;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:4;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:5;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:6;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:7;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:8;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:9;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}}s:3:\\\"seo\\\";a:3:{s:12:\\\"module_title\\\";s:0:\\\"\\\";s:15:\\\"module_keywords\\\";s:0:\\\"\\\";s:18:\\\"module_description\\\";s:0:\\\"\\\";}s:3:\\\"tag\\\";a:3:{s:8:\\\"pagesize\\\";s:0:\\\"\\\";s:3:\\\"url\\\";s:0:\\\"\\\";s:8:\\\"url_page\\\";s:0:\\\"\\\";}s:6:\\\"search\\\";a:5:{s:5:\\\"close\\\";s:1:\\\"0\\\";s:5:\\\"cache\\\";s:5:\\\"10000\\\";s:5:\\\"total\\\";s:3:\\\"500\\\";s:6:\\\"length\\\";s:1:\\\"4\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";}s:10:\\\"show_cache\\\";s:5:\\\"10000\\\";s:10:\\\"postselect\\\";s:1:\\\"0\\\";}', '0', '0');
INSERT INTO `om_module` VALUES ('14', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:5:\\\"theme\\\";s:7:\\\"default\\\";s:8:\\\"template\\\";s:9:\\\"liyuantpl\\\";s:4:\\\"html\\\";s:1:\\\"0\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";}}', 'product', '0', '1', 'a:6:{s:4:\\\"flag\\\";a:9:{i:1;a:9:{s:4:\\\"name\\\";s:21:\\\"推荐到模块首页\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:2;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:3;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:4;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:5;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:6;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:7;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:8;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:9;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}}s:3:\\\"seo\\\";a:3:{s:12:\\\"module_title\\\";s:0:\\\"\\\";s:15:\\\"module_keywords\\\";s:0:\\\"\\\";s:18:\\\"module_description\\\";s:0:\\\"\\\";}s:3:\\\"tag\\\";a:3:{s:8:\\\"pagesize\\\";s:0:\\\"\\\";s:3:\\\"url\\\";s:0:\\\"\\\";s:8:\\\"url_page\\\";s:0:\\\"\\\";}s:6:\\\"search\\\";a:5:{s:5:\\\"close\\\";s:1:\\\"0\\\";s:5:\\\"cache\\\";s:5:\\\"10000\\\";s:5:\\\"total\\\";s:3:\\\"500\\\";s:6:\\\"length\\\";s:1:\\\"4\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";}s:10:\\\"show_cache\\\";s:5:\\\"10000\\\";s:10:\\\"postselect\\\";s:1:\\\"0\\\";}', '0', '0');
INSERT INTO `om_module` VALUES ('15', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:5:\\\"theme\\\";s:7:\\\"default\\\";s:8:\\\"template\\\";s:9:\\\"liyuantpl\\\";s:4:\\\"html\\\";s:1:\\\"0\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";}}', 'cass', '0', '1', 'a:6:{s:4:\\\"flag\\\";a:9:{i:1;a:9:{s:4:\\\"name\\\";s:12:\\\"热点项目\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:2;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:3;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:4;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:5;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:6;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:7;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:8;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:9;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}}s:3:\\\"seo\\\";a:3:{s:12:\\\"module_title\\\";s:0:\\\"\\\";s:15:\\\"module_keywords\\\";s:0:\\\"\\\";s:18:\\\"module_description\\\";s:0:\\\"\\\";}s:3:\\\"tag\\\";a:3:{s:8:\\\"pagesize\\\";s:0:\\\"\\\";s:3:\\\"url\\\";s:0:\\\"\\\";s:8:\\\"url_page\\\";s:0:\\\"\\\";}s:6:\\\"search\\\";a:5:{s:5:\\\"close\\\";s:1:\\\"0\\\";s:5:\\\"cache\\\";s:5:\\\"10000\\\";s:5:\\\"total\\\";s:3:\\\"500\\\";s:6:\\\"length\\\";s:1:\\\"4\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";}s:10:\\\"show_cache\\\";s:5:\\\"10000\\\";s:10:\\\"postselect\\\";s:1:\\\"0\\\";}', '0', '0');

-- ----------------------------
-- Table structure for om_newpm
-- ----------------------------
DROP TABLE IF EXISTS `om_newpm`;
CREATE TABLE `om_newpm` (
  `uid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新消息数量表';

-- ----------------------------
-- Records of om_newpm
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_indexes
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_indexes`;
CREATE TABLE `om_pm_indexes` (
  `pmid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息索引表';

-- ----------------------------
-- Records of om_pm_indexes
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_lists
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_lists`;
CREATE TABLE `om_pm_lists` (
  `plid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(50) NOT NULL,
  `pmtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(80) NOT NULL,
  `members` smallint(5) unsigned NOT NULL DEFAULT '0',
  `min_max` varchar(17) NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `lastmessage` text NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `pmtype` (`pmtype`),
  KEY `min_max` (`min_max`),
  KEY `authorid` (`authorid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息关系表';

-- ----------------------------
-- Records of om_pm_lists
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_members
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_members`;
CREATE TABLE `om_pm_members` (
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isnew` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pmnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`plid`,`uid`),
  KEY `isnew` (`isnew`),
  KEY `lastdateline` (`uid`,`lastdateline`),
  KEY `lastupdate` (`uid`,`lastupdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息与会员关系表';

-- ----------------------------
-- Records of om_pm_members
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_0
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_0`;
CREATE TABLE `om_pm_messages_0` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_1
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_1`;
CREATE TABLE `om_pm_messages_1` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_2
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_2`;
CREATE TABLE `om_pm_messages_2` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_3
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_3`;
CREATE TABLE `om_pm_messages_3` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_4
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_4`;
CREATE TABLE `om_pm_messages_4` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_5
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_5`;
CREATE TABLE `om_pm_messages_5` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_6
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_6`;
CREATE TABLE `om_pm_messages_6` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_7
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_7`;
CREATE TABLE `om_pm_messages_7` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_8
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_8`;
CREATE TABLE `om_pm_messages_8` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_9
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_9`;
CREATE TABLE `om_pm_messages_9` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_site
-- ----------------------------
DROP TABLE IF EXISTS `om_site`;
CREATE TABLE `om_site` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '站点名称',
  `domain` varchar(50) NOT NULL COMMENT '站点域名',
  `setting` text NOT NULL COMMENT '站点配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='站点表';

-- ----------------------------
-- Records of om_site
-- ----------------------------
INSERT INTO `om_site` VALUES ('1', '励元科技（上海）有限公司', 'liyuan.in', 'a:33:{s:9:\\\"SITE_NAME\\\";s:36:\\\"励元科技（上海）有限公司\\\";s:16:\\\"SITE_TIME_FORMAT\\\";s:9:\\\"Y-m-d H:i\\\";s:13:\\\"SITE_LANGUAGE\\\";s:5:\\\"zh-cn\\\";s:10:\\\"SITE_THEME\\\";s:6:\\\"liyuan\\\";s:13:\\\"SITE_TEMPLATE\\\";s:9:\\\"liyuantpl\\\";s:13:\\\"SITE_TIMEZONE\\\";s:1:\\\"8\\\";s:11:\\\"SITE_MOBILE\\\";s:0:\\\"\\\";s:16:\\\"SITE_MOBILE_OPEN\\\";s:1:\\\"0\\\";s:12:\\\"SITE_SEOJOIN\\\";s:1:\\\"_\\\";s:10:\\\"SITE_TITLE\\\";s:36:\\\"励元科技（上海）有限公司\\\";s:13:\\\"SITE_KEYWORDS\\\";s:36:\\\"励元科技（上海）有限公司\\\";s:16:\\\"SITE_DESCRIPTION\\\";s:36:\\\"励元科技（上海）有限公司\\\";s:18:\\\"SITE_ATTACH_REMOTE\\\";s:1:\\\"0\\\";s:6:\\\"remote\\\";a:3:{i:1;a:9:{s:16:\\\"SITE_ATTACH_HOST\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_PORT\\\";s:0:\\\"\\\";s:20:\\\"SITE_ATTACH_USERNAME\\\";s:0:\\\"\\\";s:20:\\\"SITE_ATTACH_PASSWORD\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_PATH\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_PASV\\\";s:1:\\\"0\\\";s:16:\\\"SITE_ATTACH_MODE\\\";s:4:\\\"auto\\\";s:16:\\\"SITE_ATTACH_EXTS\\\";s:0:\\\"\\\";s:15:\\\"SITE_ATTACH_URL\\\";s:0:\\\"\\\";}i:2;a:6:{s:2:\\\"ak\\\";s:0:\\\"\\\";s:2:\\\"sk\\\";s:0:\\\"\\\";s:6:\\\"bucket\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_EXTS\\\";s:0:\\\"\\\";s:4:\\\"host\\\";s:0:\\\"\\\";s:15:\\\"SITE_ATTACH_URL\\\";s:0:\\\"\\\";}i:3;a:6:{s:2:\\\"id\\\";s:0:\\\"\\\";s:6:\\\"secret\\\";s:0:\\\"\\\";s:6:\\\"bucket\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_EXTS\\\";s:0:\\\"\\\";s:4:\\\"host\\\";s:0:\\\"\\\";s:15:\\\"SITE_ATTACH_URL\\\";s:0:\\\"\\\";}}s:16:\\\"SITE_IMAGE_RATIO\\\";s:1:\\\"0\\\";s:20:\\\"SITE_IMAGE_WATERMARK\\\";s:1:\\\"0\\\";s:17:\\\"SITE_IMAGE_REMOTE\\\";s:1:\\\"0\\\";s:18:\\\"SITE_IMAGE_CONTENT\\\";s:1:\\\"0\\\";s:19:\\\"SITE_IMAGE_VRTALIGN\\\";s:3:\\\"top\\\";s:19:\\\"SITE_IMAGE_HORALIGN\\\";s:4:\\\"left\\\";s:20:\\\"SITE_IMAGE_VRTOFFSET\\\";s:0:\\\"\\\";s:20:\\\"SITE_IMAGE_HOROFFSET\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_TYPE\\\";s:1:\\\"0\\\";s:18:\\\"SITE_IMAGE_OPACITY\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_FONT\\\";s:11:\\\"default.ttf\\\";s:16:\\\"SITE_IMAGE_COLOR\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_SIZE\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_TEXT\\\";s:0:\\\"\\\";s:15:\\\"SITE_HOME_INDEX\\\";s:4:\\\"1099\\\";s:17:\\\"SITE_MODULE_INDEX\\\";s:3:\\\"999\\\";s:16:\\\"SITE_QUERY_CACHE\\\";s:1:\\\"0\\\";s:11:\\\"SITE_DOMAIN\\\";s:9:\\\"liyuan.in\\\";s:14:\\\"SITE_NAVIGATOR\\\";s:60:\\\"主导航,首页幻灯,底部导航,单个图片管理,,,,,,\\\";}');

-- ----------------------------
-- Table structure for om_sns_comment
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_comment`;
CREATE TABLE `om_sns_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL COMMENT '动态表id',
  `uid` int(10) unsigned NOT NULL COMMENT '评论人id',
  `username` varchar(50) NOT NULL COMMENT '评论人',
  `comment` text NOT NULL COMMENT '评论内容',
  `inputip` varchar(50) NOT NULL COMMENT '录入ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入评论时间',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='动态评论';

-- ----------------------------
-- Records of om_sns_comment
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_config
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_config`;
CREATE TABLE `om_sns_config` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员uid',
  `show_all` tinyint(1) unsigned DEFAULT NULL COMMENT '是否全部人可查看我的动态',
  `show_follow` tinyint(1) unsigned DEFAULT NULL COMMENT '是否允许关注我的人访问',
  `show_fans` tinyint(1) unsigned DEFAULT NULL COMMENT '是否允许我的粉丝访问',
  UNIQUE KEY `uid` (`uid`),
  KEY `show_all` (`show_all`),
  KEY `show_fans` (`show_fans`),
  KEY `show_follow` (`show_follow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员互动配置';

-- ----------------------------
-- Records of om_sns_config
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_feed
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_feed`;
CREATE TABLE `om_sns_feed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '动态ID',
  `uid` int(10) unsigned NOT NULL COMMENT '产生动态的用户UID',
  `username` varchar(100) NOT NULL COMMENT '会员名称',
  `comment` int(10) unsigned DEFAULT '0' COMMENT '评论数',
  `repost` int(10) unsigned DEFAULT '0' COMMENT '分享数',
  `digg` int(10) unsigned DEFAULT '0' COMMENT '赞数量',
  `content` text NOT NULL COMMENT '内容',
  `repost_id` int(10) unsigned NOT NULL COMMENT '转发id',
  `source` varchar(100) NOT NULL COMMENT '来源名称',
  `images` varchar(255) NOT NULL COMMENT '图片',
  `inputip` varchar(50) NOT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ctime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员动态表';

-- ----------------------------
-- Records of om_sns_feed
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_feed_digg
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_feed_digg`;
CREATE TABLE `om_sns_feed_digg` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `fid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='点赞表';

-- ----------------------------
-- Records of om_sns_feed_digg
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_feed_favorite
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_feed_favorite`;
CREATE TABLE `om_sns_feed_favorite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `fid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of om_sns_feed_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_follow
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_follow`;
CREATE TABLE `om_sns_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `uid` int(11) NOT NULL COMMENT '被关注者ID',
  `username` varchar(50) NOT NULL COMMENT '被关注者名称',
  `gid` int(11) unsigned NOT NULL COMMENT '分组表',
  `fid` int(11) NOT NULL COMMENT '关注者ID',
  `isdouble` tinyint(1) unsigned NOT NULL COMMENT '是否互粉',
  `remark` varchar(50) NOT NULL COMMENT '备注',
  `ctime` int(11) NOT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid-fid` (`uid`,`fid`),
  UNIQUE KEY `fid-uid` (`fid`,`uid`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注表';

-- ----------------------------
-- Records of om_sns_follow
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_follow_group
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_follow_group`;
CREATE TABLE `om_sns_follow_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关注组ID',
  `uid` int(11) NOT NULL COMMENT '用户UID',
  `title` varchar(255) NOT NULL COMMENT '组名称',
  `ctime` int(11) unsigned DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注组表';

-- ----------------------------
-- Records of om_sns_follow_group
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_topic
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_topic`;
CREATE TABLE `om_sns_topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '话题名称',
  `uid` int(10) NOT NULL COMMENT '发起人',
  `username` varchar(100) NOT NULL COMMENT '发起人名称',
  `count` int(10) unsigned NOT NULL COMMENT '关联动态数量',
  `inputtime` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `uid` (`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='话题表';

-- ----------------------------
-- Records of om_sns_topic
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_topic_index
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_topic_index`;
CREATE TABLE `om_sns_topic_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL COMMENT '话题id',
  `fid` int(10) unsigned NOT NULL COMMENT '动态id',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`,`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='话题关联表';

-- ----------------------------
-- Records of om_sns_topic_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_space
-- ----------------------------
DROP TABLE IF EXISTS `om_space`;
CREATE TABLE `om_space` (
  `uid` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '空间名称',
  `logo` varchar(255) DEFAULT NULL COMMENT '空间logo',
  `style` varchar(30) DEFAULT NULL COMMENT '空间风格',
  `title` varchar(255) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'SEO关键字',
  `description` text COMMENT 'SEO描述',
  `introduction` text COMMENT '空间简介',
  `code` text COMMENT '第三方代码',
  `footer` text COMMENT '底部信息',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `displayorder` tinyint(3) DEFAULT '0' COMMENT '排序值',
  PRIMARY KEY (`uid`),
  KEY `hits` (`hits`),
  KEY `status` (`status`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间表';

-- ----------------------------
-- Records of om_space
-- ----------------------------
INSERT INTO `om_space` VALUES ('1', 'omWeb团队', 'http://www.omooo.com/member/statics/default/images/logo_new.png', 'default', 'omWeb团队-专业技术团队', 'OmWeb,网站建设,内容管理系统', 'OmWeb v2（简称v2）是一款开源的跨平台网站内容管理系统，以“实用+好用”为基本产品理念，提供从内容发布、组织、传播、互动和数据挖掘的网站一体化解决方案', '<p>OmWeb v2（简称v2）是一款开源的跨平台网站内容管理系统，以“实用+好用”为基本产品理念，提供从内容发布、组织、传播、互动和数据挖掘的网站一体化解决方案。系统基于CodeIgniter框架，具有良好扩展性和管理性，可以帮助您在各种操作系统与运行环境中搭建各种网站模型而不需要对复杂繁琐的编程语言有太多的专业知识，系统采用UTF-8编码，采取(语言-代码-程序)两两分离的技术模式，全面使用了模板包与语言包结构，为用户的修改提供方便，网站内容的每一个角落都可以在后台予以管理，是一套非常适合用做系统建站或者进行二次开发的程序核心。</p>', '<script type=\"text/javascript\">var cnzz_protocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cdiv id=\'cnzz_stat_icon_5629330\'%3E%3C/div%3E%3Cscript src=\'\" + cnzz_protocol + \"s9.cnzz.com/stat.php%3Fid%3D5629330%26show%3Dpic2\' type=\'text/javascript\'%3E%3C/script%3E\"));</script>', '<p>扣扣咨询：135977378 电子邮箱：OmWeb@qq.com</p>某某某公司版权所有，ICP备案0000001<p><br /></p>', '888888', '1', '1377949585', '0');

-- ----------------------------
-- Table structure for om_space_category
-- ----------------------------
DROP TABLE IF EXISTS `om_space_category`;
CREATE TABLE `om_space_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员uid',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '0外链，1模型，2单页',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `link` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `body` text COMMENT '单页内容',
  `showid` tinyint(1) unsigned NOT NULL COMMENT '0不显示,1顶部,2底部,3都显示',
  `modelid` smallint(5) unsigned NOT NULL COMMENT '模型id',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `childids` text COMMENT '下级所有id',
  `title` varchar(255) NOT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键字',
  `description` text NOT NULL COMMENT '描述信息',
  `displayorder` tinyint(3) DEFAULT '0' COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `pid` (`pid`),
  KEY `showid` (`showid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_space_category
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_category_init
-- ----------------------------
DROP TABLE IF EXISTS `om_space_category_init`;
CREATE TABLE `om_space_category_init` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `gid` mediumint(8) unsigned NOT NULL COMMENT '会员组id',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '0外链，1模型，2单页',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `link` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `showid` tinyint(1) unsigned NOT NULL COMMENT '0不显示,1顶部,2底部,3都显示',
  `modelid` smallint(5) unsigned NOT NULL COMMENT '模型id',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `childids` text COMMENT '下级所有id',
  PRIMARY KEY (`id`),
  KEY `uid` (`gid`),
  KEY `pid` (`pid`),
  KEY `showid` (`showid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='空间栏目表初始化表';

-- ----------------------------
-- Records of om_space_category_init
-- ----------------------------
INSERT INTO `om_space_category_init` VALUES ('1', '1', '0', '0', '2', '关于我们', '', '3', '0', '1', '1,2,3');
INSERT INTO `om_space_category_init` VALUES ('2', '1', '1', '0,1', '2', '空间简介', '', '3', '0', '0', '2');
INSERT INTO `om_space_category_init` VALUES ('3', '1', '1', '0,1', '2', '联系我们', '', '3', '0', '0', '3');
INSERT INTO `om_space_category_init` VALUES ('4', '1', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '4');
INSERT INTO `om_space_category_init` VALUES ('5', '1', '0', '0', '1', '我的日志', '', '3', '3', '0', '5');
INSERT INTO `om_space_category_init` VALUES ('6', '1', '0', '0', '1', '精彩图片', '', '3', '4', '0', '6');
INSERT INTO `om_space_category_init` VALUES ('7', '1', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '7');
INSERT INTO `om_space_category_init` VALUES ('8', '1', '0', '0', '1', '友情链接', '', '3', '2', '0', '8');
INSERT INTO `om_space_category_init` VALUES ('9', '1', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '9');
INSERT INTO `om_space_category_init` VALUES ('10', '2', '0', '0', '2', '关于我们', '', '3', '0', '1', '10,11,12');
INSERT INTO `om_space_category_init` VALUES ('11', '2', '10', '0,10', '2', '空间简介', '', '3', '0', '0', '11');
INSERT INTO `om_space_category_init` VALUES ('12', '2', '10', '0,10', '2', '联系我们', '', '3', '0', '0', '12');
INSERT INTO `om_space_category_init` VALUES ('13', '2', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '13');
INSERT INTO `om_space_category_init` VALUES ('14', '2', '0', '0', '1', '我的日志', '', '3', '3', '0', '14');
INSERT INTO `om_space_category_init` VALUES ('15', '2', '0', '0', '1', '精彩图片', '', '3', '4', '0', '15');
INSERT INTO `om_space_category_init` VALUES ('16', '2', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '16');
INSERT INTO `om_space_category_init` VALUES ('17', '2', '0', '0', '1', '友情链接', '', '3', '2', '0', '17');
INSERT INTO `om_space_category_init` VALUES ('18', '2', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '18');
INSERT INTO `om_space_category_init` VALUES ('19', '3', '0', '0', '2', '关于我们', '', '3', '0', '1', '19,20,21');
INSERT INTO `om_space_category_init` VALUES ('20', '3', '19', '0,19', '2', '空间简介', '', '3', '0', '0', '20');
INSERT INTO `om_space_category_init` VALUES ('21', '3', '19', '0,19', '2', '联系我们', '', '3', '0', '0', '21');
INSERT INTO `om_space_category_init` VALUES ('22', '3', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '22');
INSERT INTO `om_space_category_init` VALUES ('23', '3', '0', '0', '1', '我的日志', '', '3', '3', '0', '23');
INSERT INTO `om_space_category_init` VALUES ('24', '3', '0', '0', '1', '精彩图片', '', '3', '4', '0', '24');
INSERT INTO `om_space_category_init` VALUES ('25', '3', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '25');
INSERT INTO `om_space_category_init` VALUES ('26', '3', '0', '0', '1', '友情链接', '', '3', '2', '0', '26');
INSERT INTO `om_space_category_init` VALUES ('27', '3', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '27');
INSERT INTO `om_space_category_init` VALUES ('28', '4', '0', '0', '2', '关于我们', '', '3', '0', '1', '28,29,30');
INSERT INTO `om_space_category_init` VALUES ('29', '4', '28', '0,28', '2', '空间简介', '', '3', '0', '0', '29');
INSERT INTO `om_space_category_init` VALUES ('30', '4', '28', '0,28', '2', '联系我们', '', '3', '0', '0', '30');
INSERT INTO `om_space_category_init` VALUES ('31', '4', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '31');
INSERT INTO `om_space_category_init` VALUES ('32', '4', '0', '0', '1', '我的日志', '', '3', '3', '0', '32');
INSERT INTO `om_space_category_init` VALUES ('33', '4', '0', '0', '1', '精彩图片', '', '3', '4', '0', '33');
INSERT INTO `om_space_category_init` VALUES ('34', '4', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '34');
INSERT INTO `om_space_category_init` VALUES ('35', '4', '0', '0', '1', '友情链接', '', '3', '2', '0', '35');
INSERT INTO `om_space_category_init` VALUES ('36', '4', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '36');

-- ----------------------------
-- Table structure for om_space_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_space_flag`;
CREATE TABLE `om_space_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '标记id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  KEY `flag` (`flag`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_space_flag
-- ----------------------------
INSERT INTO `om_space_flag` VALUES ('1', '1');
INSERT INTO `om_space_flag` VALUES ('2', '1');

-- ----------------------------
-- Table structure for om_space_link
-- ----------------------------
DROP TABLE IF EXISTS `om_space_link`;
CREATE TABLE `om_space_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间外链模型表';

-- ----------------------------
-- Records of om_space_link
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_log
-- ----------------------------
DROP TABLE IF EXISTS `om_space_log`;
CREATE TABLE `om_space_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间日志模型表';

-- ----------------------------
-- Records of om_space_log
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_model
-- ----------------------------
DROP TABLE IF EXISTS `om_space_model`;
CREATE TABLE `om_space_model` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `table` varchar(50) NOT NULL COMMENT '表名',
  `setting` text NOT NULL COMMENT '配置信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会员模型表';

-- ----------------------------
-- Records of om_space_model
-- ----------------------------
INSERT INTO `om_space_model` VALUES ('1', '文章', 'news', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"5\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"6\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"7\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"8\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('2', '外链', 'link', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"5\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"6\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"7\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"8\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('3', '日志', 'log', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"5\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"6\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"7\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"8\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('4', '相册', 'photo', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('5', '幻灯', 'slides', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');

-- ----------------------------
-- Table structure for om_space_news
-- ----------------------------
DROP TABLE IF EXISTS `om_space_news`;
CREATE TABLE `om_space_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间单页模型表';

-- ----------------------------
-- Records of om_space_news
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_photo
-- ----------------------------
DROP TABLE IF EXISTS `om_space_photo`;
CREATE TABLE `om_space_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `image` text,
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间相册模型表';

-- ----------------------------
-- Records of om_space_photo
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_slides
-- ----------------------------
DROP TABLE IF EXISTS `om_space_slides`;
CREATE TABLE `om_space_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员空间幻灯模型表';

-- ----------------------------
-- Records of om_space_slides
-- ----------------------------
INSERT INTO `om_space_slides` VALUES ('1', '7', '应用开放平台', '1', 'admin', '0', '1', '1377949237', '1377949237', '0', 'http://www.omooo.com/omooo/statics/omooo/images/index_banner1.jpg', 'http://store.omooo.com');
INSERT INTO `om_space_slides` VALUES ('2', '7', '群站多语言管理', '1', 'admin', '0', '1', '1377949258', '1377949258', '0', 'http://www.omooo.com/omooo/statics/omooo/images/index_banner2.jpg', 'http://web.omooo.com/');
INSERT INTO `om_space_slides` VALUES ('3', '7', 'OmWeb 一套神奇的系统', '1', 'admin', '0', '1', '1377949306', '1377949306', '0', 'http://www.omooo.com/omooo/statics/omooo/images/index_banner3.jpg', 'http://www.omooo.com/');

-- ----------------------------
-- Table structure for om_urlrule
-- ----------------------------
DROP TABLE IF EXISTS `om_urlrule`;
CREATE TABLE `om_urlrule` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '规则类型',
  `name` varchar(50) NOT NULL COMMENT '规则名称',
  `value` text NOT NULL COMMENT '详细规则',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='URL规则表';

-- ----------------------------
-- Records of om_urlrule
-- ----------------------------
