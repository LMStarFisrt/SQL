-- GROUP BY 子句
SELECT shohin_bunrui, COUNT(*) FROM shohin GROUP BY shohin_bunrui;

-- 聚合键中包含NULL的情况
SELECT shiire_tanka, COUNT(*) FROM shohin GROUP BY shiire_tanka;

-- 使用 WHERE 子句时 GROUP BY 的执行结果
SELECT shiire_tanka, COUNT(*) FROM shohin WHERE shohin_bunrui = '衣服' GROUP BY shiire_tanka;

-- GROUP BY 子句有关的常见错误
/* 
1、在 SELECT 子句中书写了多余的列
在MySQL中可以执行，其他的DBMS就不行了
*/
SELECT shohin_mei, shiire_tanka, COUNT(*) FROM shohin GROUP BY shiire_tanka;

/*
2、GROUP BY子句中书写了列的别名
在PostgreSQL和MySQL可以执行，其他的DBMS不行
*/
SELECT shohin_bunrui AS sb, COUNT(*) FROM shohin GROUP BY sb;

/*
3、GROUP BY子句的结果是随机的，不能排序
*/

/*
4、在 WHERE 子句中使用聚合函数
*/
SELECT shohin_bunrui, COUNT(*) FROM shohin WHERE COUNT(*) = 2 GROUP BY shohin_bunrui;
SELECT shohin_bunrui, COUNT(*) FROM shohin GROUP BY shohin_bunrui HAVING COUNT(*) = 2;
 