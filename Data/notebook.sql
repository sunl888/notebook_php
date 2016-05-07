/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : notebook

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-05-07 08:57:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `notebook_access`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_access`;
CREATE TABLE `notebook_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `app` varchar(20) NOT NULL COMMENT '模块',
  `controller` varchar(20) NOT NULL COMMENT '控制器',
  `action` varchar(20) NOT NULL COMMENT '方法',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否有效',
  `menu_id` smallint(6) NOT NULL,
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of notebook_access
-- ----------------------------
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'Role', 'accredit', '1', '32');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'Role', 'access', '1', '31');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'Role', 'del', '1', '30');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'Role', 'edit', '1', '29');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'Role', 'add', '1', '28');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'Role', 'index', '1', '27');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'User', 'check', '1', '26');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'User', 'del', '1', '25');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'User', 'edit', '1', '24');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'User', 'add', '1', '23');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'User', 'index', '1', '22');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'None', 'none', '1', '21');
INSERT INTO `notebook_access` VALUES ('18', 'Admin', 'Index', 'index', '1', '2');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'renew', '1', '62');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'remove', '1', '61');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'cancelcheck', '1', '60');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'sort', '1', '59');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'checkout', '1', '58');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'check', '1', '57');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'edit', '1', '55');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'del', '1', '54');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'add', '1', '53');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'index', '1', '56');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'None', 'none', '1', '39');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'None', 'none', '1', '38');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Index', 'index', '1', '3');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Operationlog', 'del', '1', '43');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Operationlog', 'index', '1', '42');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Log', 'del', '1', '41');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Log', 'index', '1', '40');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'None', 'none', '1', '33');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Role', 'accredit', '1', '32');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Role', 'access', '1', '31');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Role', 'del', '1', '30');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Role', 'edit', '1', '29');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Role', 'add', '1', '28');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Role', 'index', '1', '27');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'User', 'check', '1', '26');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'User', 'del', '1', '25');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'User', 'edit', '1', '24');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'User', 'add', '1', '23');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'None', 'none', '1', '21');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Config', 'extend_del', '1', '20');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Config', 'extend_edit', '1', '19');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Config', 'extend', '1', '17');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Config', 'master', '1', '16');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Config', 'file', '1', '15');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Config', 'email', '1', '14');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Index', 'index', '1', '2');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Usually', 'index', '1', '11');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Index', 'index', '1', '1');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'Index', 'index', '1', '2');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'None', 'none', '1', '21');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'User', 'index', '1', '22');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'User', 'add', '1', '23');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'User', 'edit', '1', '24');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'User', 'del', '1', '25');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'User', 'check', '1', '26');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'Role', 'index', '1', '27');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'Role', 'add', '1', '28');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'Role', 'edit', '1', '29');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'Role', 'del', '1', '30');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'Role', 'access', '1', '31');
INSERT INTO `notebook_access` VALUES ('17', 'Admin', 'Role', 'accredit', '1', '32');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'test', '1', '63');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Content', 'restore', '1', '64');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Class', 'index', '1', '65');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Class', 'sort', '1', '66');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Class', 'add', '1', '67');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Class', 'edit', '1', '69');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Class', 'del', '1', '70');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Class', 'addlink', '1', '71');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Class', 'editlink', '1', '72');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Picture', 'index', '1', '73');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Index', 'getclass', '1', '74');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Teacher', 'index', '1', '75');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Keyan', 'index', '1', '76');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Zhuanti', 'index', '1', '77');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'None', 'none', '1', '44');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Link', 'index', '1', '45');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Link', 'add', '1', '46');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Link', 'edit', '1', '47');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Link', 'del', '1', '48');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Link', 'term', '1', '49');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Link', 'termedit', '1', '50');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Link', 'termdel', '1', '51');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Link', 'termadd', '1', '52');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Person', 'index', '1', '34');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Person', 'info', '1', '35');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Person', 'pwd', '1', '36');
INSERT INTO `notebook_access` VALUES ('11', 'Admin', 'Person', 'checkpwd', '1', '37');

