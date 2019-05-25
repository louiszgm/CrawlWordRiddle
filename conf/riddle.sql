CREATE TABLE `puzzle_dwmy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `puzzle` varchar(500) DEFAULT '' COMMENT '谜面',
  `mimu` varchar(500) DEFAULT '' COMMENT '谜目',
  `answer` varchar(100) DEFAULT '' COMMENT '谜底',
  `tips` varchar(500) DEFAULT '' COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动物谜语';

CREATE TABLE `puzzle_zwmy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `puzzle` varchar(500) DEFAULT '' COMMENT '谜面',
  `mimu` varchar(500) DEFAULT '' COMMENT '谜目',
  `answer` varchar(100) DEFAULT '' COMMENT '谜底',
  `tips` varchar(500) DEFAULT '' COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='植物谜语';

CREATE TABLE `ask_njmy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT '' COMMENT '问',
  `answer` varchar(100) DEFAULT '' COMMENT '答',
  `tips` varchar(500) DEFAULT '' COMMENT '小贴士',
  `url` varchar(100) DEFAULT '' COMMENT '数据来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='脑经急转弯';
