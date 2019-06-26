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


CREATE TABLE `puzzle_rmmy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人名谜语';

CREATE TABLE `puzzle_dm` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地名谜语';

CREATE TABLE `puzzle_cy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='词语谜语';

CREATE TABLE `puzzle_dgmy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='带格谜语';

CREATE TABLE `puzzle_ry` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用语谜语';

CREATE TABLE `puzzle_wpmy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品谜语';

CREATE TABLE `puzzle_jmmy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='诗词谜语';


CREATE TABLE `puzzle_sbmy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书报谜语';

CREATE TABLE `puzzle_symy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='俗语谜语';


CREATE TABLE `puzzle_ypmy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药品谜语';

CREATE TABLE `puzzle_yymy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='音乐谜语';


CREATE TABLE `puzzle_ysmy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='影视谜语';

CREATE TABLE `puzzle_cwmy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='称谓谜语';


CREATE TABLE `puzzle_qtmy` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='趣味谜语';
CREATE TABLE `ask_njmy_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT '' COMMENT '问',
  `answer` varchar(100) DEFAULT '' COMMENT '答',
  `tips` MEDIUMTEXT DEFAULT '' COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='脑经急转弯';

CREATE TABLE `ask_zlmy_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT '' COMMENT '问',
  `answer` varchar(100) DEFAULT '' COMMENT '答',
  `tips` MEDIUMTEXT DEFAULT '' COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='智力问答';
