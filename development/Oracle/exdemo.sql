--
-- iStudy for Oracle Masterオフィシャルガイドブック
--
CONNECT study/oracle

DROP TABLE 社員 PURGE;
DROP TABLE 部門 PURGE;
CREATE TABLE 部門
       (部門番号 NUMBER(2) CONSTRAINT PK_部門 PRIMARY KEY,
	部門名   VARCHAR2(14) ,
	所在地   VARCHAR2(13) ) ;
CREATE TABLE 社員
       (社員番号 NUMBER(4) CONSTRAINT PK_社員 PRIMARY KEY,
	社員名   VARCHAR2(10),
	職務     VARCHAR2(9),
	上司     NUMBER(4),
	入社日   DATE DEFAULT SYSDATE,
	給与     NUMBER(9),
	歩合給   NUMBER(9),
	部門番号 NUMBER(2) CONSTRAINT FK_部門番号 REFERENCES 部門);
INSERT INTO 部門 VALUES
	(10,'経理','東京');
INSERT INTO 部門 VALUES (20,'研究開発','名古屋');
INSERT INTO 部門 VALUES
	(30,'営業','大阪');
INSERT INTO 部門 VALUES
	(40,'管理','東京');
INSERT INTO 社員 VALUES
(7369,'伊藤','SE',7902,to_date('2000-12-17','yyyy-mm-dd'),180000,NULL,20);
INSERT INTO 社員 VALUES
(7499,'白井','営業',7698,to_date('2001-2-20','yyyy-mm-dd'),260000,30000,30);
INSERT INTO 社員 VALUES
(7521,'小出','営業',7698,to_date('2001-2-22','yyyy-mm-dd'),225000,50000,30);
INSERT INTO 社員 VALUES
(7566,'松岡','部長',7839,to_date('2001-4-2','yyyy-mm-dd'),297500,NULL,20);
INSERT INTO 社員 VALUES
(7654,'高木','営業',7698,to_date('2001-9-28','yyyy-mm-dd'),225000,140000,30);
INSERT INTO 社員 VALUES
(7698,'藤原','部長',7839,to_date('2001-5-1','yyyy-mm-dd'),385000,NULL,30);
INSERT INTO 社員 VALUES
(7782,'高橋','部長',7839,to_date('2001-6-9','yyyy-mm-dd'),345000,NULL,10);
INSERT INTO 社員 VALUES
(7788,'藤井','主任',7566,to_date('2007-6-13','yyyy-mm-dd'),300000,NULL,20);
INSERT INTO 社員 VALUES
(7839,'林','社長',NULL,to_date('2001-11-17','yyyy-mm-dd'),900000,NULL,10);
INSERT INTO 社員 VALUES
(7844,'川口','営業',7698,to_date('2001-9-8','yyyy-mm-dd'),250000,30000,30);
INSERT INTO 社員 VALUES
(7876,'長谷川','SE',7788,to_date('2007-7-13','yyyy-mm-dd'),210000,NULL,20);
INSERT INTO 社員 VALUES
(7900,'田中','業務',7698,to_date('2001-12-3','yyyy-mm-dd'),195000,NULL,30);
INSERT INTO 社員 VALUES
(7902,'桜井','主任',7566,to_date('2001-12-3','yyyy-mm-dd'),300000,NULL,20);
INSERT INTO 社員 VALUES
(7934,'田村','業務',7782,to_date('2002-1-3','yyyy-mm-dd'),230000,NULL,10);
COMMIT;
DROP TABLE 給与等級 PURGE;
CREATE TABLE 給与等級
      ( 等級 NUMBER,
	最低給与額 NUMBER,
	最高給与額 NUMBER );
