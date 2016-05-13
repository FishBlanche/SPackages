/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.226
Source Server Version : 50625
Source Host           : 192.168.0.226:3306
Source Database       : citysee_data

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2015-11-27 10:32:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `neighbordata`
-- ----------------------------
DROP TABLE IF EXISTS `neighbordata`;
CREATE TABLE `neighbordata` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Cluster_ID` int(11) DEFAULT '0',
  `Moteid_ID` int(11) NOT NULL,
  `TimestampSend_TM` varchar(10) DEFAULT NULL,
  `TimestampArrive_TM` timestamp DEFAULT CURRENT_TIMESTAMP,
  `NeighborSize_ID` int(11) DEFAULT '0',
  `NeighborId_TX` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `LQI_TX` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RSSI_TX` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ETX_TX` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=54020 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of neighbordata
-- ----------------------------
 
-- ----------------------------
-- Table structure for `newestsensingdata`
-- ----------------------------
DROP TABLE IF EXISTS `newestsensingdata`;
CREATE TABLE `newestsensingdata` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Cluster_ID` int(11) DEFAULT '0',
  `Moteid_ID` int(11) NOT NULL,
  `TimestampSend_TM` varchar(20) DEFAULT NULL,
  `TimestampArrive_TM` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CurrentSendInterval_TM` bigint(20) DEFAULT NULL,
  `Temperature_ID` int(11) DEFAULT '0',
  `Humidity_ID` int(11) DEFAULT '0',
  `Light_ID` int(11) DEFAULT '0',
  `ADC_Voltage_ID` int(11) DEFAULT '0',
  `CO2_ID` int(11) DEFAULT '0',
  `Sequence_ID` int(11) DEFAULT '0',
  `HopCount_ID` int(11) DEFAULT '0',
  `Mark_ID` int(11) DEFAULT '0',
  `Parent_ID` int(11) DEFAULT '0',
  `Power` int(11) DEFAULT '0',
  `PathTotalLength_ID` int(11) DEFAULT '0',
  `Pathlength_ID` int(11) DEFAULT '0',
  `NodesOnPath_TX` varchar(60) CHARACTER SET utf8 DEFAULT 'NULL',
  `NodeType` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `id` (`Id`) USING BTREE,
  UNIQUE KEY `nodeid` (`Moteid_ID`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of newestsensingdata
-- ----------------------------

-- ----------------------------
-- Table structure for `nodeinformation`
-- ----------------------------
DROP TABLE IF EXISTS `nodeinformation`;
CREATE TABLE `nodeinformation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `Moteid_ID` int(11) NOT NULL,
  `nodeType` int(10) unsigned NOT NULL,
  `Location_X` int(11) DEFAULT NULL,
  `Location_Y` int(11) DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `remarks` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mote_ID_index` (`Moteid_ID`) USING BTREE,
  KEY `NodeInformation_ibfk_1` (`nodeType`) USING BTREE,
  KEY `nodeType_index` (`nodeType`) USING BTREE,
  CONSTRAINT `NodeInformation_ibfk_1` FOREIGN KEY (`nodeType`) REFERENCES `nodetype` (`nodeType`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nodeinformation
-- ----------------------------
INSERT INTO `nodeinformation` VALUES ('10', '0', '1001', '3', '81', '243', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('11', '0', '1002', '3', '187', '247', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('12', '0', '1003', '3', '296', '248', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('13', '0', '1004', '3', '418', '246', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('14', '0', '1005', '3', '550', '246', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('15', '0', '1006', '3', '248', '342', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('16', '0', '1007', '3', '372', '345', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('17', '0', '2001', '12', '592', '332', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('18', '0', '2002', '12', '262', '741', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('19', '0', '2003', '12', '407', '737', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('20', '0', '1008', '3', '562', '733', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('21', '0', '5001', '8', '377', '558', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('22', '0', '4001', '6', '248', '556', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('23', '0', '60001', '3', '622', '391', null, null, '1');
INSERT INTO `nodeinformation` VALUES ('24', '0', '1801', '4', '507', '560', null, null, '1');

-- ----------------------------
-- Table structure for `nodetype`
-- ----------------------------
DROP TABLE IF EXISTS `nodetype`;
CREATE TABLE `nodetype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nodeType` int(10) unsigned NOT NULL,
  `remark` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nodeType_1` (`nodeType`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nodetype
-- ----------------------------
INSERT INTO `nodetype` VALUES ('52', '1', 'TH');
INSERT INTO `nodetype` VALUES ('53', '2', 'LC');
INSERT INTO `nodetype` VALUES ('54', '3', 'THL');
INSERT INTO `nodetype` VALUES ('55', '4', 'THLCO2');
INSERT INTO `nodetype` VALUES ('56', '5', 'THC');
INSERT INTO `nodetype` VALUES ('61', '10', 'TC');
INSERT INTO `nodetype` VALUES ('62', '6', 'THLCO');
INSERT INTO `nodetype` VALUES ('63', '7', 'THLCH4');
INSERT INTO `nodetype` VALUES ('64', '8', 'DUST');
INSERT INTO `nodetype` VALUES ('65', '9', 'THLH2S');
INSERT INTO `nodetype` VALUES ('66', '11', 'THLNO');
INSERT INTO `nodetype` VALUES ('67', '12', 'THLSO2');

-- ----------------------------
-- Table structure for `nodeuserinfo`
-- ----------------------------
DROP TABLE IF EXISTS `nodeuserinfo`;
CREATE TABLE `nodeuserinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(10) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of nodeuserinfo
-- ----------------------------
INSERT INTO `nodeuserinfo` VALUES ('1', 'admin', 'admin');
INSERT INTO `nodeuserinfo` VALUES ('2', 'qiuxia', 'qiuxia');

-- ----------------------------
-- Table structure for `node_sensortype`
-- ----------------------------
DROP TABLE IF EXISTS `node_sensortype`;
CREATE TABLE `node_sensortype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nodeType` int(10) unsigned NOT NULL,
  `sensorName` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nodeType` (`nodeType`) USING BTREE,
  KEY `Node_sensorName_ref` (`sensorName`) USING BTREE,
  CONSTRAINT `Node_sensorName_ref` FOREIGN KEY (`sensorName`) REFERENCES `sensortype` (`sensorName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Node_sensorType_ibfk_1` FOREIGN KEY (`nodeType`) REFERENCES `nodetype` (`nodeType`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of node_sensortype
-- ----------------------------
INSERT INTO `node_sensortype` VALUES ('4', '5', 'temperature');
INSERT INTO `node_sensortype` VALUES ('8', '5', 'humidity');
INSERT INTO `node_sensortype` VALUES ('9', '5', 'co2');
INSERT INTO `node_sensortype` VALUES ('73', '1', 'temperature');
INSERT INTO `node_sensortype` VALUES ('74', '1', 'humidity');
INSERT INTO `node_sensortype` VALUES ('76', '2', 'light');
INSERT INTO `node_sensortype` VALUES ('77', '2', 'co2');
INSERT INTO `node_sensortype` VALUES ('78', '3', 'temperature');
INSERT INTO `node_sensortype` VALUES ('79', '3', 'humidity');
INSERT INTO `node_sensortype` VALUES ('80', '3', 'light');
INSERT INTO `node_sensortype` VALUES ('81', '4', 'temperature');
INSERT INTO `node_sensortype` VALUES ('82', '4', 'humidity');
INSERT INTO `node_sensortype` VALUES ('83', '4', 'light');
INSERT INTO `node_sensortype` VALUES ('84', '4', 'co2');
INSERT INTO `node_sensortype` VALUES ('94', '10', 'temperature');
INSERT INTO `node_sensortype` VALUES ('95', '10', 'co2');
INSERT INTO `node_sensortype` VALUES ('96', '6', 'temperature');
INSERT INTO `node_sensortype` VALUES ('97', '6', 'humidity');
INSERT INTO `node_sensortype` VALUES ('98', '6', 'light');
INSERT INTO `node_sensortype` VALUES ('99', '6', 'co');
INSERT INTO `node_sensortype` VALUES ('100', '12', 'temperature');
INSERT INTO `node_sensortype` VALUES ('101', '12', 'humidity');
INSERT INTO `node_sensortype` VALUES ('102', '12', 'light');
INSERT INTO `node_sensortype` VALUES ('103', '12', 'so2');

-- ----------------------------
-- Table structure for `preference`
-- ----------------------------
DROP TABLE IF EXISTS `preference`;
CREATE TABLE `preference` (
  `id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `attribute` varchar(50) CHARACTER SET utf8 NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of preference
-- ----------------------------

-- ----------------------------
-- Table structure for `regioninfo`
-- ----------------------------
DROP TABLE IF EXISTS `regioninfo`;
CREATE TABLE `regioninfo` (
  `Region_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Region_Type` int(11) DEFAULT '0',
  `Photo` longblob NOT NULL,
  `Area` float DEFAULT '0',
  `Intro` varchar(1) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Region_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of regioninfo
-- ----------------------------

-- ----------------------------
-- Table structure for `sensingdata`
-- ----------------------------
DROP TABLE IF EXISTS `sensingdata`;
CREATE TABLE `sensingdata` (
  `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `Cluster_ID` int(11) DEFAULT '0',
  `Moteid_ID` int(11) NOT NULL,
  `TimestampSend_TM` varchar(10) DEFAULT NULL,
 `TimestampArrive_TM` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CurrentSendInterval_TM` bigint(20) DEFAULT NULL,
  `Temperature_ID` int(11) DEFAULT '0',
  `Humidity_ID` int(11) DEFAULT '0',
  `Light_ID` int(11) DEFAULT '0',
  `ADC_Voltage_ID` int(11) DEFAULT '0',
  `CO2_ID` int(11) DEFAULT '0',
  `Sequence_ID` int(11) DEFAULT '0',
  `HopCount_ID` int(11) DEFAULT '0',
  `Mark_ID` int(11) DEFAULT '0',
  `Parent_ID` int(11) DEFAULT '0',
  `Power` int(11) DEFAULT '0',
  `PathTotalLength_ID` int(11) DEFAULT '0',
  `Pathlength_ID` int(11) DEFAULT '0',
  `NodesOnPath_TX` varchar(60) CHARACTER SET utf8 DEFAULT 'NULL',
  `ArriveTime` varchar(10) DEFAULT NULL,
  `NodeType` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `id` (`Id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=55885 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sensingdata
-- ----------------------------
 
-- ----------------------------
-- Table structure for `sensortype`
-- ----------------------------
DROP TABLE IF EXISTS `sensortype`;
CREATE TABLE `sensortype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sensorName` char(20) DEFAULT NULL,
  `unit` char(10) DEFAULT NULL,
  `range_low` float(20,0) DEFAULT NULL,
  `range_high` float(20,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sensorName` (`sensorName`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sensortype
-- ----------------------------
INSERT INTO `sensortype` VALUES ('1', 'temperature', 'C', '0', '60');
INSERT INTO `sensortype` VALUES ('2', 'humidity', '%rh', '0', '100');
INSERT INTO `sensortype` VALUES ('3', 'light', 'lx.', '0', '500');
INSERT INTO `sensortype` VALUES ('4', 'co2', 'ppm', '0', '70000');
INSERT INTO `sensortype` VALUES ('5', 'magnetic', 'G', '0', '5');
INSERT INTO `sensortype` VALUES ('7', 'so2', 'ppm', '0', '70000');
INSERT INTO `sensortype` VALUES ('8', 'co', null, '0', '70000');

-- ----------------------------
-- Table structure for `statusdata`
-- ----------------------------
DROP TABLE IF EXISTS `statusdata`;
CREATE TABLE `statusdata` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Cluster_ID` int(11) DEFAULT '0',
  `Moteid_ID` int(11) NOT NULL,
  `TimestampSend_TM` varchar(10) DEFAULT NULL,
  `TimestampArrive_TM` timestamp DEFAULT CURRENT_TIMESTAMP,
  `RadioOnCounter_ID` int(11) DEFAULT '0',
  `RadioOnTimeCounter_ID` int(11) DEFAULT '0',
  `ReceiveCounter_ID` int(11) DEFAULT '0',
  `TransmitCounter_ID` int(11) DEFAULT '0',
  `ReceiveOverflowDropCounter_ID` int(11) DEFAULT '0',
  `SelfTransmitCounter_ID` int(11) DEFAULT '0',
  `TransmitNoACKRetransmitCounter_ID` int(11) DEFAULT '0',
  `TransmitNoACKDropCounter_ID` int(11) DEFAULT '0',
  `RetransmitCounter_ID` int(11) DEFAULT '0',
  `LoopCounter_ID` int(11) DEFAULT '0',
  `DuplicateCounter_ID` int(11) DEFAULT '0',
  `SuccAckCounter_ID` int(11) DEFAULT '0',
  `ParentChangeCounter_ID` int(11) DEFAULT '0',
  `TaskPostCounter_ID` int(11) DEFAULT '0',
  `TaskExeCounter_ID` int(11) DEFAULT '0',
  `NoParentCounter_ID` int(11) DEFAULT '0',
  `TaskSendFailCounter_ID` int(11) DEFAULT '0',
  `TableEvictCounter_ID` int(11) DEFAULT '0',
  `MacIBackOffCounter_ID` int(11) DEFAULT '0',
  `MacCBackOffCounter_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=55437 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of statusdata
-- ----------------------------
 
-- ----------------------------
-- View structure for `newestsensings`
-- ----------------------------
DROP VIEW IF EXISTS `newestsensings`;
CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`%` SQL SECURITY DEFINER VIEW `newestsensings` AS select `newestsensingdata`.`NodeType` AS `NodeType`,`newestsensingdata`.`Id` AS `Id`,`newestsensingdata`.`Cluster_ID` AS `Cluster_ID`,`newestsensingdata`.`Moteid_ID` AS `Moteid_ID`,`newestsensingdata`.`TimestampArrive_TM` AS `TimestampArrive_TM`,((`newestsensingdata`.`Temperature_ID` * 0.01) - 40) AS `temperature`,(case when (((`newestsensingdata`.`Temperature_ID` * 0.01) - 40) = 25) then ((-(4) + (0.0405 * `newestsensingdata`.`Humidity_ID`)) - (((2.8 * 0.000001) * `newestsensingdata`.`Humidity_ID`) * `newestsensingdata`.`Humidity_ID`)) else (((((`newestsensingdata`.`Temperature_ID` * 0.01) - 40) - 25) * (0.01 + (0.00008 * `newestsensingdata`.`Humidity_ID`))) + ((-(4) + (0.0405 * `newestsensingdata`.`Humidity_ID`)) - (((2.8 * 0.000001) * `newestsensingdata`.`Humidity_ID`) * `newestsensingdata`.`Humidity_ID`))) end) AS `humidity`,(`newestsensingdata`.`Light_ID` * 0.085) AS `light`,(case `newestsensingdata`.`NodeType` when 0 then `newestsensingdata`.`CO2_ID` when 1 then (((`newestsensingdata`.`CO2_ID` * 2.5) / 4096) / 100) when 2 then `newestsensingdata`.`CO2_ID` when 3 then (((`newestsensingdata`.`CO2_ID` * 2.048) / 32768) / 10) when 4 then `newestsensingdata`.`CO2_ID` when 5 then `newestsensingdata`.`CO2_ID` when 6 then `newestsensingdata`.`CO2_ID` when 7 then `newestsensingdata`.`CO2_ID` when 8 then `newestsensingdata`.`CO2_ID` when 9 then `newestsensingdata`.`CO2_ID` else `newestsensingdata`.`CO2_ID` end) AS `co2`,`newestsensingdata`.`NodesOnPath_TX` AS `path` from `newestsensingdata` order by `newestsensingdata`.`Id` ;

-- ----------------------------
-- View structure for `simplesensing`
-- ----------------------------
DROP VIEW IF EXISTS `simplesensing`;
CREATE ALGORITHM=UNDEFINED DEFINER=`admin`@`%` SQL SECURITY DEFINER VIEW `simplesensing` AS select `sensingdata`.`NodeType` AS `NodeType`,`sensingdata`.`Id` AS `Id`,`sensingdata`.`Cluster_ID` AS `Cluster_ID`,`sensingdata`.`Moteid_ID` AS `Moteid_ID`,`sensingdata`.`TimestampArrive_TM` AS `TimestampArrive_TM`,((`sensingdata`.`Temperature_ID` * 0.01) - 40) AS `temperature`,(case when (((`sensingdata`.`Temperature_ID` * 0.01) - 40) = 25) then ((-(4) + (0.0405 * `sensingdata`.`Humidity_ID`)) - (((2.8 * 0.000001) * `sensingdata`.`Humidity_ID`) * `sensingdata`.`Humidity_ID`)) else (((((`sensingdata`.`Temperature_ID` * 0.01) - 40) - 25) * (0.01 + (0.00008 * `sensingdata`.`Humidity_ID`))) + ((-(4) + (0.0405 * `sensingdata`.`Humidity_ID`)) - (((2.8 * 0.000001) * `sensingdata`.`Humidity_ID`) * `sensingdata`.`Humidity_ID`))) end) AS `humidity`,(`sensingdata`.`Light_ID` * 0.085) AS `light`,(case `sensingdata`.`NodeType` when 0 then `sensingdata`.`CO2_ID` when 1 then (((`sensingdata`.`CO2_ID` * 2.5) / 4096) / 100) when 2 then `sensingdata`.`CO2_ID` when 3 then (((`sensingdata`.`CO2_ID` * 2.048) / 32768) / 10) when 4 then `sensingdata`.`CO2_ID` when 5 then `sensingdata`.`CO2_ID` when 6 then `sensingdata`.`CO2_ID` when 7 then `sensingdata`.`CO2_ID` when 8 then `sensingdata`.`CO2_ID` when 9 then `sensingdata`.`CO2_ID` else `sensingdata`.`CO2_ID` end) AS `co2`,`sensingdata`.`NodesOnPath_TX` AS `path` from `sensingdata` order by `sensingdata`.`Id` ;
DROP TRIGGER IF EXISTS `new_Data`;
DELIMITER ;;
CREATE TRIGGER `new_Data` AFTER INSERT ON `sensingdata` FOR EACH ROW begin
    Declare  bDBexists int default 0; 
    select count(*) into  bDBexists from newestsensingdata where Moteid_ID = NEW.Moteid_ID;
    if (bDBexists = 0) then insert into newestsensingdata (Moteid_ID , Cluster_ID , TimestampSend_TM , Sequence_ID , CurrentSendInterval_TM , Parent_ID , Power , ADC_Voltage_ID , Humidity_ID , Temperature_ID , Light_ID , CO2_ID , NodeType , Mark_ID , HopCount_ID , Pathlength_ID , NodesOnPath_TX) VALUES (NEW.Moteid_ID , NEW.Cluster_ID , NEW.TimestampSend_TM , NEW.Sequence_ID , NEW.CurrentSendInterval_TM , NEW.Parent_ID , NEW.Power , NEW.ADC_Voltage_ID , NEW.Humidity_ID , NEW.Temperature_ID , NEW.Light_ID , NEW.CO2_ID , NEW.NodeType , NEW.Mark_ID , NEW.HopCount_ID , NEW.Pathlength_ID , NEW.NodesOnPath_TX) ;
    else
    update newestsensingdata set Cluster_ID = NEW.Cluster_ID, TimestampSend_TM = NEW.TimestampSend_TM,  TimestampArrive_TM = NEW.TimestampArrive_TM , CurrentSendInterval_TM = NEW.CurrentSendInterval_TM ,Temperature_ID = NEW.Temperature_ID, Humidity_ID = NEW.Humidity_ID,Light_ID = NEW.Light_ID ,ADC_Voltage_ID = NEW.ADC_Voltage_ID, CO2_ID = NEW.CO2_ID, Sequence_ID = NEW.Sequence_ID, HopCount_ID = NEW.HopCount_ID ,Mark_ID = NEW.Mark_ID ,Parent_ID = NEW.Parent_ID,Power = NEW.Power ,Pathlength_ID = NEW.Pathlength_ID,NodesOnPath_TX = NEW.NodesOnPath_TX where Moteid_ID = NEW.Moteid_ID; 
     end if; 
     end
;;
DELIMITER ;
