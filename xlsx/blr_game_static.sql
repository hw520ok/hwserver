/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.11_3306
Source Server Version : 50171
Source Host           : 192.168.1.11:3306
Source Database       : blr_game_static

Target Server Type    : MYSQL
Target Server Version : 50171
File Encoding         : 65001

Date: 2018-04-23 22:26:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bond_type
-- ----------------------------
DROP TABLE IF EXISTS `bond_type`;
CREATE TABLE `bond_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写id表示羁绊序列id',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '填写表示为羁绊名称',
  `hero_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写id表示为角色表中id的索引号',
  `hero_atk` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '单位万，填写6000表示为攻击+60%，客户端百分比显示',
  `hero_def` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '单位万，填写6000表示为防御+60%，客户端百分比显示',
  `hero_hp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '单位万，填写6000表示为生命+60%，客户端百分比显示',
  `skill_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示为角色羁绊合体技能',
  `activate_type1` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写为激活需要类型，1=hero表角色，2=item表物品',
  `activate_id1` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写对应表中索引id，表示激活属性所需要的对象',
  `activate_type2` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写为激活需要类型，1=hero表角色，2=item表物品',
  `fetter_hero_id2` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写对应表中索引id，表示激活属性所需要的对象',
  `activate_type3` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写为激活需要类型，1=hero表角色，2=item表物品',
  `fetter_hero_id3` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写对应表中索引id，表示激活属性所需要的对象',
  `activate_type4` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写为激活需要类型，1=hero表角色，2=item表物品',
  `fetter_hero_id4` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写对应表中索引id，表示激活属性所需要的对象',
  PRIMARY KEY (`id`,`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄羁绊表';

-- ----------------------------
-- Records of bond_type
-- ----------------------------
INSERT INTO `bond_type` VALUES ('1', '情谊绵绵', '1001', '20', '20', '20', '0', '1', '1208', '0', '0', '0', '0', '0', '0');
INSERT INTO `bond_type` VALUES ('2', '势成水火', '1001', '15', '15', '15', '0', '1', '1202', '0', '0', '0', '0', '0', '0');
INSERT INTO `bond_type` VALUES ('4', '两小无猜', '1001', '17', '17', '0', '0', '1', '1209', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for breakthrough_type
-- ----------------------------
DROP TABLE IF EXISTS `breakthrough_type`;
CREATE TABLE `breakthrough_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT 'IDAAAABC，A表示关联hero_type表ID，B表示尊为，C表示突破+几，填写100010111表示武尊+1',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '填写为突破名称，策划自用',
  `leve` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写等级表示当前阶位需要满足角色等级',
  `consume1` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写7位数表示为物品，填写6位数表示为英雄',
  `consume_mun1` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '需要消耗的数量',
  `consume2` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写7位数表示为物品，填写6位数表示为英雄',
  `consume_mun2` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '需要消耗的数量',
  `consume3` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写7位数表示为物品，填写6位数表示为英雄',
  `consume_mun3` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '需要消耗的数量',
  `consume_money` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '突破当前阶位需要消耗金币',
  `increase_atk` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加角色攻击',
  `increase_def` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加角色防御',
  `increase_hp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加角色生命',
  `increase_skill_id1` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示增加天赋技能，调用技能表ID',
  `increase_skill_id2` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示增加天赋技能，调用技能表ID',
  `increase_skill_id3` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示增加天赋技能，调用技能表ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色突破表';

-- ----------------------------
-- Records of breakthrough_type
-- ----------------------------
INSERT INTO `breakthrough_type` VALUES ('10010101', '主角突破+1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `breakthrough_type` VALUES ('10010102', '主角突破+2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `breakthrough_type` VALUES ('10010103', '主角突破+3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `breakthrough_type` VALUES ('10010104', '主角突破+4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `breakthrough_type` VALUES ('10010105', '主角突破+5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `breakthrough_type` VALUES ('10010106', '主角突破+6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `breakthrough_type` VALUES ('10010107', '主角突破+7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `breakthrough_type` VALUES ('10010108', '主角突破+8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `breakthrough_type` VALUES ('10010109', '主角突破+9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `breakthrough_type` VALUES ('10010110', '主角突破+10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `breakthrough_type` VALUES ('10010111', '主角尊位+1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL DEFAULT '1' COMMENT '表示序列号id',
  `sys_id` int(11) NOT NULL DEFAULT '1' COMMENT '填写表示功能id',
  `data_1` int(11) NOT NULL DEFAULT '0' COMMENT '表示参数1',
  `data_2` int(11) NOT NULL DEFAULT '0' COMMENT '表示参数2',
  `data_3` int(11) NOT NULL DEFAULT '0' COMMENT '表示参数3',
  `data_4` int(11) NOT NULL DEFAULT '0' COMMENT '表示参数4',
  `data_5` int(11) NOT NULL COMMENT '表示参数5',
  `description` varchar(128) NOT NULL DEFAULT '' COMMENT '填写表示为功能描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '101', '20', '2500', '3000', '0', '0', '洗练功能成长属性获取，1=浮动值上限万分比，2=正值生成概率保底万分比，3=负值生成概率保底万分比');
INSERT INTO `config` VALUES ('2', '101', '200', '6000011', '1', '0', '0', '元宝洗练功能 1=元宝数量，2=道具id，3=道具数量');
INSERT INTO `config` VALUES ('3', '101', '20000', '6000011', '9', '0', '0', '铜币洗练功能 1=铜币数量，2=道具id，3=道具数量');
INSERT INTO `config` VALUES ('4', '101', '0', '6000012', '1', '0', '0', '特殊道具洗练 2=道具id，3=数量');
INSERT INTO `config` VALUES ('5', '101', '1', '50', '100', '0', '0', '洗练功能次数选择，1=默认选择次数，2=不同次数选择，3=不同次数选择');
INSERT INTO `config` VALUES ('6', '102', '0', '10', '10', '10', '10', '强化暴击概率，1=VIP等级激活概率，2=连升2级概率，3=连升3级概率，4=连升4级概率，5=连升5级概率，总概率为100');
INSERT INTO `config` VALUES ('7', '102', '1', '15', '15', '15', '15', '强化暴击概率，1=VIP等级激活概率，2=连升2级概率，3=连升3级概率，4=连升4级概率，5=连升5级概率，总概率为100');
INSERT INTO `config` VALUES ('8', '102', '3', '15', '25', '15', '15', '强化暴击概率，1=VIP等级激活概率，2=连升2级概率，3=连升3级概率，4=连升4级概率，5=连升5级概率，总概率为100');
INSERT INTO `config` VALUES ('9', '102', '5', '20', '20', '20', '20', '强化暴击概率，1=VIP等级激活概率，2=连升2级概率，3=连升3级概率，4=连升4级概率，5=连升5级概率，总概率为100');
INSERT INTO `config` VALUES ('10', '102', '7', '15', '15', '30', '25', '强化暴击概率，1=VIP等级激活概率，2=连升2级概率，3=连升3级概率，4=连升4级概率，5=连升5级概率，总概率为100');
INSERT INTO `config` VALUES ('101', '201', '0', '6000013', '1', '10', '172800', '星位抽奖设定，1=0，2=天位抽奖消耗道具，3=单抽消耗数量，4=10连消耗数量，5=0');
INSERT INTO `config` VALUES ('102', '202', '10', '6000013', '1', '10', '172800', '天位抽奖设定，1=必中次数，2=天位抽奖消耗道具，3=单抽消耗数量，4=10连消耗数量，5=免费1次刷新时间，单位秒');
INSERT INTO `config` VALUES ('103', '203', '10', '9999999', '128', '1280', '86400', '大天位抽奖设定，1=必中次数，2=天位抽奖消耗道具，3=单抽消耗数量，4=10连消耗数量，5=免费1次刷新时间，单位秒');

-- ----------------------------
-- Table structure for effect_type
-- ----------------------------
DROP TABLE IF EXISTS `effect_type`;
CREATE TABLE `effect_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '技能效果id',
  `type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '0：buff 1：立即结算',
  `target_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '0:根据技能目标 1：固定自身 2：己方全体 3：己方随机',
  `addi_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT ' 0:固定值 1:百分比',
  `addi_param` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'buff增益数值 固定值 或 万分比',
  `rate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '触发几率 万分比',
  `round` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'buff回合',
  `desc` varchar(128) NOT NULL DEFAULT '' COMMENT 'buff描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='技能额外效果类型';

-- ----------------------------
-- Records of effect_type
-- ----------------------------
INSERT INTO `effect_type` VALUES ('101', '0', '0', '1', '20', '10000', '3', '攻击力增加3回合');
INSERT INTO `effect_type` VALUES ('201', '0', '0', '1', '20', '10000', '3', '防御力增加3回合');
INSERT INTO `effect_type` VALUES ('301', '0', '0', '1', '20', '10000', '3', '血量值增加3回合');
INSERT INTO `effect_type` VALUES ('401', '0', '0', '1', '20', '10000', '3', '格挡值增加3回合');
INSERT INTO `effect_type` VALUES ('501', '0', '0', '1', '20', '10000', '3', '命中值增加3回合');
INSERT INTO `effect_type` VALUES ('601', '0', '0', '1', '20', '10000', '3', '暴击值增加3回合');
INSERT INTO `effect_type` VALUES ('701', '0', '0', '1', '20', '10000', '3', '治疗值增加3回合');
INSERT INTO `effect_type` VALUES ('801', '0', '0', '1', '20', '10000', '3', '治疗效果%增加3回合');
INSERT INTO `effect_type` VALUES ('901', '0', '0', '1', '20', '10000', '3', '伤害减免%增加3回合');
INSERT INTO `effect_type` VALUES ('1001', '0', '0', '1', '20', '10000', '1', '提升后排暴击率1回合');
INSERT INTO `effect_type` VALUES ('1101', '0', '0', '1', '20', '10000', '30', '下次伤害增加');
INSERT INTO `effect_type` VALUES ('1201', '0', '0', '0', '20', '10000', '30', '必定闪避');
INSERT INTO `effect_type` VALUES ('1301', '0', '0', '0', '8000', '10000', '2', '对某一目标暴击率提高80%');
INSERT INTO `effect_type` VALUES ('1401', '0', '0', '0', '0', '10000', '2', '无敌');
INSERT INTO `effect_type` VALUES ('1501', '0', '0', '0', '0', '10000', '2', '不死');
INSERT INTO `effect_type` VALUES ('1701', '0', '0', '0', '1', '10000', '1', '【沉默】1回合');
INSERT INTO `effect_type` VALUES ('1801', '0', '0', '0', '1', '10000', '1', '【麻痹】1回合');
INSERT INTO `effect_type` VALUES ('1901', '0', '0', '0', '1', '10000', '1', '【眩晕】1回合');
INSERT INTO `effect_type` VALUES ('2001', '0', '0', '0', '50', '10000', '2', '使目标【流血】2回合');
INSERT INTO `effect_type` VALUES ('2101', '0', '0', '1', '10', '10000', '2', '降低目标被治疗效果%');
INSERT INTO `effect_type` VALUES ('2201', '0', '0', '1', '10', '10000', '2', '降低目标攻击力');
INSERT INTO `effect_type` VALUES ('2301', '0', '0', '1', '10', '10000', '2', '使目标受到伤害增加');
INSERT INTO `effect_type` VALUES ('2401', '1', '0', '1', '0', '10000', '0', '忽略目标防御');
INSERT INTO `effect_type` VALUES ('2501', '1', '0', '1', '0', '10000', '0', '必杀');
INSERT INTO `effect_type` VALUES ('2601', '1', '0', '0', '20', '10000', '0', '本次攻击命中提高');
INSERT INTO `effect_type` VALUES ('2701', '1', '0', '0', '20', '10000', '0', '本次攻击破击提高');
INSERT INTO `effect_type` VALUES ('2801', '1', '0', '0', '20', '10000', '0', '本次攻击暴击提高');
INSERT INTO `effect_type` VALUES ('2901', '1', '0', '0', '0', '10000', '1', '增加一回合行动');
INSERT INTO `effect_type` VALUES ('3001', '1', '0', '1', '20', '10000', '0', '损血最多的友方回复血量');
INSERT INTO `effect_type` VALUES ('3101', '1', '0', '1', '10', '10000', '0', '为自身恢复血量');
INSERT INTO `effect_type` VALUES ('3201', '1', '0', '0', '30', '10000', '0', '暴击额外增加怒气');
INSERT INTO `effect_type` VALUES ('3301', '1', '0', '1', '2000', '10000', '0', '斩杀血量低于xx(万分比)');
INSERT INTO `effect_type` VALUES ('3401', '1', '0', '1', '0', '10000', '0', '继续攻击下一目标');
INSERT INTO `effect_type` VALUES ('3501', '1', '0', '1', '2000', '10000', '0', '反弹伤害');
INSERT INTO `effect_type` VALUES ('3601', '1', '0', '1', '2000', '10000', '0', '造成的伤害提高一定的百分比');
INSERT INTO `effect_type` VALUES ('3801', '1', '0', '1', '2000', '10000', '0', '受到的伤害减少一定的百分比');
INSERT INTO `effect_type` VALUES ('3901', '1', '0', '1', '2000', '10000', '0', '回复血量增加xx%');
INSERT INTO `effect_type` VALUES ('4001', '1', '0', '1', '2500', '10000', '0', '全队增加2500生命值');

-- ----------------------------
-- Table structure for equip_consume_type
-- ----------------------------
DROP TABLE IF EXISTS `equip_consume_type`;
CREATE TABLE `equip_consume_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写表示强化等级',
  `quality_cost_1` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=0 且 < 3的品质，当前等级消耗',
  `quality_cost_2` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=3 且 < 6 的品质',
  `quality_cost_3` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=6 且 < 10 的品质',
  `quality_cost_4` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=10 且 < 13 的品质',
  `quality_cost_5` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=13 且 < 15 的品质',
  `quality_cost_6` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=15 且 < 18 的品质',
  `quality_cost_7` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=18 且 =< 20 的品质',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='装备强化消耗表';

-- ----------------------------
-- Records of equip_consume_type
-- ----------------------------
INSERT INTO `equip_consume_type` VALUES ('10000', '10', '20', '30', '40', '50', '60', '70');
INSERT INTO `equip_consume_type` VALUES ('10001', '11', '22', '33', '44', '55', '66', '77');
INSERT INTO `equip_consume_type` VALUES ('10002', '12', '24', '36', '48', '60', '72', '84');
INSERT INTO `equip_consume_type` VALUES ('10003', '13', '26', '39', '52', '65', '78', '91');
INSERT INTO `equip_consume_type` VALUES ('10004', '14', '28', '42', '56', '70', '84', '98');
INSERT INTO `equip_consume_type` VALUES ('10005', '15', '30', '45', '60', '75', '90', '105');
INSERT INTO `equip_consume_type` VALUES ('10006', '16', '32', '48', '64', '80', '96', '112');
INSERT INTO `equip_consume_type` VALUES ('10007', '17', '34', '51', '68', '85', '102', '119');
INSERT INTO `equip_consume_type` VALUES ('10008', '18', '36', '54', '72', '90', '108', '126');
INSERT INTO `equip_consume_type` VALUES ('10009', '19', '38', '57', '76', '95', '114', '133');
INSERT INTO `equip_consume_type` VALUES ('10010', '20', '40', '60', '80', '100', '120', '140');
INSERT INTO `equip_consume_type` VALUES ('10011', '21', '42', '63', '84', '105', '126', '147');
INSERT INTO `equip_consume_type` VALUES ('10012', '22', '44', '66', '88', '110', '132', '154');
INSERT INTO `equip_consume_type` VALUES ('10013', '23', '46', '69', '92', '115', '138', '161');
INSERT INTO `equip_consume_type` VALUES ('10014', '24', '48', '72', '96', '120', '144', '168');
INSERT INTO `equip_consume_type` VALUES ('10015', '25', '50', '75', '100', '125', '150', '175');
INSERT INTO `equip_consume_type` VALUES ('10016', '26', '52', '78', '104', '130', '156', '182');
INSERT INTO `equip_consume_type` VALUES ('10017', '27', '54', '81', '108', '135', '162', '189');
INSERT INTO `equip_consume_type` VALUES ('10018', '28', '56', '84', '112', '140', '168', '196');
INSERT INTO `equip_consume_type` VALUES ('10019', '29', '58', '87', '116', '145', '174', '203');
INSERT INTO `equip_consume_type` VALUES ('10020', '30', '60', '90', '120', '150', '180', '210');
INSERT INTO `equip_consume_type` VALUES ('20000', '100', '200', '300', '400', '500', '600', '700');
INSERT INTO `equip_consume_type` VALUES ('20001', '110', '220', '330', '440', '550', '660', '770');
INSERT INTO `equip_consume_type` VALUES ('20002', '120', '240', '360', '480', '600', '720', '840');
INSERT INTO `equip_consume_type` VALUES ('20003', '130', '260', '390', '520', '650', '780', '910');
INSERT INTO `equip_consume_type` VALUES ('20004', '140', '280', '420', '560', '700', '840', '980');
INSERT INTO `equip_consume_type` VALUES ('20005', '150', '300', '450', '600', '750', '900', '1050');
INSERT INTO `equip_consume_type` VALUES ('20006', '160', '320', '480', '640', '800', '960', '1120');
INSERT INTO `equip_consume_type` VALUES ('20007', '170', '340', '510', '680', '850', '1020', '1190');
INSERT INTO `equip_consume_type` VALUES ('20008', '180', '360', '540', '720', '900', '1080', '1260');
INSERT INTO `equip_consume_type` VALUES ('20009', '190', '380', '570', '760', '950', '1140', '1330');
INSERT INTO `equip_consume_type` VALUES ('20010', '200', '400', '600', '800', '1000', '1200', '1400');
INSERT INTO `equip_consume_type` VALUES ('20011', '210', '420', '630', '840', '1050', '1260', '1470');
INSERT INTO `equip_consume_type` VALUES ('20012', '220', '440', '660', '880', '1100', '1320', '1540');
INSERT INTO `equip_consume_type` VALUES ('20013', '230', '460', '690', '920', '1150', '1380', '1610');
INSERT INTO `equip_consume_type` VALUES ('20014', '240', '480', '720', '960', '1200', '1440', '1680');
INSERT INTO `equip_consume_type` VALUES ('20015', '250', '500', '750', '1000', '1250', '1500', '1750');
INSERT INTO `equip_consume_type` VALUES ('20016', '260', '520', '780', '1040', '1300', '1560', '1820');
INSERT INTO `equip_consume_type` VALUES ('20017', '270', '540', '810', '1080', '1350', '1620', '1890');
INSERT INTO `equip_consume_type` VALUES ('20018', '280', '560', '840', '1120', '1400', '1680', '1960');
INSERT INTO `equip_consume_type` VALUES ('20019', '290', '580', '870', '1160', '1450', '1740', '2030');
INSERT INTO `equip_consume_type` VALUES ('20020', '300', '600', '900', '1200', '1500', '1800', '2100');
INSERT INTO `equip_consume_type` VALUES ('30000', '1000', '2000', '3000', '4000', '5000', '6000', '7000');
INSERT INTO `equip_consume_type` VALUES ('30001', '1100', '2200', '3300', '4400', '5500', '6600', '7700');
INSERT INTO `equip_consume_type` VALUES ('30002', '1200', '2400', '3600', '4800', '6000', '7200', '8400');
INSERT INTO `equip_consume_type` VALUES ('30003', '1300', '2600', '3900', '5200', '6500', '7800', '9100');
INSERT INTO `equip_consume_type` VALUES ('30004', '1400', '2800', '4200', '5600', '7000', '8400', '9800');
INSERT INTO `equip_consume_type` VALUES ('30005', '1500', '3000', '4500', '6000', '7500', '9000', '10500');
INSERT INTO `equip_consume_type` VALUES ('30006', '1600', '3200', '4800', '6400', '8000', '9600', '11200');
INSERT INTO `equip_consume_type` VALUES ('30007', '1700', '3400', '5100', '6800', '8500', '10200', '11900');
INSERT INTO `equip_consume_type` VALUES ('30008', '1800', '3600', '5400', '7200', '9000', '10800', '12600');
INSERT INTO `equip_consume_type` VALUES ('30009', '1900', '3800', '5700', '7600', '9500', '11400', '13300');
INSERT INTO `equip_consume_type` VALUES ('30010', '2000', '4000', '6000', '8000', '10000', '12000', '14000');
INSERT INTO `equip_consume_type` VALUES ('30011', '2100', '4200', '6300', '8400', '10500', '12600', '14700');
INSERT INTO `equip_consume_type` VALUES ('30012', '2200', '4400', '6600', '8800', '11000', '13200', '15400');
INSERT INTO `equip_consume_type` VALUES ('30013', '2300', '4600', '6900', '9200', '11500', '13800', '16100');
INSERT INTO `equip_consume_type` VALUES ('30014', '2400', '4800', '7200', '9600', '12000', '14400', '16800');
INSERT INTO `equip_consume_type` VALUES ('30015', '2500', '5000', '7500', '10000', '12500', '15000', '17500');
INSERT INTO `equip_consume_type` VALUES ('30016', '2600', '5200', '7800', '10400', '13000', '15600', '18200');
INSERT INTO `equip_consume_type` VALUES ('30017', '2700', '5400', '8100', '10800', '13500', '16200', '18900');
INSERT INTO `equip_consume_type` VALUES ('30018', '2800', '5600', '8400', '11200', '14000', '16800', '19600');
INSERT INTO `equip_consume_type` VALUES ('30019', '2900', '5800', '8700', '11600', '14500', '17400', '20300');
INSERT INTO `equip_consume_type` VALUES ('30020', '3000', '6000', '9000', '12000', '15000', '18000', '21000');
INSERT INTO `equip_consume_type` VALUES ('40000', '10', '20', '30', '40', '50', '60', '70');
INSERT INTO `equip_consume_type` VALUES ('40001', '11', '22', '33', '44', '55', '66', '77');
INSERT INTO `equip_consume_type` VALUES ('40002', '12', '24', '36', '48', '60', '72', '84');
INSERT INTO `equip_consume_type` VALUES ('40003', '13', '26', '39', '52', '65', '78', '91');
INSERT INTO `equip_consume_type` VALUES ('40004', '14', '28', '42', '56', '70', '84', '98');
INSERT INTO `equip_consume_type` VALUES ('40005', '15', '30', '45', '60', '75', '90', '105');
INSERT INTO `equip_consume_type` VALUES ('40006', '16', '32', '48', '64', '80', '96', '112');
INSERT INTO `equip_consume_type` VALUES ('40007', '17', '34', '51', '68', '85', '102', '119');
INSERT INTO `equip_consume_type` VALUES ('40008', '18', '36', '54', '72', '90', '108', '126');
INSERT INTO `equip_consume_type` VALUES ('40009', '19', '38', '57', '76', '95', '114', '133');
INSERT INTO `equip_consume_type` VALUES ('40010', '20', '40', '60', '80', '100', '120', '140');
INSERT INTO `equip_consume_type` VALUES ('40011', '21', '42', '63', '84', '105', '126', '147');
INSERT INTO `equip_consume_type` VALUES ('40012', '22', '44', '66', '88', '110', '132', '154');
INSERT INTO `equip_consume_type` VALUES ('40013', '23', '46', '69', '92', '115', '138', '161');
INSERT INTO `equip_consume_type` VALUES ('40014', '24', '48', '72', '96', '120', '144', '168');
INSERT INTO `equip_consume_type` VALUES ('40015', '25', '50', '75', '100', '125', '150', '175');
INSERT INTO `equip_consume_type` VALUES ('40016', '26', '52', '78', '104', '130', '156', '182');
INSERT INTO `equip_consume_type` VALUES ('40017', '27', '54', '81', '108', '135', '162', '189');
INSERT INTO `equip_consume_type` VALUES ('40018', '28', '56', '84', '112', '140', '168', '196');
INSERT INTO `equip_consume_type` VALUES ('40019', '29', '58', '87', '116', '145', '174', '203');
INSERT INTO `equip_consume_type` VALUES ('40020', '30', '60', '90', '120', '150', '180', '210');
INSERT INTO `equip_consume_type` VALUES ('50000', '10', '20', '30', '40', '50', '60', '70');
INSERT INTO `equip_consume_type` VALUES ('50001', '11', '22', '33', '44', '55', '66', '77');
INSERT INTO `equip_consume_type` VALUES ('50002', '12', '24', '36', '48', '60', '72', '84');
INSERT INTO `equip_consume_type` VALUES ('50003', '13', '26', '39', '52', '65', '78', '91');
INSERT INTO `equip_consume_type` VALUES ('50004', '14', '28', '42', '56', '70', '84', '98');
INSERT INTO `equip_consume_type` VALUES ('50005', '15', '30', '45', '60', '75', '90', '105');
INSERT INTO `equip_consume_type` VALUES ('50006', '16', '32', '48', '64', '80', '96', '112');
INSERT INTO `equip_consume_type` VALUES ('50007', '17', '34', '51', '68', '85', '102', '119');
INSERT INTO `equip_consume_type` VALUES ('50008', '18', '36', '54', '72', '90', '108', '126');
INSERT INTO `equip_consume_type` VALUES ('50009', '19', '38', '57', '76', '95', '114', '133');
INSERT INTO `equip_consume_type` VALUES ('50010', '20', '40', '60', '80', '100', '120', '140');
INSERT INTO `equip_consume_type` VALUES ('50011', '21', '42', '63', '84', '105', '126', '147');
INSERT INTO `equip_consume_type` VALUES ('50012', '22', '44', '66', '88', '110', '132', '154');
INSERT INTO `equip_consume_type` VALUES ('50013', '23', '46', '69', '92', '115', '138', '161');
INSERT INTO `equip_consume_type` VALUES ('50014', '24', '48', '72', '96', '120', '144', '168');
INSERT INTO `equip_consume_type` VALUES ('50015', '25', '50', '75', '100', '125', '150', '175');
INSERT INTO `equip_consume_type` VALUES ('50016', '26', '52', '78', '104', '130', '156', '182');
INSERT INTO `equip_consume_type` VALUES ('50017', '27', '54', '81', '108', '135', '162', '189');
INSERT INTO `equip_consume_type` VALUES ('50018', '28', '56', '84', '112', '140', '168', '196');
INSERT INTO `equip_consume_type` VALUES ('50019', '29', '58', '87', '116', '145', '174', '203');
INSERT INTO `equip_consume_type` VALUES ('50020', '30', '60', '90', '120', '150', '180', '210');
INSERT INTO `equip_consume_type` VALUES ('60000', '10', '20', '30', '40', '50', '60', '70');
INSERT INTO `equip_consume_type` VALUES ('60001', '11', '22', '33', '44', '55', '66', '77');
INSERT INTO `equip_consume_type` VALUES ('60002', '12', '24', '36', '48', '60', '72', '84');
INSERT INTO `equip_consume_type` VALUES ('60003', '13', '26', '39', '52', '65', '78', '91');
INSERT INTO `equip_consume_type` VALUES ('60004', '14', '28', '42', '56', '70', '84', '98');
INSERT INTO `equip_consume_type` VALUES ('60005', '15', '30', '45', '60', '75', '90', '105');
INSERT INTO `equip_consume_type` VALUES ('60006', '16', '32', '48', '64', '80', '96', '112');
INSERT INTO `equip_consume_type` VALUES ('60007', '17', '34', '51', '68', '85', '102', '119');
INSERT INTO `equip_consume_type` VALUES ('60008', '18', '36', '54', '72', '90', '108', '126');
INSERT INTO `equip_consume_type` VALUES ('60009', '19', '38', '57', '76', '95', '114', '133');
INSERT INTO `equip_consume_type` VALUES ('60010', '20', '40', '60', '80', '100', '120', '140');
INSERT INTO `equip_consume_type` VALUES ('60011', '21', '42', '63', '84', '105', '126', '147');
INSERT INTO `equip_consume_type` VALUES ('60012', '22', '44', '66', '88', '110', '132', '154');
INSERT INTO `equip_consume_type` VALUES ('60013', '23', '46', '69', '92', '115', '138', '161');
INSERT INTO `equip_consume_type` VALUES ('60014', '24', '48', '72', '96', '120', '144', '168');
INSERT INTO `equip_consume_type` VALUES ('60015', '25', '50', '75', '100', '125', '150', '175');
INSERT INTO `equip_consume_type` VALUES ('60016', '26', '52', '78', '104', '130', '156', '182');
INSERT INTO `equip_consume_type` VALUES ('60017', '27', '54', '81', '108', '135', '162', '189');
INSERT INTO `equip_consume_type` VALUES ('60018', '28', '56', '84', '112', '140', '168', '196');
INSERT INTO `equip_consume_type` VALUES ('60019', '29', '58', '87', '116', '145', '174', '203');
INSERT INTO `equip_consume_type` VALUES ('60020', '30', '60', '90', '120', '150', '180', '210');

-- ----------------------------
-- Table structure for equip_echo_type
-- ----------------------------
DROP TABLE IF EXISTS `equip_echo_type`;
CREATE TABLE `equip_echo_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '系统序列编号',
  `type` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写1，表示为锻造共鸣；填写2，表示升星共鸣',
  `level` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写1，表示装备共鸣1级',
  `atk` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '激活共鸣时增加攻击力',
  `def` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '激活共鸣时增加防御力',
  `hp` int(11) unsigned NOT NULL COMMENT '共鸣时激活增加生命值',
  `atk_percen` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写1000，单位万分比，客户端显示为攻击力+10%',
  `def_percen` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写1000，单位万分比，客户端显示为防御力+10%',
  `hp_percen` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写1000，单位万分比，客户端显示为生命值+10%',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='装备共鸣表';

-- ----------------------------
-- Records of equip_echo_type
-- ----------------------------
INSERT INTO `equip_echo_type` VALUES ('1', '1', '1', '100', '200', '300', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('2', '1', '2', '200', '400', '600', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('3', '1', '3', '300', '600', '900', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('4', '1', '4', '400', '800', '1200', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('5', '1', '5', '500', '1000', '1500', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('6', '1', '6', '600', '1200', '1800', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('7', '1', '7', '700', '1400', '2100', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('8', '1', '8', '800', '1600', '2400', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('9', '1', '9', '900', '1800', '2700', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('10', '1', '10', '1000', '2000', '3000', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('11', '1', '11', '1100', '2200', '3300', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('12', '1', '12', '1200', '2400', '3600', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('13', '1', '13', '1300', '2600', '3900', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('14', '1', '14', '1400', '2800', '4200', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('15', '1', '15', '1500', '3000', '4500', '0', '0', '0');
INSERT INTO `equip_echo_type` VALUES ('16', '2', '16', '0', '0', '0', '100', '100', '100');
INSERT INTO `equip_echo_type` VALUES ('17', '2', '17', '0', '0', '0', '200', '200', '200');
INSERT INTO `equip_echo_type` VALUES ('18', '2', '18', '0', '0', '0', '300', '300', '300');
INSERT INTO `equip_echo_type` VALUES ('19', '2', '19', '0', '0', '0', '400', '400', '400');
INSERT INTO `equip_echo_type` VALUES ('20', '2', '20', '0', '0', '0', '500', '500', '500');
INSERT INTO `equip_echo_type` VALUES ('21', '2', '21', '0', '0', '0', '600', '600', '600');
INSERT INTO `equip_echo_type` VALUES ('22', '2', '22', '0', '0', '0', '700', '700', '700');
INSERT INTO `equip_echo_type` VALUES ('23', '2', '23', '0', '0', '0', '800', '800', '800');
INSERT INTO `equip_echo_type` VALUES ('24', '2', '24', '0', '0', '0', '900', '900', '900');
INSERT INTO `equip_echo_type` VALUES ('25', '2', '25', '0', '0', '0', '1000', '1000', '1000');
INSERT INTO `equip_echo_type` VALUES ('26', '2', '26', '0', '0', '0', '1100', '1100', '1100');
INSERT INTO `equip_echo_type` VALUES ('27', '2', '27', '0', '0', '0', '1200', '1200', '1200');
INSERT INTO `equip_echo_type` VALUES ('28', '2', '28', '0', '0', '0', '1300', '1300', '1300');
INSERT INTO `equip_echo_type` VALUES ('29', '2', '29', '0', '0', '0', '1400', '1400', '1400');
INSERT INTO `equip_echo_type` VALUES ('30', '2', '30', '0', '0', '0', '1500', '1500', '1500');

-- ----------------------------
-- Table structure for equip_forge_type
-- ----------------------------
DROP TABLE IF EXISTS `equip_forge_type`;
CREATE TABLE `equip_forge_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '10001=1开头表示装备衣服部位，0001表示装备当前锻造等级',
  `quality` int(11) unsigned NOT NULL DEFAULT '0',
  `hp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '当前锻造等级生命值加成',
  `atk` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '当前锻造等级的攻击加成',
  `def` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '当前锻造等级的防御加成',
  `streng_level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '配置10，表示当前锻造等级需要装备强化10级可锻造',
  `exp` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '填写表示满足该经验可升级至当前等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='装备锻造表';

-- ----------------------------
-- Records of equip_forge_type
-- ----------------------------
INSERT INTO `equip_forge_type` VALUES ('10000', '1', '0', '0', '0', '0', '101');
INSERT INTO `equip_forge_type` VALUES ('10001', '1', '151', '30', '40', '1', '151');
INSERT INTO `equip_forge_type` VALUES ('10002', '1', '201', '40', '50', '2', '201');
INSERT INTO `equip_forge_type` VALUES ('10003', '1', '251', '50', '60', '3', '251');
INSERT INTO `equip_forge_type` VALUES ('10004', '1', '301', '60', '70', '4', '301');
INSERT INTO `equip_forge_type` VALUES ('10005', '1', '351', '70', '80', '5', '351');
INSERT INTO `equip_forge_type` VALUES ('10006', '1', '401', '80', '90', '6', '401');
INSERT INTO `equip_forge_type` VALUES ('10007', '1', '451', '90', '100', '7', '451');
INSERT INTO `equip_forge_type` VALUES ('10008', '1', '501', '100', '110', '8', '501');
INSERT INTO `equip_forge_type` VALUES ('10009', '1', '551', '110', '120', '9', '551');
INSERT INTO `equip_forge_type` VALUES ('10010', '1', '601', '120', '130', '10', '601');
INSERT INTO `equip_forge_type` VALUES ('20000', '1', '0', '0', '0', '0', '102');
INSERT INTO `equip_forge_type` VALUES ('20001', '1', '152', '30', '40', '1', '152');
INSERT INTO `equip_forge_type` VALUES ('20002', '1', '202', '40', '50', '2', '202');
INSERT INTO `equip_forge_type` VALUES ('20003', '1', '252', '50', '60', '3', '252');
INSERT INTO `equip_forge_type` VALUES ('20004', '1', '302', '60', '70', '4', '302');
INSERT INTO `equip_forge_type` VALUES ('20005', '1', '352', '70', '80', '5', '352');
INSERT INTO `equip_forge_type` VALUES ('20006', '1', '402', '80', '90', '6', '402');
INSERT INTO `equip_forge_type` VALUES ('20007', '1', '452', '90', '100', '7', '452');
INSERT INTO `equip_forge_type` VALUES ('20008', '1', '502', '100', '110', '8', '502');
INSERT INTO `equip_forge_type` VALUES ('20009', '1', '552', '110', '120', '9', '552');
INSERT INTO `equip_forge_type` VALUES ('20010', '1', '602', '120', '130', '10', '602');
INSERT INTO `equip_forge_type` VALUES ('30000', '1', '0', '0', '0', '0', '103');
INSERT INTO `equip_forge_type` VALUES ('30001', '1', '153', '30', '40', '1', '153');
INSERT INTO `equip_forge_type` VALUES ('30002', '1', '203', '40', '50', '2', '203');
INSERT INTO `equip_forge_type` VALUES ('30003', '1', '253', '50', '60', '3', '253');
INSERT INTO `equip_forge_type` VALUES ('30004', '1', '303', '60', '70', '4', '303');
INSERT INTO `equip_forge_type` VALUES ('30005', '1', '353', '70', '80', '5', '353');
INSERT INTO `equip_forge_type` VALUES ('30006', '1', '403', '80', '90', '6', '403');
INSERT INTO `equip_forge_type` VALUES ('30007', '1', '453', '90', '100', '7', '453');
INSERT INTO `equip_forge_type` VALUES ('30008', '1', '503', '100', '110', '8', '503');
INSERT INTO `equip_forge_type` VALUES ('30009', '1', '553', '110', '120', '9', '553');
INSERT INTO `equip_forge_type` VALUES ('30010', '1', '603', '120', '130', '10', '603');
INSERT INTO `equip_forge_type` VALUES ('40000', '1', '0', '0', '0', '0', '104');
INSERT INTO `equip_forge_type` VALUES ('40001', '1', '154', '30', '40', '1', '154');
INSERT INTO `equip_forge_type` VALUES ('40002', '1', '204', '40', '50', '2', '204');
INSERT INTO `equip_forge_type` VALUES ('40003', '1', '254', '50', '60', '3', '254');
INSERT INTO `equip_forge_type` VALUES ('40004', '1', '304', '60', '70', '4', '304');
INSERT INTO `equip_forge_type` VALUES ('40005', '1', '354', '70', '80', '5', '354');
INSERT INTO `equip_forge_type` VALUES ('40006', '1', '404', '80', '90', '6', '404');
INSERT INTO `equip_forge_type` VALUES ('40007', '1', '454', '90', '100', '7', '454');
INSERT INTO `equip_forge_type` VALUES ('40008', '1', '504', '100', '110', '8', '504');
INSERT INTO `equip_forge_type` VALUES ('40009', '1', '554', '110', '120', '9', '554');
INSERT INTO `equip_forge_type` VALUES ('40010', '1', '604', '120', '130', '10', '604');
INSERT INTO `equip_forge_type` VALUES ('50000', '1', '0', '0', '0', '0', '105');
INSERT INTO `equip_forge_type` VALUES ('50001', '1', '155', '30', '40', '1', '155');
INSERT INTO `equip_forge_type` VALUES ('50002', '1', '205', '40', '50', '2', '205');
INSERT INTO `equip_forge_type` VALUES ('50003', '1', '255', '50', '60', '3', '255');
INSERT INTO `equip_forge_type` VALUES ('50004', '1', '305', '60', '70', '4', '305');
INSERT INTO `equip_forge_type` VALUES ('50005', '1', '355', '70', '80', '5', '355');
INSERT INTO `equip_forge_type` VALUES ('50006', '1', '405', '80', '90', '6', '405');
INSERT INTO `equip_forge_type` VALUES ('50007', '1', '455', '90', '100', '7', '455');
INSERT INTO `equip_forge_type` VALUES ('50008', '1', '505', '100', '110', '8', '505');
INSERT INTO `equip_forge_type` VALUES ('50009', '1', '555', '110', '120', '9', '555');
INSERT INTO `equip_forge_type` VALUES ('50010', '1', '605', '120', '130', '10', '605');
INSERT INTO `equip_forge_type` VALUES ('60000', '1', '0', '0', '0', '0', '106');
INSERT INTO `equip_forge_type` VALUES ('60001', '1', '156', '30', '40', '1', '156');
INSERT INTO `equip_forge_type` VALUES ('60002', '1', '206', '40', '50', '2', '206');
INSERT INTO `equip_forge_type` VALUES ('60003', '1', '256', '50', '60', '3', '256');
INSERT INTO `equip_forge_type` VALUES ('60004', '1', '306', '60', '70', '4', '306');
INSERT INTO `equip_forge_type` VALUES ('60005', '1', '356', '70', '80', '5', '356');
INSERT INTO `equip_forge_type` VALUES ('60006', '1', '406', '80', '90', '6', '406');
INSERT INTO `equip_forge_type` VALUES ('60007', '1', '456', '90', '100', '7', '456');
INSERT INTO `equip_forge_type` VALUES ('60008', '1', '506', '100', '110', '8', '506');
INSERT INTO `equip_forge_type` VALUES ('60009', '1', '556', '110', '120', '9', '556');
INSERT INTO `equip_forge_type` VALUES ('60010', '1', '606', '120', '130', '10', '606');

-- ----------------------------
-- Table structure for equip_star_type
-- ----------------------------
DROP TABLE IF EXISTS `equip_star_type`;
CREATE TABLE `equip_star_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '10001' COMMENT '10001=1开头表示装备衣服部位，0001表示装备当前升星等级',
  `quality` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示资质',
  `streng_level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写10，表示当前升星等级需要装备强化等级10级',
  `equip_num` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '升星需求同品质同部位的装备数量',
  `money_cost` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '金币消耗',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='装备升星表';

-- ----------------------------
-- Records of equip_star_type
-- ----------------------------
INSERT INTO `equip_star_type` VALUES ('10000', '1', '0', '1', '10');
INSERT INTO `equip_star_type` VALUES ('10001', '1', '2', '2', '20');
INSERT INTO `equip_star_type` VALUES ('10002', '1', '4', '3', '30');
INSERT INTO `equip_star_type` VALUES ('10003', '1', '6', '4', '40');
INSERT INTO `equip_star_type` VALUES ('10004', '1', '8', '5', '50');
INSERT INTO `equip_star_type` VALUES ('10005', '1', '10', '6', '60');
INSERT INTO `equip_star_type` VALUES ('20000', '1', '0', '1', '100');
INSERT INTO `equip_star_type` VALUES ('20001', '1', '2', '2', '110');
INSERT INTO `equip_star_type` VALUES ('20002', '1', '4', '3', '120');
INSERT INTO `equip_star_type` VALUES ('20003', '1', '6', '4', '130');
INSERT INTO `equip_star_type` VALUES ('20004', '1', '8', '5', '140');
INSERT INTO `equip_star_type` VALUES ('20005', '1', '10', '6', '150');
INSERT INTO `equip_star_type` VALUES ('30000', '1', '0', '1', '190');
INSERT INTO `equip_star_type` VALUES ('30001', '1', '2', '2', '200');
INSERT INTO `equip_star_type` VALUES ('30002', '1', '4', '3', '210');
INSERT INTO `equip_star_type` VALUES ('30003', '1', '6', '4', '220');
INSERT INTO `equip_star_type` VALUES ('30004', '1', '8', '5', '230');
INSERT INTO `equip_star_type` VALUES ('30005', '1', '10', '6', '240');
INSERT INTO `equip_star_type` VALUES ('40000', '1', '0', '1', '280');
INSERT INTO `equip_star_type` VALUES ('40001', '1', '2', '2', '290');
INSERT INTO `equip_star_type` VALUES ('40002', '1', '4', '3', '300');
INSERT INTO `equip_star_type` VALUES ('40003', '1', '6', '4', '310');
INSERT INTO `equip_star_type` VALUES ('40004', '1', '8', '5', '320');
INSERT INTO `equip_star_type` VALUES ('40005', '1', '10', '6', '330');
INSERT INTO `equip_star_type` VALUES ('50000', '1', '0', '1', '370');
INSERT INTO `equip_star_type` VALUES ('50001', '1', '2', '2', '380');
INSERT INTO `equip_star_type` VALUES ('50002', '1', '4', '3', '390');
INSERT INTO `equip_star_type` VALUES ('50003', '1', '6', '4', '400');
INSERT INTO `equip_star_type` VALUES ('50004', '1', '8', '5', '410');
INSERT INTO `equip_star_type` VALUES ('50005', '1', '10', '6', '420');
INSERT INTO `equip_star_type` VALUES ('60000', '1', '0', '1', '460');
INSERT INTO `equip_star_type` VALUES ('60001', '1', '2', '2', '470');
INSERT INTO `equip_star_type` VALUES ('60002', '1', '4', '3', '480');
INSERT INTO `equip_star_type` VALUES ('60003', '1', '6', '4', '490');
INSERT INTO `equip_star_type` VALUES ('60004', '1', '8', '5', '500');
INSERT INTO `equip_star_type` VALUES ('60005', '1', '10', '6', '510');

-- ----------------------------
-- Table structure for equip_suit_type
-- ----------------------------
DROP TABLE IF EXISTS `equip_suit_type`;
CREATE TABLE `equip_suit_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写表示系统编号',
  `suit_type` int(11) unsigned NOT NULL DEFAULT '101' COMMENT '填写表示套装编号，在item_type表中套装字段填写该编号，表示为同一套装部件',
  `suit_num` int(11) NOT NULL DEFAULT '2' COMMENT '填写2，表示当前属性需要穿戴2件套装部件可激活',
  `atk` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写值表示套装额外加攻击力',
  `def` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写值表示套装额外加防御力',
  `hp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写值表示套装额外加成生命值',
  `atk_percen` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写1000，单位万分比，客户端显示为攻击力加10%',
  `def_percen` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写1000，单位万分比，客户端显示为防御力增加10%',
  `hp_percen` int(11) NOT NULL DEFAULT '0' COMMENT '填写1000，单位万分比，客户端显示为生命增加10%',
  `hit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加命中值',
  `dodge` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加闪避值',
  `wreck` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加破击值',
  `block` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加格挡值',
  `crit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加暴击值',
  `physical` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加抗暴值',
  `kill` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加必杀值',
  `protect` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加守护值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='装备套装属性表';

-- ----------------------------
-- Records of equip_suit_type
-- ----------------------------
INSERT INTO `equip_suit_type` VALUES ('1', '101', '2', '100', '200', '300', '0', '0', '0', '600', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `equip_suit_type` VALUES ('2', '101', '4', '0', '0', '0', '100', '200', '300', '0', '900', '0', '0', '0', '0', '0', '0');
INSERT INTO `equip_suit_type` VALUES ('3', '101', '6', '0', '0', '0', '400', '500', '600', '0', '0', '1200', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for hero_type
-- ----------------------------
DROP TABLE IF EXISTS `hero_type`;
CREATE TABLE `hero_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT 'AAAABB，AAAA为索引ID，bb为通角色区分',
  `type` int(11) unsigned DEFAULT '1' COMMENT '角色类型：1表示主角A；2表示主角B；3表示主角C；5表示伙伴',
  `name` varchar(128) DEFAULT NULL COMMENT '表示角色的名字',
  `aptitude` int(11) unsigned DEFAULT '1' COMMENT '资质：填写3，品质绿色；填写6：品质蓝色；填写10：品质紫色；填写13：品质橙色；填写15：品质橙色；填写18：品质红色',
  `camp_type` int(11) unsigned DEFAULT '1' COMMENT '阵营：填写1表示主角阵营；填写2表示不良人阵营；填写3表示通文馆；填写4表示幻音坊；填写5表示万毒窟',
  `base_atk` int(11) DEFAULT NULL COMMENT '填写为基础攻击，基础攻击成长=base_atk+base_atk（等级-1）/10',
  `base_def` int(11) unsigned DEFAULT '0' COMMENT '基础防御：防御成长=base_def+base_def（等级-1）/10',
  `base_hp` int(11) DEFAULT '0' COMMENT '基础生命：基础生命=base_hp+base_hp（等级-1）/10',
  `priority_to` int(11) unsigned DEFAULT '0' COMMENT '填写表示英雄先手值，先手值=priority_to+priority_to*突破等级',
  `hit` int(11) unsigned DEFAULT '0' COMMENT '填写值表示命中值：（我方命中-敌方闪避）/（我方命中+敌方闪避）',
  `dodge` int(11) unsigned DEFAULT '0' COMMENT '填写值表示闪避值：（命中-闪避）/（命中+闪避）',
  `wreck` int(11) unsigned DEFAULT '0' COMMENT '填写值表示破击值：（破击-格挡）/（破击+格挡）',
  `block` int(11) unsigned DEFAULT '0' COMMENT '填写值表示格挡：（我方破击-敌方格挡）/（我方破击+敌方格挡）',
  `crit` int(11) unsigned DEFAULT '0' COMMENT '填写表示暴击值：（我方暴击-敌方抗暴）/（我方暴击+敌方抗暴）',
  `physical` int(11) unsigned DEFAULT '0' COMMENT '填写表示抗暴值：	暴击率=min[max[（暴击值-抗暴值）,0]/{max[（暴击值-抗暴值）,0]+校正值}*10000，最高暴击率]',
  `kill` int(11) unsigned DEFAULT '0' COMMENT '必杀值表示计算对方角色是否能触发守护属性',
  `protect` int(11) unsigned DEFAULT '0' COMMENT '填写值表示伙伴是否能够守护被攻击的目标',
  `damage` int(11) unsigned DEFAULT '0' COMMENT '填写值表示最终额外提升的固定伤害值',
  `damage_reduction` int(11) unsigned DEFAULT '0' COMMENT '填写值表示额外固定减少伤害',
  `revert` int(11) unsigned DEFAULT '0' COMMENT '填写表示治疗值，治疗时固定额外增加治疗量',
  `be_reply` int(11) unsigned DEFAULT '0' COMMENT '被治疗时额外增加回血量',
  `damage_percent` int(11) unsigned DEFAULT '0' COMMENT '额外增加伤害万分比，客户端显示使用百分比',
  `dr_percent` int(11) unsigned DEFAULT '0' COMMENT '额外减少伤害百分比，单位万分比，客户端显示百分比',
  `pvp_damage` int(11) unsigned DEFAULT '0' COMMENT 'pvp增伤百分比，单位万分比，客户端换算百分比',
  `pvp_adamage` int(11) unsigned DEFAULT '0' COMMENT 'pvp伤害减免百分比，单位万分比，客户端换算百分比',
  `bond_type` int(11) unsigned DEFAULT '1' COMMENT '填写表示调用bond表中类型为字段所填类型的羁绊',
  `general_skill_id` int(11) unsigned DEFAULT '0' COMMENT '填写id表示技能表中调用对应id',
  `anger_skill_id` int(11) unsigned DEFAULT '0' COMMENT '怒气技能调用技能表对应id',
  `fit_skill_id` int(11) unsigned DEFAULT '0' COMMENT '合体技能调用技能表对应id',
  `synthesise_id` int(11) unsigned DEFAULT '0' COMMENT '填写表示调用合成表配方数据',
  `icon` varchar(128) DEFAULT NULL COMMENT '填写头像框资源名称',
  `model` varchar(128) DEFAULT NULL COMMENT '填写资源模型名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄表';

-- ----------------------------
-- Records of hero_type
-- ----------------------------
INSERT INTO `hero_type` VALUES ('100101', '1', '主角男大侠', '6', '1', '1800', '2000', '35000', '125', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1001', '2001', '3001', '0', '0', '0');
INSERT INTO `hero_type` VALUES ('100102', '1', '主角男豪侠', '10', '1', '2100', '2000', '35000', '135', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1001', '2001', '3001', '0', '0', '0');
INSERT INTO `hero_type` VALUES ('100103', '1', '主角男宗师', '13', '1', '2100', '2000', '35000', '150', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1001', '2001', '3001', '0', '0', '0');
INSERT INTO `hero_type` VALUES ('100104', '1', '主角男神话', '15', '1', '2100', '2000', '35000', '165', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1001', '2001', '3001', '0', '0', '0');
INSERT INTO `hero_type` VALUES ('100201', '1', '主角女大侠', '6', '1', '1590', '524', '11130', '125', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '1001', '2001', '3001', '0', '0', '0');
INSERT INTO `hero_type` VALUES ('100202', '1', '主角女豪侠', '10', '1', '1590', '524', '11130', '135', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '1001', '2001', '3001', '0', '0', '0');
INSERT INTO `hero_type` VALUES ('100203', '1', '主角女宗师', '13', '1', '1590', '524', '11130', '150', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '1001', '2001', '3001', '0', '0', '0');
INSERT INTO `hero_type` VALUES ('100204', '1', '主角女神话', '15', '1', '1590', '524', '11130', '165', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '1001', '2001', '3001', '0', '0', '0');
INSERT INTO `hero_type` VALUES ('120101', '1', '火判官', '18', '2', '2500', '1500', '25000', '220', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '1002', '2002', '0', '9001', '0', '13');
INSERT INTO `hero_type` VALUES ('120201', '1', '冥帝', '18', '2', '2600', '992', '25000', '220', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '1003', '2003', '0', '9002', '0', '19');
INSERT INTO `hero_type` VALUES ('120301', '1', '白无常', '18', '1', '2700', '1446', '30607', '220', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1004', '2004', '0', '9003', '0', '11');
INSERT INTO `hero_type` VALUES ('120401', '1', '黑无常', '18', '1', '2500', '1160', '24486', '220', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '1005', '2005', '0', '9004', '0', '12');
INSERT INTO `hero_type` VALUES ('120501', '1', '水判官', '18', '1', '2600', '1446', '30607', '220', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1010', '2010', '0', '9005', '0', '18');
INSERT INTO `hero_type` VALUES ('120601', '1', '仁圣阎君', '18', '1', '2700', '1200', '24486', '220', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1009', '2009', '0', '9006', '0', '17');
INSERT INTO `hero_type` VALUES ('120701', '1', '孟婆', '18', '1', '3000', '1300', '25000', '220', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '1008', '2008', '0', '9007', '0', '16');
INSERT INTO `hero_type` VALUES ('120801', '1', '姬如雪', '18', '1', '2800', '1446', '30607', '220', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '1006', '2006', '0', '9008', '0', '14');
INSERT INTO `hero_type` VALUES ('120901', '1', '陆林轩', '18', '1', '3000', '1160', '24486', '220', '10000', '2000', '5000', '2000', '5000', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '1007', '2007', '0', '9009', '0', '15');

-- ----------------------------
-- Table structure for internal_refine_type
-- ----------------------------
DROP TABLE IF EXISTS `internal_refine_type`;
CREATE TABLE `internal_refine_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写表示为系统序列号',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示为对应物品表内功物品id',
  `level` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写表示为内功进阶等级',
  `skillbook_cost` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '当前等级进阶需求的相同内功数量',
  `item_consume` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写id表示为消耗指定道具消',
  `item_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示需求指定道具数量',
  `refine_hp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '进阶后，洗练上限会变化',
  `refine_atk` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '洗练攻击上限值',
  `refine_def` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '洗练防御上限值',
  `refine_hit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '洗练命中上限值',
  `refine_dodge` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '洗练闪避上限值',
  `refine_break` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '洗练破击上限值',
  `refine_ block` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '洗练格挡上限值',
  `refine_ crit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '洗练暴击上限值',
  `refine_ physical` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '洗练抗暴上限值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='内功洗练表';

-- ----------------------------
-- Records of internal_refine_type
-- ----------------------------

-- ----------------------------
-- Table structure for item_type
-- ----------------------------
DROP TABLE IF EXISTS `item_type`;
CREATE TABLE `item_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '表示物品装备的ID序列号',
  `item_name` varchar(128) DEFAULT NULL COMMENT '填写为内部系统名',
  `name` varchar(128) DEFAULT NULL COMMENT '填写为外部正式使用名',
  `type` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写1=装备类型，填写2=装备碎片，填写3=神兵，填写4=武学内功，填写5=武学外功，填写6=武学碎片，填写7=侠客碎片，填写8=其他道具',
  `suit_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '套装类型',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT '填写1=衣服，2=护手，3=腰带，4=戒指，5=鞋子，6=挂坠，7=武器，8=外功，9=内功，10=练气',
  `repo_price` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '玩家出售道具可获得的金币数量',
  `menu` varchar(128) DEFAULT NULL COMMENT '填写表示道具的菜单，(1;2)填写如括号内分隔，1=使用；2=合成；3=升级；4=参悟；5=洗练；6=强化；7=突破；8=出售；9=；10=装备',
  `level` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写表示等级限制，>=填写等级可使用',
  `quality` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示物品的资质，1=白色；3=绿色；6=蓝色；10=紫色；15=橙色；20=红色',
  `overlay` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写0，表示不可叠加；填写99,表示可叠加99个',
  `base_atk` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写为基础攻击',
  `base_def` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '基础防御',
  `base_hp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '基础生命',
  `priority_to` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示先手值',
  `hit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示命中值',
  `dodge` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示闪避值',
  `wreck` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示破击值',
  `block` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示格挡值',
  `crit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示暴击值',
  `physical` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示抗暴值',
  `kill` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示必杀值',
  `protect` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示为守护值',
  `damage` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示增加伤害值',
  `damage_reduction` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示减少伤害值',
  `revert` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示治疗值',
  `be_reply` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示被治疗值',
  `damage_percent` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示伤害百分比，单位万分比，显示百分比',
  `dr_percent` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示百分比免伤，单位万分比，显示百分比',
  `pvp_damage` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'pvp增加伤害率，单位万分比，客户端换算百分比',
  `pvp_adamage` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'pvp减伤害率，单位万分比，客户端换算百分比',
  `add_atk` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '额外攻击值',
  `add_def` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '额外防御值',
  `add_hp` int(11) NOT NULL DEFAULT '0' COMMENT '额外生命值',
  `special_hero` varchar(128) NOT NULL DEFAULT '0' COMMENT '特殊英雄触发 分号隔开几个角色 ',
  `special_atk_per` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '特殊角色触发攻击万分比属性',
  `special_def_per` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '特殊角色触发防御万分比属性',
  `special_hp_per` int(11) NOT NULL DEFAULT '0' COMMENT '特殊角色触发生命万分比属性',
  `devour_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '吞噬类型 1 装备锻造 2 神兵强化 3 炼气聚气',
  `devour_parm` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '吞噬参数',
  `skill_id` int(11) NOT NULL DEFAULT '0' COMMENT '填写表示该道具附带技能',
  `synthesise_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写ID表示合成功能表id',
  `icon` varchar(11) DEFAULT '' COMMENT '填写表示物品图标',
  `desc` varchar(128) DEFAULT '' COMMENT '道具说明',
  `eff_type` varchar(128) DEFAULT '' COMMENT '物品特效名索引',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品道具表';

-- ----------------------------
-- Records of item_type
-- ----------------------------
INSERT INTO `item_type` VALUES ('1000001', '清风袍', '清风袍', '1', '101', '1', '100', '10', '1', '1', '1', '0', '60', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1001', '100001', '', '');
INSERT INTO `item_type` VALUES ('1000002', '清风护腕', '清风护腕', '1', '101', '2', '100', '10', '1', '1', '1', '60', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1002', '100002', '', '');
INSERT INTO `item_type` VALUES ('1000003', '清风腰带', '清风腰带', '1', '101', '3', '100', '10', '1', '1', '1', '60', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1003', '100003', '', '');
INSERT INTO `item_type` VALUES ('1000004', '清风戒指', '清风戒指', '1', '101', '4', '100', '10', '1', '1', '1', '60', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1004', '100004', '', '');
INSERT INTO `item_type` VALUES ('1000005', '清风长靴', '清风长靴', '1', '101', '5', '100', '10', '1', '1', '1', '60', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1005', '100005', '', '');
INSERT INTO `item_type` VALUES ('1000006', '清风挂坠', '清风挂坠', '1', '101', '6', '100', '10', '1', '1', '1', '0', '0', '600', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1006', '100006', '', '');
INSERT INTO `item_type` VALUES ('1001001', '龙泉剑', '龙泉剑', '3', '0', '7', '100', '10', '1', '20', '1', '250', '0', '500', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '101001', '', '');
INSERT INTO `item_type` VALUES ('1001002', '修文扇', '修文扇', '3', '0', '7', '100', '10', '1', '20', '1', '250', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '101002', '', '');
INSERT INTO `item_type` VALUES ('1002001', '天罡龙泉决', '天罡龙泉决', '4', '0', '9', '100', '10', '1', '20', '1', '300', '0', '750', '0', '200', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '102001', '', '');
INSERT INTO `item_type` VALUES ('1002002', '乌柳心法', '乌柳心法', '4', '0', '9', '100', '10', '1', '20', '1', '200', '200', '400', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '102002', '', '');
INSERT INTO `item_type` VALUES ('1003001', '天罡龙泉剑法', '天罡龙泉剑法', '5', '0', '8', '100', '10', '1', '20', '1', '300', '0', '0', '0', '0', '0', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '103001', '', '');
INSERT INTO `item_type` VALUES ('1003002', '惊鸿', '惊鸿', '5', '0', '8', '100', '10', '1', '20', '1', '300', '100', '300', '0', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '103002', '', '');
INSERT INTO `item_type` VALUES ('6000001', '绿色锻造石', '绿色锻造石', '8', '0', '0', '100', '2', '1', '3', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '20', '0', '0', '', '锻造时可获得20锻造经验', '');
INSERT INTO `item_type` VALUES ('6000002', '蓝色锻造石', '蓝色锻造石', '8', '0', '0', '100', '2', '1', '6', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '50', '0', '0', '', '锻造时可获得50锻造经验', '');
INSERT INTO `item_type` VALUES ('6000003', '紫色锻造石', '紫色锻造石', '8', '0', '0', '100', '2', '1', '10', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '100', '0', '0', '', '锻造时可获得100锻造经验', '');
INSERT INTO `item_type` VALUES ('6000004', '橙色锻造石', '橙色锻造石', '8', '0', '0', '100', '2', '1', '15', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '150', '0', '0', '', '锻造可获得150锻造经验', '');
INSERT INTO `item_type` VALUES ('6000011', '培元丹', '培元丹', '8', '0', '0', '100', '2', '1', '15', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '可用于洗练内功', '');
INSERT INTO `item_type` VALUES ('6000012', '大培元丹', '大培元丹', '8', '0', '0', '100', '2', '1', '15', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '可用于洗练内功', '');
INSERT INTO `item_type` VALUES ('6000013', '武林召集令', '武林召集令', '8', '0', '0', '10', '2', '1', '15', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '600013', '可进行一次天位招募', '');
INSERT INTO `item_type` VALUES ('8000001', '清风袍碎片', '清风袍碎片', '2', '0', '0', '1', '2', '1', '1', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1001', '100001', '', '');
INSERT INTO `item_type` VALUES ('8000002', '清风护腕碎片', '清风护腕碎片', '2', '0', '0', '1', '2', '1', '1', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1002', '100002', '', '');
INSERT INTO `item_type` VALUES ('8000003', '清风腰带碎片', '清风腰带碎片', '2', '0', '0', '1', '2', '1', '1', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1003', '100003', '', '');
INSERT INTO `item_type` VALUES ('8000004', '清风戒指碎片', '清风戒指碎片', '2', '0', '0', '1', '2', '1', '1', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1004', '100004', '', '');
INSERT INTO `item_type` VALUES ('8000005', '清风长靴碎片', '清风长靴碎片', '2', '0', '0', '1', '2', '1', '1', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1005', '100005', '', '');
INSERT INTO `item_type` VALUES ('8000006', '清风挂坠碎片', '清风挂坠碎片', '2', '0', '0', '1', '2', '1', '1', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1006', '100006', '', '');
INSERT INTO `item_type` VALUES ('9000002', '冥帝碎片', '冥帝碎片', '7', '0', '0', '10', '2', '1', '20', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9002', '0', '', '');
INSERT INTO `item_type` VALUES ('9000003', '白无常碎片', '白无常碎片', '7', '0', '0', '10', '2', '1', '20', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9003', '0', '', '');
INSERT INTO `item_type` VALUES ('9000004', '黑无常碎片', '黑无常碎片', '7', '0', '0', '10', '2', '1', '20', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9004', '0', '', '');
INSERT INTO `item_type` VALUES ('9000005', '水判官碎片', '水判官碎片', '7', '0', '0', '10', '2', '1', '20', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9005', '0', '', '');
INSERT INTO `item_type` VALUES ('9000006', '仁圣阎君碎片', '仁圣阎君碎片', '7', '0', '0', '10', '2', '1', '20', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9006', '0', '', '');
INSERT INTO `item_type` VALUES ('9000007', '孟婆碎片', '孟婆碎片', '7', '0', '0', '10', '2', '1', '20', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9007', '0', '', '');
INSERT INTO `item_type` VALUES ('9000008', '姬如雪碎片', '姬如雪碎片', '7', '0', '0', '10', '2', '1', '20', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9008', '0', '', '');
INSERT INTO `item_type` VALUES ('9000009', '陆林轩碎片', '陆林轩碎片', '7', '0', '0', '10', '2', '1', '20', '999', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9009', '0', '', '');
INSERT INTO `item_type` VALUES ('9999999', '元宝', '元宝', '8', '0', '0', '1', '1', '1', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '元宝', '');

-- ----------------------------
-- Table structure for level_type
-- ----------------------------
DROP TABLE IF EXISTS `level_type`;
CREATE TABLE `level_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写id表示等级',
  `protagonist_exp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示主角当前等级升级所需要经验值',
  `partner_exp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示伙伴当前等级所需要的经验值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色等级表';

-- ----------------------------
-- Records of level_type
-- ----------------------------
INSERT INTO `level_type` VALUES ('1', '0', '0');
INSERT INTO `level_type` VALUES ('2', '20', '20');
INSERT INTO `level_type` VALUES ('3', '40', '40');
INSERT INTO `level_type` VALUES ('4', '100', '100');
INSERT INTO `level_type` VALUES ('5', '500', '500');
INSERT INTO `level_type` VALUES ('6', '1500', '1500');
INSERT INTO `level_type` VALUES ('7', '2000', '2000');
INSERT INTO `level_type` VALUES ('8', '3000', '3000');
INSERT INTO `level_type` VALUES ('9', '4500', '4500');
INSERT INTO `level_type` VALUES ('10', '8000', '8000');
INSERT INTO `level_type` VALUES ('11', '12000', '12000');
INSERT INTO `level_type` VALUES ('12', '15000', '15000');
INSERT INTO `level_type` VALUES ('13', '20000', '20000');
INSERT INTO `level_type` VALUES ('14', '25000', '25000');
INSERT INTO `level_type` VALUES ('15', '30000', '30000');
INSERT INTO `level_type` VALUES ('16', '40000', '40000');
INSERT INTO `level_type` VALUES ('17', '50000', '50000');
INSERT INTO `level_type` VALUES ('18', '60000', '60000');
INSERT INTO `level_type` VALUES ('19', '70000', '70000');

-- ----------------------------
-- Table structure for outskill_bond
-- ----------------------------
DROP TABLE IF EXISTS `outskill_bond`;
CREATE TABLE `outskill_bond` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '编号',
  `level_area` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '激活属性需求的区间\r\n配置如0005 即[0,5]\r\n个位十位 最大值\r\n百位千位 最小值\r\n',
  `hp_percent` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '激活的生命万分比属性 属于羁绊属性加成',
  `atk_percent` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '激活的攻击万分比属性',
  `def_percent` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '激活的防御万分比属性',
  `bond_hero` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '羁绊角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外功羁绊表';

-- ----------------------------
-- Records of outskill_bond
-- ----------------------------

-- ----------------------------
-- Table structure for outskill_grow_cost
-- ----------------------------
DROP TABLE IF EXISTS `outskill_grow_cost`;
CREATE TABLE `outskill_grow_cost` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写表示外功等级',
  `quality_cost_1` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=0 且 < 3的品质，当前等级消耗',
  `quality_cost_2` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=3 且 < 6 的品质',
  `quality_cost_3` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=6 且 < 10 的品质',
  `quality_cost_4` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=10 且 < 13 的品质',
  `quality_cost_5` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=13 且 < 15 的品质',
  `quality_cost_6` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=15 且 < 18 的品质',
  `quality_cost_7` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色装备资质 >=18 且 =< 20 的品质',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外功强化消耗表';

-- ----------------------------
-- Records of outskill_grow_cost
-- ----------------------------

-- ----------------------------
-- Table structure for outskill_learn
-- ----------------------------
DROP TABLE IF EXISTS `outskill_learn`;
CREATE TABLE `outskill_learn` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写表示外功等级',
  `type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '相当于外功id',
  `name` varchar(128) NOT NULL COMMENT '外功层级的名称 例如 探花手',
  `level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '外功等级',
  `skill_level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '外功层级 配置格式 060301\r\n万位十万位 外功参悟层级\r\n百位千位   当前参悟层级类型\r\n个位十位   此参悟类型下的等级\r\n',
  `hp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '生命值',
  `hp_precent` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '生命万分比加成',
  `hit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '命中',
  `dodge` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '闪避',
  `break` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '破击',
  `block` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '格挡',
  `crit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '暴击',
  `physical` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '抗暴',
  `damage` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '伤害加值',
  `damage_reduction` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '受伤减值',
  `damage_percent` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '伤害加成',
  `dr_percent` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '受伤减成',
  `pvp_damage` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'pvp伤害加成',
  `pvp_adamage` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'pvp受伤减成',
  `skill_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '技能id 关联技能',
  `money_cost` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '参悟消耗金币数量',
  `item_cost_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '参悟消耗道具类型',
  `item_cost_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '参悟消耗道具类型的数量',
  `skillbook_cost` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '参悟消耗的相同外功的数量',
  `replacebook_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '当没有相同外功时，替代道具类型',
  `replacebook_cost` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '替代道具类型数量',
  `need_level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '需求外功强化等级',
  `desc` varchar(128) NOT NULL COMMENT '外功层级说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外功参悟表';

-- ----------------------------
-- Records of outskill_learn
-- ----------------------------

-- ----------------------------
-- Table structure for recruit_type
-- ----------------------------
DROP TABLE IF EXISTS `recruit_type`;
CREATE TABLE `recruit_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示为系统序列id',
  `type` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '1：星位抽奖，2：天位抽奖，3：大天位抽奖，5：天位抽奖必中抽取',
  `prize_type` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写1，表示为英雄。',
  `prize_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'prize_type=1时，填写id为英雄id',
  `probability` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写为概率，权重比',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄招募表';

-- ----------------------------
-- Records of recruit_type
-- ----------------------------

-- ----------------------------
-- Table structure for shop_type
-- ----------------------------
DROP TABLE IF EXISTS `shop_type`;
CREATE TABLE `shop_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写表示系统序列号',
  `type` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写1表示普通商店',
  `name` varchar(11) NOT NULL DEFAULT '' COMMENT '填写商品名称以便识别',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示调取item表中id',
  `item_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示商品数量',
  `buy_money` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示购买需要消耗的价格',
  `probability` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写表示刷新出商品的概率',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商店表';

-- ----------------------------
-- Records of shop_type
-- ----------------------------

-- ----------------------------
-- Table structure for skill_type
-- ----------------------------
DROP TABLE IF EXISTS `skill_type`;
CREATE TABLE `skill_type` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '填写表示技能ID',
  `name` varchar(128) NOT NULL COMMENT '填写技能名称',
  `type` varchar(128) NOT NULL COMMENT '0；主动技能 1：被动技能',
  `anger` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示释放技能需要消耗的怒气',
  `cast_target` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '当前技能是否是自己释放 0：自己释放，1:合体对象释放',
  `trigger_param` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '合体技能触发条件，hero_type.id',
  `dam_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '0:固定伤害 1:百分比伤害 2:固定回复 3:百分比回复',
  `dam_param` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '固定值或者万分比',
  `dam_target_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '1:单体，2:前排，3:后排，4:随机目标，5:体目标，6:随机敌方生命值最低的目标',
  `dam_target_param` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '填写表示类型参数值，如类型5，填写20表示目标生命低于20%',
  `dam_max_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最多攻击数量',
  `effect_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'buff',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='技能表';

-- ----------------------------
-- Records of skill_type
-- ----------------------------
INSERT INTO `skill_type` VALUES ('1001', '华阳针法', '0', '0', '0', '0', '1', '9000', '1', '0', '1', '101');
INSERT INTO `skill_type` VALUES ('1002', '吸魂秘术', '0', '0', '0', '0', '1', '11500', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('1003', '烈光闪', '0', '0', '0', '0', '1', '10000', '1', '0', '1', '601');
INSERT INTO `skill_type` VALUES ('1004', '迴旋镰舞', '0', '0', '0', '0', '1', '12000', '1', '0', '1', '801');
INSERT INTO `skill_type` VALUES ('1005', '天旋雷转', '0', '0', '0', '0', '1', '11500', '1', '0', '1', '1001');
INSERT INTO `skill_type` VALUES ('1006', '姬如雪普攻', '0', '0', '0', '0', '0', '10000', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('1007', '陆林轩普攻', '0', '0', '0', '0', '0', '10000', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('1008', '孟婆普攻', '0', '0', '0', '0', '0', '10000', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('1009', '仁圣阎君普攻', '0', '0', '0', '0', '0', '10000', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('1010', '水判官普攻', '0', '0', '0', '0', '0', '10000', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('2001', '缚灵阵', '0', '100', '0', '0', '1', '12000', '1', '0', '1', '201');
INSERT INTO `skill_type` VALUES ('2002', '失魂引魍', '0', '100', '0', '0', '1', '9500', '1', '0', '1', '501');
INSERT INTO `skill_type` VALUES ('2003', '缚鬼阵', '0', '100', '0', '0', '1', '11000', '1', '0', '1', '701');
INSERT INTO `skill_type` VALUES ('2004', '火神附体', '0', '100', '0', '0', '1', '11500', '1', '0', '1', '901');
INSERT INTO `skill_type` VALUES ('2005', '追命锚击', '0', '100', '0', '0', '1', '14500', '1', '0', '1', '1101');
INSERT INTO `skill_type` VALUES ('2006', '姬如雪怒气', '0', '100', '0', '0', '0', '15000', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('2007', '陆林轩怒气', '0', '100', '0', '0', '0', '15000', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('2008', '孟婆怒气', '0', '100', '0', '0', '0', '20000', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('2009', '仁圣阎君怒气', '0', '100', '0', '0', '0', '20000', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('2010', '水判官怒气', '0', '100', '0', '0', '0', '20000', '1', '0', '1', '401');
INSERT INTO `skill_type` VALUES ('3001', '天罡龙泉', '0', '100', '1', '0', '1', '22000', '1', '0', '1', '301');

-- ----------------------------
-- Table structure for star_shop
-- ----------------------------
DROP TABLE IF EXISTS `star_shop`;
CREATE TABLE `star_shop` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '编号',
  `type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '练气道具类型，关联物品表',
  `exchange_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修炼值兑换数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='练气商店';

-- ----------------------------
-- Records of star_shop
-- ----------------------------

-- ----------------------------
-- Table structure for star_train
-- ----------------------------
DROP TABLE IF EXISTS `star_train`;
CREATE TABLE `star_train` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '编号',
  `train_level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '练气操作等级',
  `star_1` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '练气操作等级下，组1权重',
  `star_odd_1` varchar(128) NOT NULL COMMENT '组1练气道具以及权重\r\n格式 格式30001,30002,30003;1,1,1   最多可以配6个',
  `star_2` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '练气操作等级下，组2权重',
  `star_odd_2` varchar(128) NOT NULL COMMENT '组2练气道具以及权重',
  `star_3` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '练气操作等级下，组3权重',
  `star_odd_3` varchar(128) NOT NULL COMMENT '组3练气道具以及权重',
  `star_4` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '练气操作等级下，组4权重',
  `star_odd_4` varchar(128) NOT NULL COMMENT '组4练气道具以及权重',
  `star_5` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '练气操作等级下，组5权重',
  `star_odd_5` varchar(128) NOT NULL COMMENT '组5练气道具以及权重',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='练气抽取权重表';

-- ----------------------------
-- Records of star_train
-- ----------------------------

-- ----------------------------
-- Table structure for synthesis_type
-- ----------------------------
DROP TABLE IF EXISTS `synthesis_type`;
CREATE TABLE `synthesis_type` (
  `id` int(11) NOT NULL DEFAULT '1' COMMENT '填写表示合成配方id',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '类型1，表示英雄合成；类型2，表示为装备合成',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '填写表示合成配方注释',
  `goal` int(11) NOT NULL DEFAULT '0' COMMENT '填写表示对应表的id',
  `demand` int(11) NOT NULL DEFAULT '0' COMMENT '填写id表示需求材料',
  `demand_num` int(11) NOT NULL DEFAULT '0' COMMENT '填写值表示合成材料所需要的数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='碎片合成表';

-- ----------------------------
-- Records of synthesis_type
-- ----------------------------
INSERT INTO `synthesis_type` VALUES ('1001', '2', '合成清风袍', '1000001', '8000001', '30');
INSERT INTO `synthesis_type` VALUES ('1002', '2', '合成清风护腕', '1000002', '8000002', '30');
INSERT INTO `synthesis_type` VALUES ('1003', '2', '合成清风腰带', '1000003', '8000003', '30');
INSERT INTO `synthesis_type` VALUES ('1004', '2', '合成清风戒指', '1000004', '8000004', '30');
INSERT INTO `synthesis_type` VALUES ('1005', '2', '合成清风长靴', '1000005', '8000005', '30');
INSERT INTO `synthesis_type` VALUES ('1006', '2', '合成清风挂坠', '1000006', '8000006', '30');
INSERT INTO `synthesis_type` VALUES ('9001', '1', '火判官', '120101', '9000001', '100');
INSERT INTO `synthesis_type` VALUES ('9002', '1', '冥帝', '120201', '9000002', '100');
INSERT INTO `synthesis_type` VALUES ('9003', '1', '白无常', '120301', '9000003', '100');
INSERT INTO `synthesis_type` VALUES ('9004', '1', '黑无常', '120401', '9000004', '100');
INSERT INTO `synthesis_type` VALUES ('9005', '1', '水判官', '120501', '9000005', '100');
INSERT INTO `synthesis_type` VALUES ('9006', '1', '仁圣阎君', '120601', '9000006', '100');
INSERT INTO `synthesis_type` VALUES ('9007', '1', '孟婆', '120701', '9000007', '100');
INSERT INTO `synthesis_type` VALUES ('9008', '1', '姬如雪', '120801', '9000008', '100');
INSERT INTO `synthesis_type` VALUES ('9009', '1', '陆林轩', '120901', '9000009', '100');

-- ----------------------------
-- Table structure for weapon_advance
-- ----------------------------
DROP TABLE IF EXISTS `weapon_advance`;
CREATE TABLE `weapon_advance` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '编号',
  `quality` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '资质值',
  `level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '神兵进阶等级',
  `streng_level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '进阶下一级需求的强化等级',
  `hp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加的生命值',
  `atk` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加的攻击值',
  `def` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '增加的防御值',
  `damage` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '伤害加成万分比',
  `damage_reduction` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '受伤减成万分比',
  `weapon_cost` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '进阶需求相同神兵的消耗数量',
  `replaceitem` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '替代神兵  进阶的消耗道具类型',
  `replaceitem_cost` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '替代神兵 消耗道具 的消耗数量',
  `money_cost` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '进阶消耗的金币',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神兵进阶表';

-- ----------------------------
-- Records of weapon_advance
-- ----------------------------

-- ----------------------------
-- Table structure for weapon_grow_cost
-- ----------------------------
DROP TABLE IF EXISTS `weapon_grow_cost`;
CREATE TABLE `weapon_grow_cost` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '编号',
  `quality` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '资质值',
  `level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '当前等级',
  `exp` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '升到下一级所需经验',
  `money_parm` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '当前等级每喂一点经验，所消耗的金币系数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神兵强化表';

-- ----------------------------
-- Records of weapon_grow_cost
-- ----------------------------

-- ----------------------------
-- Table structure for weapon_unlock
-- ----------------------------
DROP TABLE IF EXISTS `weapon_unlock`;
CREATE TABLE `weapon_unlock` (
  `id` int(11) unsigned NOT NULL DEFAULT '1' COMMENT '编号',
  `quality` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '资质值',
  `level` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '神兵强化等级',
  `hp_percen` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '神兵当前强化等段激活的生命万分比属性',
  `atk_percen` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '神兵当前强化等段激活的攻击万分比属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神兵解锁表';

-- ----------------------------
-- Records of weapon_unlock
-- ----------------------------
