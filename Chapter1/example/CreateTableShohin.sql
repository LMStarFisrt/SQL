CREATE TABLE Shohin (
  shohid_id CHAR(4) NOT NULL,
  shohin_mei VARCHAR(100) NOT NULL,
  shohin_bunrui VARCHAR(32) NOT NULL,
  hanbai_tanka INTEGER,
  shiira_tanka INTEGER,
  torokubi DATE,
  PRIMARY KEY (shohid_id)
);
