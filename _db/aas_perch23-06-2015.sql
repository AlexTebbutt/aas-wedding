# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.10)
# Database: aas_perch
# Generation Time: 2015-06-23 09:49:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table perch2_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_categories`;

CREATE TABLE `perch2_categories` (
  `catID` int(10) NOT NULL AUTO_INCREMENT,
  `setID` int(10) unsigned NOT NULL,
  `catParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `catTitle` char(64) NOT NULL DEFAULT '',
  `catSlug` char(64) NOT NULL DEFAULT '',
  `catPath` char(255) NOT NULL DEFAULT '',
  `catDisplayPath` char(255) NOT NULL DEFAULT '',
  `catOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `catTreePosition` char(255) NOT NULL DEFAULT '000',
  `catDynamicFields` text NOT NULL,
  PRIMARY KEY (`catID`),
  KEY `idx_set` (`setID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_category_counts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_category_counts`;

CREATE TABLE `perch2_category_counts` (
  `countID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catID` int(10) unsigned NOT NULL,
  `countType` char(64) NOT NULL DEFAULT '',
  `countValue` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`countID`),
  KEY `idx_cat` (`catID`),
  KEY `idx_cat_type` (`countType`,`catID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_category_sets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_category_sets`;

CREATE TABLE `perch2_category_sets` (
  `setID` int(10) NOT NULL AUTO_INCREMENT,
  `setTitle` char(64) NOT NULL DEFAULT '',
  `setSlug` char(64) NOT NULL DEFAULT '',
  `setTemplate` char(255) NOT NULL DEFAULT 'set.html',
  `setCatTemplate` char(255) NOT NULL DEFAULT 'category.html',
  `setDynamicFields` text,
  PRIMARY KEY (`setID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_content_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_content_index`;

CREATE TABLE `perch2_content_index` (
  `indexID` int(10) NOT NULL AUTO_INCREMENT,
  `itemID` int(10) NOT NULL DEFAULT '0',
  `regionID` int(10) NOT NULL DEFAULT '0',
  `pageID` int(10) NOT NULL DEFAULT '0',
  `itemRev` int(10) NOT NULL DEFAULT '0',
  `indexKey` char(64) NOT NULL DEFAULT '-',
  `indexValue` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`indexID`),
  KEY `idx_key` (`indexKey`),
  KEY `idx_val` (`indexValue`),
  KEY `idx_rev` (`itemRev`),
  KEY `idx_item` (`itemID`),
  KEY `idx_keyval` (`indexKey`,`indexValue`),
  KEY `idx_regrev` (`regionID`,`itemRev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_content_index` WRITE;
/*!40000 ALTER TABLE `perch2_content_index` DISABLE KEYS */;

INSERT INTO `perch2_content_index` (`indexID`, `itemID`, `regionID`, `pageID`, `itemRev`, `indexKey`, `indexValue`)
VALUES
	(1,1,1,1,1,'_id','1'),
	(2,1,1,1,1,'_order','1000'),
	(3,1,1,1,2,'text','We’re getting married, and together with Alex’s parents Tom and Frances Tebbutt, we’d love you to come join us for our wedding celebration.\nIt’s a long story, but this is our third wedding, this is the British leg of our year long marriage journey'),
	(4,1,1,1,2,'_id','1'),
	(5,1,1,1,2,'_order','1000'),
	(6,1,1,1,3,'text','We’re getting married, and together with Alex’s parents Tom and Frances Tebbutt, we’d love you to come join us for our wedding celebration.\nIt’s a long story, but this is our third wedding, this is the British leg of our year long marriage journey'),
	(7,1,1,1,3,'_id','1'),
	(8,1,1,1,3,'_order','1000'),
	(9,4,4,2,1,'text','Hi there!\nWe’re really looking forward to welcoming you all on our big day, we just need to know that you’re able to join us.\nIf you can fill out the form below that would be great. The RSVP code is included on the invite you got in the post. It’s t'),
	(10,4,4,2,1,'_id','4'),
	(11,4,4,2,1,'_order','1000'),
	(12,5,5,2,1,'text','Postal Address'),
	(13,5,5,2,1,'_id','5'),
	(14,5,5,2,1,'_order','1000'),
	(15,6,6,2,1,'postal_addressees','Tom & Frances Tebbutt'),
	(16,6,6,2,1,'postal_house','The Barley House'),
	(17,6,6,2,1,'postal_street','Coram Street'),
	(18,6,6,2,1,'postal_town','Hadleigh'),
	(19,6,6,2,1,'postal_county','Suffolk'),
	(20,6,6,2,1,'postal_code','IP7 5NR'),
	(21,6,6,2,1,'_id','6'),
	(22,6,6,2,1,'_order','1000'),
	(23,6,6,2,2,'postal_addressees',''),
	(24,6,6,2,2,'postal_house','The Barley House'),
	(25,6,6,2,2,'postal_street','Coram Street'),
	(26,6,6,2,2,'postal_town','Hadleigh'),
	(27,6,6,2,2,'postal_county','Suffolk'),
	(28,6,6,2,2,'postal_code','IP7 5NR'),
	(29,6,6,2,2,'_id','6'),
	(30,6,6,2,2,'_order','1000'),
	(31,6,6,2,3,'postal_addressees','Tom & Frances Tebbutt'),
	(32,6,6,2,3,'postal_house','The Barley House'),
	(33,6,6,2,3,'postal_street','Coram Street'),
	(34,6,6,2,3,'postal_town','Hadleigh'),
	(35,6,6,2,3,'postal_county','Suffolk'),
	(36,6,6,2,3,'postal_code','IP7 5NR'),
	(37,6,6,2,3,'_id','6'),
	(38,6,6,2,3,'_order','1000'),
	(39,7,7,2,1,'text','Are you attending?'),
	(40,7,7,2,1,'_id','7'),
	(41,7,7,2,1,'_order','1000'),
	(42,8,8,2,1,'text','R.S.V.P.'),
	(43,8,8,2,1,'_id','8'),
	(44,8,8,2,1,'_order','1000'),
	(45,9,9,3,1,'text','Venue'),
	(46,9,9,3,1,'_id','9'),
	(47,9,9,3,1,'_order','1000'),
	(48,10,10,3,1,'text','The wedding will be held in a marquee in the garden of Tom & Frances Tebbutts house. As some of the day will be outside we’d recommend packing something warm, just in case.'),
	(49,10,10,3,1,'_id','10'),
	(50,10,10,3,1,'_order','1000'),
	(51,11,11,3,1,'text','Venue Address'),
	(52,11,11,3,1,'_id','11'),
	(53,11,11,3,1,'_order','1000'),
	(54,12,12,3,1,'postal_addressees',''),
	(55,12,12,3,1,'postal_house','The Barley House'),
	(56,12,12,3,1,'postal_street','Coram Street'),
	(57,12,12,3,1,'postal_town','Hadleigh'),
	(58,12,12,3,1,'postal_county','Suffolk'),
	(59,12,12,3,1,'postal_code','IP7 5NR'),
	(60,12,12,3,1,'_id','12'),
	(61,12,12,3,1,'_order','1000'),
	(62,13,13,3,1,'text','Getting there\nBy Car\nHadleigh is located in the county of Suffolk between the two large towns of Colchester and Ipswich.\nFrom London / The West\nThe quickest route is to get to the A12 from M25, junction xx. The turn off you need is sign posted for Hadleig'),
	(63,13,13,3,1,'_id','13'),
	(64,13,13,3,1,'_order','1000'),
	(136,14,15,2,9,'_order','1000'),
	(135,14,15,2,9,'_id','14'),
	(134,14,15,2,9,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(133,14,15,2,9,'rsvp-title','Are you attending?'),
	(140,14,15,2,10,'_order','1000'),
	(139,14,15,2,10,'_id','14'),
	(138,14,15,2,10,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(137,14,15,2,10,'rsvp-title','Are you attending?'),
	(144,14,15,2,11,'_order','1000'),
	(143,14,15,2,11,'_id','14'),
	(142,14,15,2,11,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(141,14,15,2,11,'rsvp-title','Are you attending?'),
	(148,14,15,2,12,'_order','1000'),
	(147,14,15,2,12,'_id','14'),
	(146,14,15,2,12,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(145,14,15,2,12,'rsvp-title','Are you attending?'),
	(81,15,16,4,1,'text','Where to stay'),
	(82,15,16,4,1,'_id','15'),
	(83,15,16,4,1,'_order','1000'),
	(84,16,17,4,1,'text','Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\nWe’'),
	(85,16,17,4,1,'_id','16'),
	(86,16,17,4,1,'_order','1000'),
	(87,16,17,4,2,'text','Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\nWe’'),
	(88,16,17,4,2,'_id','16'),
	(89,16,17,4,2,'_order','1000'),
	(90,16,17,4,3,'text','Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\nWe’'),
	(91,16,17,4,3,'_id','16'),
	(92,16,17,4,3,'_order','1000'),
	(93,16,17,4,4,'text','Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\nWe’'),
	(94,16,17,4,4,'_id','16'),
	(95,16,17,4,4,'_order','1000'),
	(96,13,13,3,2,'text','Getting there\nBy Car\nHadleigh is located in the county of Suffolk between the two large towns of Colchester and Ipswich.\nFrom London / The West\nThe quickest route is to get to the A12 from M25, junction xx. The turn off you need is sign posted for Hadleig'),
	(97,13,13,3,2,'_id','13'),
	(98,13,13,3,2,'_order','1000'),
	(99,17,18,5,1,'text','On The Day'),
	(100,17,18,5,1,'_id','17'),
	(101,17,18,5,1,'_order','1000'),
	(102,18,19,5,1,'text','Closer to the actual wedding date we’ll publish the schedule and any other useful bits of information, so check back here soon.'),
	(103,18,19,5,1,'_id','18'),
	(104,18,19,5,1,'_order','1000'),
	(105,18,19,5,2,'text','Timings\nCloser to the actual wedding date we’ll publish the schedule, so check back here soon.\nWhat to wear\nWe’re asking people to dress ‘smart casual’ on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) o'),
	(106,18,19,5,2,'_id','18'),
	(107,18,19,5,2,'_order','1000'),
	(108,18,19,5,3,'text','Timings\nCloser to the actual wedding date we’ll publish the schedule, so check back here soon.\nWhat to wear\nWe’re asking people to dress ‘smart casual’ on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) o'),
	(109,18,19,5,3,'_id','18'),
	(110,18,19,5,3,'_order','1000'),
	(111,18,19,5,4,'text','Timings\nCloser to the actual wedding date we’ll publish the schedule, so check back here soon.\nWhat to wear\nWe’re asking people to dress ‘smart casual’ on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) o'),
	(112,18,19,5,4,'_id','18'),
	(113,18,19,5,4,'_order','1000'),
	(114,19,20,2,1,'text','Children…\n…Are more than welcome. We have a kids entertainer lined up for a couple of hours from 5:30pm to keep them occupied whilst we have dinner and we’ll also provide a childrens buffet for them.\nIf you do want to bring the whole family can you'),
	(115,19,20,2,1,'_id','19'),
	(116,19,20,2,1,'_order','1000'),
	(152,14,15,2,13,'_order','1000'),
	(151,14,15,2,13,'_id','14'),
	(150,14,15,2,13,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(149,14,15,2,13,'rsvp-title','Are you attending?'),
	(156,14,15,2,14,'_order','1000'),
	(155,14,15,2,14,'_id','14'),
	(154,14,15,2,14,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(153,14,15,2,14,'rsvp-title','Are you attending?'),
	(125,14,15,2,7,'rsvp-title','Are you attending?'),
	(126,14,15,2,7,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(127,14,15,2,7,'_id','14'),
	(128,14,15,2,7,'_order','1000'),
	(129,14,15,2,8,'rsvp-title','Are you attending?'),
	(130,14,15,2,8,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(131,14,15,2,8,'_id','14'),
	(132,14,15,2,8,'_order','1000'),
	(157,20,21,2,1,'rsvp-title','Are you attending?'),
	(158,20,21,2,1,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(159,20,21,2,1,'_id','20'),
	(160,20,21,2,1,'_order','1000'),
	(161,20,21,2,2,'rsvp-title','Are you attending?'),
	(162,20,21,2,2,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(163,20,21,2,2,'_id','20'),
	(164,20,21,2,2,'_order','1000'),
	(165,20,21,2,3,'rsvp-title','Are you attending...?'),
	(166,20,21,2,3,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(167,20,21,2,3,'_id','20'),
	(168,20,21,2,3,'_order','1000'),
	(169,20,21,2,4,'rsvp-title','Are you attending?'),
	(170,20,21,2,4,'thankyou','Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex'),
	(171,20,21,2,4,'_id','20'),
	(172,20,21,2,4,'_order','1000');

/*!40000 ALTER TABLE `perch2_content_index` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_content_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_content_items`;

CREATE TABLE `perch2_content_items` (
  `itemRowID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `regionID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemRev` int(10) unsigned NOT NULL DEFAULT '0',
  `itemOrder` int(10) unsigned NOT NULL DEFAULT '1000',
  `itemJSON` mediumtext NOT NULL,
  `itemSearch` mediumtext NOT NULL,
  `itemUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `itemUpdatedBy` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemRowID`),
  KEY `idx_item` (`itemID`),
  KEY `idx_rev` (`itemRev`),
  KEY `idx_region` (`regionID`),
  KEY `idx_regrev` (`itemID`,`regionID`,`itemRev`),
  KEY `idx_order` (`itemOrder`),
  FULLTEXT KEY `idx_search` (`itemSearch`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_content_items` WRITE;
/*!40000 ALTER TABLE `perch2_content_items` DISABLE KEYS */;

INSERT INTO `perch2_content_items` (`itemRowID`, `itemID`, `regionID`, `pageID`, `itemRev`, `itemOrder`, `itemJSON`, `itemSearch`, `itemUpdated`, `itemUpdatedBy`)
VALUES
	(1,1,1,1,0,1000,'','','2015-06-21 12:40:29',''),
	(2,1,1,1,1,1000,'','','2015-06-21 12:41:09','1'),
	(3,1,1,1,2,1000,'{\"_id\":\"1\",\"text\":{\"raw\":\"We\'re getting married, and together with Alex\'s parents Tom and Frances Tebbutt, we\'d love you to come join us for our wedding celebration.\\r\\n\\r\\nIt\'s a long story, but this is our third wedding, this is the British leg of our year long marriage journey and, coincidentally, also our first wedding anniversary.\\r\\n\\r\\nIt\'s going to be a big party!\",\"processed\":\"<p>We\\u2019re getting married, and together with Alex\\u2019s parents Tom and Frances Tebbutt, we\\u2019d love you to come join us for our wedding celebration.<\\/p>\\n<p>It\\u2019s a long story, but this is our third wedding, this is the British leg of our year long marriage journey and, coincidentally, also our first wedding anniversary.<\\/p>\\n<p>It\\u2019s going to be a big party!<\\/p>\"}}',' We’re getting married, and together with Alex’s parents Tom and Frances Tebbutt, we’d love you to come join us for our wedding celebration.\nIt’s a long story, but this is our third wedding, this is the British leg of our year long marriage journey and, coincidentally, also our first wedding anniversary.\nIt’s going to be a big party! ','2015-06-21 12:41:29','1'),
	(4,1,1,1,3,1000,'{\"_id\":\"1\",\"text\":{\"raw\":\"We\'re getting married, and together with Alex\'s parents Tom and Frances Tebbutt, we\'d love you to come join us for our wedding celebration.\\r\\n\\r\\nIt\'s a long story, but this is our third wedding, this is the British leg of our year long marriage journey and, coincidentally, also our first wedding anniversary.\\r\\n\\r\\nIt\'s going to be a big party!\",\"processed\":\"<p>We\\u2019re getting married, and together with Alex\\u2019s parents Tom and Frances Tebbutt, we\\u2019d love you to come join us for our wedding celebration.<\\/p>\\n<p>It\\u2019s a long story, but this is our third wedding, this is the British leg of our year long marriage journey and, coincidentally, also our first wedding anniversary.<\\/p>\\n<p>It\\u2019s going to be a big party!<\\/p>\"}}',' We’re getting married, and together with Alex’s parents Tom and Frances Tebbutt, we’d love you to come join us for our wedding celebration.\nIt’s a long story, but this is our third wedding, this is the British leg of our year long marriage journey and, coincidentally, also our first wedding anniversary.\nIt’s going to be a big party! ','2015-06-21 12:41:41','1'),
	(5,2,2,1,0,1000,'','','2015-06-21 12:42:08',''),
	(6,3,3,1,0,1000,'','','2015-06-21 13:42:56',''),
	(7,4,4,2,0,1000,'','','2015-06-21 14:15:25',''),
	(8,4,4,2,1,1000,'{\"_id\":\"4\",\"text\":{\"raw\":\"Hi there!\\r\\n---------\\r\\n\\r\\nWe\'re really looking forward to welcoming you all on our big day, we just need to know that you\'re able to join us.\\r\\n\\r\\nIf you can fill out the form below that would be great. The RSVP code is included on the invite you got in the post. It\'s there to stop unwanted guests inviting themselves!\\r\\n\\r\\nIf you would like to send us a card or anything via old fashioned mail can you post it to Alex\'s Parents the following address\",\"processed\":\"<h2>Hi there!<\\/h2>\\n<p>We\\u2019re really looking forward to welcoming you all on our big day, we just need to know that you\\u2019re able to join us.<\\/p>\\n<p>If you can fill out the form below that would be great. The RSVP code is included on the invite you got in the post. It\\u2019s there to stop unwanted guests inviting themselves!<\\/p>\\n<p>If you would like to send us a card or anything via old fashioned mail can you post it to Alex\\u2019s Parents the following address<\\/p>\"}}',' Hi there!\nWe’re really looking forward to welcoming you all on our big day, we just need to know that you’re able to join us.\nIf you can fill out the form below that would be great. The RSVP code is included on the invite you got in the post. It’s there to stop unwanted guests inviting themselves!\nIf you would like to send us a card or anything via old fashioned mail can you post it to Alex’s Parents the following address ','2015-06-21 14:15:42','1'),
	(9,5,5,2,0,1000,'','','2015-06-21 14:16:10',''),
	(10,5,5,2,1,1000,'{\"_id\":\"5\",\"text\":\"Postal Address\",\"_title\":\"Postal Address\"}',' Postal Address ','2015-06-21 14:16:19','1'),
	(11,6,6,2,0,1000,'','','2015-06-21 14:16:25',''),
	(12,6,6,2,1,1000,'{\"_id\":\"6\",\"postal_addressees\":\"Tom & Frances Tebbutt\",\"postal_house\":\"The Barley House\",\"postal_street\":\"Coram Street\",\"postal_town\":\"Hadleigh\",\"postal_county\":\"Suffolk\",\"postal_code\":\"IP7 5NR\"}',' Tom & Frances Tebbutt The Barley House Coram Street Hadleigh Suffolk IP7 5NR ','2015-06-21 14:16:56','1'),
	(13,6,6,2,2,1000,'{\"_id\":\"6\",\"postal_addressees\":null,\"postal_house\":\"The Barley House\",\"postal_street\":\"Coram Street\",\"postal_town\":\"Hadleigh\",\"postal_county\":\"Suffolk\",\"postal_code\":\"IP7 5NR\"}','  The Barley House Coram Street Hadleigh Suffolk IP7 5NR ','2015-06-21 14:17:18','1'),
	(14,6,6,2,3,1000,'{\"_id\":\"6\",\"postal_addressees\":\"Tom & Frances Tebbutt\",\"postal_house\":\"The Barley House\",\"postal_street\":\"Coram Street\",\"postal_town\":\"Hadleigh\",\"postal_county\":\"Suffolk\",\"postal_code\":\"IP7 5NR\"}',' Tom & Frances Tebbutt The Barley House Coram Street Hadleigh Suffolk IP7 5NR ','2015-06-21 14:17:25','1'),
	(15,7,7,2,0,1000,'','','2015-06-21 14:17:39',''),
	(16,7,7,2,1,1000,'{\"_id\":\"7\",\"text\":\"Are you attending?\",\"_title\":\"Are you attending?\"}',' Are you attending? ','2015-06-21 14:17:48','1'),
	(17,8,8,2,0,1000,'','','2015-06-21 14:19:26',''),
	(18,8,8,2,1,1000,'{\"_id\":\"8\",\"text\":\"R.S.V.P.\",\"_title\":\"R.S.V.P.\"}',' R.S.V.P. ','2015-06-21 14:19:27','1'),
	(19,9,9,3,0,1000,'','','2015-06-21 14:20:27',''),
	(20,9,9,3,1,1000,'{\"_id\":\"9\",\"text\":\"Venue\",\"_title\":\"Venue\"}',' Venue ','2015-06-21 14:20:34','1'),
	(21,10,10,3,0,1000,'','','2015-06-21 14:21:07',''),
	(22,10,10,3,1,1000,'{\"_id\":\"10\",\"text\":{\"raw\":\"The wedding will be held in a marquee in the garden of Tom & Frances Tebbutts house. As some of the day will be outside we\'d recommend packing something warm, just in case.\",\"processed\":\"<p>The wedding will be held in a marquee in the garden of Tom & Frances Tebbutts house. As some of the day will be outside we\\u2019d recommend packing something warm, just in case.<\\/p>\"}}',' The wedding will be held in a marquee in the garden of Tom & Frances Tebbutts house. As some of the day will be outside we’d recommend packing something warm, just in case. ','2015-06-21 14:21:09','1'),
	(23,11,11,3,0,1000,'','','2015-06-21 14:22:29',''),
	(24,11,11,3,1,1000,'{\"_id\":\"11\",\"text\":\"Venue Address\",\"_title\":\"Venue Address\"}',' Venue Address ','2015-06-21 14:22:33','1'),
	(25,12,12,3,0,1000,'','','2015-06-21 14:22:39',''),
	(26,12,12,3,1,1000,'{\"_id\":\"12\",\"postal_addressees\":null,\"postal_house\":\"The Barley House\",\"postal_street\":\"Coram Street\",\"postal_town\":\"Hadleigh\",\"postal_county\":\"Suffolk\",\"postal_code\":\"IP7 5NR\"}','  The Barley House Coram Street Hadleigh Suffolk IP7 5NR ','2015-06-21 14:23:01','1'),
	(27,13,13,3,0,1000,'','','2015-06-21 14:23:48',''),
	(28,13,13,3,1,1000,'{\"_id\":\"13\",\"text\":{\"raw\":\"Getting there\\r\\n-------------\\r\\n\\r\\n### By Car\\r\\n\\r\\nHadleigh is located in the county of Suffolk between the two large towns of Colchester and Ipswich.\\r\\n\\r\\n**From London \\/ The West**\\r\\n\\r\\nThe quickest route is to get to the A12 from M25, junction xx. The turn off you need is sign posted for Hadleigh and East Bergholt and is approx. 8 miles after you pass Colchester.\\r\\n\\r\\n**From the East**\\r\\n\\r\\nFollow the A12 from Ipswich and, approx. 5 miles down the road, take the Hadleigh and East Bergholt turnoff.\\r\\n\\r\\n**Once you\'ve taken the turn off...**\\r\\n\\r\\nFollow the signs for Hadleigh, there are very few junctions so you should be ok. This will bring you to Bentley Street (you\'ll know you\'re there because it\'s a very narrow street) at the back of Hadleigh. Follow the high street all the way to the end and round the bend to the right. If you get to the bridge over the river you\'re heading in the right direction and you\'re almost there!\\r\\n\\r\\nShortly after the bridge you\'ll past the borough council offices and then the cricket pitch on you\'re left, just around the corner there is a left hand turn. Take this and follow the road up the hill for 1.5 miles. The Barley House is in the very last group of houses on your left before you get to the t-junction.\\r\\n\\r\\n### By Train\\r\\n\\r\\nThe nearest towns with train stations are Colchester Main line (approx. 25 minutes by car) and Ipswich Town (approx. 20 mins by car)\\r\\n\\r\\nFrom London trains leave extremely regularly from Liverpool street and cost from \\u00a312 each way if you book in advance\\r\\n\\r\\n**Cabs**\\r\\n\\r\\nThere are cabs available at the train stations but we\'d recommend booking a cab, we\'ve put a few numbers for each station below\",\"processed\":\"<h2>Getting there<\\/h2>\\n<h3>By Car<\\/h3>\\n<p>Hadleigh is located in the county of Suffolk between the two large towns of Colchester and Ipswich.<\\/p>\\n<p><strong>From London \\/ The West<\\/strong><\\/p>\\n<p>The quickest route is to get to the A12 from M25, junction xx. The turn off you need is sign posted for Hadleigh and East Bergholt and is approx. 8 miles after you pass Colchester.<\\/p>\\n<p><strong>From the East<\\/strong><\\/p>\\n<p>Follow the A12 from Ipswich and, approx. 5 miles down the road, take the Hadleigh and East Bergholt turnoff.<\\/p>\\n<p><strong>Once you\\u2019ve taken the turn off\\u2026<\\/strong><\\/p>\\n<p>Follow the signs for Hadleigh, there are very few junctions so you should be ok. This will bring you to Bentley Street (you\\u2019ll know you\\u2019re there because it\\u2019s a very narrow street) at the back of Hadleigh. Follow the high street all the way to the end and round the bend to the right. If you get to the bridge over the river you\\u2019re heading in the right direction and you\\u2019re almost there!<\\/p>\\n<p>Shortly after the bridge you\\u2019ll past the borough council offices and then the cricket pitch on you\\u2019re left, just around the corner there is a left hand turn. Take this and follow the road up the hill for 1.5 miles. The Barley House is in the very last group of houses on your left before you get to the t-junction.<\\/p>\\n<h3>By Train<\\/h3>\\n<p>The nearest towns with train stations are Colchester Main line (approx. 25 minutes by car) and Ipswich Town (approx. 20 mins by car)<\\/p>\\n<p>From London trains leave extremely regularly from Liverpool street and cost from \\u00a312 each way if you book in advance<\\/p>\\n<p><strong>Cabs<\\/strong><\\/p>\\n<p>There are cabs available at the train stations but we\\u2019d recommend booking a cab, we\\u2019ve put a few numbers for each station below<\\/p>\"}}',' Getting there\nBy Car\nHadleigh is located in the county of Suffolk between the two large towns of Colchester and Ipswich.\nFrom London / The West\nThe quickest route is to get to the A12 from M25, junction xx. The turn off you need is sign posted for Hadleigh and East Bergholt and is approx. 8 miles after you pass Colchester.\nFrom the East\nFollow the A12 from Ipswich and, approx. 5 miles down the road, take the Hadleigh and East Bergholt turnoff.\nOnce you’ve taken the turn off…\nFollow the signs for Hadleigh, there are very few junctions so you should be ok. This will bring you to Bentley Street (you’ll know you’re there because it’s a very narrow street) at the back of Hadleigh. Follow the high street all the way to the end and round the bend to the right. If you get to the bridge over the river you’re heading in the right direction and you’re almost there!\nShortly after the bridge you’ll past the borough council offices and then the cricket pitch on you’re left, just around the corner there is a left hand turn. Take this and follow the road up the hill for 1.5 miles. The Barley House is in the very last group of houses on your left before you get to the t-junction.\nBy Train\nThe nearest towns with train stations are Colchester Main line (approx. 25 minutes by car) and Ipswich Town (approx. 20 mins by car)\nFrom London trains leave extremely regularly from Liverpool street and cost from £12 each way if you book in advance\nCabs\nThere are cabs available at the train stations but we’d recommend booking a cab, we’ve put a few numbers for each station below ','2015-06-21 14:24:34','1'),
	(55,14,15,2,9,1000,'{\"_id\":\"14\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 10:12:55','1'),
	(56,14,15,2,10,1000,'{\"_id\":\"14\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 11:14:29','1'),
	(57,14,15,2,11,1000,'{\"_id\":\"14\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 11:15:25','1'),
	(58,14,15,2,12,1000,'{\"_id\":\"14\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 13:17:25','1'),
	(59,14,15,2,13,1000,'{\"_id\":\"14\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 13:18:12','1'),
	(34,15,16,4,0,1000,'','','2015-06-21 23:32:55',''),
	(35,15,16,4,1,1000,'{\"_id\":\"15\",\"text\":\"Where to stay\",\"_title\":\"Where to stay\"}',' Where to stay ','2015-06-21 23:33:01','1'),
	(36,16,17,4,0,1000,'','','2015-06-21 23:33:07',''),
	(37,16,17,4,1,1000,'{\"_id\":\"16\",\"text\":{\"raw\":\"Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\\r\\n\\r\\nWe\'re putting together a list of local places which we\'ll put up here ASAP.\\r\\n\\r\\nIn the meantime you can google [Accommodation Hadleigh Suffolk](https:\\/\\/www.google.co.uk\\/?gws_rd=ssl#q=accommodation+hadleigh+suffolk \\\"Accomodation Hadleigh Suffolk\\\") for further ideas.\",\"processed\":\"<p>Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains<\\/p>\\n<p>We\\u2019re putting together a list of local places which we\\u2019ll put up here ASAP.<\\/p>\\n<p>In the meantime you can google <a href=\\\"https:\\/\\/www.google.co.uk\\/?gws_rd=ssl#q=accommodation+hadleigh+suffolk\\\" title=\\\"Accomodation Hadleigh Suffolk\\\">Accommodation Hadleigh Suffolk<\\/a> for further ideas.<\\/p>\"}}',' Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\nWe’re putting together a list of local places which we’ll put up here ASAP.\nIn the meantime you can google Accommodation Hadleigh Suffolk for further ideas. ','2015-06-21 23:34:36','1'),
	(38,16,17,4,2,1000,'{\"_id\":\"16\",\"text\":{\"raw\":\"Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\\r\\n\\r\\nWe\'re putting together a list of local places which we\'ll put up here ASAP.\\r\\n\\r\\nIn the meantime you can google [Accommodation Hadleigh Suffolk](https:\\/\\/www.google.co.uk\\/?gws_rd=ssl#q=accommodation+hadleigh+suffolk \\\"Accomodation Hadleigh Suffolk\\\") for further ideas.\",\"processed\":\"<p>Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains<\\/p>\\n<p>We\\u2019re putting together a list of local places which we\\u2019ll put up here ASAP.<\\/p>\\n<p>In the meantime you can google <a href=\\\"https:\\/\\/www.google.co.uk\\/?gws_rd=ssl#q=accommodation+hadleigh+suffolk\\\" title=\\\"Accomodation Hadleigh Suffolk\\\">Accommodation Hadleigh Suffolk<\\/a> for further ideas.<\\/p>\"}}',' Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\nWe’re putting together a list of local places which we’ll put up here ASAP.\nIn the meantime you can google Accommodation Hadleigh Suffolk for further ideas. ','2015-06-21 23:38:50','1'),
	(39,16,17,4,3,1000,'{\"_id\":\"16\",\"text\":{\"raw\":\"Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\\r\\n\\r\\nWe\'re putting together a list of local places which we\'ll put up here ASAP.\\r\\n\\r\\nIn the meantime you can google [Accommodation Hadleigh Suffolk](https:\\/\\/www.google.co.uk\\/?gws_rd=ssl#q=accommodation+hadleigh+suffolk \\\"Accomodation Hadleigh Suffolk\\\") for further ideas.\\r\\n\\r\\n<a href=\\\"https:\\/\\/www.google.co.uk\\/?gws_rd=ssl#q=accommodation+hadleigh+suffolk\\\" target=\\\"_blank\\\"> Accommodation Hadleigh Suffolk<\\/a>\",\"processed\":\"<p>Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains<\\/p>\\n<p>We\\u2019re putting together a list of local places which we\\u2019ll put up here ASAP.<\\/p>\\n<p>In the meantime you can google <a href=\\\"https:\\/\\/www.google.co.uk\\/?gws_rd=ssl#q=accommodation+hadleigh+suffolk\\\" title=\\\"Accomodation Hadleigh Suffolk\\\">Accommodation Hadleigh Suffolk<\\/a> for further ideas.<\\/p>\\n<p><a href=\\\"https:\\/\\/www.google.co.uk\\/?gws_rd=ssl#q=accommodation+hadleigh+suffolk\\\" target=\\\"_blank\\\"> Accommodation Hadleigh Suffolk<\\/a><\\/p>\"}}',' Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\nWe’re putting together a list of local places which we’ll put up here ASAP.\nIn the meantime you can google Accommodation Hadleigh Suffolk for further ideas.\n Accommodation Hadleigh Suffolk ','2015-06-21 23:39:24','1'),
	(40,16,17,4,4,1000,'{\"_id\":\"16\",\"text\":{\"raw\":\"Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\\r\\n\\r\\nWe\'re putting together a list of local places which we\'ll put up here ASAP.\\r\\n\\r\\nIn the meantime you can google <a href=\\\"https:\\/\\/www.google.co.uk\\/?gws_rd=ssl#q=accommodation+hadleigh+suffolk\\\" target=\\\"_blank\\\"> Accommodation Hadleigh Suffolk<\\/a> for further ideas.\",\"processed\":\"<p>Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains<\\/p>\\n<p>We\\u2019re putting together a list of local places which we\\u2019ll put up here ASAP.<\\/p>\\n<p>In the meantime you can google <a href=\\\"https:\\/\\/www.google.co.uk\\/?gws_rd=ssl#q=accommodation+hadleigh+suffolk\\\" target=\\\"_blank\\\"> Accommodation Hadleigh Suffolk<\\/a> for further ideas.<\\/p>\"}}',' Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains\nWe’re putting together a list of local places which we’ll put up here ASAP.\nIn the meantime you can google  Accommodation Hadleigh Suffolk for further ideas. ','2015-06-21 23:39:45','1'),
	(41,13,13,3,2,1000,'{\"_id\":\"13\",\"text\":{\"raw\":\"Getting there\\r\\n-------------\\r\\n\\r\\n### By Car\\r\\n\\r\\nHadleigh is located in the county of Suffolk between the two large towns of Colchester and Ipswich.\\r\\n\\r\\n**From London \\/ The West**\\r\\n\\r\\nThe quickest route is to get to the A12 from M25, junction xx. The turn off you need is sign posted for Hadleigh and East Bergholt and is approx. 8 miles after you pass Colchester.\\r\\n\\r\\n**From the East**\\r\\n\\r\\nFollow the A12 from Ipswich and, approx. 5 miles down the road, take the Hadleigh and East Bergholt turnoff.\\r\\n\\r\\n**Once you\'ve taken the turn off...**\\r\\n\\r\\nFollow the signs for Hadleigh, there are very few junctions so you should be ok. This will bring you to Bentley Street (you\'ll know you\'re there because it\'s a very narrow street) at the back of Hadleigh. Follow the high street all the way to the end and round the bend to the right. If you get to the bridge over the river you\'re heading in the right direction and you\'re almost there!\\r\\n\\r\\nShortly after the bridge you\'ll past the borough council offices and then the cricket pitch on you\'re left, just around the corner there is a left hand turn. Take this and follow the road up the hill for 1.5 miles. The Barley House is in the very last group of houses on your left before you get to the t-junction.\\r\\n\\r\\n### By Train\\r\\n\\r\\nThe nearest towns with train stations are Colchester Main line (approx. 25 minutes by car) and Ipswich Town (approx. 20 mins by car)\\r\\n\\r\\nFrom London trains leave extremely regularly from Liverpool street and cost from \\u00a312 each way if you book in advance\\r\\n\\r\\n**Cabs**\\r\\n\\r\\nThere are cabs available at the train stations but we\'d recommend booking a cab, we\'ll find some of the local cab numbers and add them here shortly.\",\"processed\":\"<h2>Getting there<\\/h2>\\n<h3>By Car<\\/h3>\\n<p>Hadleigh is located in the county of Suffolk between the two large towns of Colchester and Ipswich.<\\/p>\\n<p><strong>From London \\/ The West<\\/strong><\\/p>\\n<p>The quickest route is to get to the A12 from M25, junction xx. The turn off you need is sign posted for Hadleigh and East Bergholt and is approx. 8 miles after you pass Colchester.<\\/p>\\n<p><strong>From the East<\\/strong><\\/p>\\n<p>Follow the A12 from Ipswich and, approx. 5 miles down the road, take the Hadleigh and East Bergholt turnoff.<\\/p>\\n<p><strong>Once you\\u2019ve taken the turn off\\u2026<\\/strong><\\/p>\\n<p>Follow the signs for Hadleigh, there are very few junctions so you should be ok. This will bring you to Bentley Street (you\\u2019ll know you\\u2019re there because it\\u2019s a very narrow street) at the back of Hadleigh. Follow the high street all the way to the end and round the bend to the right. If you get to the bridge over the river you\\u2019re heading in the right direction and you\\u2019re almost there!<\\/p>\\n<p>Shortly after the bridge you\\u2019ll past the borough council offices and then the cricket pitch on you\\u2019re left, just around the corner there is a left hand turn. Take this and follow the road up the hill for 1.5 miles. The Barley House is in the very last group of houses on your left before you get to the t-junction.<\\/p>\\n<h3>By Train<\\/h3>\\n<p>The nearest towns with train stations are Colchester Main line (approx. 25 minutes by car) and Ipswich Town (approx. 20 mins by car)<\\/p>\\n<p>From London trains leave extremely regularly from Liverpool street and cost from \\u00a312 each way if you book in advance<\\/p>\\n<p><strong>Cabs<\\/strong><\\/p>\\n<p>There are cabs available at the train stations but we\\u2019d recommend booking a cab, we\\u2019ll find some of the local cab numbers and add them here shortly.<\\/p>\"}}',' Getting there\nBy Car\nHadleigh is located in the county of Suffolk between the two large towns of Colchester and Ipswich.\nFrom London / The West\nThe quickest route is to get to the A12 from M25, junction xx. The turn off you need is sign posted for Hadleigh and East Bergholt and is approx. 8 miles after you pass Colchester.\nFrom the East\nFollow the A12 from Ipswich and, approx. 5 miles down the road, take the Hadleigh and East Bergholt turnoff.\nOnce you’ve taken the turn off…\nFollow the signs for Hadleigh, there are very few junctions so you should be ok. This will bring you to Bentley Street (you’ll know you’re there because it’s a very narrow street) at the back of Hadleigh. Follow the high street all the way to the end and round the bend to the right. If you get to the bridge over the river you’re heading in the right direction and you’re almost there!\nShortly after the bridge you’ll past the borough council offices and then the cricket pitch on you’re left, just around the corner there is a left hand turn. Take this and follow the road up the hill for 1.5 miles. The Barley House is in the very last group of houses on your left before you get to the t-junction.\nBy Train\nThe nearest towns with train stations are Colchester Main line (approx. 25 minutes by car) and Ipswich Town (approx. 20 mins by car)\nFrom London trains leave extremely regularly from Liverpool street and cost from £12 each way if you book in advance\nCabs\nThere are cabs available at the train stations but we’d recommend booking a cab, we’ll find some of the local cab numbers and add them here shortly. ','2015-06-21 23:41:58','1'),
	(42,17,18,5,0,1000,'','','2015-06-21 23:47:59',''),
	(43,17,18,5,1,1000,'{\"_id\":\"17\",\"text\":\"On The Day\",\"_title\":\"On The Day\"}',' On The Day ','2015-06-21 23:48:06','1'),
	(44,18,19,5,0,1000,'','','2015-06-21 23:48:12',''),
	(45,18,19,5,1,1000,'{\"_id\":\"18\",\"text\":{\"raw\":\"Closer to the actual wedding date we\'ll publish the schedule and any other useful bits of information, so check back here soon.\",\"processed\":\"<p>Closer to the actual wedding date we\\u2019ll publish the schedule and any other useful bits of information, so check back here soon.<\\/p>\"}}',' Closer to the actual wedding date we’ll publish the schedule and any other useful bits of information, so check back here soon. ','2015-06-21 23:48:56','1'),
	(46,18,19,5,2,1000,'{\"_id\":\"18\",\"text\":{\"raw\":\"Timings\\r\\n-------\\r\\n\\r\\nCloser to the actual wedding date we\'ll publish the schedule, so check back here soon.\\r\\n\\r\\nWhat to wear\\r\\n------------\\r\\n\\r\\nWe\'re asking people to dress \'smart casual\' on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) or even if you fellas fancy wearing a dress (we won\'t comment) then please feel free.\\r\\n\\r\\nThe wedding ceremony will be outside in a garden as will the rest of the day with the dinner being in a marquee. We\'re hoping for the best and for it to be a lovely summers evening. However, bring something warm in case it get\'s chilly in the evening.\\r\\n\\r\\nParking\\r\\n-------\\r\\n\\r\\nIf you\'re driving to the venue, our lovely neighbours have given us access to their field to park your carriages. The entrance is on the other side of the road, directly opposite the drive way to the Barley House. We\'ll make sure it\'s sign posted for you, but if you let us know that you\'re driving we can send you directions if you need them.\",\"processed\":\"<h2>Timings<\\/h2>\\n<p>Closer to the actual wedding date we\\u2019ll publish the schedule, so check back here soon.<\\/p>\\n<h2>What to wear<\\/h2>\\n<p>We\\u2019re asking people to dress \\u2018smart casual\\u2019 on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) or even if you fellas fancy wearing a dress (we won\\u2019t comment) then please feel free.<\\/p>\\n<p>The wedding ceremony will be outside in a garden as will the rest of the day with the dinner being in a marquee. We\\u2019re hoping for the best and for it to be a lovely summers evening. However, bring something warm in case it get\\u2019s chilly in the evening.<\\/p>\\n<h2>Parking<\\/h2>\\n<p>If you\\u2019re driving to the venue, our lovely neighbours have given us access to their field to park your carriages. The entrance is on the other side of the road, directly opposite the drive way to the Barley House. We\\u2019ll make sure it\\u2019s sign posted for you, but if you let us know that you\\u2019re driving we can send you directions if you need them.<\\/p>\"}}',' Timings\nCloser to the actual wedding date we’ll publish the schedule, so check back here soon.\nWhat to wear\nWe’re asking people to dress ‘smart casual’ on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) or even if you fellas fancy wearing a dress (we won’t comment) then please feel free.\nThe wedding ceremony will be outside in a garden as will the rest of the day with the dinner being in a marquee. We’re hoping for the best and for it to be a lovely summers evening. However, bring something warm in case it get’s chilly in the evening.\nParking\nIf you’re driving to the venue, our lovely neighbours have given us access to their field to park your carriages. The entrance is on the other side of the road, directly opposite the drive way to the Barley House. We’ll make sure it’s sign posted for you, but if you let us know that you’re driving we can send you directions if you need them. ','2015-06-21 23:56:26','1'),
	(47,18,19,5,3,1000,'{\"_id\":\"18\",\"text\":{\"raw\":\"Timings\\r\\n-------\\r\\nCloser to the actual wedding date we\'ll publish the schedule, so check back here soon.\\r\\n\\r\\nWhat to wear\\r\\n------------\\r\\nWe\'re asking people to dress \'smart casual\' on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) or even if you fellas fancy wearing a dress (we won\'t comment) then please feel free.\\r\\n\\r\\nThe wedding ceremony will be outside in a garden as will the rest of the day with the dinner being in a marquee. We\'re hoping for the best and for it to be a lovely summers evening. However, bring something warm in case it get\'s chilly in the evening.\\r\\n\\r\\nParking\\r\\n-------\\r\\nIf you\'re driving to the venue, our lovely neighbours have given us access to their field to park your carriages. The entrance is on the other side of the road, directly opposite the drive way to the Barley House. We\'ll make sure it\'s sign posted for you, but if you let us know that you\'re driving we can send you directions if you need them.\",\"processed\":\"<h2>Timings<\\/h2>\\n<p>Closer to the actual wedding date we\\u2019ll publish the schedule, so check back here soon.<\\/p>\\n<h2>What to wear<\\/h2>\\n<p>We\\u2019re asking people to dress \\u2018smart casual\\u2019 on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) or even if you fellas fancy wearing a dress (we won\\u2019t comment) then please feel free.<\\/p>\\n<p>The wedding ceremony will be outside in a garden as will the rest of the day with the dinner being in a marquee. We\\u2019re hoping for the best and for it to be a lovely summers evening. However, bring something warm in case it get\\u2019s chilly in the evening.<\\/p>\\n<h2>Parking<\\/h2>\\n<p>If you\\u2019re driving to the venue, our lovely neighbours have given us access to their field to park your carriages. The entrance is on the other side of the road, directly opposite the drive way to the Barley House. We\\u2019ll make sure it\\u2019s sign posted for you, but if you let us know that you\\u2019re driving we can send you directions if you need them.<\\/p>\"}}',' Timings\nCloser to the actual wedding date we’ll publish the schedule, so check back here soon.\nWhat to wear\nWe’re asking people to dress ‘smart casual’ on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) or even if you fellas fancy wearing a dress (we won’t comment) then please feel free.\nThe wedding ceremony will be outside in a garden as will the rest of the day with the dinner being in a marquee. We’re hoping for the best and for it to be a lovely summers evening. However, bring something warm in case it get’s chilly in the evening.\nParking\nIf you’re driving to the venue, our lovely neighbours have given us access to their field to park your carriages. The entrance is on the other side of the road, directly opposite the drive way to the Barley House. We’ll make sure it’s sign posted for you, but if you let us know that you’re driving we can send you directions if you need them. ','2015-06-21 23:56:53','1'),
	(48,18,19,5,4,1000,'{\"_id\":\"18\",\"text\":{\"raw\":\"Timings\\r\\n-------\\r\\nCloser to the actual wedding date we\'ll publish the schedule, so check back here soon.\\r\\n\\r\\n\\r\\n\\r\\nWhat to wear\\r\\n------------\\r\\nWe\'re asking people to dress \'smart casual\' on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) or even if you fellas fancy wearing a dress (we won\'t comment) then please feel free.\\r\\n\\r\\nThe wedding ceremony will be outside in a garden as will the rest of the day with the dinner being in a marquee. We\'re hoping for the best and for it to be a lovely summers evening. However, bring something warm in case it get\'s chilly in the evening.\\r\\n\\r\\nParking\\r\\n-------\\r\\nIf you\'re driving to the venue, our lovely neighbours have given us access to their field to park your carriages. The entrance is on the other side of the road, directly opposite the drive way to the Barley House. We\'ll make sure it\'s sign posted for you, but if you let us know that you\'re driving we can send you directions if you need them.\",\"processed\":\"<h2>Timings<\\/h2>\\n<p>Closer to the actual wedding date we\\u2019ll publish the schedule, so check back here soon.<\\/p>\\n<h2>What to wear<\\/h2>\\n<p>We\\u2019re asking people to dress \\u2018smart casual\\u2019 on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) or even if you fellas fancy wearing a dress (we won\\u2019t comment) then please feel free.<\\/p>\\n<p>The wedding ceremony will be outside in a garden as will the rest of the day with the dinner being in a marquee. We\\u2019re hoping for the best and for it to be a lovely summers evening. However, bring something warm in case it get\\u2019s chilly in the evening.<\\/p>\\n<h2>Parking<\\/h2>\\n<p>If you\\u2019re driving to the venue, our lovely neighbours have given us access to their field to park your carriages. The entrance is on the other side of the road, directly opposite the drive way to the Barley House. We\\u2019ll make sure it\\u2019s sign posted for you, but if you let us know that you\\u2019re driving we can send you directions if you need them.<\\/p>\"}}',' Timings\nCloser to the actual wedding date we’ll publish the schedule, so check back here soon.\nWhat to wear\nWe’re asking people to dress ‘smart casual’ on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) or even if you fellas fancy wearing a dress (we won’t comment) then please feel free.\nThe wedding ceremony will be outside in a garden as will the rest of the day with the dinner being in a marquee. We’re hoping for the best and for it to be a lovely summers evening. However, bring something warm in case it get’s chilly in the evening.\nParking\nIf you’re driving to the venue, our lovely neighbours have given us access to their field to park your carriages. The entrance is on the other side of the road, directly opposite the drive way to the Barley House. We’ll make sure it’s sign posted for you, but if you let us know that you’re driving we can send you directions if you need them. ','2015-06-21 23:57:03','1'),
	(49,19,20,2,0,1000,'','','2015-06-22 09:19:23',''),
	(50,19,20,2,1,1000,'{\"_id\":\"19\",\"text\":{\"raw\":\"Children...\\r\\n-----------\\r\\n\\r\\n...Are more than welcome. We have a kids entertainer lined up for a couple of hours from 5:30pm to keep them occupied whilst we have dinner and we\'ll also provide a childrens buffet for them.\\r\\n\\r\\nIf you do want to bring the whole family can you just let us know on the RSVP form. Thanks!!\",\"processed\":\"<h2>Children\\u2026<\\/h2>\\n<p>\\u2026Are more than welcome. We have a kids entertainer lined up for a couple of hours from 5:30pm to keep them occupied whilst we have dinner and we\\u2019ll also provide a childrens buffet for them.<\\/p>\\n<p>If you do want to bring the whole family can you just let us know on the RSVP form. Thanks!!<\\/p>\"}}',' Children…\n…Are more than welcome. We have a kids entertainer lined up for a couple of hours from 5:30pm to keep them occupied whilst we have dinner and we’ll also provide a childrens buffet for them.\nIf you do want to bring the whole family can you just let us know on the RSVP form. Thanks!! ','2015-06-22 09:21:34','1'),
	(60,14,15,2,14,1000,'{\"_id\":\"14\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 13:18:13','1'),
	(61,20,21,2,0,1000,'','','2015-06-22 13:20:45',''),
	(62,20,21,2,1,1000,'{\"_id\":\"20\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 13:20:53','1'),
	(53,14,15,2,7,1000,'{\"_id\":\"14\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 09:41:15','1'),
	(54,14,15,2,8,1000,'{\"_id\":\"14\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 10:12:01','1'),
	(63,20,21,2,2,1000,'{\"_id\":\"20\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 13:23:13','1'),
	(64,20,21,2,3,1000,'{\"_id\":\"20\",\"rsvp-title\":\"Are you attending...?\",\"_title\":\"Are you attending...?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending...? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 13:23:20','1'),
	(65,20,21,2,4,1000,'{\"_id\":\"20\",\"rsvp-title\":\"Are you attending?\",\"_title\":\"Are you attending?\",\"thankyou\":{\"raw\":\"h2. Thanks for RSVP\'ing!\\r\\n\\r\\nWe\'ll be in touch if there\'s any important information you need to know, or you can drop us a line with any questions.\\r\\n\\r\\nLooking forward to seeing you soon.\\r\\n\\r\\nShikha & Alex\",\"processed\":\"<h2>Thanks for <span class=\\\"caps\\\">RSVP<\\/span>&#8217;ing!<\\/h2>\\n\\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.<\\/p>\\n\\n<p>Looking forward to seeing you soon.<\\/p>\\n\\n<p>Shikha &amp; Alex<\\/p>\"}}',' Are you attending? Thanks for RSVP&#8217;ing!\n\nWe&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.\n\nLooking forward to seeing you soon.\n\nShikha &amp; Alex ','2015-06-22 13:25:49','1');

/*!40000 ALTER TABLE `perch2_content_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_content_regions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_content_regions`;

CREATE TABLE `perch2_content_regions` (
  `regionID` int(10) NOT NULL AUTO_INCREMENT,
  `pageID` int(10) unsigned NOT NULL,
  `regionKey` varchar(255) NOT NULL DEFAULT '',
  `regionPage` varchar(255) NOT NULL DEFAULT '',
  `regionHTML` longtext NOT NULL,
  `regionNew` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `regionOrder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `regionTemplate` varchar(255) NOT NULL DEFAULT '',
  `regionMultiple` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `regionOptions` text NOT NULL,
  `regionSearchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `regionRev` int(10) unsigned NOT NULL DEFAULT '0',
  `regionLatestRev` int(10) unsigned NOT NULL DEFAULT '0',
  `regionEditRoles` varchar(255) NOT NULL DEFAULT '*',
  `regionUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`regionID`),
  KEY `idx_key` (`regionKey`),
  KEY `idx_path` (`regionPage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_content_regions` WRITE;
/*!40000 ALTER TABLE `perch2_content_regions` DISABLE KEYS */;

INSERT INTO `perch2_content_regions` (`regionID`, `pageID`, `regionKey`, `regionPage`, `regionHTML`, `regionNew`, `regionOrder`, `regionTemplate`, `regionMultiple`, `regionOptions`, `regionSearchable`, `regionRev`, `regionLatestRev`, `regionEditRoles`, `regionUpdated`)
VALUES
	(1,1,'Home Copy','/index.php','<p>We’re getting married, and together with Alex’s parents Tom and Frances Tebbutt, we’d love you to come join us for our wedding celebration.</p>\n<p>It’s a long story, but this is our third wedding, this is the British leg of our year long marriage journey and, coincidentally, also our first wedding anniversary.</p>\n<p>It’s going to be a big party!</p>',0,0,'text_block.html',0,'{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false}',1,3,3,'*','2015-06-21 12:41:41'),
	(4,2,'RSVP Welcome Copy','/rsvp.php','<h2>Hi there!</h2>\n<p>We’re really looking forward to welcoming you all on our big day, we just need to know that you’re able to join us.</p>\n<p>If you can fill out the form below that would be great. The RSVP code is included on the invite you got in the post. It’s there to stop unwanted guests inviting themselves!</p>\n<p>If you would like to send us a card or anything via old fashioned mail can you post it to Alex’s Parents the following address</p>',0,1,'text_block.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-21 14:19:19'),
	(3,1,'Home Image','/index.php','<!-- Undefined content: Home Image -->',0,1,'responsive_image.html',0,'{\"edit_mode\":\"singlepage\"}',1,0,0,'*','2015-06-21 13:42:56'),
	(5,2,'Postal Address Title','/rsvp.php','Postal Address',0,2,'text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-21 14:19:19'),
	(6,2,'Postal Address','/rsvp.php','<ul class=\"address\">\n	\n						\n		<li>Tom &amp; Frances Tebbutt</li>				\n	\n\n	<li>The Barley House</li>\n	\n	<li>Coram Street</li>\n	\n	<li>Hadleigh</li>\n	\n	<li>Suffolk</li>\n	\n	<li>IP7 5NR</li>\n	\n</ul>	',0,3,'address.html',0,'{\"edit_mode\":\"singlepage\"}',1,3,3,'*','2015-06-21 14:19:19'),
	(7,2,'Attending Title','/rsvp.php','Are you attending?',0,4,'text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-21 14:19:19'),
	(8,2,'RSVP Page Title','/rsvp.php','R.S.V.P.',0,0,'text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-21 14:19:27'),
	(9,3,'Venue Page Title','/venue.php','Venue',0,0,'text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-21 14:20:34'),
	(10,3,'Venue Welcome Copy','/venue.php','<p>The wedding will be held in a marquee in the garden of Tom & Frances Tebbutts house. As some of the day will be outside we’d recommend packing something warm, just in case.</p>',0,1,'text_block.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-21 14:21:09'),
	(11,3,'Venue Address Title','/venue.php','Venue Address',0,2,'text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-21 14:22:33'),
	(12,3,'Venue Address','/venue.php','<ul class=\"address\">\n	\n	\n\n	<li>The Barley House</li>\n	\n	<li>Coram Street</li>\n	\n	<li>Hadleigh</li>\n	\n	<li>Suffolk</li>\n	\n	<li>IP7 5NR</li>\n	\n</ul>	',0,3,'address.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-21 14:23:01'),
	(13,3,'How To Get There Copy','/venue.php','<h2>Getting there</h2>\n<h3>By Car</h3>\n<p>Hadleigh is located in the county of Suffolk between the two large towns of Colchester and Ipswich.</p>\n<p><strong>From London / The West</strong></p>\n<p>The quickest route is to get to the A12 from M25, junction xx. The turn off you need is sign posted for Hadleigh and East Bergholt and is approx. 8 miles after you pass Colchester.</p>\n<p><strong>From the East</strong></p>\n<p>Follow the A12 from Ipswich and, approx. 5 miles down the road, take the Hadleigh and East Bergholt turnoff.</p>\n<p><strong>Once you’ve taken the turn off…</strong></p>\n<p>Follow the signs for Hadleigh, there are very few junctions so you should be ok. This will bring you to Bentley Street (you’ll know you’re there because it’s a very narrow street) at the back of Hadleigh. Follow the high street all the way to the end and round the bend to the right. If you get to the bridge over the river you’re heading in the right direction and you’re almost there!</p>\n<p>Shortly after the bridge you’ll past the borough council offices and then the cricket pitch on you’re left, just around the corner there is a left hand turn. Take this and follow the road up the hill for 1.5 miles. The Barley House is in the very last group of houses on your left before you get to the t-junction.</p>\n<h3>By Train</h3>\n<p>The nearest towns with train stations are Colchester Main line (approx. 25 minutes by car) and Ipswich Town (approx. 20 mins by car)</p>\n<p>From London trains leave extremely regularly from Liverpool street and cost from £12 each way if you book in advance</p>\n<p><strong>Cabs</strong></p>\n<p>There are cabs available at the train stations but we’d recommend booking a cab, we’ll find some of the local cab numbers and add them here shortly.</p>',0,4,'text_block.html',0,'{\"edit_mode\":\"singlepage\"}',1,2,2,'*','2015-06-21 23:41:58'),
	(16,4,'Where To Stay Page Title','/where-to-stay.php','Where to stay',0,0,'text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-21 23:33:01'),
	(17,4,'Where To Stay Copy','/where-to-stay.php','<p>Hadleigh is a small town and only has one hotel and a few pubs and guest houses. There are, however, many lovely little villages with places to stay and also the larger towns of Ipswich and Colchester just down the road with some of the hotel chains</p>\n<p>We’re putting together a list of local places which we’ll put up here ASAP.</p>\n<p>In the meantime you can google <a href=\"https://www.google.co.uk/?gws_rd=ssl#q=accommodation+hadleigh+suffolk\" target=\"_blank\"> Accommodation Hadleigh Suffolk</a> for further ideas.</p>',0,1,'text_block.html',0,'{\"edit_mode\":\"singlepage\"}',1,4,4,'*','2015-06-21 23:39:45'),
	(18,5,'On The Day Page Title','/on-the-day.php','On The Day',0,0,'text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-21 23:48:06'),
	(19,5,'On The Day	','/on-the-day.php','<h2>Timings</h2>\n<p>Closer to the actual wedding date we’ll publish the schedule, so check back here soon.</p>\n<h2>What to wear</h2>\n<p>We’re asking people to dress ‘smart casual’ on the day itself. However, if you fancy wearing a suit (fellas) or a cocktail dress (ladies) or even if you fellas fancy wearing a dress (we won’t comment) then please feel free.</p>\n<p>The wedding ceremony will be outside in a garden as will the rest of the day with the dinner being in a marquee. We’re hoping for the best and for it to be a lovely summers evening. However, bring something warm in case it get’s chilly in the evening.</p>\n<h2>Parking</h2>\n<p>If you’re driving to the venue, our lovely neighbours have given us access to their field to park your carriages. The entrance is on the other side of the road, directly opposite the drive way to the Barley House. We’ll make sure it’s sign posted for you, but if you let us know that you’re driving we can send you directions if you need them.</p>',0,1,'text_block.html',0,'{\"edit_mode\":\"singlepage\"}',1,4,4,'*','2015-06-21 23:57:03'),
	(20,2,'Kids Copy','/rsvp.php','<h2>Children…</h2>\n<p>…Are more than welcome. We have a kids entertainer lined up for a couple of hours from 5:30pm to keep them occupied whilst we have dinner and we’ll also provide a childrens buffet for them.</p>\n<p>If you do want to bring the whole family can you just let us know on the RSVP form. Thanks!!</p>',0,4,'text_block.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2015-06-22 09:21:34'),
	(21,2,'RSVP Form','/rsvp.php','<perch:form template=\"/templates/content/rsvp.html\" id=\"rsvp\" method=\"post\" app=\"perch_forms\">\n\n	<div class=\"row\">\n	\n		<div class=\"ten offset-by-one columns\">\n			\n			<h2>Are you attending?</h2>\n		\n		</div>\n		\n	</div>\n\n  <div class=\"row\">\n\n	  <div class=\"ten offset-by-one columns\">\n\n	    <div class=\"one-half column\">\n				\n				<perch:label for=\"names\">Your name(s)<perch:error for=\"names\" type=\"required\"><span class=\"error\"> : Required</span></perch:error></perch:label>\n		\n				<perch:input class=\"u-full-width\" placeholder=\"John Smith\" type=\"text\" id=\"names\" required=\"true\" label=\"Name(s)\" />\n\n	    </div>\n\n	    <div class=\"one-half column\">\n				\n				<perch:label for=\"email-address\">A Contact Email<perch:error for=\"email-address\" type=\"required\"><span class=\"error\"> : Required</span></perch:error></perch:label>\n		\n				<perch:input class=\"u-full-width\" placeholder=\"your@email.com\" type=\"email\" id=\"email-address\" required=\"true\" label=\"Email Address\" />\n\n	    </div>	    \n	    \n	  </div>\n	  \n  </div>\n  \n  <div class=\"row\">\n\n	  <div class=\"ten offset-by-one columns\">\n\n	    <div class=\"one-half column\">\n\n				<perch:label for=\"can-you-attend\">Can you come?</perch:label>\n				\n				<perch:input id=\"can-you-attend\" class=\"u-full-width\" type=\"select\" options=\"Sorry - can\'t come|No,Yes - definitely|Yes\" />\n\n	    </div>\n\n	    <div class=\"one-half column\">\n\n				<perch:label for=\"rsvpcode\">RSVP Code<perch:error for=\"rsvpcode\" type=\"required\"><span class=\"error\"> : Required</span></perch:error><perch:error for=\"rsvpcode\" type=\"helper\"><span class=\"error\"> : Incorrect Code</span></perch:error></perch:label>\n				\n				<perch:input class=\"u-full-width\" type=\"text\" id=\"rsvpcode\" required=\"true\" helper=\"Aas_Validation_FormValidation::check_rsvp_code\" label=\"RSVP Code\" />\n\n	    </div>\n\n	  </div>\n	  \n  </div>\n  \n 	<div id=\"able-to-attend\">\n\n	  <div id=\"row\">\n		  \n		  <div class=\"ten offset-by-one columns\">\n		  \n			  <div class=\"one-third column\">\n				  \n				  <perch:label for=\"number-of-attendees\">How many adults?</perch:label>\n				  \n				  <perch:input id=\"number-of-attendees\" class=\"u-full-width\" type=\"select\" options=\"1,2,3,4,5,6,7,8,9,10\" />\n\n			  </div>\n			  \n				<div class=\"one-third column\">\n					  							  \n				  <perch:label for=\"number-of-kids\">And how many kids?</perch:label>\n				  \n				  <perch:input id=\"number-of-kids\" class=\"u-full-width\" type=\"select\" options=\"0,1,2,3,4,5,6,7,8,9,10\" />\n\n			  </div>\n			  								  						 	\n			 	<div class=\"one-third column\">\n				 	\n				 	<perch:label for=\"dietary-requirements-question\">Any dietary requirements?</perch:label>\n				 	\n				 	<perch:input id=\"dietary-requirements-question\" class=\"u-full-width\" type=\"select\" options=\"No,Yes\" />\n			 								 	\n			 	</div>\n			  \n		  </div>\n	  \n	  </div>\n\n	  <div id=\"row\">\n\n		 	<div id=\"dietary-requirements\" class=\"ten offset-by-one columns\">\n			 	\n			 	<perch:label for=\"dietary-requirements-message\">What do you / don\'t you or your +1s eat?</perch:label>\n			 	\n			 	<perch:input type=\"textarea\" id=\"dietary-requirements-message\" class=\"u-full-width\" placeholder=\"Well, we don\'t eat.... but we do eat....\" />\n\n		  </div>\n		 	\n	 	</div>\n	  	\n	  <div id=\"row\">\n\n		 	<div id=\"play-list\" class=\"ten offset-by-one columns\">\n		 		\n		 		<perch:label for=\"fave-tune\">Fancy adding a tune to our playlist?</perch:label>\n		 	\n		 		<perch:input class=\"u-full-width\" type=\"text\" id=\"fave-tune\" placeholder=\"Let us know what\'s going to get you dancing...\" label=\"Fave Tune\" />\n\n		  </div>\n		 	\n	 	</div>	\n  \n 	</div>\n	 	\n  <div id=\"row\">\n		  \n	 	<div id=\"final-message\" class=\"ten offset-by-one columns\">\n\n		  <perch:label for=\"message\">Let us know if there\'s anything else?</perch:label>\n		  \n		  <perch:input type=\"textarea\" id=\"message\" class=\"u-full-width\" placeholder=\"Hi Alex & Shikha...\" label=\"Message\" />\n\n	  </div>\n  \n 	</div>\n\n 	<div class=\"row\">\n	 	\n	 	<div class=\"ten offset-by-one columns\">\n	 	\n		 	<div class=\"u-pull-right\">\n			 	\n			 	<perch:input type=\"submit\" id=\"submit\" class=\"button button-primary\" value=\"Submit\" />\n			  \n		 	</div>\n\n	 	</div>\n	  \n 	</div>\n 	\n 	<perch:success>\n\n	 	<div class=\"row\">\n		 	\n		 	<div class=\"ten offset-by-one columns\">\n\n		 		<h2>Thanks for <span class=\"caps\">RSVP</span>&#8217;ing!</h2>\n\n<p>We&#8217;ll be in touch if there&#8217;s any important information you need to know, or you can drop us a line with any questions.</p>\n\n<p>Looking forward to seeing you soon.</p>\n\n<p>Shikha &amp; Alex</p>\n		 		\n		 	</div>\n		 	\n	 	</div>\n\n	</perch:success> 	\n\n</perch:form>',0,5,'rsvp.html',0,'{\"edit_mode\":\"singlepage\"}',1,4,4,'*','2015-06-22 13:25:49');

/*!40000 ALTER TABLE `perch2_content_regions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_forms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_forms`;

CREATE TABLE `perch2_forms` (
  `formID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formKey` varchar(64) NOT NULL DEFAULT '',
  `formTitle` varchar(255) NOT NULL DEFAULT '',
  `formTemplate` varchar(255) NOT NULL DEFAULT '',
  `formOptions` text,
  PRIMARY KEY (`formID`),
  KEY `idx_formKey` (`formKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_forms` WRITE;
/*!40000 ALTER TABLE `perch2_forms` DISABLE KEYS */;

INSERT INTO `perch2_forms` (`formID`, `formKey`, `formTitle`, `formTemplate`, `formOptions`)
VALUES
	(1,'rsvp','Rsvp','/templates/forms/rsvp.html','{\"store\":\"1\",\"fileLocation\":\"\",\"email\":\"1\",\"emailAddress\":\"alex.tebbutt@digi-nut.co.uk\",\"adminEmailMessage\":\"Testing\",\"adminEmailTemplate\":\"\",\"adminEmailSubject\":\"Response vi email\",\"adminEmailFromName\":\"Alex Tebbutt\",\"adminEmailFromAddress\":\"hello@alexandshikha.com\",\"akismetAPIKey\":\"\",\"responseEmailSubject\":\"RSVP Sent\",\"responseEmailMessage\":\"An RSVP has been submitted on the site, details below.\",\"formEmailFieldID\":\"email-address\",\"sendAutoResponse\":\"1\",\"autoresponseTemplate\":\"\"}');

/*!40000 ALTER TABLE `perch2_forms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_forms_responses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_forms_responses`;

CREATE TABLE `perch2_forms_responses` (
  `responseID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formID` int(10) unsigned NOT NULL,
  `responseCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `responseJSON` mediumtext,
  `responseIP` varchar(16) NOT NULL DEFAULT '',
  `responseSpam` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `responseSpamData` text,
  PRIMARY KEY (`responseID`),
  KEY `idx_formID` (`formID`),
  KEY `idx_spam` (`responseSpam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_navigation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_navigation`;

CREATE TABLE `perch2_navigation` (
  `groupID` int(10) NOT NULL AUTO_INCREMENT,
  `groupTitle` varchar(255) NOT NULL DEFAULT '',
  `groupSlug` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`groupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_navigation_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_navigation_pages`;

CREATE TABLE `perch2_navigation_pages` (
  `navpageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pageID` int(10) unsigned NOT NULL DEFAULT '0',
  `groupID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageOrder` int(10) unsigned NOT NULL DEFAULT '1',
  `pageDepth` tinyint(10) unsigned NOT NULL,
  `pageTreePosition` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`navpageID`),
  KEY `idx_group` (`groupID`),
  KEY `idx_page_group` (`pageID`,`groupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_page_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_page_templates`;

CREATE TABLE `perch2_page_templates` (
  `templateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `templateTitle` varchar(255) NOT NULL DEFAULT '',
  `templatePath` varchar(255) NOT NULL DEFAULT '',
  `optionsPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `templateReference` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `templateNavGroups` varchar(255) DEFAULT '',
  PRIMARY KEY (`templateID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_pages`;

CREATE TABLE `perch2_pages` (
  `pageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pagePath` varchar(255) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `pageNavText` varchar(255) NOT NULL DEFAULT '',
  `pageNew` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pageOrder` int(10) unsigned NOT NULL DEFAULT '1',
  `pageDepth` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `pageSortPath` varchar(255) NOT NULL DEFAULT '',
  `pageTreePosition` varchar(64) NOT NULL DEFAULT '',
  `pageSubpageRoles` varchar(255) NOT NULL DEFAULT '',
  `pageSubpagePath` varchar(255) NOT NULL DEFAULT '',
  `pageHidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pageNavOnly` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pageAccessTags` varchar(255) NOT NULL DEFAULT '',
  `pageCreatorID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageModified` datetime NOT NULL DEFAULT '2014-01-01 00:00:00',
  `pageAttributes` text NOT NULL,
  `pageAttributeTemplate` varchar(255) NOT NULL DEFAULT 'default.html',
  `pageTemplate` char(255) NOT NULL DEFAULT '',
  `templateID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageSubpageTemplates` varchar(255) NOT NULL DEFAULT '',
  `pageCollections` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pageID`),
  KEY `idx_parent` (`pageParentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_pages` WRITE;
/*!40000 ALTER TABLE `perch2_pages` DISABLE KEYS */;

INSERT INTO `perch2_pages` (`pageID`, `pageParentID`, `pagePath`, `pageTitle`, `pageNavText`, `pageNew`, `pageOrder`, `pageDepth`, `pageSortPath`, `pageTreePosition`, `pageSubpageRoles`, `pageSubpagePath`, `pageHidden`, `pageNavOnly`, `pageAccessTags`, `pageCreatorID`, `pageModified`, `pageAttributes`, `pageAttributeTemplate`, `pageTemplate`, `templateID`, `pageSubpageTemplates`, `pageCollections`)
VALUES
	(1,0,'/index.php','Home page','Home page',0,1,1,'','000-001','','',0,0,'',0,'2015-06-21 11:41:41','','default.html','',0,'',''),
	(2,0,'/rsvp.php','Rsvp','Rsvp',0,5,1,'/rsvp','000-005','','',0,0,'',0,'2015-06-22 12:25:49','','default.html','',0,'',''),
	(3,0,'/venue.php','Venue','Venue',0,2,1,'/venue','000-002','','',0,0,'',0,'2015-06-21 22:41:58','','default.html','',0,'',''),
	(4,0,'/where-to-stay.php','Where to stay','Where to stay',0,4,1,'/where-to-stay','000-004','','',0,0,'',0,'2015-06-21 22:39:45','','default.html','',0,'',''),
	(5,0,'/on-the-day.php','On the day','On the day',0,3,1,'/on-the-day','000-003','','',0,0,'',0,'2015-06-21 22:57:03','','default.html','',0,'','');

/*!40000 ALTER TABLE `perch2_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_resource_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_resource_tags`;

CREATE TABLE `perch2_resource_tags` (
  `tagID` int(10) NOT NULL AUTO_INCREMENT,
  `tagTitle` varchar(255) NOT NULL DEFAULT '',
  `tagSlug` varchar(255) NOT NULL DEFAULT '',
  `tagCount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



# Dump of table perch2_resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_resources`;

CREATE TABLE `perch2_resources` (
  `resourceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resourceApp` char(32) NOT NULL DEFAULT 'content',
  `resourceBucket` char(16) NOT NULL DEFAULT 'default',
  `resourceFile` char(255) NOT NULL DEFAULT '',
  `resourceKey` enum('orig','thumb') DEFAULT NULL,
  `resourceParentID` int(10) NOT NULL DEFAULT '0',
  `resourceType` char(4) NOT NULL DEFAULT '',
  `resourceCreated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `resourceUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `resourceAWOL` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `resourceTitle` char(255) DEFAULT NULL,
  `resourceFileSize` int(10) unsigned DEFAULT NULL,
  `resourceWidth` int(10) unsigned DEFAULT NULL,
  `resourceHeight` int(10) unsigned DEFAULT NULL,
  `resourceCrop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `resourceDensity` float NOT NULL DEFAULT '1',
  `resourceTargetWidth` int(10) unsigned DEFAULT NULL,
  `resourceTargetHeight` int(10) unsigned DEFAULT NULL,
  `resourceMimeType` char(64) DEFAULT NULL,
  `resourceInLibrary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`resourceID`),
  UNIQUE KEY `idx_file` (`resourceBucket`,`resourceFile`),
  KEY `idx_app` (`resourceApp`),
  KEY `idx_key` (`resourceKey`),
  KEY `idx_type` (`resourceType`),
  KEY `idx_awol` (`resourceAWOL`),
  KEY `idx_library` (`resourceInLibrary`),
  FULLTEXT KEY `idx_search` (`resourceTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_resources_to_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_resources_to_tags`;

CREATE TABLE `perch2_resources_to_tags` (
  `resourceID` int(10) NOT NULL DEFAULT '0',
  `tagID` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`resourceID`,`tagID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;



# Dump of table perch2_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_settings`;

CREATE TABLE `perch2_settings` (
  `settingID` varchar(60) NOT NULL DEFAULT '',
  `userID` int(10) unsigned NOT NULL DEFAULT '0',
  `settingValue` text NOT NULL,
  PRIMARY KEY (`settingID`,`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_settings` WRITE;
/*!40000 ALTER TABLE `perch2_settings` DISABLE KEYS */;

INSERT INTO `perch2_settings` (`settingID`, `userID`, `settingValue`)
VALUES
	('headerColour',0,'#ffffff'),
	('content_singlePageEdit',0,'1'),
	('helpURL',0,''),
	('siteURL',0,'/'),
	('hideBranding',0,'0'),
	('content_collapseList',0,'1'),
	('lang',0,'en-gb'),
	('update_2.8.8',0,'done'),
	('latest_version',0,'2.8.8'),
	('on_sale_version',0,'2.8.8');

/*!40000 ALTER TABLE `perch2_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_user_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_user_privileges`;

CREATE TABLE `perch2_user_privileges` (
  `privID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `privKey` varchar(255) NOT NULL DEFAULT '',
  `privTitle` varchar(255) NOT NULL DEFAULT '',
  `privOrder` int(10) unsigned NOT NULL DEFAULT '99',
  PRIMARY KEY (`privID`),
  UNIQUE KEY `idx_key` (`privKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_user_privileges` WRITE;
/*!40000 ALTER TABLE `perch2_user_privileges` DISABLE KEYS */;

INSERT INTO `perch2_user_privileges` (`privID`, `privKey`, `privTitle`, `privOrder`)
VALUES
	(1,'perch.login','Log in',1),
	(2,'perch.settings','Change settings',2),
	(3,'perch.users.manage','Manage users',3),
	(4,'perch.updatenotices','View update notices',4),
	(5,'content.regions.delete','Delete regions',1),
	(6,'content.regions.options','Edit region options',2),
	(7,'content.pages.edit','Edit page details',1),
	(8,'content.pages.reorder','Reorder pages',2),
	(9,'content.pages.create','Add new pages',3),
	(10,'content.pages.configure','Configure page settings',5),
	(11,'content.pages.delete','Delete pages',4),
	(12,'content.templates.delete','Delete master pages',6),
	(13,'content.navgroups.configure','Configure navigation groups',7),
	(14,'content.navgroups.create','Create navigation groups',8),
	(15,'content.navgroups.delete','Delete navigation groups',9),
	(16,'content.pages.create.toplevel','Add new top-level pages',3),
	(17,'content.pages.delete.own','Delete pages they created themselves',4),
	(18,'content.templates.configure','Configure master pages',6),
	(19,'content.pages.attributes','Edit page titles and attributes',6),
	(20,'assets.create','Upload assets',2),
	(21,'perch_forms','Access forms',1),
	(22,'perch_forms.configure','Configure forms',1),
	(23,'perch_forms.delete','Delete forms',1);

/*!40000 ALTER TABLE `perch2_user_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_user_role_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_user_role_privileges`;

CREATE TABLE `perch2_user_role_privileges` (
  `roleID` int(10) unsigned NOT NULL,
  `privID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`roleID`,`privID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_user_role_privileges` WRITE;
/*!40000 ALTER TABLE `perch2_user_role_privileges` DISABLE KEYS */;

INSERT INTO `perch2_user_role_privileges` (`roleID`, `privID`)
VALUES
	(1,1),
	(1,7),
	(1,8),
	(1,25),
	(2,1),
	(2,2),
	(2,3),
	(2,4),
	(2,5),
	(2,6),
	(2,7),
	(2,8),
	(2,9),
	(2,10),
	(2,11),
	(2,12);

/*!40000 ALTER TABLE `perch2_user_role_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_user_roles`;

CREATE TABLE `perch2_user_roles` (
  `roleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleTitle` varchar(255) NOT NULL DEFAULT '',
  `roleSlug` varchar(255) NOT NULL DEFAULT '',
  `roleMasterAdmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_user_roles` WRITE;
/*!40000 ALTER TABLE `perch2_user_roles` DISABLE KEYS */;

INSERT INTO `perch2_user_roles` (`roleID`, `roleTitle`, `roleSlug`, `roleMasterAdmin`)
VALUES
	(1,'Editor','editor',0),
	(2,'Admin','admin',1);

/*!40000 ALTER TABLE `perch2_user_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_users`;

CREATE TABLE `perch2_users` (
  `userID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userUsername` varchar(255) NOT NULL DEFAULT '',
  `userPassword` varchar(255) NOT NULL DEFAULT '',
  `userCreated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `userUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userLastLogin` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `userGivenName` varchar(255) NOT NULL DEFAULT '',
  `userFamilyName` varchar(255) NOT NULL DEFAULT '',
  `userEmail` varchar(255) NOT NULL DEFAULT '',
  `userEnabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userHash` char(32) NOT NULL DEFAULT '',
  `roleID` int(10) unsigned NOT NULL DEFAULT '1',
  `userMasterAdmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`),
  KEY `idx_enabled` (`userEnabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_users` WRITE;
/*!40000 ALTER TABLE `perch2_users` DISABLE KEYS */;

INSERT INTO `perch2_users` (`userID`, `userUsername`, `userPassword`, `userCreated`, `userUpdated`, `userLastLogin`, `userGivenName`, `userFamilyName`, `userEmail`, `userEnabled`, `userHash`, `roleID`, `userMasterAdmin`)
VALUES
	(1,'admin_aas','$P$Bj1C6m.QjSWjdgasuYJ6VeEC4/36/r0','2015-06-21 11:24:00','2015-06-22 13:25:49','2015-06-22 12:17:22','Alex','Tebbutt','alex@ifnotwhynot.com',1,'597a8646f8fdbbc03ef99e09bd72f007',2,1);

/*!40000 ALTER TABLE `perch2_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
