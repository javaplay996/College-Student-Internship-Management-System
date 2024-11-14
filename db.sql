/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmqvo63
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmqvo63` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmqvo63`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmqvo63/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmqvo63/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmqvo63/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `gonggaoxinxi` */

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `gonggaoneirong` longtext COMMENT '公告内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggaoxinxi` */

insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fabushijian`,`gonggaoneirong`) values (31,'2021-05-15 10:19:00','公告信息','2021-05-15 10:19:00','<p><img src=\"http://localhost:8080/ssmqvo63/upload/1621045703728.jpg\"></p><p><br></p><p>这里可以发布一些相关公告信息内容，这里的所有内容都是用于测试功能的，都是可以自行添加修改删除替换的。。</p>');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fabushijian`,`gonggaoneirong`) values (32,'2021-05-15 10:19:00','标题2','2021-05-15 10:19:00','公告内容2');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fabushijian`,`gonggaoneirong`) values (33,'2021-05-15 10:19:00','标题3','2021-05-15 10:19:00','公告内容3');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fabushijian`,`gonggaoneirong`) values (34,'2021-05-15 10:19:00','标题4','2021-05-15 10:19:00','公告内容4');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fabushijian`,`gonggaoneirong`) values (35,'2021-05-15 10:19:00','标题5','2021-05-15 10:19:00','公告内容5');
insert  into `gonggaoxinxi`(`id`,`addtime`,`biaoti`,`fabushijian`,`gonggaoneirong`) values (36,'2021-05-15 10:19:00','标题6','2021-05-15 10:19:00','公告内容6');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xuexiao` varchar(200) DEFAULT NULL COMMENT '学校',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xuexiao`,`banji`,`zhicheng`,`dianhua`) values (21,'2021-05-15 10:19:00','1','1','刘老师','女','http://localhost:8080/ssmqvo63/upload/jiaoshi_touxiang1.jpg','XX中学','201','班主任','13823888881');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xuexiao`,`banji`,`zhicheng`,`dianhua`) values (22,'2021-05-15 10:19:00','教师2','123456','教师姓名2','男','http://localhost:8080/ssmqvo63/upload/jiaoshi_touxiang2.jpg','学校2','班级2','职称2','13823888882');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xuexiao`,`banji`,`zhicheng`,`dianhua`) values (23,'2021-05-15 10:19:00','教师3','123456','教师姓名3','男','http://localhost:8080/ssmqvo63/upload/jiaoshi_touxiang3.jpg','学校3','班级3','职称3','13823888883');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xuexiao`,`banji`,`zhicheng`,`dianhua`) values (24,'2021-05-15 10:19:00','教师4','123456','教师姓名4','男','http://localhost:8080/ssmqvo63/upload/jiaoshi_touxiang4.jpg','学校4','班级4','职称4','13823888884');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xuexiao`,`banji`,`zhicheng`,`dianhua`) values (25,'2021-05-15 10:19:00','教师5','123456','教师姓名5','男','http://localhost:8080/ssmqvo63/upload/jiaoshi_touxiang5.jpg','学校5','班级5','职称5','13823888885');
insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`touxiang`,`xuexiao`,`banji`,`zhicheng`,`dianhua`) values (26,'2021-05-15 10:19:00','教师6','123456','教师姓名6','男','http://localhost:8080/ssmqvo63/upload/jiaoshi_touxiang6.jpg','学校6','班级6','职称6','13823888886');

/*Table structure for table `shixichengji` */

DROP TABLE IF EXISTS `shixichengji`;

CREATE TABLE `shixichengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `chengji` varchar(200) NOT NULL COMMENT '成绩',
  `shixijieguo` varchar(200) DEFAULT NULL COMMENT '实习结果',
  `beizhu` longtext COMMENT '备注',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621045902060 DEFAULT CHARSET=utf8 COMMENT='实习成绩';

/*Data for the table `shixichengji` */

