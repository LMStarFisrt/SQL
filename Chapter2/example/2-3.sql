-- NOT 运算符
-- NOT 不能单独使用，要和其他条件组合使用
SELECT shohin_mei,shohin_bunrui,hanbai_tanka FROM shohin WHERE hanbai_tanka >= 1000
SELECT shohin_mei,shohin_bunrui,hanbai_tanka FROM shohin WHERE NOT hanbai_tanka >= 1000

-- AND 运算符和 OR 运算符
SELECT shohin_mei,shiire_tanka FROM shohin WHERE shohin_bunrui = '厨房用具' AND hanbai_tanka >= 3000
SELECT shohin_mei,shiire_tanka FROM shohin WHERE shohin_bunrui = '厨房用具' OR hanbai_tanka >= 3000

-- 通过括号进行强化
SELECT shohin_mei,shohin_bunrui,torokubi FROM shohin WHERE shohin_bunrui = '办公用品' AND ( torokubi = '2009-09-11' OR torokubi = '2009-09-20' )

