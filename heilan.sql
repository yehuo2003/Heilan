#设置客户端的编码为utf8
SET NAMES UTF8;
#如果存在，删除数据库heilan
DROP DATABASE IF EXISTS heilan;

#创建数据库heilan，指定编码类型为utf8
CREATE DATABASE heilan CHARSET=UTF8;

#进入刚创建的数据库heilan
USE heilan;

#网站基本信息表
CREATE TABLE heilan_site_info(
		site_name VARCHAR(16),#主页名
    logo VARCHAR(64),			#logo图片
    admin_email VARCHAR(64),#
    icp VARCHAR(32),			#许可证
    copyright VARCHAR(64)
);
#插入网站基本信息表数据
INSERT INTO heilan_site_info VALUES('海澜之家','img/logo.png','admin@heilan.com','粤ICP证09504058412','版权所有@2016-2026 男人衣柜');


#导航表
CREATE TABLE heilan_navbar_item(
	nid TINYINT,									#商品列表编号
	nav_name VARCHAR(16),					#导航名
	url VARCHAR(128),							#导航地址
	parent BOOL										#是否二级菜单
);
#插入导航表数据
INSERT INTO heilan_navbar_item VALUES
(NULL,'首页','index.html',FALSE),
(NULL,'所有商品','cate.html',TRUE),
(NULL,'火热新品','cate.html',TRUE),
(NULL,'秋季热卖','cate.html',TRUE),
(10,'卫衣','cate.html',TRUE),
(10,'大衣','cate.html',TRUE),
(10,'夹克','cate.html',TRUE),
(10,'针织衫/毛衫','cate.html',TRUE),
(10,'衬衫','cate.html',TRUE),
(20,'休闲裤','cate.html',TRUE),
(20,'牛仔裤','cate.html',TRUE),
(10,'西服','cate.html',TRUE),
(NULL,'林更新同款','cate.html',TRUE),
(NULL,'潮男时尚','cate.html',TRUE);

#轮播广告条目表
CREATE TABLE heilan_carousel_item(
	cid TINYINT PRIMARY KEY,	#商品编号
	pic VARCHAR(128),					#图片地址
	url VARCHAR(128),					#商品链接
	title VARCHAR(32),					#商品名称
	nid TINYINT								#商品列表编号
);
#插入轮播条目
INSERT INTO heilan_carousel_item VALUES
(1,'img/index/carousel_01.jpg','goods.html','长款大衣',10),
(2,'img/index/carousel_02.jpg','goods.html','西装',10),
(3,'img/index/carousel_03.jpg','goods.html','羽绒服',10),
(4,'img/index/carousel_04.jpg','goods.html','针织衫',10);

#创建商品列表
CREATE TABLE heilan_cate(
	cid TINYINT PRIMARY KEY AUTO_INCREMENT,	#商品编号
	pic VARCHAR(128),												#图片地址
	url VARCHAR(128),												#商品链接
	title VARCHAR(32),											#商品名称 
	price DECIMAL(6,2),											#商品价格
	nid TINYINT															#商品列表编号
);
#插入数据
INSERT INTO heilan_cate VALUES
(NULL,'img/cate/HNEAD1R002A_21816_1--w_460_h_460.jpg','goods.html','牛津纺水洗休闲衬衫',98.00,10),
(NULL,'img/cate/HNEAD1R005A_10665_1--w_460_h_460.jpg','goods.html','牛仔保暖衬衫',328.00,10),
(NULL,'img/cate/HNEAD4E222A_21798_1--w_460_h_460.jpg','goods.html','长袖衬衫',298.00,10),
(NULL,'img/cate/HNEAD4E218A_21767_1--w_460_h_460.jpg','goods.html','条纹衬衫',298.00,10),
(NULL,'img/cate/HNEAD4E222A_21798_1--w_460_h_460.jpg','goods.html','提花长袖',98.00,10),
(NULL,'img/cate/HNEAD4E245A_16978_1--w_460_h_460.jpg','goods.html','清新休闲衬衫',328.00,10),
(NULL,'img/cate/HNEAD4E247A_21788_1--w_460_h_460.jpg','goods.html','保暖衬衫',278.00,10),
(NULL,'img/cate/HNEAD4E265A_21792_1--w_460_h_460.jpg','goods.html','几何纹长袖',278.00,10);

#创建商品详情表
CREATE TABLE heilan_goods(
	cid TINYINT,														#商品编号
	title VARCHAR(32),											#商品名称
	price DECIMAL(6,2),											#商品价格
	stockCount SMALLINT,										#库存量
	small_img VARCHAR(128),									#小图
	middle_img VARCHAR(128),								#中图
	big_img VARCHAR(128),									  #大图
	pic_details VARCHAR(128),								#商品详情图片
	nid TINYINT															#商品列表编号
);
INSERT INTO heilan_goods values
(NULL,'时尚休闲卫衣',98.00,48,'img/goods/img1/HNZWJ3E081A_21331_1--w_74_h_74.jpg','img/goods/img1/HNZWJ3E081A_21331_1--w_460_h_460.jpg','img/goods/img1/HNZWJ3E081A_21331_1.jpg',NULL,10);

#用户列表
CREATE TABLE heilan_user(
	uid TINYINT PRIMARY KEY AUTO_INCREMENT,	#用户编号
	uname VARCHAR(16),											#用户姓名
	phone CHAR(11),													#联系电话
	gender VARCHAR(3),											#用户性别
	email VARCHAR(32),											#用户邮箱
	recipients VARCHAR(32),								  #收件人姓名	
	user_add VARCHAR(128)										#收件地址
);
INSERT INTO heilan_user VALUES
(NULL,'Lin',13666990716,1,'9208608@qq.com',NULL,'广东省深圳市龙华区汇海广场'),
(NULL,'dingding',18750390716,0,'dingding@qq.com',NULL,'北京市朝阳区人民广场'),
(NULL,'tom',13753290836,1,'tom@sina.com',NULL,'上海市闵行区浦东路'),
(NULL,'jerry',15765392018,0,'jerry@163.com',NULL,'福建省福州市闽侯县');