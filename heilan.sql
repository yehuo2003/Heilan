set names utf8;
drop database if exists heilan;
create database heilan charset utf8;
use heilan;
#网站基本信息表
create table heilan_site_info(
    site_name varchar(16),
    logo varchar(64),
    admin_email varchar(64),
    icp varchar(32),
    copyright varchar(64)
);

insert into heilan_site_info values('海澜之家','img/logo.png','admin@heilan.com','粤ICP证09504058412','版权所有@2016-2026 男人衣柜');

#导航表
create table heilan_navbar_item(
    nid int primary key auto_increment,
    name varchar(16),
    url varchar(128),
    title varchar(32),
    parent int #设置二级菜单
);
insert into heilan_navbar_item values(NULL,'首页','index.html','跳转到网站首页',NULL),(NULL,'所有商品','list.html','跳转到商品列表',1),(NULL,'订购','order.html','在线订购',1);

#轮播广告条目表
create table heilan_carousel_item(
    cid int primary key auto_increment,
    pic varchar(128),
    url varchar(128),
    title varchar(32)
);
insert into heilan_carousel_item values(NULL,'img/pic1.jpg','/m1.html','羔羊绒外套'),(NULL,'img/pic2.jpg','/m2.html','牛仔裤'),(NULL,'img/pic3.jpg','/m3.html','长袖线衣')，(NULL,'img/pic4.jpg','/m4.html','马甲');




