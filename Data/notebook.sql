/*
Navicat MySQL Data Transfer

Source Server         : 3twd
Source Server Version : 50626
Source Host           : mysql.3twd.cn:3306
Source Database       : notebook

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-04-24 00:27:09
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_admin_menu
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notebook_book
-- ----------------------------
INSERT INTO `notebook_book` VALUES ('2', '悄悄回来', '又是忙碌的一天，感觉好累，中午没有吃饭，让自己轻松一下，打开了年轮，没写几笔，心绪烦乱，放弃了。\r\n\r\n吃过晚饭，陪着学生在操场上散步，看着天边一轮红日，不管不顾转眼落下不见，想着，顾好眼前，顾好眼前吧，不想太多。\r\n\r\n几个好友跟我说，这么多事儿，要不要去问问，烧一点送送。从来没干过这个，也没这个渠道，也许是我的不热心，她们也就没塞我地址什么的。\r\n\r\n心里也是疑惑的，燕子这么多年的司机了，从来没出过什么祸事儿，这次踩刹车时，说是脚下一滑，没踩住，追尾全责不说，还连撞两车，幸好自己没事儿。\r\n\r\n燕子问我心疼车不？唉，只要你没事儿就好，我现在只想着大家都平安，其他的，都不重要。去年这个时间，我为了她，在医院留着泪求着医生救命，看着医院长长的队伍，一次次哭着求人家帮忙，让我先付款。再不想经历这些。\r\n\r\n这一世做人，是不是真像佛说的，是来受苦受难的。尤其是到了这个年龄，孩子还没接手，自己还在奋斗，父母却已老了。\r\n\r\n妈妈第二次的化疗，并没预计的那么顺利，昨天开始难受，今天几乎没吃什么东西，幸好灵芝孢粉、虫草、海参都在吃，想来没什么大碍。\r\n\r\n姐说你要多陪着妈妈说话。我说，还是你们多陪吧。老人家的想法很现实，看到我晚上值班，周六周日出去加班，知道我比别人多赚钱，心里就很高兴，让我快走、快去。我在家陪着，也没怎么开心，唉。\r\n\r\n怡然姐来上海了，请了假来帮她家耗子带小孩。一晃，我们从年轮认识都十几年了，耗子高考，到上海读书，留上海工作、结婚，现在都已是二胎了，时间转瞬即逝，我们这几朵喇叭花也都快要谢了。说是等平儿家子安今年高考完，可以再聚聚了，要不，我们真老了。\r\n\r\n悄悄，回来看看。下一次，不知何时。但愿一切都快好起来。', '开心', '下雨天', '1461244417', '00000000000', '1', '0', '0');
INSERT INTO `notebook_book` VALUES ('3', '今夜，单曲在循环', '散步回来\r\n就一直在呆在办公室\r\n这些天常常外出办事\r\n感觉确实有点累了\r\n今晚，啥事也不想做\r\n就听歌吧\r\n《如果有一天我放弃你了》\r\n前面的读白\r\n文字虽然有点伤感\r\n但在轻音乐中听起来\r\n感觉心，是放松的\r\n似乎这些读白正是心中所要的描述\r\n曾以为会幸福的恋情\r\n结果却又是空欢喜一场\r\n伤了又伤，痛了又痛\r\n心，有些麻木了\r\n但在夜深人静时\r\n总会浮现一些画面\r\n他说：我会好好牵住你的手，不能再让别人把你拐走了。\r\n那是刚交往时说过的话\r\n转眼两年过去了\r\n那些“善意”的隐瞒\r\n毁了最初的期盼\r\n心，慢慢冷了下来\r\n不怨不恨\r\n一切的发生都有它的因由吧\r\n默默承受，慢慢去淡化\r\n生活总是骨感的\r\n时间再次抚摸着伤痕\r\n行走的路上，独自疗伤\r\n相信自己\r\n总有一天会更加淡然面对命运恩赐的这一切\r\n今夜，两小时了\r\n还在单曲循环着\r\n心的思绪全在这读白里歌声里……\r\n\r\n“如果有一天我放弃了你\r\n请不要怀疑我是否恋上另一个人\r\n是因为我发觉你不珍惜我\r\n离开你并非我愿意\r\n我不想拿放弃当威胁\r\n因为那两个字我不曾轻易说出口\r\n因为我爱你\r\n假如有天我真的选择了离开\r\n那么对不起不是想要你的挽留\r\n而是对你真的死了心\r\n有些人总是在失去之后\r\n才知道曾经的美好\r\n在我决定离开你之前\r\n我会给你好多机会\r\n如果你把我给你的机会\r\n当做你放纵的资本\r\n有天我会真的走出来\r\n虽然我会痛会伤心\r\n可我了解自己\r\n一旦爱上一个人会全心全意\r\n可一旦我真正决定了死心\r\n那么我只会在心里哭泣一次\r\n然后选择忘记\r\n不要以为感情的事\r\n如果没有出现第三者的话\r\n很容易复合\r\n我的字典里没有这个概念\r\n如果我选择了放弃选择了离开\r\n那么我便再也不会回头\r\n在你生命中我重要吗\r\n你有在乎过我吗\r\n每次发给你的信息你认真看了吗\r\n希望每个人\r\n不要让你身边的人等了太久\r\n如果有天我真的消失了\r\n你会不会 再找我\r\n\r\n回到相遇的地点\r\n才知我对你不了解\r\n以为爱得深就不怕伤悲\r\n偏偏爱让心成雪\r\n我独自走在寂寞的长街\r\n回忆一幕幕重演\r\n我告诉自己勇敢去面对\r\n就算心碎也完美\r\n想起我和你牵手的画面\r\n泪水化成云霞满天\r\n如果我和你还能再见面\r\n就让情意旧梦能圆\r\n我们在不同的世界\r\n想着每一次的误会\r\n好像再一次依偎你身边\r\n偏偏你有千里远\r\n我独自走在寂寞的长街\r\n回忆一幕幕重演\r\n我告诉自己勇敢去面对\r\n就算心碎也完美\r\n想起我和你牵手的画面\r\n泪水化成云霞满天\r\n如果我和你还能再见面\r\n就让情意旧梦能圆\r\n……”', '不开心', '下雪', '1461244457', '00000000000', '1', '0', '0');
INSERT INTO `notebook_book` VALUES ('4', '入梦来  ', '好困，却不想睡。\r\n    一天好快，还什么也没做。\r\n    没坐够。\r\n\r\n    你会来我的梦里吗。\r\n    去偎依在你身旁，沉沉地睡一个香甜的好觉，好累。\r\n    好想你。\r\n\r\n    来到我梦里，抱紧我，我困了。\r\n\r\n    无须道晚安，梦里也见你。', '快乐', '晴天', '1461244511', '00000000000', '1', '0', '0');
INSERT INTO `notebook_book` VALUES ('5', '时隔9年，年轮我又回来了！ ', '今天是2016.4.21，安静的下午一个人坐在电脑前，突然想起了年轮，这么多年了，不知是否还在。\r\n当我打开网站的时候还很惊喜，年轮你还在，这种感觉就像找回了多年失散不见的老友，可是用户名却忘记了，后来也是想破脑袋把可以尝试的都试了才找回，迫不及待打开过去的日记本，因为里面记录了我太多属于青春年少的心路历程，看时间第一篇日记是07年，时隔今天已经9年了，我也从过去的17岁懵懂少女，到如今的两个孩子的妈妈了！翻看过去的日记，真的有太多的感慨，过去的我单纯，无知，简单，当然也很可爱。一直很喜欢年轮，也从来没有和朋友分享过这个网站，一直从心底里觉得它是属于我一个人的私密花园，而下午，我也开通了VIP，重新进入这个地方，开始记录我现如今的生活。\r\n在这九年里，似乎一切是那么平淡的走过来，但却又经历了人生的酸甜苦辣，真正的使我从一个少女变成一个少妇，当然生活也磨灭了原来的一些棱角。\r\n在这九年里，我也只是经历了大多数人会经历的结婚，生子，油盐酱醋，每天过着忙碌而又充实的生活。大多数的时间都是老公，孩子，家庭，偶尔和闺蜜出去吃饭，看场电影。\r\n在这九年里，我真的过上了我原来梦想的生活吗？并没有！我过的不好吗？并没有！有一个对我不错的老公，有2个可爱的儿子，父母都健在,也许这就是平淡，幸福的生活了！但如今，我想过的更好！过精彩的人生， 不悔的人生!一辈子太短，世界那么大，不要辜负了还算年轻的我们！', '好', '阴天', '1461244547', '00000000000', '1', '0', '0');
INSERT INTO `notebook_book` VALUES ('6', '世界阔朗，各自安好', '阿龙6点多发来短信说要在家里陪老婆，不能上云溪。我自然理解他，取消了昨晚定好的云溪行计划。\r\n    蛋炒饭后，看到姜兴仁同学的微信图配诗：“雨过天晴空气新，广场枇杷初长成。日行经次浑不觉，且得浮生半日闲。”我点了赞，为他难得的偷闲，为他枇杷诗意。赞之犹不足，拼诗四句：“半日闲来走广场，枇杷又绿待秋黄。谁人独倚园中木，任雨随风泪满裳？”反复读之，觉太悲戚，没有发作评论。\r\n    为看紫罗兰，独去法兴寺。前几天，果济法师说寺里开了一朵紫罗兰。今日去，已经开了百十朵了。花苞初成的，绿叶紧紧裹着花蕾，如紫色的乳尖；花苞挺立的，如插在绿色笔筒里的毛笔尖，饱满圆润；花朵绽放的，六片柔薄的紫色花瓣，三片上托如莲，三片下展如扇，舒展柔美。昨天的雨水还没有全干，在一些绿色的叶片上，在一些紫色的花瓣上，仍滚动着几粒雨珠儿。这些雨珠儿，好像调皮的孩子，一边和叶儿花儿嬉闹着，一边和赏花的人儿对着眼儿。\r\n    法师说紫罗兰的果实会随风飘扬，落到哪里就在哪里生根发芽。我果然就在寺院走廊边缘的石缝里看到了几株今春新生的紫罗兰，只两三片叶子，手指长短，手感特别柔软，摸着它们就像摸着女儿的小手儿小脸儿。法师提到我的一个学生鹏，在花坛里挖取过一些紫罗兰根茎，今年也应该开了花了。“等花开完了，我也挖些给你，种到囤谷园。”法师说。我当然乐意。\r\n\r\n    大雄宝殿外面的香炉前，台阶的一左一右摆放着两盆杜鹃。右边的杜鹃花开得早，叶繁花稀；左边的杜鹃花开得迟，红色的花朵挤挤挨挨，压弯了枝头，洒落在盆的周围。香炉左侧空地上的草莓都开了花，圆圆的，白白的，低低的，安静地点缀在草莓叶子中间。而阶沿的一丛丛蔷薇，早已红花落尽，绿叶繁荣，清清纯纯，脱落了妖艳妩媚。\r\n    院子里有四株红叶石楠，独有一株叶色黄绿的竟然开着细细的白花。我开始还以为它不是红叶石楠呢，法师说是的。后来搜到，红叶石楠有的开花有的不开花，这和去秋花芽形成时期的树势、水肥、环境等有一定关系。这让我想到，草木开不开花，原本是有因缘的，因来缘不具，缘具因不来，都开不了花。开不了花的红叶石楠，它会嫉恨开花的红叶石楠吗？它会因为感到不公而失望、绝望甚至自杀吗？呵呵，我看到那三株没开花的都长得好好的，叶片儿更比开花的鲜红呢。我听到它们在说：“你开你的花，我红我的叶。世界阔朗，各自安好。”\r\n\r\n    选择上午10点到寺里，法师自然知道我定有一个蹭饭的企图。我进寺院时，他正好从后山采蕨归来。他把蕨菜放在厨房洁净的案板上，对我说：“午饭主菜就是它了。你不来，我也想吃它！我是因为想吃它，才去采它的。看看，我做的有没有你母亲做的好吃？”法师牙齿不好，蕨菜的做法和母亲的爆炒不同：锅里放很多油，烧热，放四个八角在里面炒一炒，捞起来丢掉；把蕨菜放进锅里，加水淹没，大火煮，细火焖；三十分钟后，锅里的蕨菜香了，电饭煲里的饭也香了。\r\n    第二道菜是白菜梗煮豆渣汤，起锅后滴几滴香油。第三道菜是酱点卤鸡蛋。土鸡蛋卤制前用煮蛋器煮熟，去壳后再放进自做的卤水（卤料是盐、酱油、八角和茶叶等）里，卤一晚上就好了。法师取了八个卤鸡蛋，用刀切成八小块，排列在盘子里，蒙上保鲜膜，放进微波炉热一下。酱是这样做的，整个过程两分钟不到：把几片胡萝卜几片青辣椒在油锅里略微炒一炒，放进盐、味精等，加进用水泡散的生粉，滚一滚，起锅，倒在卤鸡蛋片上。\r\n    “有时间，有闲心，有调料。做饭做菜真的是一种快乐啊！过日子是过一种心情。”烹调过程中，法师不要我动手，他一个人搞定。最后吩咐我把装了菜的托盘从厨房端到客房里，叮嘱我小心点。我小心翼翼端着，走着，说：“呵呵，放心！打翻了，可没得吃的了！”法师说：“吃的当然没得吃的了。更重要的是，我可在这上面花了时间啊。”三道菜摆上桌，灰白黄红绿，色色鲜亮；蕨菜清香豆渣霉香鸡蛋卤香，香香扑鼻；味道也自然是杠杠的。开吃，鸟儿的口水早就在厨房里流成河了！\r\n    饭前茶水绿，饭后滇水红。因为要赶去阿龙家坐坐，12点半告辞。“缘来不拒，缘去不忧。”去时薄雾蒙身，归时春阳暖心。\r\n\r\n    夜里应云溪洞一老总相邀，和学校几位同事、汤、良等一起吃饭，交流孩子的教育经验。饭后，谢过请唱歌，和几同事步行到银山广场。吴晴、徐娜等少女随着广场舞节拍加入到广场舞行列，翩翩如蝶。遇到广场舞高手潘公平老师，他说他在打球。和团队走开，一个人静静地欣赏各色人等舒展的舞姿，心里也变得舒展喜悦起来。找个花坛边坐下，看广场上华灯初上，看广场对面霓虹闪烁，看人们或运动，或谈天，或静坐，一派祥和。\r\n    20点后回家，写四句诗，以记法兴寺赏花：\r\n        小寺今开紫罗兰，花柔叶绿美而端。\r\n        谁言春日飞如箭？昨日才逢三月三。', '不开心', '我的世界是阴天', '1461244595', '00000000000', '1', '0', '0');
INSERT INTO `notebook_book` VALUES ('7', '昨天，真的够累', '原本计划好今天去广州看材料展，高铁票已经提前订好。\r\n\r\n前晚七点多突然收到老总的微信留言：jinyin，你还是28号去广州一趟吧，听说定制家居展览28号中午后就结束，你去找一下家具照明的供应商，有一家不错，你去了解一下，顺便带图过去与他们沟通沟通，看看有没更合适的带功能灯可配置在我们产品上。\r\n\r\n领导的指令，必须遵循。所以，急忙改签车票，争取在上午11点前赶到琶洲展览馆，务必完成所接的任务。\r\n\r\n8点39分的车，所以昨天早上一上班就匆忙往车站奔，意料不到虎门站这一天人流量比往常要多几倍，还有特警在维持秩序，进个站花了十几分钟，进到候车室就是上车的点，一刻也没停，到座位坐下还是气喘呼呼。17分钟就到了广州南站，一下车就直奔地铁站，幸好还算早，地铁里不挤，还能找到个位置坐，这会总算了喘了会气。\r\n\r\n高铁站到琶洲展馆A区差不多花了一小时，到了展馆已是10点多，自以为到的时间点还可以。就按老总给我的展位号找起他说的那家供应商，拿着示意图，却怎么也没找到。不得已去咨询台问，结果是自己太匆促，没弄清展馆，原来定制家居展览是在保利世界贸易馆。这下傻眼了，从这A区到保利馆A区还有一段很长的路程，还要过遂道，绕来弯去，至少也近两公里，只能快步小跑过去，不然没赶上就惨了。\r\n\r\n幸好，如时赶到，供应商的老板还在。拿出老总给的图纸与他交谈沟通，他是个很温和很有智慧的老板，给了很多建议和意见，还在图纸上帮忙标示，把我指点的连连点赞，那一会真的忘了一路狂奔的累。与高智慧的人接触，真能让你学到不少东西。\r\n\r\n花了近一小时，算是完成了老总交待的事情。然后就回琶洲馆逛，收集一些合用的材料及新功能配件资料。这展馆确实很大，居说世界排名第二。分A、B、C、D馆，如果全要看完，一天也逛不完。所以，这脚功也是要很好的哦。\r\n\r\n为了赶回程的高铁，快四点就去坐地铁。一直记得回程的车票是5点10分，所以有一小时多的时间回到车站也足够。快到车站时，查看进站口，才发现时间点不对，改签后的票原来是4点50分，离开车只有15分钟的时间，我的乖乖，这下给急得赛跑似的，一出地铁就尽全力狂跑，从负一层穿越似地飞奔，自动扶梯也是跨步而上，心里不断念着：让我赶上让我赶上……！\r\n\r\n到了安检口，上气不接下气地对着一个个排我面前的人不断说：对不起，让我优先好不好？出行的人都是很有体谅心，一个个都让我闪过。一进候车厅，眼睛一扫检票口，妈呀，这又不要我的命吗？A3检票口在对面遥远着呢，离开车还有8分钟的时间，拎着一袋笨重的资料，从A30检口飞奔似地跑向A3。那一段的路感觉脚好沉重好沉重，但还是拼全力冲向检票口。呵，咋还有这么人排着队呢？难道是下一趟又开始检票了？赶紧问入口处的检票员：“4点50的车开了吗？”他一脸诧异地说：“还没，晚点了还没到。”估计我那会很失态吧，脸色一定很难看。那会好像心脏都是冷冰冰的感觉，阴凉阴凉的，可又明显感觉到满头大汗，脚似乎都不是自己一样，发软呢！估计狂奔那会，很多人莫名地望着我的身影吧！\r\n\r\n老天爷还真好，没让我“误点”，还真准时5点10分开。只是超负荷地让我体验了一把“狂奔”赶车的滋味。\r\n\r\n昨天累得可真是没法比喻，吃完了晚饭就困得不行，眼皮直下搭，所以洗洗倒床就睡着，甚至女儿啥时回来都不知。似乎到现在还没回过神来，或许真是身体累着了。\r\n\r\n今晚得要早睡，明天还要去广州。脚累，还得继续……', '开心喔', '晴天', '1461244657', '00000000000', '2', '0', '0');
INSERT INTO `notebook_book` VALUES ('8', '清明节【1094天】 ', '今天朋友分手了，他们谈了两年多，和我们不同。他们是女追的男，男的对女的好，但是女的不太珍惜。现在男的不愿意谈了，觉的不爱了！\r\n  其实我觉的不是不爱了，而是他们对彼此都缺乏在一起的那种冲动和热情，场景多么的相似，都是高三（他们是高四）。男女不在一个高中，都是异地恋，这是今年我遇到的第二个异地分手的了！也许我的见识也短，但是我觉的闹成今天的下场，男女都有责任，当初在一起就是太草率，就算后再千方百计的去迎合对方，然后把自己弄得身心疲惫。最后不了了之！\r\n   我们谈了793天，今天距离谈恋爱那天已经1094天了!300天过去了，我还是念的她的好，身边也有很好的女孩，就是找不到那种感觉，不愿意背叛那份早已经不存在的感情了！\r\n  我尽量把自己搞的很累，不让自己去想她，不去看她空间，不去联系她！希望时间会帮我吧。\r\n  明天就是三周年纪念了！也许，再也没有也许了...', '开心', '晴天', '1461244733', '00000000002', '2', '0', '0');
INSERT INTO `notebook_book` VALUES ('11', '无题 ', '早上琴练完，站起伸个懒腰，走到窗前看到楼下的绿化满眼的绿，心想这样的天气，这样的温度，这应该是个让人最美丽的季节，裙摆飘飘的走在这样的季节，多美。我这心又开始心往神驰的到处飞啦。看看镜中的自己，人是会老的。什么时候我才可以自由的想去哪就去哪呢？老师告诉我当下便是你最好的状态，因为一切安排都是最好的，在人的每个阶段都是有寓意的，只是很多人不知道而已。嗯，好吧。早上起来，刷牙，洗脸，然后开始每日清晨的冥想早课，发现自从古茹来过，我真的如导师最后给我的祝福一样，有所进步，导师最后对我说的一句话是&ldquo;希望你能在灵修的道路上取得进步&rdquo;。以前我总是会偷懒，现在只要闹钟一响，立马起床，最近发现我能很轻松的完成，并像古茹指点的一样，要在同一时间去做同一件事。发现每每完成早课，人很轻松。老公不错，同样按照导师的要求开始小步前进，呵呵，我要走在他的前头，所以我比他任务重。让他永远跟着我。在微信里建立一个群，把弟弟，弟媳都加了进来，前段时间是带领他们学习《大学》，发现有小小成绩，上周六请他们吃饭，弟媳向我汇报，她的儿子，开始认识一些字了，开始会背一点《弟子规》了，弟弟立马说，是啊，这都是弟媳的功劳，弟媳接过话说,这是姑姑的功劳。呵呵，听了我心里很高兴，当一个人开始懂得感谢，就开始向快乐迈进了。所以这周我决定开始在微信中学习《博伽梵歌》，只是诵读给他们听，每天几分钟，积小而成大，呵呵，相信有一天，他们依然会跟随进来，最起码，老公已经开始了，我有信心他们也一定会从中受益的。呵，我现在成了广播员一样，但是乐在其中，今早老公微信中夸，读的不错，早上上班在车上听，感觉很好。嗯，这下更鼓励我继续下去了。从未觉得学习是如此快乐的事，老公叫着，看来你真要把我们家整成书香门第啦，我家书都没地方放啦。我叫着，只怪你房子太小，不过没关系，我准备向空间发展，把墙壁利用上，我在墙的上方找空间用隔板当书架。不过还得美观，所以得好好想想如何布局。你们这些不看书的人，我要在微信里一本一本的读给你们听，你们有福啦。跟着我提升吧。哈哈，因为我怕我知道的没人和我分享快乐，所以你们必须给我跟进来。最近十字绣又绣上隐了，真是跨世纪的工程了，还是十几年前绣的一副好大的牡丹花，后来一直扔那没有绣，直到上次爸爸来我家，为了陪他看电视，找出来继续，因为我对电视是一点兴趣不感，可又不能干坐啦，装模作样，没想到这一绣，上隐了，看来喜好是永远不会变的。看着她们在自己的一针一线中有了生命的感觉，和离完成的那天不远了，心情总是美的。想象着沙发被后的整面墙将绽放着的牡丹，好有成就感啊，唉，对一个如我这般的家庭主妇，成就感就这些了。《易经》百遍挑战，随着今天又加了一笔，九个正字旁又加一横，46遍，希望快点满百。结束后便是《黄帝内经》啦。加油，决不让时间虚度。曾经浪费了多少时间，我要加倍的把它补回来。', '不开心', '晴天', '1461245956', '00000000001', '2', '0', '0');
INSERT INTO `notebook_book` VALUES ('12', '少年与歌 ', '过了很久我才终于抬头看，你就在对岸等我勇敢。  \r\n                                            &mdash;&mdash;陈粒 《走马》\r\n  那时候你带我去游乐园，我吵着闹着要坐过山车，一趟下来却头晕眼花吐了一地。可是你看呀，你走了之后，我可以一个人去游乐园，可以平静的坐完过山车，可以一点事都没有。但我已经没有了那份心了。那时候我心血来潮给你做了一份蛋炒饭，难吃的你眉头紧皱却还是咬牙吃完。可是你看呀，你走了之后，我已经可以独当一面，做一桌子人人夸赞的菜。但我已经没有那份心了。那年的冬天，所有的女孩子都在为心爱的男孩织围巾，我也兴致冲冲给你织了一条，却一直被家人嘲笑一点都不像女孩子的手艺，但你还是围在了脖子上。可是你看呀，你走了之后，我已经可以在寝室教其他女孩子织围巾了直被她们夸赞心灵手巧。可我已经没有那份心了。\r\n  我还记得第一次见你的模样，在那个共同朋友的生日会，在那间灯线昏暗的包厢，你正好唱了一首我最爱的歌谣。我被你的声音折服，但之后却一直没有看见你再次拿起话筒。我心里满是失落却还是表现得无所谓在那和朋友嬉闹。旁敲侧击之下，知道了你的高中，你的名字，你的爱好。因为不想和一群人挤在小小的电梯里，我退了出来选择了楼梯。陌生的环境让我像无头苍蝇，你站在那个楼梯口，冲我笑笑，说&ldquo;跟我走吧&rdquo;，天知道我那时候心跳的多快。\r\n  回到学校，很多人都惊诧于我的突然转变，我开始推掉一次次聚会，开始收起玩世不恭的心，开始刷起我崭新的联系本，开始变好。只是因为我知道，我想去有你的学校。\r\n  很巧，开学碰到了你，我在军训，你在篮球场。很巧，社团招新你给了我一张报名表，看你的表情我知道你已经忘记了我，但我还是兴致勃勃报了名，即使那是我最不擅长的吉他社。很巧，高中的好朋友成了你兄弟的女朋友，我就那么的要到了你的QQ号。即使你还是不知道我是谁。社团活动我没有一次迟到早退缺席，却从来不见你的身影，询问过后才知道你根本不是这个社团的，那一刻，突然觉得好失落。\r\n  我不想坐以待毙，所以选择主动出击。网上主动和你聊天，路上主动跟你打招呼。渐渐的，就那么熟了。我不喜欢好多课，物理，地理，历史，政治我都不喜欢，那时候我就会转过头，看向你所在的楼层和教室。你偶尔闪过的身影都可以让我开心一整天。那天你主动找我，问我为什么走路都是一蹦一蹦的。你知道吗，这件事让我激动了好久，第一次感觉，我在你的世界里也开始有了地位。\r\n  好多同学都知道我喜欢你，有你的篮球场，他们会拉着我去看篮球或者教我打篮球，或许，在那一刻我可以体会身在曹营心在汉。高二的我，阴差阳错进了足球队，然后，你在篮球场挥汗如雨，我在足球场满场奔跑。可以时时刻刻看见你，所以，足球队再怎么艰苦的训练，咬咬牙也就过来了。那天你生日，我终于按耐不住向你告白，可是你一脸错额我就知道我已经没有了希望，憋住眼泪笑了笑，告诉自己以后就不会在那么一门心思扑在你身上。可是，一点用都没有。那年的新年，我再次提起，你还是不可置信。那天我坐在房里，关了灯，一滴眼泪都掉不下来。再次告诉自己，就为自己好好生活。那之后，我不在频繁找你聊天，不在频繁进你空间，不在频繁出现在你的视线。可是偶尔我还是会在物理课，习惯的看向你的方向，可是偶尔路上碰到了，我还是抑制不住的紧张和开心，可是偶尔，我也会幻想，如果我们在一起多好。高三，我退了足球队，退了吉他社，想一门心思扑在学习。我没有打听你去了哪所学校，我怕我学习的目的还是为了你。我没有打听你过得好不好，我怕我会克制不住跑去有你的城市。\r\n  2014年的12月31号，你打了电话给我，我并不知道你的电话，接通那一瞬间听到你的声音我还以为自己出现了幻觉。你问我，在一起好不好？我难以相信，以为你在开玩笑。我问你为什么两次告白你都拒绝了我。你说，他给我写过情书在我高一时候，可是亲眼看见我扔进了垃圾桶，所以以为我的告白都在开玩笑。我那时候恨不得打死高一时候的我，因为我觉得我需要对你坚贞不渝，所以拒绝了别人的示好，却不知道那是你的示好。\r\n  我们就那么在一起了，你在离我很远的城市，你的学校是我不敢想象的分数线，我的物理从来不超过60分，我的理综卷也从来拿不到高分，不管我的化学生物学的有多好。你那时候看到我的物理兼职难以置信世界上还有我这样的白痴，公式全写出来了却连怎么用都不知道。所以，只要你有空，就会回来，在周末，给我补习物理。后来那个五一，家里人知道了你的存在，我很怕他们过激的反应，但他们意外的认可，让我感觉世界一片光明。\r\n  我们之间，没有任何亲密的举动，在一起，就是考卷物理考卷物理，没有热恋中人们该有的举动。可我很享受，因为为我补习的你，一门心思都在我身上，一如当初的我。\r\n  但是，我高考还是失利了，数学考的乱七八糟，语文也没有平时的水平，理综虽然整体提高了却也没有到预想的分数。拿到成绩的那一刻，家里人都为我欢呼，为我策划着去哪里庆祝去哪里旅游。我的心里却一片冰凉。你的电话打来我第一反应是挂掉。那天我躲在房间里哭的昏天暗地。\r\n  八月份，我们分手了。是我提出的，你沉默了也答应了。\r\n  2016年4月21号，你出现在了我面前，在我下课回寝的必经路上。你看着我笑了，我就毫无防备哭了出来，室友在一旁手足无措。只有我知道，没有你在我身边，我的大学过得有多糟。\r\n  这一次，我不会放手，死也不放开你的手了。', '高兴', '暴雨', '1461246039', '00000000000', '2', '0', '1');
INSERT INTO `notebook_book` VALUES ('13', '别管我  ', '每个人有自己的性格，每个人也有自己的原则。\r\n就像我的朋友天生喜欢被别人管束的滋味，而我从我最小的毛细孔开始排斥这种感受。\r\n\r\n最近一个朋友，让我不要喝可乐，要几点以前睡，对我的各种善意的担心，要现在回家。我终于忍不住了。跟你有什么关系。\r\n\r\n我以前和男朋友谈恋爱男朋友让我去睡觉我都会怒的人。关你什么事。\r\n你是我男朋友你就有权利干涉我的生活方式了吗？如果你想去睡觉不能直说嘛？\r\n现在是第一次就无视。\r\n\r\n我从初中放假通宵玩电脑自己的父母都不会干涉。家长会我觉得这个对我有用，我就让我妈去，我觉得没有意义，要告我状了，我就让我妈别去。我爸一直到现在都不清楚我大学读什么专业。我说我要去哪里了，临走前告诉他一声，他送我去机场。从小到大自己管自己。突然有个人，他要管你？\r\n\r\n我特别记得金星有一次采访说到，她都是来无影去无踪，直到她老公汉斯告诉她要既然是家人，要互相知会。我想这个是我很大才懂的事情。\r\n\r\n我们的关系不是一种情感绑架。我可以接受善意的提醒，但是请不要拿它当话题。\r\n当然我说了那么多，我只针对别人。不针对我自己。你咬我呀。', '心情好', '晴天', '1461246531', '00000000045', '4', '0', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=436 DEFAULT CHARSET=utf8 COMMENT='后台登陆日志表';

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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_menu
-- ----------------------------
INSERT INTO `notebook_menu` VALUES ('1', '常用操作', '-3', 'Admin', 'Index', 'index', 'menu/1', null, '1', '1', '常用操作', '0', '0');
INSERT INTO `notebook_menu` VALUES ('2', '网站设置', '0', 'Admin', 'Index', 'index', 'menu/2', null, '1', '1', '网站设置', '0', '0');
INSERT INTO `notebook_menu` VALUES ('3', '内容管理', '0', 'Admin', 'Index', 'index', 'menu/3', null, '1', '1', '内容管理', '0', '0');
INSERT INTO `notebook_menu` VALUES ('11', '常用操作', '1', 'Admin', 'Usually', 'index', '', 'Usually/index', '1', '1', '常用操作', '0', '0');
INSERT INTO `notebook_menu` VALUES ('12', '系统设置', '2', 'Admin', 'None', 'none', '', '#', '1', '1', '系统设置', '0', '0');
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
) ENGINE=MyISAM AUTO_INCREMENT=300 DEFAULT CHARSET=utf8 COMMENT='后台操作日志表';

-- ----------------------------
-- Records of notebook_operationlog
-- ----------------------------
INSERT INTO `notebook_operationlog` VALUES ('240', '1', '1418953970', '192.168.7.212', '1', '提示语：修改管理用户成功! <br />模块：Admin,控制器：User,方法：edit <br />请求方式：AJAX', '/jxx/admin.php/User/edit');
INSERT INTO `notebook_operationlog` VALUES ('241', '1', '1418954020', '192.168.7.212', '1', '提示语：添加管理用户成功! <br />模块：Admin,控制器：User,方法：add <br />请求方式：AJAX', '/jxx/admin.php/User/add');
INSERT INTO `notebook_operationlog` VALUES ('297', '2', '1461417058', '112.26.227.164', '1', '提示语：修改管理用户成功! <br />模块：Admin,控制器：User,方法：edit <br />请求方式：AJAX', '/admin.php/User/edit');
INSERT INTO `notebook_operationlog` VALUES ('298', '2', '1461420588', '117.69.22.176', '1', '提示语：修改个人信息成功! <br />模块：Admin,控制器：Person,方法：info <br />请求方式：POST', '/admin.php/Person/info');
INSERT INTO `notebook_operationlog` VALUES ('299', '2', '1461426582', '117.69.22.176', '1', '提示语：修改管理用户成功! <br />模块：Admin,控制器：User,方法：edit <br />请求方式：AJAX', '/admin.php/User/edit');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notebook_session
-- ----------------------------
INSERT INTO `notebook_session` VALUES ('1', '127.0.0.1', '3c9285983984122f3203cd57a43da02c');
INSERT INTO `notebook_session` VALUES ('2', '183.166.46.42', '3c9285983984122f3203cd57a43da02c');
INSERT INTO `notebook_session` VALUES ('3', '112.26.227.164', '338d5f98b90c90a682e839ea0226a288');
INSERT INTO `notebook_session` VALUES ('4', '117.69.22.176', '338d5f98b90c90a682e839ea0226a288');

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
INSERT INTO `notebook_user` VALUES ('1', 'admin', '超级管理员', '81dc9bdb52d04dc20036dbd8313ed055', '', '1460200037', '0.0.0.0', 'BmFZ3p', 'admin@abc3210.com', 'asd帅气', '1408778905', '1460206258', '1', '0', '', 'photo/2014-12-16/54900d897dd25.jpg');
INSERT INTO `notebook_user` VALUES ('2', 'yu', '超级管理员', '81dc9bdb52d04dc20036dbd8313ed055', '', '1461427228', '117.69.22.176', '', '291000327@qq.com', '', '0', '1461426582', '1', '1', '', null);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notebook_users
-- ----------------------------
INSERT INTO `notebook_users` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1967462064', '1461426248', '');
INSERT INTO `notebook_users` VALUES ('2', 'root', 'e10adc3949ba59abbe56e057f20f883e', '1880810427', '1461317045', '');
INSERT INTO `notebook_users` VALUES ('3', 'alert', 'e10adc3949ba59abbe56e057f20f883e', '0', '1461246118', null);
INSERT INTO `notebook_users` VALUES ('4', '123456', 'e10adc3949ba59abbe56e057f20f883e', '0', '1461246691', null);
INSERT INTO `notebook_users` VALUES ('6', 'test', 'e10adc3949ba59abbe56e057f20f883e', '0', '1461247253', null);
INSERT INTO `notebook_users` VALUES ('7', 'qqqq', 'e10adc3949ba59abbe56e057f20f883e', '1880810427', '1461320469', null);
INSERT INTO `notebook_users` VALUES ('8', 'aaaa', 'e10adc3949ba59abbe56e057f20f883e', '1880810427', '1461317671', null);
INSERT INTO `notebook_users` VALUES ('9', '1122', 'e10adc3949ba59abbe56e057f20f883e', '1880810427', '1461317899', null);
INSERT INTO `notebook_users` VALUES ('10', 'ssss', 'e10adc3949ba59abbe56e057f20f883e', '1880810427', '1461318302', null);
INSERT INTO `notebook_users` VALUES ('11', 'sssss', 'e10adc3949ba59abbe56e057f20f883e', '1880810427', '1461318346', null);
INSERT INTO `notebook_users` VALUES ('12', 'mmmm', 'e10adc3949ba59abbe56e057f20f883e', '1880810427', '1461318477', null);
INSERT INTO `notebook_users` VALUES ('13', 'jjjj', 'e10adc3949ba59abbe56e057f20f883e', '1880810427', '1461318620', null);
INSERT INTO `notebook_users` VALUES ('14', 'wqwq', 'e10adc3949ba59abbe56e057f20f883e', '1880810427', '1461319442', null);
INSERT INTO `notebook_users` VALUES ('15', 'nnnn', 'e10adc3949ba59abbe56e057f20f883e', '1880810427', '1461320274', null);
INSERT INTO `notebook_users` VALUES ('16', 'hello', 'e10adc3949ba59abbe56e057f20f883e', '1880810404', '1461401439', null);
INSERT INTO `notebook_users` VALUES ('17', 'qqqqqq', '343b1c4a3ea721b2d640fc8700db0f36', '1880810404', '1461417596', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notebook_usersinfo
-- ----------------------------
INSERT INTO `notebook_usersinfo` VALUES ('1', '2013855675', '15705547511', '安徽省淮南市', '测试数据', '2016/04/23/571b819d7eb92.jpg', '1461244099', '1');
INSERT INTO `notebook_usersinfo` VALUES ('2', '1972324624', '15705547511', '111111', '111111111111', '2016/04/21/5718dadc1198f.jpg', '1461246405', '2');
INSERT INTO `notebook_usersinfo` VALUES ('3', '1972324624', '12345678910', '123213@qasd.coasd', '11111', '2016/04/21/5718d906bb9aa.jpg', '1461246405', '3');
INSERT INTO `notebook_usersinfo` VALUES ('4', '123123123', '12345678910', '安徽省桐城市', '12', '2016/04/21/5718dafc7fc19.jpg', '1461246405', '4');
INSERT INTO `notebook_usersinfo` VALUES ('5', '2013855675', '15705547511', '淮南师范学院', '测试数据', '2016/04/21/5718db2728088.jpeg', '1461246644', '5');
INSERT INTO `notebook_usersinfo` VALUES ('6', '1972324624', '', '测试地址', '1111122', '2016/04/21/5718de1dacee1.jpg', '1461247244', '6');
INSERT INTO `notebook_usersinfo` VALUES ('7', null, null, null, null, '2016/04/22/5719edf50435a.jpg', '1461317109', '7');
INSERT INTO `notebook_usersinfo` VALUES ('8', null, null, null, null, '2016/04/22/5719f027cbf62.JPG', '1461317671', '8');
INSERT INTO `notebook_usersinfo` VALUES ('9', null, null, null, null, '2016/04/22/5719f10b31084.gif', '1461317899', '9');
INSERT INTO `notebook_usersinfo` VALUES ('10', null, null, null, null, '2016/04/22/5719f29eaa3a7.jpg', '1461318302', '10');
INSERT INTO `notebook_usersinfo` VALUES ('11', null, null, null, null, '2016/04/22/5719f2ca6667c.jpg', '1461318346', '11');
INSERT INTO `notebook_usersinfo` VALUES ('12', null, null, null, null, '2016/04/22/5719f34d93a1a.jpg', '1461318477', '12');
INSERT INTO `notebook_usersinfo` VALUES ('13', null, null, null, null, '2016/04/22/5719f3dccd9d1.jpg', '1461318620', '13');
INSERT INTO `notebook_usersinfo` VALUES ('14', '2013855675', '12345678910', '测试安徽省安庆市', '安徽省淮南市', '2016/04/22/5719f779c18ad.jpg', '1461319435', '14');
INSERT INTO `notebook_usersinfo` VALUES ('15', '2013855675', '12345678910', '111', '2222', '2016/04/22/5719fa808d751.jpg', '1461320266', '15');
INSERT INTO `notebook_usersinfo` VALUES ('16', null, null, null, null, '2016/04/23/571b37570e0a2.jpg', '1461401431', '16');
INSERT INTO `notebook_usersinfo` VALUES ('17', null, null, null, null, '2016/04/23/571b767c5a8ee.jpeg', '1461417596', '17');

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
