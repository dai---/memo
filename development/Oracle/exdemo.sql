--
-- iStudy for Oracle Master�I�t�B�V�����K�C�h�u�b�N
--
CONNECT study/oracle

DROP TABLE �Ј� PURGE;
DROP TABLE ���� PURGE;
CREATE TABLE ����
       (����ԍ� NUMBER(2) CONSTRAINT PK_���� PRIMARY KEY,
	���喼   VARCHAR2(14) ,
	���ݒn   VARCHAR2(13) ) ;
CREATE TABLE �Ј�
       (�Ј��ԍ� NUMBER(4) CONSTRAINT PK_�Ј� PRIMARY KEY,
	�Ј���   VARCHAR2(10),
	�E��     VARCHAR2(9),
	��i     NUMBER(4),
	���Г�   DATE DEFAULT SYSDATE,
	���^     NUMBER(9),
	������   NUMBER(9),
	����ԍ� NUMBER(2) CONSTRAINT FK_����ԍ� REFERENCES ����);
INSERT INTO ���� VALUES
	(10,'�o��','����');
INSERT INTO ���� VALUES (20,'�����J��','���É�');
INSERT INTO ���� VALUES
	(30,'�c��','���');
INSERT INTO ���� VALUES
	(40,'�Ǘ�','����');
INSERT INTO �Ј� VALUES
(7369,'�ɓ�','SE',7902,to_date('2000-12-17','yyyy-mm-dd'),180000,NULL,20);
INSERT INTO �Ј� VALUES
(7499,'����','�c��',7698,to_date('2001-2-20','yyyy-mm-dd'),260000,30000,30);
INSERT INTO �Ј� VALUES
(7521,'���o','�c��',7698,to_date('2001-2-22','yyyy-mm-dd'),225000,50000,30);
INSERT INTO �Ј� VALUES
(7566,'����','����',7839,to_date('2001-4-2','yyyy-mm-dd'),297500,NULL,20);
INSERT INTO �Ј� VALUES
(7654,'����','�c��',7698,to_date('2001-9-28','yyyy-mm-dd'),225000,140000,30);
INSERT INTO �Ј� VALUES
(7698,'����','����',7839,to_date('2001-5-1','yyyy-mm-dd'),385000,NULL,30);
INSERT INTO �Ј� VALUES
(7782,'����','����',7839,to_date('2001-6-9','yyyy-mm-dd'),345000,NULL,10);
INSERT INTO �Ј� VALUES
(7788,'����','��C',7566,to_date('2007-6-13','yyyy-mm-dd'),300000,NULL,20);
INSERT INTO �Ј� VALUES
(7839,'��','�В�',NULL,to_date('2001-11-17','yyyy-mm-dd'),900000,NULL,10);
INSERT INTO �Ј� VALUES
(7844,'���','�c��',7698,to_date('2001-9-8','yyyy-mm-dd'),250000,30000,30);
INSERT INTO �Ј� VALUES
(7876,'���J��','SE',7788,to_date('2007-7-13','yyyy-mm-dd'),210000,NULL,20);
INSERT INTO �Ј� VALUES
(7900,'�c��','�Ɩ�',7698,to_date('2001-12-3','yyyy-mm-dd'),195000,NULL,30);
INSERT INTO �Ј� VALUES
(7902,'����','��C',7566,to_date('2001-12-3','yyyy-mm-dd'),300000,NULL,20);
INSERT INTO �Ј� VALUES
(7934,'�c��','�Ɩ�',7782,to_date('2002-1-3','yyyy-mm-dd'),230000,NULL,10);
COMMIT;
DROP TABLE ���^���� PURGE;
CREATE TABLE ���^����
      ( ���� NUMBER,
	�Œዋ�^�z NUMBER,
	�ō����^�z NUMBER );
INSERT INTO ���^���� VALUES (1,70000,120000);
INSERT INTO ���^���� VALUES (2,120001,140000);
INSERT INTO ���^���� VALUES (3,140001,200000);
INSERT INTO ���^���� VALUES (4,200001,300000);
INSERT INTO ���^���� VALUES (5,300001,999999);
COMMIT;
--
DROP TABLE TEST PURGE;
CREATE TABLE TEST 
       (NAME1    CHAR(10),
        NAME2    VARCHAR2(10));
