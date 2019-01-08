
CREATE DATABASE ag_gate_way DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
Use ag_gate_way;

/*
 Navicat Premium Data Transfer

 Source Server         : ag-admin
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost
 Source Database       : ag_admin

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 07/09/2017 17:09:55 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `base_element`
-- ----------------------------
DROP TABLE IF EXISTS `base_element`;
CREATE TABLE `base_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `method` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_element`
-- ----------------------------
BEGIN;
INSERT INTO `base_element` VALUES ('3', 'userManager:btn_add', 'button', '新增', '/user', '1', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null), ('4', 'userManager:btn_edit', 'button', '编辑', '/user', '1', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null), ('5', 'userManager:btn_del	', 'button', '删除', '/user', '1', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null), ('9', 'menuManager:element', 'uri', '按钮页面', '/admin/element', '6', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null), ('10', 'menuManager:btn_add', 'button', '新增', '/menu', '6', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null), ('11', 'menuManager:btn_edit', 'button', '编辑', '/menu', '6', '', '', 'PUT', '', '2017-06-24 00:00:00', '', '', '', '', '', '', '', '', '', '', ''), ('12', 'menuManager:btn_del	', 'button', '删除', '/menu', '6', '', '', 'DELETE', '', '2017-06-24 00:00:00', '', '', '', '', '', '', '', '', '', '', ''), ('13', 'menuManager:btn_element_add', 'button', '新增元素', '/element', '6', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null), ('14', 'menuManager:btn_element_edit', 'button', '编辑元素', '/element', '6', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null), ('15', 'btn_element_del', 'button', '删除元素', '/element', '6', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null), ('16', 'groupManager:btn_add', 'button', '新增', '/group', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null), ('17', 'groupManager:btn_edit', 'button', '编辑', '/group', '7', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null), ('18', 'groupManager:btn_del', 'button', '删除', '/group', '7', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null), ('19', 'groupManager:btn_userManager', 'button', '分配用户', '/group/{*}/user', '7', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null), ('20', 'groupManager:btn_resourceManager', 'button', '分配权限', '/group/{*}/authority', '7', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null), ('21', 'groupManager:menu', 'uri', '分配菜单', '/group/{*}/authority/menu', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null), ('22', 'groupManager:element', 'uri', '分配资源', '/group/{*}/authority/element', '7', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null), ('23', 'userManager:view	', 'uri', '查看', '/user', '1', '', '', 'GET', '', '2017-06-26 00:00:00', '', '', '', '', '', '', '', '', '', '', ''), ('24', 'menuManager:view', 'uri', '查看', '/menu', '6', '', '', 'GET', '', '2017-06-26 00:00:00', '', '', '', '', '', '', '', '', '', '', ''), ('27', 'menuManager:element_view', 'uri', '查看', '/element', '6', null, null, 'GET', null, null, null, null, null, null, null, null, null, null, null, null, null), ('28', 'groupManager:view', 'uri', '查看', '/group', '7', null, null, 'GET', null, null, null, null, null, null, null, null, null, null, null, null, null), ('30', 'adminAPI:view', 'uri', '查看', '/swagger', '23', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null), ('31', 'adminAPI:swagger', 'uri', '查看', '/v2', '23', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null), ('32', 'groupTypeManager:view', 'uri', '查看', '/groupType', '8', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null), ('33', 'groupTypeManager:btn_add', 'button', '新增', '/groupType', '8', null, null, 'POST', null, null, null, null, null, null, null, null, null, null, null, null, null), ('34', 'groupTypeManager:btn_edit', 'button', '编辑', '/groupType', '8', null, null, 'PUT', null, null, null, null, null, null, null, null, null, null, null, null, null), ('35', 'groupTypeManager:btn_del', 'button', '删除', '/groupType', '8', null, null, 'DELETE', null, null, null, null, null, null, null, null, null, null, null, null, null), ('36', 'gateClientManager:view', 'uri', '查看', '/client', '26', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null), ('37', 'gateClientManager:btn_add', 'button', '新增', '/client', '26', null, null, 'POST', '', null, null, null, null, null, null, null, null, null, null, null, null), ('38', 'gateClientManager:btn_edit', 'button', '编辑', '/client', '26', null, null, 'PUT', '', null, null, null, null, null, null, null, null, null, null, null, null), ('39', 'gateClientManager:btn_del', 'button', '删除', '/client', '26', null, null, 'DELETE', '', null, null, null, null, null, null, null, null, null, null, null, null), ('40', 'adminAPI:swagger_resources', 'uri', '查看', '/swagger-resources', '23', null, null, 'GET', '', null, null, null, null, null, null, null, null, null, null, null, null), ('41', 'gateLogManager:view', 'button', '查看', 'Log', '27', null, null, 'GET', '', '2017-07-01 00:00:00', '1', 'admin', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null), ('42', 'gateServiceManager:view', 'uri', '查看', '/service', '28', null, null, 'GET', '', '2017-07-07 12:04:36', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null), ('43', 'gateServiceManager:add', 'button', '新增', '/service', '28', null, null, 'POST', '', '2017-07-07 12:06:20', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null), ('44', 'gateServiceManager:edit', 'button', '编辑', '/service', '28', null, null, 'PUT', '', '2017-07-07 12:06:45', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null), ('45', 'gateServiceManager:del', 'button', '删除', '/service', '28', null, null, 'DELETE', '', '2017-07-07 12:07:07', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null), ('46', 'demo:serivce', 'uri', 'demo服务', '/language/{*}', '-1', null, null, 'GET', '', '2017-07-09 12:55:15', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `base_group`
-- ----------------------------
DROP TABLE IF EXISTS `base_group`;
CREATE TABLE `base_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `group_type` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_group`
-- ----------------------------
BEGIN;
INSERT INTO `base_group` VALUES ('1', 'adminRole', '管理员', '-1', '/adminRole', null, '1', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('3', 'testGroup', '体验组', '-1', '/testGroup', null, '1', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('4', 'visitorRole', '游客', '3', '/testGroup/visitorRole', null, '1', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('5', 'freeRole', '试用', '3', '/testGroup/freeRole', null, '1', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('6', 'company', 'AG集团', '-1', '/company', null, '2', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('7', 'financeDepart', '财务部', '6', '/company/financeDepart', null, '2', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('8', 'hrDepart', '人力资源部', '6', '/company/hrDepart', null, '2', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `base_group_leader`
-- ----------------------------
DROP TABLE IF EXISTS `base_group_leader`;
CREATE TABLE `base_group_leader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_group_leader`
-- ----------------------------
BEGIN;
INSERT INTO `base_group_leader` VALUES ('3', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `base_group_member`
-- ----------------------------
DROP TABLE IF EXISTS `base_group_member`;
CREATE TABLE `base_group_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_group_member`
-- ----------------------------
BEGIN;
INSERT INTO `base_group_member` VALUES ('2', '4', '2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('5', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `base_group_type`
-- ----------------------------
DROP TABLE IF EXISTS `base_group_type`;
CREATE TABLE `base_group_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_group_type`
-- ----------------------------
BEGIN;
INSERT INTO `base_group_type` VALUES ('1', null, '角色类型', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('2', 'depart', '部门类型', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('3', null, '自定义类型', '123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `base_menu`
-- ----------------------------
DROP TABLE IF EXISTS `base_menu`;
CREATE TABLE `base_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `href` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `order_num` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `path` varchar(500) DEFAULT NULL,
  `enabled` char(1) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_menu`
-- ----------------------------
BEGIN;
INSERT INTO `base_menu` VALUES ('1', 'userManager', '用户管理', '5', '/user', 'fa fa-user', null, '0', '', '/adminSys/baseManager/userManager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('5', 'baseManager', '基础配置管理', '13', '', 'fa fa-cog fa-spin', null, '0', '', '/adminSys/baseManager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('6', 'menuManager', '菜单管理', '5', '/menu', 'fa fa-list', null, '0', '', '/adminSys/baseManager/menuManager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('7', 'groupManager', '角色组管理', '5', '/group', 'fa fa-users', null, '0', '', '/adminSys/baseManager/groupManager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('8', 'groupTypeManager', '角色类型管理', '5', '/groupType', 'fa fa-address-card-o', null, '0', '', '/adminSys/baseManager/groupTypeManager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('9', 'monitorManager', '系统监控', '13', '', 'fa fa-area-chart', null, '0', '', '/adminSys/monitorManager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('13', 'adminSys', '权限管理系统', '-1', '', 'fa fa-terminal', null, '0', '', '/adminSys', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('14', 'contentSys', '内容管理系统', '-1', '', 'fa-newspaper-o', null, '0', '', '/contentSys', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('17', 'articleManger', '文章管理', '20', '/test/monitor', '', null, '0', '', '/contentSys/artComManger/articleManger', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('18', 'commentManager', '评论管理', '20', '', '', null, '0', '', '/contentSys/artComManger/commentManager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('20', 'artComManger', '文章评论管理', '14', '', 'fa fa-bookmark', null, '0', '', '/contentSys/artComManger', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('22', 'apiManager', '服务Api文档', '13', '', 'fa fa-folder', null, '0', '', '/adminSys/apiManager', null, null, null, null, null, '2017-07-09 09:14:02', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null), ('23', 'adminAPI', '网关鉴权API', '22', '/swagger-ui.html', 'fa fa-file-code-o', null, '0', '', '/adminSys/apiManager/adminAPI', null, null, null, null, null, '2017-07-09 09:26:06', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null), ('24', 'druidMonitor', 'Admin Druid数据监控', '9', '/druid/datasource.html', 'fa fa-line-chart', null, '0', '', '/adminSys/monitorManager/druidMonitor', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('25', 'gateWayManager', '网关管理', '13', '', 'fa fa-bug', null, '0', '', '/adminSys/gateWayManager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('26', 'gateClientManager', '客户端管理', '25', '/gateClient', 'fa fa-laptop', null, '0', '', '/adminSys/gateWayManager/gataClientManager', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('27', 'gateLogManager', '操作日志', '5', '/gateLog', 'fa fa-book', null, '0', '', '/adminSys/baseManager/gateLogManager', null, '2017-07-01 00:00:00', '1', 'admin', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, null, null, null, null), ('28', 'serviceManger', '服务注册', '25', '/service', 'fa fa-exchange', null, '0', '', '/adminSys/gateWayManager/serviceManger', null, '2017-07-03 20:43:01', '1', '¡X', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `base_resource_authority`
-- ----------------------------
DROP TABLE IF EXISTS `base_resource_authority`;
CREATE TABLE `base_resource_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authority_id` varchar(255) DEFAULT NULL,
  `authority_type` varchar(255) DEFAULT NULL,
  `resource_id` varchar(255) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `path` varchar(2000) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=660 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_resource_authority`
-- ----------------------------
BEGIN;
INSERT INTO `base_resource_authority` VALUES ('285', '1', 'group', '3', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('286', '1', 'group', '4', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('287', '1', 'group', '5', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('288', '1', 'group', '9', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('289', '1', 'group', '10', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('290', '1', 'group', '11', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('291', '1', 'group', '12', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('292', '1', 'group', '3', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('293', '1', 'group', '4', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('294', '1', 'group', '5', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('295', '1', 'group', '9', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('296', '1', 'group', '10', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('297', '1', 'group', '11', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('298', '1', 'group', '12', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('299', '1', 'group', '9', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('300', '1', 'group', '12', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('301', '1', 'group', '10', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('302', '1', 'group', '11', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('303', '1', 'group', '13', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('304', '1', 'group', '14', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('305', '1', 'group', '15', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('306', '1', 'group', '10', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('307', '1', 'group', '11', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('308', '1', 'group', '12', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('309', '1', 'group', '13', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('310', '1', 'group', '14', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('311', '1', 'group', '9', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('312', '1', 'group', '15', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('313', '1', 'group', '16', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('314', '1', 'group', '17', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('315', '1', 'group', '18', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('316', '1', 'group', '19', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('317', '1', 'group', '20', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('318', '1', 'group', '21', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('319', '1', 'group', '22', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('349', '4', 'group', '9', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('371', '1', 'group', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('372', '1', 'group', '24', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('373', '1', 'group', '27', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('374', '1', 'group', '28', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('375', '1', 'group', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('376', '1', 'group', '3', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('377', '1', 'group', '4', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('378', '1', 'group', '5', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('379', '1', 'group', '9', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('380', '1', 'group', '11', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('381', '1', 'group', '14', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('382', '1', 'group', '13', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('383', '1', 'group', '15', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('384', '1', 'group', '12', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('385', '1', 'group', '24', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('386', '1', 'group', '10', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('387', '1', 'group', '27', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('388', '1', 'group', '16', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('389', '1', 'group', '18', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('390', '1', 'group', '17', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('391', '1', 'group', '19', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('392', '1', 'group', '20', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('393', '1', 'group', '28', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('394', '1', 'group', '22', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('395', '1', 'group', '21', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('396', '4', 'group', '23', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('397', '4', 'group', '9', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('398', '4', 'group', '27', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('399', '4', 'group', '24', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('400', '4', 'group', '28', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('401', '1', 'group', '30', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('402', '1', 'group', '30', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('403', '1', 'group', '31', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('421', '1', 'group', '31', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('422', '1', 'group', '30', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('423', '4', 'group', '31', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('424', '4', 'group', '30', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('436', '1', 'group', '32', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('437', '1', 'group', '33', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('438', '1', 'group', '34', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('439', '1', 'group', '35', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('440', '4', 'group', '32', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('464', '1', 'group', '30', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('465', '1', 'group', '31', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('466', '1', 'group', '30', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('467', '1', 'group', '31', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('468', '1', 'group', '30', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('469', '1', 'group', '31', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('470', '1', 'group', '30', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('471', '1', 'group', '31', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('472', '1', 'group', '40', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('492', '1', 'group', '30', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('493', '1', 'group', '31', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('494', '1', 'group', '40', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('495', '1', 'group', '41', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('516', '4', 'group', '41', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('517', '4', 'group', '30', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('518', '4', 'group', '31', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('519', '4', 'group', '40', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('579', '1', 'group', '36', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('580', '1', 'group', '37', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('581', '1', 'group', '38', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('582', '1', 'group', '39', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('583', '1', 'group', '42', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('584', '1', 'group', '43', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('585', '1', 'group', '44', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('586', '1', 'group', '45', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('607', '1', 'group', '42', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('608', '1', 'group', '43', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('609', '1', 'group', '44', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('610', '1', 'group', '45', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('611', '4', 'group', '42', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('612', '4', 'group', '36', 'button', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('628', '4', 'group', '13', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('629', '4', 'group', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('630', '4', 'group', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('631', '4', 'group', '6', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('632', '4', 'group', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('633', '4', 'group', '8', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('634', '4', 'group', '27', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('635', '4', 'group', '9', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('636', '4', 'group', '24', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('637', '4', 'group', '22', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('638', '4', 'group', '23', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('639', '4', 'group', '25', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('640', '4', 'group', '26', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('641', '4', 'group', '28', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('642', '1', 'group', '13', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('643', '1', 'group', '5', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('644', '1', 'group', '1', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('645', '1', 'group', '6', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('646', '1', 'group', '7', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('647', '1', 'group', '8', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('648', '1', 'group', '27', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('649', '1', 'group', '9', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('650', '1', 'group', '24', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('651', '1', 'group', '22', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('652', '1', 'group', '23', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('653', '1', 'group', '25', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('654', '1', 'group', '26', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('655', '1', 'group', '28', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('656', '1', 'group', '14', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('657', '1', 'group', '20', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('658', '1', 'group', '17', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('659', '1', 'group', '18', 'menu', '-1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `base_user`
-- ----------------------------
DROP TABLE IF EXISTS `base_user`;
CREATE TABLE `base_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `tel_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `base_user`
-- ----------------------------
BEGIN;
INSERT INTO `base_user` VALUES ('1', 'admin', '$2a$12$qb.WpfxqnHHKYSdIPfmG7uV4Hz8pYa6fuheMvCp1FpO0TkJ1F7aZW', '管理员', '', null, '', null, '', '男', null, null, '', null, null, null, null, '2017-07-01 00:00:00', '1', 'admin', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null), ('2', 'test', '$2a$12$ZIBIZ/.zBlGql9E4aVWBle8DdDmL8rGSw7sea4.B1bTjoXTm36TMG', '测试账户', '', null, '', null, '', '男', null, null, '1234', null, null, null, null, '2017-07-08 22:14:53', 'null', 'null', 'null', null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `gate_client`
-- ----------------------------
DROP TABLE IF EXISTS `gate_client`;
CREATE TABLE `gate_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `locked` char(1) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `upd_time` datetime DEFAULT NULL,
  `upd_user` varchar(255) DEFAULT NULL,
  `upd_name` varchar(255) DEFAULT NULL,
  `upd_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `gate_client`
-- ----------------------------
BEGIN;
INSERT INTO `gate_client` VALUES ('1', 'admin-ui', '$2a$12$zmM.eBOEpcp7wUfo7ypBSemy23bcGSEESLlIreg1FhHWV3ADoap/q', 'admin-ui', '0', '', null, '', '', '', '2017-07-07 21:51:32', '1', '管理员', '0:0:0:0:0:0:0:1', '', '', '', '', '', '', '', ''), ('3', 'admin-api-gate', '$2a$12$03C/g.y/QHnDe8P90Oi3cOS1nViIb22EoRUoeK9cWALmv5NJi1sUC', 'admin-api-gate', '0', '', null, null, null, null, '2017-07-06 21:42:17', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null), ('4', 'gate-demo-client', '$2a$12$.4fRICu1r4AJbxeVkA0zN.GlrkiV64Cbl.R5bB8rWbVgFVfj8JDqu', 'gate-demo-client', '0', '', '2017-07-09 12:53:09', '1', '管理员', '0:0:0:0:0:0:0:1', null, null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `gate_client_service`
-- ----------------------------
DROP TABLE IF EXISTS `gate_client_service`;
CREATE TABLE `gate_client_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  `attr1` varchar(255) DEFAULT NULL,
  `attr2` varchar(255) DEFAULT NULL,
  `attr3` varchar(255) DEFAULT NULL,
  `attr4` varchar(255) DEFAULT NULL,
  `attr5` varchar(255) DEFAULT NULL,
  `attr6` varchar(255) DEFAULT NULL,
  `attr7` varchar(255) DEFAULT NULL,
  `attr8` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `gate_client_service`
-- ----------------------------
BEGIN;
INSERT INTO `gate_client_service` VALUES ('21', '46', '4', null, null, null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `gate_log`
-- ----------------------------
DROP TABLE IF EXISTS `gate_log`;
CREATE TABLE `gate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(255) DEFAULT NULL,
  `opt` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `crt_time` datetime DEFAULT NULL,
  `crt_user` varchar(255) DEFAULT NULL,
  `crt_name` varchar(255) DEFAULT NULL,
  `crt_host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `gate_log`
-- ----------------------------
BEGIN;
INSERT INTO `gate_log` VALUES ('11', '用户管理', '编辑', '/back/user', '2017-07-01 21:13:09', '1', 'admin', '0:0:0:0:0:0:0:1'), ('12', '客户端管理', '新增', '/back/gateClient', '2017-07-02 16:54:22', '1', '管理员', '0:0:0:0:0:0:0:1'), ('13', '客户端管理', '新增', '/back/gateClient', '2017-07-02 22:31:47', '1', '管理员', '0:0:0:0:0:0:0:1'), ('14', '客户端管理', '新增', '/back/gateClient', '2017-07-02 22:32:08', '1', '管理员', '0:0:0:0:0:0:0:1'), ('15', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 13:35:45', '1', '管理员', '0:0:0:0:0:0:0:1'), ('16', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 13:35:57', '1', '管理员', '0:0:0:0:0:0:0:1'), ('17', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 05:38:12', '1', '管理员', '0:0:0:0:0:0:0:1'), ('18', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 05:38:23', '1', '管理员', '0:0:0:0:0:0:0:1'), ('19', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 05:38:42', '1', '管理员', '0:0:0:0:0:0:0:1'), ('20', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 05:39:14', '1', '管理员', '0:0:0:0:0:0:0:1'), ('21', '菜单管理', '新增', '/back/menu', '2017-07-03 12:43:01', '1', '管理员', '0:0:0:0:0:0:0:1'), ('22', '角色组管理', '新增', '/back/group', '2017-07-03 12:43:29', '1', '管理员', '0:0:0:0:0:0:0:1'), ('23', '菜单管理', '新增元素', '/back/element', '2017-07-03 13:39:43', '1', '管理员', '0:0:0:0:0:0:0:1'), ('24', '菜单管理', '新增元素', '/back/element', '2017-07-03 13:43:17', '1', '管理员', '0:0:0:0:0:0:0:1'), ('25', '菜单管理', '新增元素', '/back/element', '2017-07-03 13:49:11', '1', '管理员', '0:0:0:0:0:0:0:1'), ('26', '角色组管理', '新增', '/back/group', '2017-07-03 13:52:00', '1', '管理员', '0:0:0:0:0:0:0:1'), ('27', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 14:08:58', '1', '管理员', '0:0:0:0:0:0:0:1'), ('28', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 14:56:28', '1', '管理员', '0:0:0:0:0:0:0:1'), ('29', '客户端管理', '编辑', '/back/gateClient', '2017-07-03 14:56:30', '1', '管理员', '0:0:0:0:0:0:0:1'), ('30', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:14:47', '1', '管理员', '0:0:0:0:0:0:0:1'), ('31', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:14:49', '1', '管理员', '0:0:0:0:0:0:0:1'), ('32', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:17:50', '1', '管理员', '0:0:0:0:0:0:0:1'), ('33', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:17:51', '1', '管理员', '0:0:0:0:0:0:0:1'), ('34', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:35:58', '1', '管理员', '0:0:0:0:0:0:0:1'), ('35', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:36:16', '1', '管理员', '0:0:0:0:0:0:0:1'), ('36', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:43:08', '1', '管理员', '0:0:0:0:0:0:0:1'), ('37', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:47:31', '1', '管理员', '0:0:0:0:0:0:0:1'), ('38', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:47:34', '1', '管理员', '0:0:0:0:0:0:0:1'), ('39', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:47:44', '1', '管理员', '0:0:0:0:0:0:0:1'), ('40', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:48:24', '1', '管理员', '0:0:0:0:0:0:0:1'), ('41', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:49:00', '1', '管理员', '0:0:0:0:0:0:0:1'), ('42', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:52:04', '1', '管理员', '0:0:0:0:0:0:0:1'), ('43', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 00:52:58', '1', '管理员', '0:0:0:0:0:0:0:1'), ('44', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:16:24', '1', '管理员', '0:0:0:0:0:0:0:1'), ('45', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:16:40', '1', '管理员', '0:0:0:0:0:0:0:1'), ('46', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:17:11', '1', '管理员', '0:0:0:0:0:0:0:1'), ('47', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:20:39', '1', '管理员', '0:0:0:0:0:0:0:1'), ('48', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:21:52', '1', '管理员', '0:0:0:0:0:0:0:1'), ('49', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:21:55', '1', '管理员', '0:0:0:0:0:0:0:1'), ('50', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:25:19', '1', '管理员', '0:0:0:0:0:0:0:1'), ('51', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:26:02', '1', '管理员', '0:0:0:0:0:0:0:1'), ('52', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:26:12', '1', '管理员', '0:0:0:0:0:0:0:1'), ('53', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:26:38', '1', '管理员', '0:0:0:0:0:0:0:1'), ('54', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:26:51', '1', '管理员', '0:0:0:0:0:0:0:1'), ('55', '客户端管理', '编辑', '/back/gateClient', '2017-07-04 05:29:01', '1', '管理员', '0:0:0:0:0:0:0:1'), ('56', '客户端管理', '编辑', '/back/gateClient', '2017-07-05 05:25:31', '1', '管理员', '0:0:0:0:0:0:0:1'), ('57', '客户端管理', '编辑', '/back/gateClient', '2017-07-05 05:30:13', '1', '管理员', '0:0:0:0:0:0:0:1'), ('58', '菜单管理', '编辑元素', '/back/element', '2017-07-05 05:33:39', '1', '管理员', '0:0:0:0:0:0:0:1'), ('59', '菜单管理', '编辑元素', '/back/element', '2017-07-05 05:38:10', '1', '管理员', '0:0:0:0:0:0:0:1'), ('60', '客户端管理', '编辑', '/back/gateClient', '2017-07-05 05:38:48', '1', '管理员', '0:0:0:0:0:0:0:1'), ('61', '菜单管理', '新增元素', '/back/element', '2017-07-05 05:42:16', '1', '管理员', '0:0:0:0:0:0:0:1'), ('62', '菜单管理', '删除元素', '/back/element', '2017-07-05 05:45:47', '1', '管理员', '0:0:0:0:0:0:0:1'), ('63', '菜单管理', '新增元素', '/back/element', '2017-07-06 05:46:26', '1', '管理员', '0:0:0:0:0:0:0:1'), ('64', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 05:47:28', '1', '管理员', '0:0:0:0:0:0:0:1'), ('65', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:40:16', '1', '管理员', '0:0:0:0:0:0:0:1'), ('66', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:42:04', '1', '管理员', '0:0:0:0:0:0:0:1'), ('67', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:42:13', '1', '管理员', '0:0:0:0:0:0:0:1'), ('68', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:42:16', '1', '管理员', '0:0:0:0:0:0:0:1'), ('69', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:43:28', '1', '管理员', '0:0:0:0:0:0:0:1'), ('70', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 13:43:39', '1', '管理员', '0:0:0:0:0:0:0:1'), ('71', '客户端管理', '删除', '/back/gateClient', '2017-07-06 13:44:25', '1', '管理员', '0:0:0:0:0:0:0:1'), ('72', '菜单管理', '编辑元素', '/back/element', '2017-07-06 15:13:12', '1', '管理员', '0:0:0:0:0:0:0:1'), ('73', '菜单管理', '编辑元素', '/back/element', '2017-07-06 15:13:33', '1', '管理员', '0:0:0:0:0:0:0:1'), ('74', '菜单管理', '编辑元素', '/back/element', '2017-07-06 15:13:40', '1', '管理员', '0:0:0:0:0:0:0:1'), ('75', '客户端管理', '编辑', '/back/gateClient', '2017-07-06 15:14:11', '1', '管理员', '0:0:0:0:0:0:0:1'), ('76', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:24', '1', '管理员', '0:0:0:0:0:0:0:1'), ('77', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:24', '1', '管理员', '0:0:0:0:0:0:0:1'), ('78', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:26', '1', '管理员', '0:0:0:0:0:0:0:1'), ('79', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:26', '1', '管理员', '0:0:0:0:0:0:0:1'), ('80', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:28', '1', '管理员', '0:0:0:0:0:0:0:1'), ('81', '角色组管理', '新增', '/back/group', '2017-07-07 01:43:28', '1', '管理员', '0:0:0:0:0:0:0:1'), ('82', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:37:27', '1', '管理员', '0:0:0:0:0:0:0:1'), ('83', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:40:04', '1', '管理员', '0:0:0:0:0:0:0:1'), ('84', '客户端管理', '新增', '/gate/client', '2017-07-07 02:40:11', '1', '管理员', '0:0:0:0:0:0:0:1'), ('85', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:40:16', '1', '管理员', '0:0:0:0:0:0:0:1'), ('86', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:40:18', '1', '管理员', '0:0:0:0:0:0:0:1'), ('87', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:40:19', '1', '管理员', '0:0:0:0:0:0:0:1'), ('88', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:40:34', '1', '管理员', '0:0:0:0:0:0:0:1'), ('89', '客户端管理', '编辑', '/gate/client', '2017-07-07 02:42:18', '1', '管理员', '0:0:0:0:0:0:0:1'), ('90', '客户端管理', '编辑', '/gate/client', '2017-07-07 03:26:47', '1', '管理员', '0:0:0:0:0:0:0:1'), ('91', '客户端管理', '编辑', '/gate/client', '2017-07-07 03:32:18', '1', '管理员', '0:0:0:0:0:0:0:1'), ('92', '客户端管理', '编辑', '/gate/client', '2017-07-07 03:32:23', '1', '管理员', '0:0:0:0:0:0:0:1'), ('93', '菜单管理', '新增元素', '/back/element', '2017-07-07 04:04:36', '1', '管理员', '0:0:0:0:0:0:0:1'), ('94', '菜单管理', '新增元素', '/back/element', '2017-07-07 04:06:20', '1', '管理员', '0:0:0:0:0:0:0:1'), ('95', '菜单管理', '新增元素', '/back/element', '2017-07-07 04:06:45', '1', '管理员', '0:0:0:0:0:0:0:1'), ('96', '菜单管理', '新增元素', '/back/element', '2017-07-07 04:07:07', '1', '管理员', '0:0:0:0:0:0:0:1'), ('97', '角色组管理', '新增', '/back/group', '2017-07-07 04:08:19', '1', '管理员', '0:0:0:0:0:0:0:1'), ('98', '角色组管理', '新增', '/back/group', '2017-07-07 04:08:19', '1', '管理员', '0:0:0:0:0:0:0:1'), ('99', '角色组管理', '新增', '/back/group', '2017-07-07 04:08:21', '1', '管理员', '0:0:0:0:0:0:0:1'), ('100', '服务注册', '编辑', '/gate/service', '2017-07-07 04:09:12', '1', '管理员', '0:0:0:0:0:0:0:1'), ('101', '服务注册', '编辑', '/gate/service', '2017-07-07 04:09:13', '1', '管理员', '0:0:0:0:0:0:0:1'), ('102', '服务注册', '编辑', '/gate/service', '2017-07-07 04:12:39', '1', '管理员', '0:0:0:0:0:0:0:1'), ('103', '角色组管理', '新增', '/back/group', '2017-07-07 04:13:04', '1', '管理员', '0:0:0:0:0:0:0:1'), ('104', '角色组管理', '新增', '/back/group', '2017-07-07 04:13:04', '1', '管理员', '0:0:0:0:0:0:0:1'), ('105', '客户端管理', '编辑', '/gate/client', '2017-07-07 05:48:42', '1', '管理员', '0:0:0:0:0:0:0:1'), ('106', '客户端管理', '编辑', '/gate/client', '2017-07-07 05:50:12', '1', '管理员', '0:0:0:0:0:0:0:1'), ('107', '客户端管理', '编辑', '/gate/client', '2017-07-07 05:51:27', '1', '管理员', '0:0:0:0:0:0:0:1'), ('108', '客户端管理', '编辑', '/gate/client', '2017-07-07 09:29:55', '1', '管理员', '0:0:0:0:0:0:0:1'), ('109', '客户端管理', '编辑', '/gate/client', '2017-07-07 09:30:01', '1', '管理员', '0:0:0:0:0:0:0:1'), ('110', '服务注册', '删除', '/gate/service', '2017-07-07 09:30:09', '1', '管理员', '0:0:0:0:0:0:0:1'), ('111', '服务注册', '删除', '/gate/service', '2017-07-07 09:30:15', '1', '管理员', '0:0:0:0:0:0:0:1'), ('112', '服务注册', '删除', '/gate/service', '2017-07-07 09:30:20', '1', '管理员', '0:0:0:0:0:0:0:1'), ('113', '服务注册', '删除', '/gate/service', '2017-07-07 09:30:27', '1', '管理员', '0:0:0:0:0:0:0:1'), ('114', '客户端管理', '编辑', '/gate/client', '2017-07-07 20:59:07', '1', '管理员', '0:0:0:0:0:0:0:1'), ('115', '客户端管理', '编辑', '/gate/client', '2017-07-07 20:59:10', '1', '管理员', '0:0:0:0:0:0:0:1'), ('116', '客户端管理', '编辑', '/gate/client', '2017-07-07 20:59:13', '1', '管理员', '0:0:0:0:0:0:0:1'), ('117', '角色组管理', '新增', '/back/group', '2017-07-07 21:11:40', '1', '管理员', '0:0:0:0:0:0:0:1'), ('118', '角色组管理', '新增', '/back/group', '2017-07-07 21:11:46', '1', '管理员', '0:0:0:0:0:0:0:1'), ('119', '角色组管理', '新增', '/back/group', '2017-07-07 21:11:48', '1', '管理员', '0:0:0:0:0:0:0:1'), ('120', '角色组管理', '新增', '/back/group', '2017-07-07 21:13:39', '1', '管理员', '0:0:0:0:0:0:0:1'), ('121', '客户端管理', '编辑', '/gate/client', '2017-07-07 21:51:24', '1', '管理员', '0:0:0:0:0:0:0:1'), ('122', '客户端管理', '编辑', '/gate/client', '2017-07-07 21:51:31', '1', '管理员', '0:0:0:0:0:0:0:1'), ('123', '服务注册', '编辑', '/gate/service', '2017-07-07 22:22:18', '1', '管理员', '0:0:0:0:0:0:0:1'), ('124', '服务注册', '删除', '/gate/service', '2017-07-07 22:22:28', '1', '管理员', '0:0:0:0:0:0:0:1'), ('125', '服务注册', '删除', '/gate/service', '2017-07-07 22:22:34', '1', '管理员', '0:0:0:0:0:0:0:1'), ('126', '服务注册', '删除', '/gate/service', '2017-07-07 22:22:39', '1', '管理员', '0:0:0:0:0:0:0:1'), ('127', '客户端管理', '编辑', '/gate/client', '2017-07-07 22:22:49', '1', '管理员', '0:0:0:0:0:0:0:1'), ('128', '菜单管理', '编辑', '/menu', '2017-07-09 09:14:02', '1', '管理员', '0:0:0:0:0:0:0:1'), ('129', '菜单管理', '编辑', '/menu', '2017-07-09 09:14:34', '1', '管理员', '0:0:0:0:0:0:0:1'), ('130', '菜单管理', '编辑', '/menu', '2017-07-09 09:26:06', '1', '管理员', '0:0:0:0:0:0:0:1'), ('131', '客户端管理', '编辑', '/client', '2017-07-09 11:59:24', '1', '管理员', '0:0:0:0:0:0:0:1'), ('132', '客户端管理', '编辑', '/client', '2017-07-09 12:34:52', '1', '管理员', '0:0:0:0:0:0:0:1'), ('133', '客户端管理', '新增', '/client', '2017-07-09 12:53:09', '1', '管理员', '0:0:0:0:0:0:0:1'), ('134', '菜单管理', '新增元素', '/element', '2017-07-09 12:55:15', '1', '管理员', '0:0:0:0:0:0:0:1'), ('135', '客户端管理', '编辑', '/client', '2017-07-09 12:56:27', '1', '管理员', '0:0:0:0:0:0:0:1'), ('136', '角色组管理', '新增', '/group', '2017-07-09 16:08:25', '1', '管理员', '0:0:0:0:0:0:0:1'), ('137', '菜单管理', '删除', '/menu', '2017-07-09 16:08:32', '1', '管理员', '0:0:0:0:0:0:0:1'), ('138', '菜单管理', '删除', '/menu', '2017-07-09 16:08:38', '1', '管理员', '0:0:0:0:0:0:0:1'), ('139', '菜单管理', '删除', '/menu', '2017-07-09 16:08:43', '1', '管理员', '0:0:0:0:0:0:0:1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
