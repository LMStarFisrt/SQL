SELECT shohin_mei, torokubi FROM shohin WHERE torokubi >= '2009-04-28'

SELECT shohin_mei, hanbai_tanka, shiire_tanka FROM shohin WHERE NOT hanbai_tanka - shiire_tanka < 500
SELECT shohin_mei, hanbai_tanka, shiire_tanka FROM shohin WHERE hanbai_tanka >= shiire_tanka + 500
SELECT shohin_mei, hanbai_tanka, shiire_tanka FROM shohin WHERE hanbai_tanka -500 >= shiire_tanka

SELECT shohin_mei, shohin_bunrui,hanbai_tanka * 0.9 - shiire_tanka as rieki FROM shohin WHERE hanbai_tanka * 0.9 - shiire_tanka > 100 AND
(shohin_bunrui = '办公用品' OR shohin_bunrui = '厨房用具' )