insert  into `shixichengji`(`id`,`addtime`,`mingcheng`,`xuehao`,`xueshengxingming`,`banji`,`chengji`,`shixijieguo`,`beizhu`,`dengjishijian`,`gonghao`,`jiaoshixingming`) values (61,'2021-05-15 10:19:00','名称1','学号1','学生姓名1','班级1','成绩1','未完成','备注1','2021-05-15 10:19:00','工号1','教师姓名1');
insert  into `shixichengji`(`id`,`addtime`,`mingcheng`,`xuehao`,`xueshengxingming`,`banji`,`chengji`,`shixijieguo`,`beizhu`,`dengjishijian`,`gonghao`,`jiaoshixingming`) values (62,'2021-05-15 10:19:00','名称2','学号2','学生姓名2','班级2','成绩2','未完成','备注2','2021-05-15 10:19:00','工号2','教师姓名2');
insert  into `shixichengji`(`id`,`addtime`,`mingcheng`,`xuehao`,`xueshengxingming`,`banji`,`chengji`,`shixijieguo`,`beizhu`,`dengjishijian`,`gonghao`,`jiaoshixingming`) values (63,'2021-05-15 10:19:00','名称3','学号3','学生姓名3','班级3','成绩3','已完成','备注3','2021-05-15 10:19:00','工号3','教师姓名3');
insert  into `shixichengji`(`id`,`addtime`,`mingcheng`,`xuehao`,`xueshengxingming`,`banji`,`chengji`,`shixijieguo`,`beizhu`,`dengjishijian`,`gonghao`,`jiaoshixingming`) values (64,'2021-05-15 10:19:00','名称4','学号4','学生姓名4','班级4','成绩4','未完成','备注4','2021-05-15 10:19:00','工号4','教师姓名4');
insert  into `shixichengji`(`id`,`addtime`,`mingcheng`,`xuehao`,`xueshengxingming`,`banji`,`chengji`,`shixijieguo`,`beizhu`,`dengjishijian`,`gonghao`,`jiaoshixingming`) values (65,'2021-05-15 10:19:00','名称5','学号5','学生姓名5','班级5','成绩5','未完成','备注5','2021-05-15 10:19:00','工号5','教师姓名5');
insert  into `shixichengji`(`id`,`addtime`,`mingcheng`,`xuehao`,`xueshengxingming`,`banji`,`chengji`,`shixijieguo`,`beizhu`,`dengjishijian`,`gonghao`,`jiaoshixingming`) values (66,'2021-05-15 10:19:00','名称6','学号6','学生姓名6','班级6','成绩6','未完成','备注6','2021-05-15 10:19:00','工号6','教师姓名6');
insert  into `shixichengji`(`id`,`addtime`,`mingcheng`,`xuehao`,`xueshengxingming`,`banji`,`chengji`,`shixijieguo`,`beizhu`,`dengjishijian`,`gonghao`,`jiaoshixingming`) values (1621045902059,'2021-05-15 10:31:41','实习成绩','2','李铭','201','85','已完成','测试 ，已经完成。。','2021-05-15 10:31:14','1','刘老师');

/*Table structure for table `shixishenqing` */

DROP TABLE IF EXISTS `shixishenqing`;

CREATE TABLE `shixishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shenqingneirong` longtext COMMENT '申请内容',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621045809727 DEFAULT CHARSET=utf8 COMMENT='实习申请';

/*Data for the table `shixishenqing` */

