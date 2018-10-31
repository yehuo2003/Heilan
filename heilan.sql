set names utf8;
drop database if exists heilan;
create database heilan charset utf8;
use heilan;
#��վ������Ϣ��
create table heilan_site_info(
    site_name varchar(16),
    logo varchar(64),
    admin_email varchar(64),
    icp varchar(32),
    copyright varchar(64)
);

insert into heilan_site_info values('����֮��','img/logo.png','admin@heilan.com','��ICP֤09504058412','��Ȩ����@2016-2026 �����¹�');

#������
create table heilan_navbar_item(
    nid int primary key auto_increment,
    name varchar(16),
    url varchar(128),
    title varchar(32),
    parent int #���ö����˵�
);
insert into heilan_navbar_item values(NULL,'��ҳ','index.html','��ת����վ��ҳ',NULL),(NULL,'������Ʒ','list.html','��ת����Ʒ�б�',1),(NULL,'����','order.html','���߶���',1);

#�ֲ������Ŀ��
create table heilan_carousel_item(
    cid int primary key auto_increment,
    pic varchar(128),
    url varchar(128),
    title varchar(32)
);
insert into heilan_carousel_item values(NULL,'img/pic1.jpg','/m1.html','����������'),(NULL,'img/pic2.jpg','/m2.html','ţ�п�'),(NULL,'img/pic3.jpg','/m3.html','��������')��(NULL,'img/pic4.jpg','/m4.html','���');




