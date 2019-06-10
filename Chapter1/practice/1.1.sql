CREATE TABLE Jyushoroku (
  toroku_bango INTEGER NOT NULL COMMENT '注册编号',
  NAME VARCHAR(128) NOT NULL COMMENT '姓名',
  jyusho VARCHAR(256) NOT NULL COMMENT '住址',
  tel_no CHAR(10) COMMENT '电话号码',
  mail_address CHAR(20) COMMENT '邮件地址',
  PRIMARY KEY (toroku_bango)
);
