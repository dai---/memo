-- �f�[�^�x�[�X�Ǘ��Ҍ��������������[�U�[�Őڑ�
-- CONNECT / AS SYSDBA

-- �������[�U�[�A���[���̍폜
DROP ROLE study_sql;
DROP USER study CASCADE; 

-- �w�K�p���[�U�[�̍쐬
CREATE USER study  IDENTIFIED BY oracle 
DEFAULT TABLESPACE USERS 
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON USERS;

-- �w�K�p���[���̍쐬
CREATE ROLE study_sql;
GRANT CREATE SESSION,CREATE TABLE,
      CREATE VIEW,CREATE SEQUENCE,
      CREATE SYNONYM
TO study_sql;

-- �w�K�p���[�������[�U�[�ɕt�^
GRANT study_sql TO study;