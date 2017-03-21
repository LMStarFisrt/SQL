SELECT shohin_id,shohin_mei,shiire_tanka
FROM Shohin;

SELECT * FROM Shohin;

SELECT shohin_id AS "商品编号",
        shohin_mei AS "商品名称",
        shiire_tanka AS "进货单价"
FROM Shohin;

SELECT "商品" AS mojiretsu, 38 AS kazu, '2017-03-21' as hizuke,
        shohin_id,shohin_mei
FROM Shohin;

SELECT DISTINCT shohin_bunrui
FROM Shohin;

SELECT DISTINCT shiire_tanka
FROM Shohin;

SELECT DISTINCT shohin_bunrui, torokubi
FROM Shohin;

SELECT shohin_mei,shohin_bunrui
FROM Shohin
WHERE shohin_bunrui = '衣服';