INSERT INTO TEST VALUES('����','����');
INSERT INTO TEST VALUES('KANJI','KANJI');
COMMIT;


DROP TABLE ����2 PURGE;
CREATE TABLE ����2
(����ԍ� CHAR(2),
 ���O     VARCHAR2(10),
 ���ݒn   VARCHAR2(10));
INSERT INTO ����2 VALUES
	(10,'�o��','����');
INSERT INTO ����2 VALUES
        (20,'�����J��','���É�');
INSERT INTO ����2 VALUES
	(30,'�c��','���');
INSERT INTO ����2 VALUES
	(40,'�Ǘ�','����');

DROP TABLE �Ј�2 PURGE;
CREATE TABLE �Ј�2
       (�Ј��ԍ� NUMBER(4),
	���O     VARCHAR2(10),
	�E��     VARCHAR2(9),
	����ԍ� NUMBER(2));
INSERT INTO �Ј�2 VALUES
(7369,'�ɓ�','SE',20);
INSERT INTO �Ј�2 VALUES
(7499,'����','�c��',30);
INSERT INTO �Ј�2 VALUES
(7521,'���o','�c��',30);
INSERT INTO �Ј�2 VALUES
(7566,'����','����',20);
INSERT INTO �Ј�2 VALUES
(7654,'����','�c��',30);
INSERT INTO �Ј�2 VALUES
(7698,'����','����',30);
INSERT INTO �Ј�2 VALUES
(7782,'����','����',10);
INSERT INTO �Ј�2 VALUES
(7788,'����','��C',20);
INSERT INTO �Ј�2 VALUES
(7839,'��','�В�',10);
INSERT INTO �Ј�2 VALUES
(7844,'���','�c��',30);
INSERT INTO �Ј�2 VALUES
(7876,'���J��','SE',20);
INSERT INTO �Ј�2 VALUES
(7900,'�c��','�Ɩ�',30);
INSERT INTO �Ј�2 VALUES
(7902,'����','��C',20);
INSERT INTO �Ј�2 VALUES
(7934,'�c��','�Ɩ�',10);
COMMIT;

DROP TABLE �����w�b�_�[ PURGE;
CREATE TABLE �����w�b�_�[
(�����ԍ� NUMBER CONSTRAINT ����H_PK PRIMARY KEY,
 ������   DATE DEFAULT SYSDATE,
 ������   VARCHAR2(20));

DROP TABLE �������� PURGE;
CREATE TABLE ��������
(�������הԍ� NUMBER CONSTRAINT ����M_PK PRIMARY KEY,
 �����ԍ�     NUMBER CONSTRAINT ����M_�����ԍ�_FK
                     REFERENCES �����w�b�_�[(�����ԍ�)
                     ON DELETE CASCADE,
 ���i��       VARCHAR2(20),
 ����         NUMBER);

INSERT INTO �����w�b�_�[ VALUES(1,to_date('2008-10-1'),'�R�c');
INSERT INTO �����w�b�_�[ VALUES(2,to_date('2008-10-2'),'���');

INSERT INTO �������� VALUES(100,1,'�}�E�X',1);
INSERT INTO �������� VALUES(101,1,'�L�[�{�[�h',1);
INSERT INTO �������� VALUES(102,2,'�}�E�X',5);
INSERT INTO �������� VALUES(103,2,'�}�E�X�p�b�h',5);  
COMMIT;

DROP TABLE �c�ƃ}�� PURGE;
CREATE TABLE �c�ƃ}��
       (EMPNO       NUMBER(4),
	NAME        VARCHAR2(10),
	JOB         VARCHAR2(9),
	MANAGER     NUMBER(4),
	HIREDATE    DATE,
	SAL         NUMBER(9),
	COMM        NUMBER(9),
	DEPTNO      NUMBER(2) );
