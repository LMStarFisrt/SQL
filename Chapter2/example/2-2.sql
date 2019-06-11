-- 算术运算符
SELECT
	shohin_mei,
	hanbai_tanka,
	hanbai_tanka * 2 AS "hanbai_tanka_*2" 
FROM
	shohinshohin 

/**
 * 1、包含NULL的运算，其结果也是NULL
 * 2、FROM 子句不是必要的，但是在oracle中，FROM子句是必须的，DB2中可以使用SYSIBM.SYSDUMMY1这个临时表
 */
SELECT
	5+NULL,
	10-NULL,
	1 * NULL,
	4 / NULL,
	NULL / 9,
	NULL /0
	
	
-- 比较运算符
SELECT shohin_mei,shohin_bunrui FROM shohin WHERE hanbai_tanka = 500
-- 最好不要使用!=
SELECT shohin_mei,shohin_bunrui FROM shohin WHERE hanbai_tanka <> 500
SELECT shohin_mei,shohin_bunrui,hanbai_tanka FROM shohin WHERE hanbai_tanka>=1000
SELECT shohin_mei,shohin_bunrui,torokubi FROM shohin WHERE torokubi < '2009-09-27'
SELECT shohin_mei,shohin_bunrui,hanbai_tanka,shiire_tanka FROM shohin WHERE hanbai_tanka -shiire_tanka >=500

-- 对字符串使用不等号
CREATE TABLE chars (
	chr CHAR ( 3 ) NOT NULL,
PRIMARY KEY ( chr ));
INSERT INTO chars
VALUES
	( '1' );
INSERT INTO chars
VALUES
	( '2' );
INSERT INTO chars
VALUES
	( '3' );
INSERT INTO chars
VALUES
	( '10' );
INSERT INTO chars
VALUES
	( '11' );
INSERT INTO chars
VALUES
	( '222' );
	
SELECT chr FROM chars WHERE chr > '2'

-- 不能对NULL使用比较运算符
SELECT shohin_mei, shiire_tanka FROM shohin WHERE shiire_tanka = 2800
SELECT shohin_mei, shiire_tanka FROM shohin WHERE shiire_tanka <> 2800
SELECT shohin_mei, shiire_tanka FROM shohin WHERE shiire_tanka = NULL
SELECT shohin_mei, shiire_tanka FROM shohin WHERE shiire_tanka IS NULL
SELECT shohin_mei, shiire_tanka FROM shohin WHERE shiire_tanka IS NOT NULL