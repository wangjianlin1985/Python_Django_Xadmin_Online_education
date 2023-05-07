/*
Navicat MySQL Data Transfer

Source Server         : mysql5.6
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : mxonline

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2020-07-13 16:12:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add Bookmark', '6', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('22', 'Can change Bookmark', '6', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete Bookmark', '6', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('24', 'Can view Bookmark', '6', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('25', 'Can add User Setting', '7', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('26', 'Can change User Setting', '7', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete User Setting', '7', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('28', 'Can view User Setting', '7', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('29', 'Can add User Widget', '8', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('30', 'Can change User Widget', '8', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete User Widget', '8', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('32', 'Can view User Widget', '8', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('33', 'Can add log entry', '9', 'add_log');
INSERT INTO `auth_permission` VALUES ('34', 'Can change log entry', '9', 'change_log');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete log entry', '9', 'delete_log');
INSERT INTO `auth_permission` VALUES ('36', 'Can view log entry', '9', 'view_log');
INSERT INTO `auth_permission` VALUES ('37', 'Can add captcha store', '10', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('38', 'Can change captcha store', '10', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete captcha store', '10', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('40', 'Can view captcha store', '10', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 用户信息', '11', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 用户信息', '11', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 用户信息', '11', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 用户信息', '11', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 轮播图', '12', 'add_banner');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 轮播图', '12', 'change_banner');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 轮播图', '12', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 轮播图', '12', 'view_banner');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 邮箱验证码', '13', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 邮箱验证码', '13', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 邮箱验证码', '13', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 邮箱验证码', '13', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 课程', '14', 'add_course');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 课程', '14', 'change_course');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 课程', '14', 'delete_course');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 课程', '14', 'view_course');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 章节', '15', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 章节', '15', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 章节', '15', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 章节', '15', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 视频', '16', 'add_video');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 视频', '16', 'change_video');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 视频', '16', 'delete_video');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 视频', '16', 'view_video');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 课程资源', '17', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 课程资源', '17', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 课程资源', '17', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 课程资源', '17', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 城市', '18', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 城市', '18', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 城市', '18', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 城市', '18', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 机构', '19', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 机构', '19', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 机构', '19', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 机构', '19', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 教师', '20', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 教师', '20', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 教师', '20', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 教师', '20', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('81', 'Can add 用户咨询', '21', 'add_userask');
INSERT INTO `auth_permission` VALUES ('82', 'Can change 用户咨询', '21', 'change_userask');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete 用户咨询', '21', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('84', 'Can view 用户咨询', '21', 'view_userask');
INSERT INTO `auth_permission` VALUES ('85', 'Can add 用户消息', '22', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('86', 'Can change 用户消息', '22', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete 用户消息', '22', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('88', 'Can view 用户消息', '22', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 用户课程', '23', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 用户课程', '23', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 用户课程', '23', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('92', 'Can view 用户课程', '23', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('93', 'Can add 课程评论', '24', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('94', 'Can change 课程评论', '24', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete 课程评论', '24', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 课程评论', '24', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('97', 'Can add 用户收藏', '25', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('98', 'Can change 用户收藏', '25', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete 用户收藏', '25', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('100', 'Can view 用户收藏', '25', 'view_userfavorite');

-- ----------------------------
-- Table structure for `captcha_captchastore`
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('16', 'AGSG', 'agsg', '66e797709082bf52297957678270cf9685a4bf06', '2020-07-12 14:27:00.164138');
INSERT INTO `captcha_captchastore` VALUES ('17', 'CZAJ', 'czaj', 'e604e51d15f35c8b7b3b91370ef9506b5b9914a3', '2020-07-12 14:27:05.774097');
INSERT INTO `captcha_captchastore` VALUES ('18', 'LHBZ', 'lhbz', 'eee0313b6e4040dbcedc096f20a57812c16e7fe7', '2020-07-12 14:27:08.431196');
INSERT INTO `captcha_captchastore` VALUES ('19', 'HZTJ', 'hztj', '7f2cdb8671010bf626eafafb2da36b2c9c11f54e', '2020-07-12 14:27:09.094221');

-- ----------------------------
-- Table structure for `course_course`
-- ----------------------------
DROP TABLE IF EXISTS `course_course`;
CREATE TABLE `course_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `degree` varchar(2) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `tag` varchar(10) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `teacher_tell` varchar(300) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_course_course_org_id_6a10e205_fk_organizat` (`course_org_id`),
  KEY `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `course_course_course_org_id_6a10e205_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `course_course_teacher_id_f04a37b5_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_course
-- ----------------------------
INSERT INTO `course_course` VALUES ('1', 'web前端美工设计', '学习前端网站UI设计', '从入门到精通，成为一名web美工ui设计师，掌握Html,Div+css,javascript等前端必备技能', 'zj', '200', '13', '1', 'courses/2020/07/4.jpg', '21', '2020-07-12 08:00:13.000000', '计算机', '1', 'web,ui', '1', '要认真学习', '不要迟到', '1');
INSERT INTO `course_course` VALUES ('2', 'Android移动app开发', '讲解怎么开发安卓手机项目', '学习原生android app项目开发，从最基本的Activity开始学习，然后学习Service，学习Http网络通信实现数据交互！', 'gj', '300', '0', '0', 'courses/2020/07/7.jpg', '1', '2020-07-13 07:05:39.000000', '计算机', '2', '移动开发', '2', '学完拿高工资哦', '要认真听讲', '0');

-- ----------------------------
-- Table structure for `course_courseresource`
-- ----------------------------
DROP TABLE IF EXISTS `course_courseresource`;
CREATE TABLE `course_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_courseresource_course_id_d5504211_fk_course_course_id` (`course_id`),
  CONSTRAINT `course_courseresource_course_id_d5504211_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_courseresource
-- ----------------------------
INSERT INTO `course_courseresource` VALUES ('1', '精美网站模板', 'course/resource/2020/07/index.rar', '2020-07-12 08:07:40.000000', '1');
INSERT INTO `course_courseresource` VALUES ('4', '移动开发的ppt', 'course/resource/2020/07/test.ppt', '2020-07-13 08:05:54.000000', '2');

-- ----------------------------
-- Table structure for `course_lesson`
-- ----------------------------
DROP TABLE IF EXISTS `course_lesson`;
CREATE TABLE `course_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_lesson_course_id_65df4a1c_fk_course_course_id` (`course_id`),
  CONSTRAINT `course_lesson_course_id_65df4a1c_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_lesson
-- ----------------------------
INSERT INTO `course_lesson` VALUES ('1', '第一章 HTML入门', '2020-07-12 08:06:07.000000', '1');
INSERT INTO `course_lesson` VALUES ('2', '第2章JavaScript开发', '2020-07-13 08:00:46.000000', '1');
INSERT INTO `course_lesson` VALUES ('3', '第一章 Android开发入门', '2020-07-13 08:01:58.000000', '2');
INSERT INTO `course_lesson` VALUES ('4', '第二章 Activity详解', '2020-07-13 08:02:20.000000', '2');
INSERT INTO `course_lesson` VALUES ('5', '第三章 理解Service的场景', '2020-07-13 08:02:51.000000', '2');

-- ----------------------------
-- Table structure for `course_video`
-- ----------------------------
DROP TABLE IF EXISTS `course_video`;
CREATE TABLE `course_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `learn_times` int(11) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_video_lesson_id_0731e8a9_fk_course_lesson_id` (`lesson_id`),
  CONSTRAINT `course_video_lesson_id_0731e8a9_fk_course_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `course_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_video
-- ----------------------------
INSERT INTO `course_video` VALUES ('1', '15分钟HTML入门', '2020-07-12 08:06:25.000000', '1', '15', 'http://qc9pe1tko.bkt.clouddn.com/11.mp4');
INSERT INTO `course_video` VALUES ('2', 'JavaScript入门', '2020-07-13 15:51:55.000000', '2', '12', 'http://qc9pe1tko.bkt.clouddn.com/11.mp4');
INSERT INTO `course_video` VALUES ('3', 'div+css布局详解', '2020-07-13 15:53:47.000000', '1', '10', 'http://qc9pe1tko.bkt.clouddn.com/11.mp4');
INSERT INTO `course_video` VALUES ('4', 'Android开发的技术背景', '2020-07-13 08:03:31.000000', '3', '10', 'http://qc9pe1tko.bkt.clouddn.com/11.mp4');
INSERT INTO `course_video` VALUES ('5', 'android项目文件目录讲解', '2020-07-13 08:04:33.000000', '3', '15', 'http://qc9pe1tko.bkt.clouddn.com/11.mp4');
INSERT INTO `course_video` VALUES ('6', 'Activity界面实现原理', '2020-07-13 08:04:55.000000', '4', '20', 'http://qc9pe1tko.bkt.clouddn.com/11.mp4');
INSERT INTO `course_video` VALUES ('7', 'Activity之间传参数方法', '2020-07-13 08:05:25.000000', '4', '22', 'http://qc9pe1tko.bkt.clouddn.com/11.mp4');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('10', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('14', 'course', 'course');
INSERT INTO `django_content_type` VALUES ('17', 'course', 'courseresource');
INSERT INTO `django_content_type` VALUES ('15', 'course', 'lesson');
INSERT INTO `django_content_type` VALUES ('16', 'course', 'video');
INSERT INTO `django_content_type` VALUES ('24', 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('21', 'operation', 'userask');
INSERT INTO `django_content_type` VALUES ('23', 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES ('25', 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('22', 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES ('18', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('19', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('20', 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('12', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('13', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('11', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('6', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('7', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('8', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-07-12 07:38:55.159721');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2020-07-12 07:38:55.288563');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-07-12 07:38:55.465033');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2020-07-12 07:38:55.808448');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2020-07-12 07:38:55.830004');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2020-07-12 07:38:55.843039');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2020-07-12 07:38:55.868607');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2020-07-12 07:38:55.874122');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2020-07-12 07:38:55.884148');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2020-07-12 07:38:55.894174');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2020-07-12 07:38:55.903701');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2020-07-12 07:38:55.984418');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2020-07-12 07:38:55.994444');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0001_initial', '2020-07-12 07:38:56.198465');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2020-07-12 07:38:56.617298');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2020-07-12 07:38:56.783366');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2020-07-12 07:38:56.797406');
INSERT INTO `django_migrations` VALUES ('18', 'captcha', '0001_initial', '2020-07-12 07:38:56.858778');
INSERT INTO `django_migrations` VALUES ('19', 'organization', '0001_initial', '2020-07-12 07:38:57.052299');
INSERT INTO `django_migrations` VALUES ('20', 'organization', '0002_auto_20191110_1235', '2020-07-12 07:38:57.216881');
INSERT INTO `django_migrations` VALUES ('21', 'organization', '0003_courseorg_category', '2020-07-12 07:38:57.320155');
INSERT INTO `django_migrations` VALUES ('22', 'organization', '0004_auto_20191110_2248', '2020-07-12 07:38:57.485595');
INSERT INTO `django_migrations` VALUES ('23', 'organization', '0005_teacher_image', '2020-07-12 07:38:57.567016');
INSERT INTO `django_migrations` VALUES ('24', 'course', '0001_initial', '2020-07-12 07:38:57.803282');
INSERT INTO `django_migrations` VALUES ('25', 'course', '0002_auto_20191111_2319', '2020-07-12 07:38:58.675591');
INSERT INTO `django_migrations` VALUES ('26', 'course', '0003_course_is_banner', '2020-07-12 07:38:58.904155');
INSERT INTO `django_migrations` VALUES ('27', 'operation', '0001_initial', '2020-07-12 07:38:59.180378');
INSERT INTO `django_migrations` VALUES ('28', 'operation', '0002_auto_20191110_1235', '2020-07-12 07:38:59.543256');
INSERT INTO `django_migrations` VALUES ('29', 'organization', '0006_teacher_teacher_age', '2020-07-12 07:38:59.636002');
INSERT INTO `django_migrations` VALUES ('30', 'organization', '0007_courseorg_tag', '2020-07-12 07:38:59.711075');
INSERT INTO `django_migrations` VALUES ('31', 'sessions', '0001_initial', '2020-07-12 07:38:59.768255');
INSERT INTO `django_migrations` VALUES ('32', 'users', '0002_banner_emailverifyrecord', '2020-07-12 07:38:59.925745');
INSERT INTO `django_migrations` VALUES ('33', 'users', '0003_auto_20191110_1235', '2020-07-12 07:39:00.177416');
INSERT INTO `django_migrations` VALUES ('34', 'users', '0004_auto_20191118_2058', '2020-07-12 07:39:00.244635');
INSERT INTO `django_migrations` VALUES ('35', 'xadmin', '0001_initial', '2020-07-12 07:39:00.481246');
INSERT INTO `django_migrations` VALUES ('36', 'xadmin', '0002_log', '2020-07-12 07:39:00.872434');
INSERT INTO `django_migrations` VALUES ('37', 'xadmin', '0003_auto_20160715_0100', '2020-07-12 07:39:01.133127');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('ravw80bj79sc73noizxnfov30rd39hmg', 'YTUwYmEwZjUzZjQ0Zjk2MTM3ZDk4ZWFkODkzNThiOWFiMzg1ZDRkNjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImE0MWI0Y2EzZDVhNmFkMDc1ODMzMjg0NzQwNDI0ZWE1OTJlZTljNjMifQ==', '2020-07-27 07:19:37.276132');
INSERT INTO `django_session` VALUES ('u7d2a00zchh3b8aubcfplw3ua1ac3q6m', 'ZjZhZTUyNTZmOTZkNmI5ZDlhYzhjYWIzOWU5YjZlN2YwM2NlNjdlYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkxYThmY2U3YTYzZWJmZDVlNzk5MTY4NjRkM2VlZjM0ZjFmN2FkY2UiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2UiLCJjb3Vyc2UiXSwiX3BfZGVncmVlX19leGFjdD16aiJdfQ==', '2020-07-26 10:25:57.378168');

-- ----------------------------
-- Table structure for `operation_coursecomments`
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES ('1', '讲解很到位，喜欢这个老师', '2020-07-13 06:39:20.476008', '1', '3');

-- ----------------------------
-- Table structure for `operation_userask`
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES ('1', '王中涛', '13598012083', 'android移动开发', '2020-07-13 07:57:49.267497');
INSERT INTO `operation_userask` VALUES ('2', '王中涛', '13598012083', 'android移动开发', '2020-07-13 07:57:49.277021');

-- ----------------------------
-- Table structure for `operation_usercourse`
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `course_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES ('1', '2020-07-12 14:41:10.134676', '1', '3');

-- ----------------------------
-- Table structure for `operation_userfavorite`
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavotite_user_id_62c66cf0_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavotite_user_id_62c66cf0_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES ('1', '1', '3', '2020-07-12 14:40:49.389658', '3');
INSERT INTO `operation_userfavorite` VALUES ('3', '1', '2', '2020-07-13 06:22:54.449775', '3');
INSERT INTO `operation_userfavorite` VALUES ('5', '1', '1', '2020-07-13 07:57:02.783470', '3');

-- ----------------------------
-- Table structure for `operation_usermessage`
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------

-- ----------------------------
-- Table structure for `organization_citydict`
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES ('1', '成都', '一个来了不走的城市', '2020-07-12 07:48:59.000000');
INSERT INTO `organization_citydict` VALUES ('2', '杭州', '淘宝起源地', '2020-07-13 06:53:09.000000');

-- ----------------------------
-- Table structure for `organization_courseorg`
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES ('1', '鑫源计算机培训', '培养各种计算机开发人才，包括Python等', '0', '0', 'org/2020/07/1.jpg', '四川省成都市成华区', '2020-07-12 07:51:43.000000', '1', 'pxjg', '0', '1', '全国知名');
INSERT INTO `organization_courseorg` VALUES ('2', '新华电脑培训学校', '培养各种计算机人才', '20', '0', 'org/2020/07/5.jpg', '杭州市西湖区天安路10号', '2020-07-13 06:53:43.000000', '2', 'gx', '0', '0', '全国知名');

-- ----------------------------
-- Table structure for `organization_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `teacher_age` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES ('1', '双鱼林', '3', '理工大学', '高级教授', '生动形象', '20', '1', '2020-07-12 07:54:23.000000', '1', 'teacher/2020/07/2.jpg', '25');
INSERT INTO `organization_teacher` VALUES ('2', '王铁柱', '4', '启元计算机软件公司', '项目经理', '浅显易懂', '0', '0', '2020-07-13 07:01:18.000000', '2', 'teacher/2020/07/6.jpg', '25');

-- ----------------------------
-- Table structure for `users_banner`
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('1', '电脑培训速度啦', 'banner/202007/3.jpg', 'http://www.baidu.com', '100', '2020-07-12 07:56:57.000000');
INSERT INTO `users_banner` VALUES ('2', '电脑培训速度啦', 'banner/202007/3.jpg', 'http://www.baidu.com', '98', '2020-07-12 07:56:57.000000');
INSERT INTO `users_banner` VALUES ('3', '电脑培训速度啦', 'banner/202007/3.jpg', 'http://www.baidu.com', '95', '2020-07-12 07:56:57.000000');
INSERT INTO `users_banner` VALUES ('4', '电脑培训速度啦', 'banner/202007/3.jpg', 'http://www.baidu.com', '94', '2020-07-12 07:56:57.000000');
INSERT INTO `users_banner` VALUES ('5', '电脑培训速度啦', 'banner/202007/3.jpg', 'http://www.baidu.com', '93', '2020-07-12 07:56:57.000000');

-- ----------------------------
-- Table structure for `users_emailverifyrecord`
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `send_type` varchar(30) NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES ('2', 'e2N1zslPRcR6vS8u', '344245001@qq.com', 'register', '2020-07-12 14:22:16.487465');

-- ----------------------------
-- Table structure for `users_userprofile`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$150000$kSeQvQcNftBP$NVaoIfY7pIywgl2OjYzlCsjAQ1v438eYzvwb2JzYLtg=', '2020-07-13 07:58:34.967487', '1', 'admin', '', '', 'admin@126.com', '1', '1', '2020-07-12 07:46:22.510493', '', null, 'female', '', null, 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('3', 'pbkdf2_sha256$150000$2RLbIfPIlOFH$OFvvHuKMqvHep68Tq6ZzJBUeHv57/eAvN/8suC8YpK8=', '2020-07-13 07:38:29.105077', '0', '344245001@qq.com', '', '', '344245001@qq.com', '0', '1', '2020-07-12 14:22:16.235797', '王中涛', '2020-07-09', 'female', '红星路10号', '15083081231', 'image/202007/9.jpg');

-- ----------------------------
-- Table structure for `users_userprofile_groups`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `users_userprofile_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_bookmark`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_log`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2020-07-12 07:51:01.903779', '127.0.0.1', '1', '成都', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2020-07-12 07:54:12.736441', '127.0.0.1', '1', '鑫源计算机培训', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2020-07-12 07:56:42.687893', '127.0.0.1', '1', '[鑫源计算机培训]的教师：双鱼林', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2020-07-12 07:59:12.046686', '127.0.0.1', '1', 'Banner object (1)', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2020-07-12 08:06:00.846978', '127.0.0.1', '1', 'web前端美工设计', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2020-07-12 08:06:21.557950', '127.0.0.1', '1', '《web前端美工设计 课程的章节》>> 第一章 HTML入门', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2020-07-12 08:07:30.794636', '127.0.0.1', '1', '15分钟HTML入门', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2020-07-12 08:11:08.106717', '127.0.0.1', '1', 'CourseResource object (1)', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2020-07-13 06:53:34.499239', '127.0.0.1', '2', '杭州', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2020-07-13 06:57:47.780294', '127.0.0.1', '2', '新华电脑培训学校', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2020-07-13 07:03:08.973219', '127.0.0.1', '2', '[新华电脑培训学校]的教师：王铁柱', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2020-07-13 07:10:38.592602', '127.0.0.1', '2', 'Android移动app开发', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2020-07-13 08:01:01.762893', '127.0.0.1', '2', '《web前端美工设计 课程的章节》>> 第2章JavaScript开发', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2020-07-13 08:01:19.208789', '127.0.0.1', '2', 'JavaScript入门', 'change', '修改 lesson', '16', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2020-07-13 08:02:18.123012', '127.0.0.1', '3', '《Android移动app开发 课程的章节》>> 第一章 Android开发入门', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2020-07-13 08:02:46.343793', '127.0.0.1', '4', '《Android移动app开发 课程的章节》>> 第二章 Activity详解', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2020-07-13 08:03:17.184987', '127.0.0.1', '5', '《Android移动app开发 课程的章节》>> 第三章 理解Service的场景', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2020-07-13 08:04:30.408975', '127.0.0.1', '4', 'Android开发的技术背景', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2020-07-13 08:04:52.396920', '127.0.0.1', '5', 'android项目文件目录讲解', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2020-07-13 08:05:22.568476', '127.0.0.1', '6', 'Activity界面实现原理', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2020-07-13 08:05:49.802819', '127.0.0.1', '7', 'Activity之间传参数方法', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2020-07-13 08:06:32.294959', '127.0.0.1', '4', 'CourseResource object (4)', 'create', '已添加。', '17', '1');

-- ----------------------------
-- Table structure for `xadmin_usersettings`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for `xadmin_userwidget`
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