insert  into `shixishenqing`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`shenqingneirong`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`sfsh`,`shhf`) values (41,'2021-05-15 10:19:00','标题1','工号1','教师姓名1','申请内容1','2021-05-15 10:19:00','学号1','学生姓名1','班级1','是','');
insert  into `shixishenqing`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`shenqingneirong`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`sfsh`,`shhf`) values (42,'2021-05-15 10:19:00','标题2','工号2','教师姓名2','申请内容2','2021-05-15 10:19:00','学号2','学生姓名2','班级2','是','');
insert  into `shixishenqing`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`shenqingneirong`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`sfsh`,`shhf`) values (43,'2021-05-15 10:19:00','标题3','工号3','教师姓名3','申请内容3','2021-05-15 10:19:00','学号3','学生姓名3','班级3','是','');
insert  into `shixishenqing`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`shenqingneirong`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`sfsh`,`shhf`) values (44,'2021-05-15 10:19:00','标题4','工号4','教师姓名4','申请内容4','2021-05-15 10:19:00','学号4','学生姓名4','班级4','是','');
insert  into `shixishenqing`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`shenqingneirong`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`sfsh`,`shhf`) values (45,'2021-05-15 10:19:00','标题5','工号5','教师姓名5','申请内容5','2021-05-15 10:19:00','学号5','学生姓名5','班级5','是','');
insert  into `shixishenqing`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`shenqingneirong`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`sfsh`,`shhf`) values (46,'2021-05-15 10:19:00','标题6','工号6','教师姓名6','申请内容6','2021-05-15 10:19:00','学号6','学生姓名6','班级6','是','');
insert  into `shixishenqing`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`shenqingneirong`,`shenqingshijian`,`xuehao`,`xueshengxingming`,`banji`,`sfsh`,`shhf`) values (1621045809726,'2021-05-15 10:30:09','实习申请','1','刘老师','测试','2021-05-15 10:29:54','2','李铭','201','是','同意申请');

/*Table structure for table `shixixinxi` */

DROP TABLE IF EXISTS `shixixinxi`;