INSERT INTO 給与等級 VALUES (1,70000,120000);
INSERT INTO 給与等級 VALUES (2,120001,140000);
INSERT INTO 給与等級 VALUES (3,140001,200000);
INSERT INTO 給与等級 VALUES (4,200001,300000);
INSERT INTO 給与等級 VALUES (5,300001,999999);
COMMIT;
--
DROP TABLE TEST PURGE;
CREATE TABLE TEST 
       (NAME1    CHAR(10),
        NAME2    VARCHAR2(10));
INSERT INTO TEST VALUES('漢字','漢字');
INSERT INTO TEST VALUES('KANJI','KANJI');
COMMIT;


DROP TABLE 部門2 PURGE;
CREATE TABLE 部門2
(部門番号 CHAR(2),
 名前     VARCHAR2(10),
 所在地   VARCHAR2(10));
INSERT INTO 部門2 VALUES
	(10,'経理','東京');
INSERT INTO 部門2 VALUES
        (20,'研究開発','名古屋');
INSERT INTO 部門2 VALUES
	(30,'営業','大坂');
INSERT INTO 部門2 VALUES
	(40,'管理','東京');

DROP TABLE 社員2 PURGE;
CREATE TABLE 社員2
       (社員番号 NUMBER(4),
	名前     VARCHAR2(10),
	職務     VARCHAR2(9),
	部門番号 NUMBER(2));
INSERT INTO 社員2 VALUES
(7369,'伊藤','SE',20);
INSERT INTO 社員2 VALUES
(7499,'白井','営業',30);
INSERT INTO 社員2 VALUES
(7521,'小出','営業',30);
INSERT INTO 社員2 VALUES
(7566,'松岡','部長',20);
INSERT INTO 社員2 VALUES
(7654,'高木','営業',30);
INSERT INTO 社員2 VALUES
(7698,'藤原','部長',30);
INSERT INTO 社員2 VALUES
(7782,'高橋','部長',10);
INSERT INTO 社員2 VALUES
(7788,'藤井','主任',20);
INSERT INTO 社員2 VALUES
(7839,'林','社長',10);
INSERT INTO 社員2 VALUES
(7844,'川口','営業',30);
INSERT INTO 社員2 VALUES
(7876,'長谷川','SE',20);
INSERT INTO 社員2 VALUES
(7900,'田中','業務',30);
INSERT INTO 社員2 VALUES
(7902,'桜井','主任',20);
INSERT INTO 社員2 VALUES
(7934,'田村','業務',10);
COMMIT;

DROP TABLE 注文ヘッダー PURGE;
CREATE TABLE 注文ヘッダー
(注文番号 NUMBER CONSTRAINT 注文H_PK PRIMARY KEY,
 注文日   DATE DEFAULT SYSDATE,
 注文者   VARCHAR2(20));

DROP TABLE 注文明細 PURGE;
CREATE TABLE 注文明細
(注文明細番号 NUMBER CONSTRAINT 注文M_PK PRIMARY KEY,
 注文番号     NUMBER CONSTRAINT 注文M_注文番号_FK
                     REFERENCES 注文ヘッダー(注文番号)
                     ON DELETE CASCADE,
 商品名       VARCHAR2(20),
 数量         NUMBER);

INSERT INTO 注文ヘッダー VALUES(1,to_date('2008-10-1'),'山田');
INSERT INTO 注文ヘッダー VALUES(2,to_date('2008-10-2'),'鈴木');

INSERT INTO 注文明細 VALUES(100,1,'マウス',1);
INSERT INTO 注文明細 VALUES(101,1,'キーボード',1);
INSERT INTO 注文明細 VALUES(102,2,'マウス',5);
INSERT INTO 注文明細 VALUES(103,2,'マウスパッド',5);  
COMMIT;

DROP TABLE 営業マン PURGE;
CREATE TABLE 営業マン
       (EMPNO       NUMBER(4),
	NAME        VARCHAR2(10),
	JOB         VARCHAR2(9),
	MANAGER     NUMBER(4),
	HIREDATE    DATE,
	SAL         NUMBER(9),
	COMM        NUMBER(9),
	DEPTNO      NUMBER(2) );