-- ----------------------------
-- Table structure for `notebook_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_admin_menu`;
CREATE TABLE `notebook_admin_menu` (
  `mid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL,
  `name` char(32) NOT NULL,
  `url` char(255) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_admin_menu
-- ----------------------------
INSERT INTO `notebook_admin_menu` VALUES ('11', '2', '常用操作', 'Usually/index');
INSERT INTO `notebook_admin_menu` VALUES ('22', '2', '管理员管理', 'User/index');
INSERT INTO `notebook_admin_menu` VALUES ('27', '2', '角色管理', 'Role/index');
INSERT INTO `notebook_admin_menu` VALUES ('81', '2', '会员管理', 'Users/index');
INSERT INTO `notebook_admin_menu` VALUES ('84', '2', '笔记审核', 'Book/index');

-- ----------------------------
-- Table structure for `notebook_book`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_book`;
CREATE TABLE `notebook_book` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8 NOT NULL COMMENT '日记标题',
  `content` longtext CHARACTER SET utf8 NOT NULL COMMENT '日记内容',
  `mood` char(10) CHARACTER SET utf8 NOT NULL COMMENT '心情',
  `weather` char(10) CHARACTER SET utf8 NOT NULL COMMENT '天气情况',
  `addtime` int(11) NOT NULL COMMENT '添加日期',
  `views` int(11) unsigned zerofill DEFAULT '00000000000' COMMENT '日记浏览量',
  `uid` int(11) NOT NULL,
  `hidden` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '1 为隐藏状态',
  `private` int(1) unsigned NOT NULL COMMENT '1 为私有状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notebook_book
-- ----------------------------

-- ----------------------------
-- Table structure for `notebook_class`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_class`;
CREATE TABLE `notebook_class` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目Id',
  `type` tinyint(1) DEFAULT '0' COMMENT '栏目类型（0：频道栏目，1：列表栏目，2：外部链接）',
  `modelid` int(11) DEFAULT NULL COMMENT '模型ID',
  `parentid` int(11) DEFAULT NULL COMMENT '父级栏目',
  `allparentid` varchar(255) DEFAULT NULL COMMENT '所有父ID',
  `child` tinyint(1) DEFAULT '0' COMMENT '是否存在子栏目，1存在',
  `arrchildid` mediumtext COMMENT '全部子栏目ID',
  `classname` varchar(255) DEFAULT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目缩略图',
  `introduce` mediumtext COMMENT '栏目简介',
  `url` varchar(255) DEFAULT NULL COMMENT '外部链接',
  `hits` int(11) DEFAULT '0' COMMENT '栏目点击次数',
  `sort` int(5) DEFAULT '0' COMMENT '排序',
  `isshow` tinyint(1) DEFAULT '1' COMMENT '是否启用（1：启用）',
  `isnav` tinyint(1) DEFAULT '1' COMMENT '是否设置为导航：1：是',
  `content_template` int(11) DEFAULT NULL COMMENT '栏目内容模板',
  `index_template` int(11) DEFAULT NULL COMMENT '栏目封面模板',
  `seo_title` varchar(255) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '栏目关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '栏目描述',
  `content` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_class
-- ----------------------------
INSERT INTO `notebook_class` VALUES ('2', '1', '1', '0', '0', '0', null, '师资队伍', '', '', '', '3', '1', '1', '1', null, '9', '', '', '', null);
INSERT INTO `notebook_class` VALUES ('3', '0', '1', '0', '0', '1', '9,10,11', '建设成果', '', '', '', '0', '1', '1', '1', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('4', '0', '1', '0', '0', '1', '12,13,14,15,27,28', '人才培养', '', '', '', '0', '1', '1', '1', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('5', '0', '1', '0', '0', '1', '16,17,18,19,20,21', '教学条件', '', '', '', '0', '1', '1', '1', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('6', '1', '1', '0', '0', '0', null, '校企合作', '', null, '', '0', '1', '1', '1', '2', '3', '', '', '', null);
INSERT INTO `notebook_class` VALUES ('7', '0', '1', '0', '0', '1', '22,23,24', '学生风采', '', '', '', '0', '1', '1', '1', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('8', '0', '1', '0', '0', '0', null, '课程建设', '', '', '', '0', '1', '1', '1', '2', '1', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('9', '1', '1', '3', '0,3', '0', null, '教学成果', null, '', null, '0', '0', '1', '0', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('10', '1', '1', '3', '0,3', '0', null, '科研成果', null, '', null, '0', '0', '1', '0', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('11', '1', '1', '3', '0,3', '0', null, '服务成果', null, '', null, '0', '0', '1', '0', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('12', '0', '1', '4', '0,4', '0', null, '人才培养目标', null, '', null, '0', '0', '1', '0', '2', '1', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('13', '0', '1', '4', '0,4', '0', null, '培养方案特色', null, '', null, '0', '0', '1', '0', '2', '1', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('14', '0', '1', '4', '0,4', '0', null, '培养方案论证', null, '', null, '0', '0', '1', '0', '2', '1', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('15', '0', '1', '4', '0,4', '0', null, '人才培养体系', null, '', null, '0', '0', '1', '0', '2', '1', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('16', '0', '1', '5', '0,5', '0', null, '经费投入', null, '', null, '0', '0', '1', '0', '2', '1', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('17', '0', '1', '5', '0,5', '0', null, '精品课程', null, '', null, '0', '0', '1', '0', '2', '1', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('18', '1', '1', '5', '0,5', '0', null, '教改课题', null, '', null, '0', '0', '1', '0', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('19', '1', '1', '5', '0,5', '0', null, '教材建设', null, '', null, '0', '0', '1', '0', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('20', '0', '1', '5', '0,5', '0', null, '教学建设', null, '', null, '0', '0', '1', '0', '2', '1', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('21', '1', '1', '5', '0,5', '0', null, '实习基地', null, '', null, '0', '0', '1', '0', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('22', '1', '1', '7', '0,7', '0', null, '获奖荣誉', null, '', null, '0', '0', '1', '0', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('23', '1', '1', '7', '0,7', '0', null, '课外项目', null, '', null, '0', '0', '1', '0', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('24', '1', '1', '7', '0,7', '0', null, '学术作品', null, '', null, '0', '0', '1', '0', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('25', '1', '1', '0', '0', '0', null, '通知公告', null, '', null, '0', '1', '1', '0', '2', '3', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('26', '0', '1', '0', '0', '0', null, '专业', null, '', null, '0', '0', '1', '1', '2', '1', '', '', '', null);
INSERT INTO `notebook_class` VALUES ('27', '1', '1', '4', '0,4', '0', null, '人才培养方案', null, '', null, '0', '0', '1', '0', '3', '1', '', '', '', '');
INSERT INTO `notebook_class` VALUES ('28', '1', '1', '4', '0,4', '0', null, '人才培养成果', null, '', null, '0', '0', '1', '0', '2', '1', '', '', '', '');

-- ----------------------------
-- Table structure for `notebook_class_perm`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_class_perm`;
CREATE TABLE `notebook_class_perm` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT '0' COMMENT '角色或是组id',
  `action` varchar(255) DEFAULT NULL COMMENT '动作',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_class_perm
-- ----------------------------

-- ----------------------------
-- Table structure for `notebook_comment`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_comment`;
CREATE TABLE `notebook_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL COMMENT '评论者姓名',
  `studata` text COMMENT '学生评论',
  `teadata` varchar(255) DEFAULT NULL COMMENT '教师回复',
  `stutime` int(20) DEFAULT NULL,
  `statu` int(4) NOT NULL DEFAULT '0',
  `teatime` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `notebook_config`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_config`;
CREATE TABLE `notebook_config` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `type` char(16) NOT NULL DEFAULT 'string' COMMENT '类型',
  PRIMARY KEY (`id`),
  KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='网站配置表';

-- ----------------------------
-- Records of notebook_config
-- ----------------------------
INSERT INTO `notebook_config` VALUES ('1', 'sitename', '网站名称', '0', '计算机科学与技术', '');
INSERT INTO `notebook_config` VALUES ('2', 'siteurl', '网站网址', '0', 'http://www.e8net.cn/mkszyllx', '');
INSERT INTO `notebook_config` VALUES ('3', 'sitefileurl', '附件地址', '0', '', '');
INSERT INTO `notebook_config` VALUES ('4', 'siteemail', '站点邮箱', '0', '', '');
INSERT INTO `notebook_config` VALUES ('6', 'siteinfo', '网站介绍', '0', '淮南师范学院计算机学院', '');
INSERT INTO `notebook_config` VALUES ('7', 'sitekeywords', '网站关键字', '0', '淮南师范学院计算机学院', '');
INSERT INTO `notebook_config` VALUES ('8', 'uploadmaxsize', '允许上传附件大小', '0', '20240', '');
INSERT INTO `notebook_config` VALUES ('9', 'uploadallowext', '允许上传附件类型', '0', '|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf', '');
INSERT INTO `notebook_config` VALUES ('10', 'qtuploadmaxsize', '前台允许上传附件大小', '0', '200', '');
INSERT INTO `notebook_config` VALUES ('11', 'qtuploadallowext', '前台允许上传附件类型', '0', 'jpg|jpeg|gif', '');
INSERT INTO `notebook_config` VALUES ('12', 'watermarkenable', '是否开启图片水印', '0', '1', '');
INSERT INTO `notebook_config` VALUES ('13', 'watermarkminwidth', '印-宽', '0', '300', '');
INSERT INTO `notebook_config` VALUES ('14', 'watermarkminheight', '水印-高', '0', '100', '');
INSERT INTO `notebook_config` VALUES ('15', 'watermarkimg', '水印图片', '0', '/statics/images/mark_bai.png', '');
INSERT INTO `notebook_config` VALUES ('16', 'watermarkpct', '水印透明度', '0', '80', '');
INSERT INTO `notebook_config` VALUES ('17', 'watermarkquality', 'JPEG 水印质量', '0', '85', '');
INSERT INTO `notebook_config` VALUES ('18', 'watermarkpos', '水印位置', '0', '7', '');
INSERT INTO `notebook_config` VALUES ('19', 'theme', '主题风格', '0', 'Default', '');
INSERT INTO `notebook_config` VALUES ('20', 'ftpstatus', 'FTP上传', '0', '0', '');
INSERT INTO `notebook_config` VALUES ('21', 'ftpuser', 'FTP用户名', '0', '', '');
INSERT INTO `notebook_config` VALUES ('22', 'ftppassword', 'FTP密码', '0', '1', '');
INSERT INTO `notebook_config` VALUES ('23', 'ftphost', 'FTP服务器地址', '0', '1', '');
INSERT INTO `notebook_config` VALUES ('24', 'ftpport', 'FTP服务器端口', '0', '21', '');
INSERT INTO `notebook_config` VALUES ('25', 'ftppasv', 'FTP是否开启被动模式', '0', '1', '');
INSERT INTO `notebook_config` VALUES ('26', 'ftpssl', 'FTP是否使用SSL连接', '0', '0', '');
INSERT INTO `notebook_config` VALUES ('27', 'ftptimeout', 'FTP超时时间', '0', '10', '');
INSERT INTO `notebook_config` VALUES ('28', 'ftpuppat', 'FTP上传目录', '0', '/', '');
INSERT INTO `notebook_config` VALUES ('29', 'mail_type', '邮件发送模式', '0', '1', '');
INSERT INTO `notebook_config` VALUES ('30', 'mail_server', '邮件服务器', '0', 'smtp.126.com', '');
INSERT INTO `notebook_config` VALUES ('31', 'mail_port', '邮件发送端口', '0', '25', '');
INSERT INTO `notebook_config` VALUES ('32', 'mail_from', '发件人地址', '0', 'web_bc@126.com', '');
INSERT INTO `notebook_config` VALUES ('33', 'mail_auth', '密码验证', '0', '', '');
INSERT INTO `notebook_config` VALUES ('34', 'mail_user', '邮箱用户名', '0', 'E8网络工作室', '');
INSERT INTO `notebook_config` VALUES ('35', 'mail_password', '邮箱密码', '0', 'baochao000', '');
INSERT INTO `notebook_config` VALUES ('36', 'mail_fname', '发件人名称', '0', 'web_bc@126.com', '');
INSERT INTO `notebook_config` VALUES ('37', 'domainaccess', '指定域名访问', '0', '0', '');
INSERT INTO `notebook_config` VALUES ('38', 'generate', '是否生成首页', '0', '0', '');
INSERT INTO `notebook_config` VALUES ('39', 'index_urlruleid', '首页URL规则', '0', '静态1:index_2.html', '');
INSERT INTO `notebook_config` VALUES ('40', 'indextp', '首页模板', '0', 'index.php', '');
INSERT INTO `notebook_config` VALUES ('41', 'tagurl', 'TagURL规则', '0', '8', '');
INSERT INTO `notebook_config` VALUES ('61', 'adminurl', '后台url', '1', 'http://211.70.176.141/jxx/admin.php/', 'bool');

-- ----------------------------
-- Table structure for `notebook_content`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_content`;
CREATE TABLE `notebook_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '发布者',
  `classid` int(11) DEFAULT NULL COMMENT '栏目ID',
  `title` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `islink` tinyint(1) DEFAULT '0' COMMENT '是否启用文章链接 （1：启用）',
  `url` varchar(255) DEFAULT NULL,
  `sort` int(255) DEFAULT '0',
  `status` int(255) DEFAULT '0' COMMENT '状态 （0：未审核，1：已审核，2：回收站）',
  `addtime` int(11) DEFAULT NULL,
  `uptime` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `yesterdayviews` int(11) DEFAULT '0' COMMENT '昨日点击量',
  `dayviews` int(11) DEFAULT '0' COMMENT '今日点击量',
  `weekviews` int(11) DEFAULT '0' COMMENT '周点击量',
  `monthviews` int(11) DEFAULT '0' COMMENT '本月点击量',
  `viewsupdatetime` int(11) DEFAULT '0' COMMENT '点击数更新时间',
  `titlecolor` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `relateid` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_content
-- ----------------------------
INSERT INTO `notebook_content` VALUES ('1', '3', '22', '1', null, '1', '1', '0', '', '0', '0', '1460321826', '1460365033', '0', '0', '0', '0', '0', '0', '', '1', null, '1');

-- ----------------------------
-- Table structure for `notebook_content_data`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_content_data`;
CREATE TABLE `notebook_content_data` (
  `id` int(11) unsigned NOT NULL,
  `content` mediumtext,
  `relateid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_content_data
-- ----------------------------
INSERT INTO `notebook_content_data` VALUES ('1', '<p>1</p>', null);

-- ----------------------------
-- Table structure for `notebook_link`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_link`;
CREATE TABLE `notebook_link` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '链接id',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '链接名称',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '链接图片',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '链接描述',
  `visible` tinyint(1) NOT NULL COMMENT '链接是否可见',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '链接等级',
  `updated` int(11) NOT NULL COMMENT '链接最后更新时间',
  `notes` mediumtext NOT NULL COMMENT '链接详细介绍',
  `rss` varchar(255) NOT NULL DEFAULT '' COMMENT '链接RSS地址',
  `termsid` int(4) NOT NULL COMMENT '分类id',
  `target` enum('1','0') DEFAULT '0' COMMENT '0代表默认方式打开，1代表新窗口打开',
  `age` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visible` (`visible`),
  KEY `termsid` (`termsid`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of notebook_link
-- ----------------------------
INSERT INTO `notebook_link` VALUES ('44', 'http://211.70.176.138/zfx/', '政法系', '', '', '1', '0', '1415959621', '', '', '30', '1', null);
INSERT INTO `notebook_link` VALUES ('45', 'http://211.70.176.138/zhongwen/', '中文与传媒系', '', '', '1', '0', '1415959650', '', '', '31', '1', null);
INSERT INTO `notebook_link` VALUES ('46', 'http://211.70.176.161:8080/yyx/', '外语系', '', '', '1', '0', '1415959669', '', '', '31', '1', null);
INSERT INTO `notebook_link` VALUES ('47', 'http://211.70.176.161:8080/sxx/', '数学与计算科学系', '', '', '1', '0', '1415959695', '', '', '31', '1', null);
INSERT INTO `notebook_link` VALUES ('48', 'http://211.70.176.161:8080/sxx/', '物理与电子信息系', '', '', '1', '0', '1415959719', '', '', '31', '0', null);
INSERT INTO `notebook_link` VALUES ('49', 'http://211.70.176.161:8080/sxx/', '化学与化工系', '', '', '1', '0', '1415959743', '', '', '31', '0', null);
INSERT INTO `notebook_link` VALUES ('50', 'http://211.70.176.161:8080/jykx/', '教育科学系', '', '', '1', '0', '1415959768', '', '', '31', '1', null);
INSERT INTO `notebook_link` VALUES ('51', 'http://211.70.176.161:8080/tyx/', '体育学院', '', '', '1', '0', '1415959790', '', '', '31', '1', null);
INSERT INTO `notebook_link` VALUES ('52', 'http://211.70.176.161:8080/jxjy/', '继续教育学院', '', '', '1', '0', '1415959827', '', '', '31', '1', null);
INSERT INTO `notebook_link` VALUES ('53', 'http://211.70.176.138/jgxy/', '经济与管理学院', '', '', '1', '0', '1415959856', '', '', '31', '1', null);
INSERT INTO `notebook_link` VALUES ('54', 'http://211.70.176.161:8080/msx/', '美术系', '', '', '1', '0', '1415959916', '', '', '31', '1', null);
INSERT INTO `notebook_link` VALUES ('55', 'http://211.70.176.161:8080/yyuex/', '音乐系', '', '', '1', '0', '1415960008', '', '', '31', '1', null);
INSERT INTO `notebook_link` VALUES ('56', 'http://211.70.176.138/smkx/', '生命科学系', '', '', '1', '0', '1415960038', '', '', '31', '1', null);
INSERT INTO `notebook_link` VALUES ('57', 'http://211.70.176.161:8080/dqxxgcx/', '电气与工程学院', '', '', '1', '0', '1415960071', '', '', '31', '1', null);

-- ----------------------------
-- Table structure for `notebook_log`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_log`;
CREATE TABLE `notebook_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `username` char(30) NOT NULL COMMENT '登录帐号',
  `logintime` int(10) NOT NULL COMMENT '登录时间戳',
  `loginip` char(20) NOT NULL COMMENT '登录IP',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '状态,1为登录成功，2为登录失败',
  `password` char(30) NOT NULL DEFAULT '' COMMENT '尝试错误密码',
  `info` char(255) NOT NULL COMMENT '其他说明',
  `area` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=448 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表';

-- ----------------------------
-- Records of notebook_log
-- ----------------------------
INSERT INTO `notebook_log` VALUES ('284', 'admin', '1418729036', '192.168.7.12', '1', '密码保密', '用户名登陆', '局域网对方和您在同一内部网');
INSERT INTO `notebook_log` VALUES ('285', 'admin', '1418732535', '223.104.18.125', '1', '密码保密', '用户名登陆', '中国移动');
INSERT INTO `notebook_log` VALUES ('286', 'admin', '1418734092', '192.168.7.12', '1', '密码保密', '用户名登陆', '局域网对方和您在同一内部网');
INSERT INTO `notebook_log` VALUES ('287', 'admin', '1418734117', '192.168.7.12', '1', '密码保密', '用户名登陆', '局域网对方和您在同一内部网');
INSERT INTO `notebook_log` VALUES ('288', 'admin', '1418734160', '192.168.7.12', '1', '密码保密', '用户名登陆', '局域网对方和您在同一内部网');
INSERT INTO `notebook_log` VALUES ('289', 'admin', '1418734881', '192.168.7.214', '1', '密码保密', '用户名登陆', '局域网对方和您在同一内部网');
INSERT INTO `notebook_log` VALUES ('290', 'admin', '1418790855', '192.168.7.14', '1', '密码保密', '用户名登陆', '局域网对方和您在同一内部网');
INSERT INTO `notebook_log` VALUES ('291', 'admin', '1418791287', '192.168.7.14', '1', '密码保密', '用户名登陆', '局域网对方和您在同一内部网');
INSERT INTO `notebook_log` VALUES ('292', 'admin', '1418791658', '192.168.7.14', '1', '密码保密', '用户名登陆', '局域网对方和您在同一内部网');
INSERT INTO `notebook_log` VALUES ('428', 'yu', '1461403123', '112.26.227.164', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('429', 'yu', '1461412262', '112.26.227.164', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('430', 'yu', '1461417073', '112.26.227.164', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('431', 'yu', '1461420555', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('432', 'yu', '1461423382', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('433', 'yu', '1461426540', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('434', 'yu', '1461426661', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('435', 'yu', '1461427228', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('436', 'yu', '1461429241', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('437', 'yu', '1461430431', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('438', 'admin', '1461430674', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('439', 'yu', '1461430815', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('440', 'yu', '1461434847', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('441', 'admin', '1461435790', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('442', 'admin', '1461439247', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('443', 'admin', '1461439358', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('444', 'admin', '1461442485', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('445', 'admin', '1461443718', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('446', 'admin', '1461470252', '117.69.22.176', '1', '密码保密', '用户名登陆', '');
INSERT INTO `notebook_log` VALUES ('447', 'admin', '1461772196', '112.26.227.187', '1', '密码保密', '用户名登陆', '');

-- ----------------------------
-- Table structure for `notebook_menu`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_menu`;
CREATE TABLE `notebook_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parentid` smallint(6) NOT NULL DEFAULT '0' COMMENT '上级菜单',
  `app` varchar(20) NOT NULL COMMENT '应用表示',
  `controller` varchar(20) NOT NULL COMMENT '控制器',
  `action` varchar(20) NOT NULL COMMENT '方法',
  `parameter` char(255) NOT NULL DEFAULT '' COMMENT '附加参数',
  `url` char(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '0',
  `status` tinyint(1) unsigned NOT NULL COMMENT '是否启用',
  `remark` varchar(255) NOT NULL COMMENT '栏目备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '栏目排序',
  `hidden` tinyint(1) DEFAULT '1' COMMENT '是否隐藏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_menu
-- ----------------------------
INSERT INTO `notebook_menu` VALUES ('1', '控制中心', '0', 'Admin', 'Index', 'index', 'menu/1', null, '1', '1', '常用操作', '0', '0');
INSERT INTO `notebook_menu` VALUES ('2', '网站设置', '0', 'Admin', 'Index', 'index', 'menu/2', null, '1', '1', '网站设置', '0', '0');
INSERT INTO `notebook_menu` VALUES ('3', '内容管理', '0', 'Admin', 'Index', 'index', 'menu/3', null, '1', '1', '内容管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('11', '常用操作', '-3', 'Admin', 'Usually', 'index', '', 'Usually/index', '1', '1', '常用操作', '0', '0');
INSERT INTO `notebook_menu` VALUES ('12', '系统设置', '-3', 'Admin', 'None', 'none', '', '#', '1', '1', '系统设置', '0', '0');
INSERT INTO `notebook_menu` VALUES ('13', '站点配置', '12', 'Admin', 'Config', 'index', '', 'Config/index', '1', '1', '站点配置', '0', '0');
INSERT INTO `notebook_menu` VALUES ('14', '邮箱配置', '13', 'Admin', 'Config', 'email', '', '', '1', '1', '邮箱配置', '0', '1');
INSERT INTO `notebook_menu` VALUES ('15', '附件管理', '13', 'Admin', 'Config', 'file', '', null, '1', '1', '附件管理', '0', '1');
INSERT INTO `notebook_menu` VALUES ('16', '高级配置', '13', 'Admin', 'Config', 'master', '', null, '1', '1', '高级配置', '0', '1');
INSERT INTO `notebook_menu` VALUES ('17', '扩展配置', '13', 'Admin', 'Config', 'extend', '', null, '1', '1', '扩展配置', '0', '1');
INSERT INTO `notebook_menu` VALUES ('19', '修改网站扩展配置', '13', 'Admin', 'Config', 'extend_edit', '', null, '1', '1', '修改网站扩展配置', '0', '1');
INSERT INTO `notebook_menu` VALUES ('20', '删除网站扩展配置', '13', 'Admin', 'Config', 'extend_del', '', null, '1', '1', '删除网站扩展配置', '0', '1');
INSERT INTO `notebook_menu` VALUES ('21', '管理员设置', '2', 'Admin', 'None', 'none', '', '#', '1', '1', '管理员设置', '0', '0');
INSERT INTO `notebook_menu` VALUES ('22', '管理员管理', '21', 'Admin', 'User', 'index', '', 'User/index', '1', '1', '管理员管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('23', '管理员添加', '21', 'Admin', 'User', 'add', '', null, '1', '1', '管理员添加', '0', '1');
INSERT INTO `notebook_menu` VALUES ('24', '管理员编辑', '21', 'Admin', 'User', 'edit', '', null, '1', '1', '管理员编辑', '0', '1');
INSERT INTO `notebook_menu` VALUES ('25', '管理员删除', '21', 'Admin', 'User', 'del', '', null, '1', '1', '管理员删除', '0', '1');
INSERT INTO `notebook_menu` VALUES ('26', '管理员Ajax验证', '21', 'Admin', 'User', 'check', '', null, '1', '1', '管理员Ajax验证', '0', '1');
INSERT INTO `notebook_menu` VALUES ('27', '角色管理', '21', 'Admin', 'Role', 'index', '', 'Role/index', '1', '1', '角色管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('28', '角色添加', '21', 'Admin', 'Role', 'add', '', null, '1', '1', '角色添加', '0', '1');
INSERT INTO `notebook_menu` VALUES ('29', '角色编辑', '21', 'Admin', 'Role', 'edit', '', null, '1', '1', '角色编辑', '0', '1');
INSERT INTO `notebook_menu` VALUES ('30', '角色删除', '21', 'Admin', 'Role', 'del', '', null, '1', '1', '角色删除', '0', '1');
INSERT INTO `notebook_menu` VALUES ('31', '角色权限查看', '21', 'Admin', 'Role', 'access', '', null, '1', '1', '角色权限查看', '0', '1');
INSERT INTO `notebook_menu` VALUES ('32', '角色授权', '21', 'Admin', 'Role', 'accredit', '', null, '1', '1', '角色授权', '0', '1');
INSERT INTO `notebook_menu` VALUES ('33', '日志管理', '-2', 'Admin', 'None', 'none', '', '#', '1', '1', '日志管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('34', '个人中心', '0', 'Admin', 'Person', 'index', '', null, '1', '1', '个人中心', '0', '1');
INSERT INTO `notebook_menu` VALUES ('35', '修改个人信息', '34', 'Admin', 'Person', 'info', '', 'Person/info', '1', '1', '修改个人信息', '0', '1');
INSERT INTO `notebook_menu` VALUES ('36', '修改个人密码', '34', 'Admin', 'Person', 'pwd', '', 'Person/pwd', '1', '1', '修改个人密码', '0', '1');
INSERT INTO `notebook_menu` VALUES ('37', '密码Ajax验证', '34', 'Admin', 'Person', 'checkpwd', '', 'Person/checkpwd', '1', '1', '密码Ajax验证', '0', '1');
INSERT INTO `notebook_menu` VALUES ('38', '内容管理', '-3', 'Admin', 'None', 'none', '', '#', '1', '1', '内容管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('39', '管理内容', '38', 'Admin', 'None', 'none', '', 'javascript:showTree();', '2', '1', '管理内容', '0', '0');
INSERT INTO `notebook_menu` VALUES ('40', '后台登陆日志管理', '33', 'Admin', 'Log', 'index', '', 'Log/index', '1', '1', '后台登陆日志管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('41', '后台登陆日志删除', '33', 'Admin', 'Log', 'del', '', null, '1', '1', '后台登陆日志删除', '0', '1');
INSERT INTO `notebook_menu` VALUES ('42', '后台操作日志管理', '33', 'Admin', 'Operationlog', 'index', '', 'Operationlog/index', '1', '1', '后台操作日志管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('43', '后台操作日志删除', '33', 'Admin', 'Operationlog', 'del', '', null, '1', '1', '后台操作日志删除', '0', '1');
INSERT INTO `notebook_menu` VALUES ('44', '友情链接管理', '-3', 'Admin', 'None', 'none', '', '#', '1', '1', '友情链接管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('45', '友情链接', '44', 'Admin', 'Link', 'index', '', 'Link/index', '1', '1', '友情链接', '0', '0');
INSERT INTO `notebook_menu` VALUES ('46', '友情链接添加', '44', 'Admin', 'Link', 'add', '', null, '1', '1', '友情链接添加', '0', '1');
INSERT INTO `notebook_menu` VALUES ('47', '友情链接修改', '44', 'Admin', 'Link', 'edit', '', null, '1', '1', '友情链接修改', '0', '1');
INSERT INTO `notebook_menu` VALUES ('48', '友情链接删除', '44', 'Admin', 'Link', 'del', '', null, '1', '1', '友情链接删除', '0', '1');
INSERT INTO `notebook_menu` VALUES ('49', '友情链接分类管理', '44', 'Admin', 'Link', 'term', '', null, '1', '1', '友情链接分类管理', '0', '1');
INSERT INTO `notebook_menu` VALUES ('50', '友情链接分类修改', '44', 'Admin', 'Link', 'termedit', '', null, '1', '1', '友情链接分类修改', '0', '1');
INSERT INTO `notebook_menu` VALUES ('51', '友情链接分类删除', '44', 'Admin', 'Link', 'termdel', '', null, '1', '1', '友情链接分类删除', '0', '1');
INSERT INTO `notebook_menu` VALUES ('52', '友情链接分组添加', '44', 'Admin', 'Link', 'termadd', '', null, '1', '1', '友情链接分组添加', '0', '1');
INSERT INTO `notebook_menu` VALUES ('53', '内容添加', '56', 'Admin', 'Content', 'add', '', null, '1', '1', '内容添加', '0', '1');
INSERT INTO `notebook_menu` VALUES ('54', '内容删除', '56', 'Admin', 'Content', 'del', '', null, '1', '1', '内容删除', '0', '1');
INSERT INTO `notebook_menu` VALUES ('55', '内容修改', '56', 'Admin', 'Content', 'edit', '', null, '1', '1', '内容修改', '0', '1');
INSERT INTO `notebook_menu` VALUES ('56', '内容列表', '38', 'Admin', 'Content', 'index', '', null, '1', '1', '内容列表', '0', '1');
INSERT INTO `notebook_menu` VALUES ('57', '内容审核列表', '56', 'Admin', 'Content', 'check', '', null, '1', '1', '内容审核列表', '0', '1');
INSERT INTO `notebook_menu` VALUES ('58', '内容审核', '56', 'Admin', 'Content', 'checkout', '', null, '1', '1', '内容审核', '0', '1');
INSERT INTO `notebook_menu` VALUES ('59', '内容排序', '56', 'Admin', 'Content', 'sort', '', null, '1', '1', '内容排序', '0', '1');
INSERT INTO `notebook_menu` VALUES ('60', '取消审核', '56', 'Admin', 'Content', 'cancelcheck', '', null, '1', '1', '取消审核', '0', '1');
INSERT INTO `notebook_menu` VALUES ('61', '内容移至回收站', '56', 'Admin', 'Content', 'remove', '', null, '1', '1', '内容移至回收站', '0', '1');
INSERT INTO `notebook_menu` VALUES ('62', '内容还原', '56', 'Admin', 'Content', 'renew', '', null, '1', '1', '还原文章', '0', '1');
INSERT INTO `notebook_menu` VALUES ('63', '标题检测', '56', 'Admin', 'Content', 'test', '', null, '1', '1', '标题检测', '0', '1');
INSERT INTO `notebook_menu` VALUES ('64', '回收站内容列表', '56', 'Admin', 'Content', 'restore', '', null, '1', '1', '回收站内容列表', '0', '1');
INSERT INTO `notebook_menu` VALUES ('65', '栏目管理', '38', 'Admin', 'Class', 'index', '', 'Class/index', '1', '1', '栏目管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('66', '栏目排序', '65', 'Admin', 'Class', 'sort', '', null, '1', '1', '栏目排序', '0', '1');
INSERT INTO `notebook_menu` VALUES ('67', '栏目添加', '65', 'Admin', 'Class', 'add', '', null, '1', '1', '栏目添加', '0', '1');
INSERT INTO `notebook_menu` VALUES ('69', '栏目修改', '65', 'Admin', 'Class', 'edit', '', null, '1', '1', '栏目修改', '0', '1');
INSERT INTO `notebook_menu` VALUES ('70', '栏目删除', '65', 'Admin', 'Class', 'del', '', null, '1', '1', '栏目删除', '0', '1');
INSERT INTO `notebook_menu` VALUES ('71', '添加外部链接', '65', 'Admin', 'Class', 'addlink', '', null, '1', '1', '添加外部链接', '0', '1');
INSERT INTO `notebook_menu` VALUES ('72', '修改外部链接', '65', 'Admin', 'Class', 'editlink', '', null, '1', '1', '修改外部链接', '0', '1');
INSERT INTO `notebook_menu` VALUES ('73', '图片管理', '38', 'Admin', 'Picture', 'index', '', 'Picture/index', '1', '1', '图片管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('74', '获取栏目列表', '38', 'Admin', 'Index', 'getclass', '', null, '1', '1', '获取栏目列表', '0', '1');
INSERT INTO `notebook_menu` VALUES ('80', '会员设置', '3', 'Admin', 'None', 'none', '', '#', '1', '1', '会员设置', '0', '0');
INSERT INTO `notebook_menu` VALUES ('81', '会员管理', '80', 'Admin', 'Users', 'index', '', 'Users/index', '1', '1', '会员管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('82', '笔记管理', '3', 'Admin', 'None', 'none', '', '#', '1', '1', '笔记管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('84', '笔记审核', '82', 'Admin', 'Book', 'index', '', 'Book/index', '1', '1', '笔记审核', '0', '0');
INSERT INTO `notebook_menu` VALUES ('85', '控制中心', '1', 'Admin', 'None', 'none', '', '#', '1', '1', '控制中心', '0', '0');

-- ----------------------------
-- Table structure for `notebook_model`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_model`;
CREATE TABLE `notebook_model` (
  `modelid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  `isopen` tinyint(1) DEFAULT '1' COMMENT '是否启用，1：启用',
  PRIMARY KEY (`modelid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_model
-- ----------------------------
INSERT INTO `notebook_model` VALUES ('1', '文章模型', null, null, '1');

-- ----------------------------
-- Table structure for `notebook_operationlog`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_operationlog`;
CREATE TABLE `notebook_operationlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `uid` smallint(6) NOT NULL COMMENT '操作帐号ID',
  `time` int(10) NOT NULL COMMENT '操作时间',
  `ip` char(20) NOT NULL DEFAULT '' COMMENT 'IP',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '状态,2错误提示，1为正确提示',
  `info` text NOT NULL COMMENT '其他说明',
  `get` varchar(255) NOT NULL COMMENT 'get数据',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=319 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';

-- ----------------------------
-- Records of notebook_operationlog
-- ----------------------------
INSERT INTO `notebook_operationlog` VALUES ('240', '1', '1418953970', '192.168.7.212', '1', '提示语：修改管理用户成功! <br />模块：Admin,控制器：User,方法：edit <br />请求方式：AJAX', '/jxx/admin.php/User/edit');
INSERT INTO `notebook_operationlog` VALUES ('241', '1', '1418954020', '192.168.7.212', '1', '提示语：添加管理用户成功! <br />模块：Admin,控制器：User,方法：add <br />请求方式：AJAX', '/jxx/admin.php/User/add');
INSERT INTO `notebook_operationlog` VALUES ('297', '2', '1461417058', '112.26.227.164', '1', '提示语：修改管理用户成功! <br />模块：Admin,控制器：User,方法：edit <br />请求方式：AJAX', '/admin.php/User/edit');
INSERT INTO `notebook_operationlog` VALUES ('298', '2', '1461420588', '117.69.22.176', '1', '提示语：修改个人信息成功! <br />模块：Admin,控制器：Person,方法：info <br />请求方式：POST', '/admin.php/Person/info');
INSERT INTO `notebook_operationlog` VALUES ('299', '2', '1461426582', '117.69.22.176', '1', '提示语：修改管理用户成功! <br />模块：Admin,控制器：User,方法：edit <br />请求方式：AJAX', '/admin.php/User/edit');
INSERT INTO `notebook_operationlog` VALUES ('300', '2', '1461432006', '117.69.22.176', '1', '提示语：共添加了4条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/2,21,22,27,3,80,81,82,84');
INSERT INTO `notebook_operationlog` VALUES ('301', '2', '1461432006', '117.69.22.176', '1', '提示语：共添加了4条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/2,21,22,27,3,80,81,82,84');
INSERT INTO `notebook_operationlog` VALUES ('302', '2', '1461432007', '117.69.22.176', '1', '提示语：共添加了4条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/2,21,22,27,3,80,81,82,84');
INSERT INTO `notebook_operationlog` VALUES ('303', '2', '1461432008', '117.69.22.176', '1', '提示语：共添加了4条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/22,27,81,84');
INSERT INTO `notebook_operationlog` VALUES ('304', '2', '1461432016', '117.69.22.176', '1', '提示语：共添加了4条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/22,27,81,84');
INSERT INTO `notebook_operationlog` VALUES ('305', '2', '1461432017', '117.69.22.176', '1', '提示语：共添加了4条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/22,27,81,84');
INSERT INTO `notebook_operationlog` VALUES ('306', '2', '1461432017', '117.69.22.176', '1', '提示语：共添加了4条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/22,27,81,84');
INSERT INTO `notebook_operationlog` VALUES ('307', '2', '1461432197', '117.69.22.176', '1', '提示语：共添加了4条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/22,27,81,84');
INSERT INTO `notebook_operationlog` VALUES ('308', '2', '1461432207', '117.69.22.176', '1', '提示语：共添加了0条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/');
INSERT INTO `notebook_operationlog` VALUES ('309', '1', '1461432221', '117.69.22.176', '1', '提示语：共添加了5条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/1,11,2,21,22,27,3,80,81,82,84');
INSERT INTO `notebook_operationlog` VALUES ('310', '1', '1461432244', '117.69.22.176', '1', '提示语：共添加了0条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/');
INSERT INTO `notebook_operationlog` VALUES ('311', '2', '1461432265', '117.69.22.176', '1', '提示语：共添加了5条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/1,11,2,21,22,27,3,80,81,82,84');
INSERT INTO `notebook_operationlog` VALUES ('312', '2', '1461432607', '117.69.22.176', '1', '提示语：修改个人信息成功! <br />模块：Admin,控制器：Person,方法：info <br />请求方式：POST', '/admin.php/Person/info');
INSERT INTO `notebook_operationlog` VALUES ('313', '1', '1461433208', '117.69.22.176', '1', '提示语：修改个人信息成功! <br />模块：Admin,控制器：Person,方法：info <br />请求方式：POST', '/admin.php/Person/info');
INSERT INTO `notebook_operationlog` VALUES ('314', '1', '1461439309', '117.69.22.176', '1', '提示语：共添加了0条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/');
INSERT INTO `notebook_operationlog` VALUES ('315', '1', '1461439310', '117.69.22.176', '1', '提示语：共添加了0条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/');
INSERT INTO `notebook_operationlog` VALUES ('316', '1', '1461439310', '117.69.22.176', '1', '提示语：共添加了0条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/');
INSERT INTO `notebook_operationlog` VALUES ('317', '1', '1461441114', '117.69.22.176', '1', '提示语：修改管理用户成功! <br />模块：Admin,控制器：User,方法：edit <br />请求方式：AJAX', '/admin.php/User/edit');
INSERT INTO `notebook_operationlog` VALUES ('318', '1', '1461441398', '117.69.22.176', '1', '提示语：共添加了0条常用操作:) <br />模块：Admin,控制器：Usually,方法：add <br />请求方式：AJAX', '/admin.php/Usually/add/data/');

-- ----------------------------
-- Table structure for `notebook_picture`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_picture`;
CREATE TABLE `notebook_picture` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `termid` smallint(8) NOT NULL,
  `name` char(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `open` tinyint(1) DEFAULT '0' COMMENT '0：点击显示大图，1：外部链接，2：图片介绍页面',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `remark` varchar(1024) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL COMMENT '添加时间',
  `content` longtext,
  `views` int(11) DEFAULT '0' COMMENT '浏览次数',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_picture
-- ----------------------------

-- ----------------------------
-- Table structure for `notebook_role`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_role`;
CREATE TABLE `notebook_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '角色名称',
  `parentid` smallint(6) NOT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='角色信息列表';

-- ----------------------------
-- Records of notebook_role
-- ----------------------------
INSERT INTO `notebook_role` VALUES ('1', '超级管理员', '0', '1', '拥有网站最高管理员权限！', '1329633709', '1329633709', '0');

-- ----------------------------
-- Table structure for `notebook_send`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_send`;
CREATE TABLE `notebook_send` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sendtime` int(11) DEFAULT NULL COMMENT '发送时间',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_send
-- ----------------------------

-- ----------------------------
-- Table structure for `notebook_session`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_session`;
CREATE TABLE `notebook_session` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(64) NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_session
-- ----------------------------
INSERT INTO `notebook_session` VALUES ('1', '127.0.0.1', '3c9285983984122f3203cd57a43da02c');
INSERT INTO `notebook_session` VALUES ('2', '183.166.46.42', '3c9285983984122f3203cd57a43da02c');
INSERT INTO `notebook_session` VALUES ('3', '112.26.227.164', '338d5f98b90c90a682e839ea0226a288');
INSERT INTO `notebook_session` VALUES ('4', '117.69.22.176', '338d5f98b90c90a682e839ea0226a288');
INSERT INTO `notebook_session` VALUES ('5', '112.26.227.187', '3c9285983984122f3203cd57a43da02c');

-- ----------------------------
-- Table structure for `notebook_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_teacher`;
CREATE TABLE `notebook_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sex` int(2) DEFAULT '0' COMMENT '1---男  0-女',
  `position` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `introduction` mediumtext,
  `views` int(5) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_teacher
-- ----------------------------
INSERT INTO `notebook_teacher` VALUES ('3', 's', '0', 's', null, '<p>s</p>', '0');

-- ----------------------------
-- Table structure for `notebook_template`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_template`;
CREATE TABLE `notebook_template` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0' COMMENT '0:封面模板，1：内容模板',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_template
-- ----------------------------
INSERT INTO `notebook_template` VALUES ('1', '通用简介内容模板', 'index.php/List/content/class', '0');
INSERT INTO `notebook_template` VALUES ('2', '通用文章内容模板', 'index.php/Show/content/id', '1');
INSERT INTO `notebook_template` VALUES ('3', '通用文章列表模板', 'index.php/List/article/class', '1');
INSERT INTO `notebook_template` VALUES ('8', '教师列表内容模板', 'index.php/List/teacher/class', '0');
INSERT INTO `notebook_template` VALUES ('9', '教师详细信息模板', 'index.php/Show/teacher/id', '1');

-- ----------------------------
-- Table structure for `notebook_term`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_term`;
CREATE TABLE `notebook_term` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `parentid` smallint(5) NOT NULL COMMENT '父ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名称',
  `module` varchar(200) NOT NULL DEFAULT '' COMMENT '所属模块',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of notebook_term
-- ----------------------------
INSERT INTO `notebook_term` VALUES ('30', '0', '部门链接', 'Link');
INSERT INTO `notebook_term` VALUES ('35', '0', '比赛', 'Link');
INSERT INTO `notebook_term` VALUES ('31', '0', '院系链接', 'Link');
INSERT INTO `notebook_term` VALUES ('32', '0', '公共课链接', 'Link');
INSERT INTO `notebook_term` VALUES ('33', '0', '学习链接', 'Link');
INSERT INTO `notebook_term` VALUES ('36', '0', '获奖', 'Picture');

-- ----------------------------
-- Table structure for `notebook_user`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_user`;
CREATE TABLE `notebook_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) NOT NULL COMMENT '昵称/姓名',
  `password` char(32) NOT NULL COMMENT '密码',
  `bind_account` varchar(50) NOT NULL COMMENT '绑定帐户',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上次登录时间',
  `last_login_ip` varchar(40) NOT NULL COMMENT '上次登录IP',
  `verify` varchar(32) NOT NULL COMMENT '证验码',
  `email` varchar(50) NOT NULL COMMENT '邮箱',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '对应角色ID',
  `info` text NOT NULL COMMENT '信息',
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台用户表';

-- ----------------------------
-- Records of notebook_user
-- ----------------------------
INSERT INTO `notebook_user` VALUES ('1', 'admin', '超级管理员', '81dc9bdb52d04dc20036dbd8313ed055', '', '1461772196', '112.26.227.187', 'BmFZ3p', 'admin@abc3210.com', 'asd帅气d', '1408778905', '1461441114', '1', '1', '', 'photo/2014-12-16/54900d897dd25.jpg');





-- ----------------------------
-- Table structure for `notebook_users`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_users`;
CREATE TABLE `notebook_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8 NOT NULL COMMENT 'md5(密码)',
  `lastloginIP` int(11) DEFAULT NULL COMMENT '保存用户最后登陆的ip  用ip2long函数转换成int型',
  `lastloginTime` int(11) DEFAULT NULL COMMENT '保存用户时间戳',
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注信息',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '1-表示该用户不禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notebook_users
-- ----------------------------

-- ----------------------------
-- Table structure for `notebook_usersinfo`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_usersinfo`;
CREATE TABLE `notebook_usersinfo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `qq` int(11) DEFAULT NULL COMMENT '用整型保存好处 占空间小   搜索快  ',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码必须用12位整型表示',
  `address` char(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '现住址',
  `about` char(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '个人说明',
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图像地址',
  `regTime` int(11) NOT NULL COMMENT '注册时间',
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notebook_usersinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `notebook_visit`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_visit`;
CREATE TABLE `notebook_visit` (
  `vid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `ip` int(11) DEFAULT NULL COMMENT '保存用户最后登陆的ip  用ip2long函数转换成int型',
  `time` int(11) NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '今日访问次数',
  `y` int(11) NOT NULL,
  `m` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_visit
-- ----------------------------
INSERT INTO `notebook_visit` VALUES ('1', '0', '1459996908', '1', '16', '4', '7');

-- ----------------------------
-- Table structure for `notebook_websiteviews`
-- ----------------------------
DROP TABLE IF EXISTS `notebook_websiteviews`;
CREATE TABLE `notebook_websiteviews` (
  `id` int(11) NOT NULL,
  `webSiteViews` int(11) NOT NULL COMMENT '网站浏览量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notebook_websiteviews
-- ----------------------------
INSERT INTO `notebook_websiteviews` VALUES ('0', '0');