CREATE TABLE `shixixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `shixigongsi` varchar(200) DEFAULT NULL COMMENT '实习公司',
  `shixiwenjian` varchar(200) DEFAULT NULL COMMENT '实习文件',
  `xuexichengguo` longtext COMMENT '学习成果',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621045828593 DEFAULT CHARSET=utf8 COMMENT='实习信息';

/*Data for the table `shixixinxi` */

insert  into `shixixinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`kaishishijian`,`jieshushijian`,`shixigongsi`,`shixiwenjian`,`xuexichengguo`,`fabushijian`,`xuehao`,`xueshengxingming`,`banji`) values (51,'2021-05-15 10:19:00','标题1','工号1','教师姓名1','2021-05-15','2021-05-15','实习公司1','','学习成果1','2021-05-15 10:19:00','学号1','学生姓名1','班级1');
insert  into `shixixinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`kaishishijian`,`jieshushijian`,`shixigongsi`,`shixiwenjian`,`xuexichengguo`,`fabushijian`,`xuehao`,`xueshengxingming`,`banji`) values (52,'2021-05-15 10:19:00','标题2','工号2','教师姓名2','2021-05-15','2021-05-15','实习公司2','','学习成果2','2021-05-15 10:19:00','学号2','学生姓名2','班级2');
insert  into `shixixinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`kaishishijian`,`jieshushijian`,`shixigongsi`,`shixiwenjian`,`xuexichengguo`,`fabushijian`,`xuehao`,`xueshengxingming`,`banji`) values (53,'2021-05-15 10:19:00','标题3','工号3','教师姓名3','2021-05-15','2021-05-15','实习公司3','','学习成果3','2021-05-15 10:19:00','学号3','学生姓名3','班级3');
insert  into `shixixinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`kaishishijian`,`jieshushijian`,`shixigongsi`,`shixiwenjian`,`xuexichengguo`,`fabushijian`,`xuehao`,`xueshengxingming`,`banji`) values (54,'2021-05-15 10:19:00','标题4','工号4','教师姓名4','2021-05-15','2021-05-15','实习公司4','','学习成果4','2021-05-15 10:19:00','学号4','学生姓名4','班级4');
insert  into `shixixinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`kaishishijian`,`jieshushijian`,`shixigongsi`,`shixiwenjian`,`xuexichengguo`,`fabushijian`,`xuehao`,`xueshengxingming`,`banji`) values (55,'2021-05-15 10:19:00','标题5','工号5','教师姓名5','2021-05-15','2021-05-15','实习公司5','','学习成果5','2021-05-15 10:19:00','学号5','学生姓名5','班级5');
insert  into `shixixinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`kaishishijian`,`jieshushijian`,`shixigongsi`,`shixiwenjian`,`xuexichengguo`,`fabushijian`,`xuehao`,`xueshengxingming`,`banji`) values (56,'2021-05-15 10:19:00','标题6','工号6','教师姓名6','2021-05-15','2021-05-15','实习公司6','','学习成果6','2021-05-15 10:19:00','学号6','学生姓名6','班级6');
insert  into `shixixinxi`(`id`,`addtime`,`biaoti`,`gonghao`,`jiaoshixingming`,`kaishishijian`,`jieshushijian`,`shixigongsi`,`shixiwenjian`,`xuexichengguo`,`fabushijian`,`xuehao`,`xueshengxingming`,`banji`) values (1621045828592,'2021-05-15 10:30:27','实习申请','1','刘老师','2021-05-06','2021-06-05','XX有限公司','http://localhost:8080/ssmqvo63/upload/1621045824337.doc','测试','2021-05-15 10:30:06','2','李铭','201');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','wn3u2otgilnk40805w6xkhyuy4c3v8d0','2021-05-15 10:19:47','2021-05-15 11:32:04');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','xuesheng','学生','oompt41g1fip9zpysa6ibmtap9r5yrqt','2021-05-15 10:28:59','2021-05-15 11:29:00');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1621045312663,'2','xuesheng','学生','kuocuzto9arxc1yqvfqcwyxz87wub79g','2021-05-15 10:29:10','2021-05-15 11:31:51');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,21,'1','jiaoshi','教师','t2txjzehblreywlj53pckpqf5zi3lohw','2021-05-15 10:30:48','2021-05-15 11:30:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-15 10:19:00');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xuexiao` varchar(200) DEFAULT NULL COMMENT '学校',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1621045312664 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xuexiao`,`nianji`,`banji`,`shouji`) values (11,'2021-05-15 10:19:00','1','1','学生姓名1','男','http://localhost:8080/ssmqvo63/upload/xuesheng_touxiang1.jpg','学校1','年级1','班级1','13823888881');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xuexiao`,`nianji`,`banji`,`shouji`) values (12,'2021-05-15 10:19:00','学生2','123456','学生姓名2','男','http://localhost:8080/ssmqvo63/upload/xuesheng_touxiang2.jpg','学校2','年级2','班级2','13823888882');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xuexiao`,`nianji`,`banji`,`shouji`) values (13,'2021-05-15 10:19:00','学生3','123456','学生姓名3','男','http://localhost:8080/ssmqvo63/upload/xuesheng_touxiang3.jpg','学校3','年级3','班级3','13823888883');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xuexiao`,`nianji`,`banji`,`shouji`) values (14,'2021-05-15 10:19:00','学生4','123456','学生姓名4','男','http://localhost:8080/ssmqvo63/upload/xuesheng_touxiang4.jpg','学校4','年级4','班级4','13823888884');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xuexiao`,`nianji`,`banji`,`shouji`) values (15,'2021-05-15 10:19:00','学生5','123456','学生姓名5','男','http://localhost:8080/ssmqvo63/upload/xuesheng_touxiang5.jpg','学校5','年级5','班级5','13823888885');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xuexiao`,`nianji`,`banji`,`shouji`) values (16,'2021-05-15 10:19:00','学生6','123456','学生姓名6','男','http://localhost:8080/ssmqvo63/upload/xuesheng_touxiang6.jpg','学校6','年级6','班级6','13823888886');
insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`touxiang`,`xuexiao`,`nianji`,`banji`,`shouji`) values (1621045312663,'2021-05-15 10:21:52','2','1','李铭','男','http://localhost:8080/ssmqvo63/upload/1621045774492.png','XX中学','2020','201','15214121412');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
