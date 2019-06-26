CREATE TABLE `puzzle_dwmy_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `puzzle` varchar(500) DEFAULT '' COMMENT '谜面',
  `mimu` varchar(500) DEFAULT '' COMMENT '谜目',
  `answer` varchar(100) DEFAULT '' COMMENT '谜底',
  `tips` varchar(20000) DEFAULT '' COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动物谜语';

CREATE TABLE `puzzle_zwmy_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `puzzle` varchar(500) DEFAULT '' COMMENT '谜面',
  `mimu` varchar(500) DEFAULT '' COMMENT '谜目',
  `answer` varchar(100) DEFAULT '' COMMENT '谜底',
  `tips` varchar(20000) DEFAULT '' COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='植物谜语';


CREATE TABLE `puzzle_gxmy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `puzzle` varchar(500) DEFAULT '' COMMENT '谜面',
  `mimu` varchar(500) DEFAULT '' COMMENT '谜目',
  `answer` varchar(100) DEFAULT '' COMMENT '谜底',
  `tips` MEDIUMTEXT COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  `selection1` varchar(500) DEFAULT '选项一' COMMENT '选项一',
  `selection2` varchar(500) DEFAULT '选项二' COMMENT '选项二',
  `selection3` varchar(500) DEFAULT '选项三' COMMENT '选项三',
  `puzzleType` varchar(100) DEFAULT ''  COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='搞笑谜语';

CREATE TABLE `puzzle_zmmy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `puzzle` varchar(500) DEFAULT '' COMMENT '谜面',
  `mimu` varchar(500) DEFAULT '' COMMENT '谜目',
  `answer` varchar(100) DEFAULT '' COMMENT '谜底',
  `tips` MEDIUMTEXT COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  `selection1` varchar(500) DEFAULT '选项一' COMMENT '选项一',
  `selection2` varchar(500) DEFAULT '选项二' COMMENT '选项二',
  `selection3` varchar(500) DEFAULT '选项三' COMMENT '选项三',
  `puzzleType` varchar(100) DEFAULT ''  COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字谜谜语';

CREATE TABLE `puzzle_cymy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `puzzle` varchar(500) DEFAULT '' COMMENT '谜面',
  `mimu` varchar(500) DEFAULT '' COMMENT '谜目',
  `answer` varchar(100) DEFAULT '' COMMENT '谜底',
  `tips` MEDIUMTEXT COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  `selection1` varchar(500) DEFAULT '选项一' COMMENT '选项一',
  `selection2` varchar(500) DEFAULT '选项二' COMMENT '选项二',
  `selection3` varchar(500) DEFAULT '选项三' COMMENT '选项三',
  `puzzleType` varchar(100) DEFAULT ''  COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成语谜语';

CREATE TABLE `puzzle_dmmy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `puzzle` varchar(500) DEFAULT '' COMMENT '谜面',
  `mimu` varchar(500) DEFAULT '' COMMENT '谜目',
  `answer` varchar(100) DEFAULT '' COMMENT '谜底',
  `tips` MEDIUMTEXT COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  `selection1` varchar(500) DEFAULT '选项一' COMMENT '选项一',
  `selection2` varchar(500) DEFAULT '选项二' COMMENT '选项二',
  `selection3` varchar(500) DEFAULT '选项三' COMMENT '选项三',
  `puzzleType` varchar(100) DEFAULT ''  COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='灯谜谜语';

CREATE TABLE `puzzle_aqmy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `puzzle` varchar(500) DEFAULT '' COMMENT '谜面',
  `mimu` varchar(500) DEFAULT '' COMMENT '谜目',
  `answer` varchar(100) DEFAULT '' COMMENT '谜底',
  `tips` MEDIUMTEXT COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  `selection1` varchar(500) DEFAULT '选项一' COMMENT '选项一',
  `selection2` varchar(500) DEFAULT '选项二' COMMENT '选项二',
  `selection3` varchar(500) DEFAULT '选项三' COMMENT '选项三',
  `puzzleType` varchar(100) DEFAULT ''  COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='爱情谜语';

CREATE TABLE `ask_njmy_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT '' COMMENT '问',
  `answer` varchar(100) DEFAULT '' COMMENT '答',
  `tips` varchar(20000) DEFAULT '' COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='脑经急转弯';

CREATE TABLE `ask_zlmy_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT '' COMMENT '问',
  `answer` varchar(100) DEFAULT '' COMMENT '答',
  `tips` varchar(2000) DEFAULT '' COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='智力问答';
