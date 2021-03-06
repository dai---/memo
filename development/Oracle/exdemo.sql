--
-- iStudy for Oracle MasterItBVKChubN
--
CONNECT study/oracle

DROP TABLE Ðõ PURGE;
DROP TABLE å PURGE;
CREATE TABLE å
       (åÔ NUMBER(2) CONSTRAINT PK_å PRIMARY KEY,
	å¼   VARCHAR2(14) ,
	Ýn   VARCHAR2(13) ) ;
CREATE TABLE Ðõ
       (ÐõÔ NUMBER(4) CONSTRAINT PK_Ðõ PRIMARY KEY,
	Ðõ¼   VARCHAR2(10),
	E±     VARCHAR2(9),
	ãi     NUMBER(4),
	üÐú   DATE DEFAULT SYSDATE,
	^     NUMBER(9),
	à   NUMBER(9),
	åÔ NUMBER(2) CONSTRAINT FK_åÔ REFERENCES å);
INSERT INTO å VALUES
	(10,'o','');
INSERT INTO å VALUES (20,'¤J­','¼Ã®');
INSERT INTO å VALUES
	(30,'cÆ','åã');
INSERT INTO å VALUES
	(40,'Ç','');
INSERT INTO Ðõ VALUES
(7369,'É¡','SE',7902,to_date('2000-12-17','yyyy-mm-dd'),180000,NULL,20);
INSERT INTO Ðõ VALUES
(7499,'ä','cÆ',7698,to_date('2001-2-20','yyyy-mm-dd'),260000,30000,30);
INSERT INTO Ðõ VALUES
(7521,'¬o','cÆ',7698,to_date('2001-2-22','yyyy-mm-dd'),225000,50000,30);
INSERT INTO Ðõ VALUES
(7566,'¼ª','·',7839,to_date('2001-4-2','yyyy-mm-dd'),297500,NULL,20);
INSERT INTO Ðõ VALUES
(7654,'Ø','cÆ',7698,to_date('2001-9-28','yyyy-mm-dd'),225000,140000,30);
INSERT INTO Ðõ VALUES
(7698,'¡´','·',7839,to_date('2001-5-1','yyyy-mm-dd'),385000,NULL,30);
INSERT INTO Ðõ VALUES
(7782,'´','·',7839,to_date('2001-6-9','yyyy-mm-dd'),345000,NULL,10);
INSERT INTO Ðõ VALUES
(7788,'¡ä','åC',7566,to_date('2007-6-13','yyyy-mm-dd'),300000,NULL,20);
INSERT INTO Ðõ VALUES
(7839,'Ñ','Ð·',NULL,to_date('2001-11-17','yyyy-mm-dd'),900000,NULL,10);
INSERT INTO Ðõ VALUES
(7844,'ìû','cÆ',7698,to_date('2001-9-8','yyyy-mm-dd'),250000,30000,30);
INSERT INTO Ðõ VALUES
(7876,'·Jì','SE',7788,to_date('2007-7-13','yyyy-mm-dd'),210000,NULL,20);
INSERT INTO Ðõ VALUES
(7900,'c','Æ±',7698,to_date('2001-12-3','yyyy-mm-dd'),195000,NULL,30);
INSERT INTO Ðõ VALUES
(7902,'÷ä','åC',7566,to_date('2001-12-3','yyyy-mm-dd'),300000,NULL,20);
INSERT INTO Ðõ VALUES
(7934,'cº','Æ±',7782,to_date('2002-1-3','yyyy-mm-dd'),230000,NULL,10);
COMMIT;
DROP TABLE ^ PURGE;
CREATE TABLE ^
      (  NUMBER,
	Åá^z NUMBER,
	Å^z NUMBER );
INSERT INTO ^ VALUES (1,70000,120000);
INSERT INTO ^ VALUES (2,120001,140000);
INSERT INTO ^ VALUES (3,140001,200000);
INSERT INTO ^ VALUES (4,200001,300000);
INSERT INTO ^ VALUES (5,300001,999999);
COMMIT;
--
DROP TABLE TEST PURGE;
CREATE TABLE TEST 
       (NAME1    CHAR(10),
        NAME2    VARCHAR2(10));
