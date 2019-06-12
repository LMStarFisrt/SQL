CREATE TABLE shohin (
  shohin_id CHAR(4) NOT NULL COMMENT '商品编号',
  shohin_mei VARCHAR(100) NOT NULL COMMENT '商品名称',
  shohin_bunrui VARCHAR(32) NOT NULL COMMENT '商品分类',
  hanbai_tanka INTEGER COMMENT '销售单价',
  shiire_tanka INTEGER COMMENT '进货单价',
  torokubi DATE COMMENT '登记日期',
  PRIMARY KEY (shohid_id)
);
