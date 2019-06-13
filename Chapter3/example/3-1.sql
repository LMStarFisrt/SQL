-- 计算表中数据的行数
SELECT COUNT(*) FROM shohin;

-- 计算NULL以外的行数
SELECT COUNT(shiire_tanka) FROM shohin;

-- 计算合计值
SELECT SUM(hanbai_tanka) FROM shohin;
SELECT SUM(hanbai_tanka), SUM(shiire_tanka) FROM shohin;

-- 计算平均值
SELECT AVG(hanbai_tanka) FROM shohin;
SELECT AVG(hanbai_tanka), AVG(shiire_tanka) FROM shohin;

-- 计算最大值和最小值
SELECT MAX(hanbai_tanka), MIN(shiire_tanka) FROM shohin;
SELECT MAX(torokubi), MIN(torokubi) FROM shohin;

-- 使用聚合函数删除重复值（关键字DISTINCT）
SELECT COUNT(DISTINCT shohin_bunrui) FROM shohin;
SELECT SUM(hanbai_tanka), SUM(DISTINCT hanbai_tanka) FROM shohin;
