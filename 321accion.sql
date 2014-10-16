/*
Navicat MySQL Data Transfer

Source Server         : LocalHost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : 321accion

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-10-15 22:41:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `caracteristicas`
-- ----------------------------
DROP TABLE IF EXISTS `caracteristicas`;
CREATE TABLE `caracteristicas` (
  `idcaracteristicas` int(11) NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `descripicon` varchar(255) default NULL,
  PRIMARY KEY  (`idcaracteristicas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caracteristicas
-- ----------------------------

-- ----------------------------
-- Table structure for `caracteristicpersona`
-- ----------------------------
DROP TABLE IF EXISTS `caracteristicpersona`;
CREATE TABLE `caracteristicpersona` (
  `idcaracteristicapersona` int(11) NOT NULL default '0',
  `idpersona` int(11) default NULL,
  `idcaracteristica` int(11) default NULL,
  `detalle` varchar(250) default NULL,
  PRIMARY KEY  (`idcaracteristicapersona`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of caracteristicpersona
-- ----------------------------

-- ----------------------------
-- Table structure for `foto`
-- ----------------------------
DROP TABLE IF EXISTS `foto`;
CREATE TABLE `foto` (
  `idfoto` int(11) default NULL,
  `url` varchar(255) default NULL,
  `descripcion` varchar(255) default NULL,
  `titulo` varchar(255) default NULL,
  `idpersona` int(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foto
-- ----------------------------

-- ----------------------------
-- Table structure for `papel`
-- ----------------------------
DROP TABLE IF EXISTS `papel`;
CREATE TABLE `papel` (
  `idpapel` int(11) NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `descripcion` varchar(255) default NULL,
  PRIMARY KEY  (`idpapel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of papel
-- ----------------------------

-- ----------------------------
-- Table structure for `papelpersonal`
-- ----------------------------
DROP TABLE IF EXISTS `papelpersonal`;
CREATE TABLE `papelpersonal` (
  `idpapelpersona` int(11) NOT NULL auto_increment,
  `idpapel` int(11) default NULL,
  `idpersona` int(11) default NULL,
  PRIMARY KEY  (`idpapelpersona`),
  KEY `idpersona` (`idpersona`),
  KEY `idpapel` (`idpapel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of papelpersonal
-- ----------------------------

-- ----------------------------
-- Table structure for `persona`
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `idpersonas` int(11) NOT NULL,
  `nombres` varchar(250) NOT NULL,
  `apellidos` varchar(250) NOT NULL,
  `sexo` varchar(250) NOT NULL,
  `residencia` varchar(250) NOT NULL,
  `fechanacimiento` varchar(250) NOT NULL,
  PRIMARY KEY  (`idpersonas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persona
-- ----------------------------

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `idvideo` int(11) NOT NULL default '0',
  `url` varchar(255) default NULL,
  `descripcion` varchar(255) default NULL,
  `titulo` varchar(255) default NULL,
  `idpersona` int(11) default NULL,
  PRIMARY KEY  (`idvideo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
