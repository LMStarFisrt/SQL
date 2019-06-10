SELECT shohin_id,shohin_mei,shiire_tanka
FROM shohin;

SELECT * FROM shohin;

SELECT shohin_id AS "商品编号",
        shohin_mei AS "商品名称",
        shiire_tanka AS "进货单价"
FROM shohin;

SELECT "商品" AS mojiretsu, 38 AS kazu, '2017-03-21' as hizuke,
        shohin_id,shohin_mei
FROM shohin;

SELECT DISTINCT shohin_bunrui
FROM shohin;

SELECT DISTINCT shiire_tanka
FROM shohin;

SELECT DISTINCT shohin_bunrui, torokubi
FROM shohin;

SELECT shohin_mei,shohin_bunrui
FROM shohin
WHERE shohin_bunrui = '衣服';

-- 这是一行注释

/*
 这是多行注释
 */
 SELECT * FROM shohin