INSERT INTO TEST VALUES('¿','¿');
INSERT INTO TEST VALUES('KANJI','KANJI');
COMMIT;


DROP TABLE å2 PURGE;
CREATE TABLE å2
(åÔ CHAR(2),
 ¼O     VARCHAR2(10),
 Ýn   VARCHAR2(10));
INSERT INTO å2 VALUES
	(10,'o','');
INSERT INTO å2 VALUES
        (20,'¤J­','¼Ã®');
INSERT INTO å2 VALUES
	(30,'cÆ','åâ');
INSERT INTO å2 VALUES
	(40,'Ç','');

DROP TABLE Ðõ2 PURGE;
CREATE TABLE Ðõ2
       (ÐõÔ NUMBER(4),
	¼O     VARCHAR2(10),
	E±     VARCHAR2(9),
	åÔ NUMBER(2));
INSERT INTO Ðõ2 VALUES
(7369,'É¡','SE',20);
INSERT INTO Ðõ2 VALUES
(7499,'ä','cÆ',30);
INSERT INTO Ðõ2 VALUES
(7521,'¬o','cÆ',30);
INSERT INTO Ðõ2 VALUES
(7566,'¼ª','·',20);
INSERT INTO Ðõ2 VALUES
(7654,'Ø','cÆ',30);
INSERT INTO Ðõ2 VALUES
(7698,'¡´','·',30);
INSERT INTO Ðõ2 VALUES
(7782,'´','·',10);
INSERT INTO Ðõ2 VALUES
(7788,'¡ä','åC',20);
INSERT INTO Ðõ2 VALUES
(7839,'Ñ','Ð·',10);
INSERT INTO Ðõ2 VALUES
(7844,'ìû','cÆ',30);
INSERT INTO Ðõ2 VALUES
(7876,'·Jì','SE',20);
INSERT INTO Ðõ2 VALUES
(7900,'c','Æ±',30);
INSERT INTO Ðõ2 VALUES
(7902,'÷ä','åC',20);
INSERT INTO Ðõ2 VALUES
(7934,'cº','Æ±',10);
COMMIT;

DROP TABLE ¶wb_[ PURGE;
CREATE TABLE ¶wb_[
(¶Ô NUMBER CONSTRAINT ¶H_PK PRIMARY KEY,
 ¶ú   DATE DEFAULT SYSDATE,
 ¶Ò   VARCHAR2(20));

DROP TABLE ¶¾× PURGE;
CREATE TABLE ¶¾×
(¶¾×Ô NUMBER CONSTRAINT ¶M_PK PRIMARY KEY,
 ¶Ô     NUMBER CONSTRAINT ¶M_¶Ô_FK
                     REFERENCES ¶wb_[(¶Ô)
                     ON DELETE CASCADE,
 ¤i¼       VARCHAR2(20),
 Ê         NUMBER);

INSERT INTO ¶wb_[ VALUES(1,to_date('2008-10-1'),'Rc');
INSERT INTO ¶wb_[ VALUES(2,to_date('2008-10-2'),'éØ');

INSERT INTO ¶¾× VALUES(100,1,'}EX',1);
INSERT INTO ¶¾× VALUES(101,1,'L[{[h',1);
INSERT INTO ¶¾× VALUES(102,2,'}EX',5);
INSERT INTO ¶¾× VALUES(103,2,'}EXpbh',5);  
COMMIT;

DROP TABLE cÆ} PURGE;
CREATE TABLE cÆ}
       (EMPNO       NUMBER(4),
	NAME        VARCHAR2(10),
	JOB         VARCHAR2(9),
	MANAGER     NUMBER(4),
	HIREDATE    DATE,
	SAL         NUMBER(9),
	COMM        NUMBER(9),
	DEPTNO      NUMBER(2) );
