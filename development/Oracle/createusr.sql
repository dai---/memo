-- データベース管理者権限を持ったユーザーで接続
-- CONNECT / AS SYSDBA

-- 既存ユーザー、ロールの削除
DROP ROLE study_sql;
DROP USER study CASCADE; 

-- 学習用ユーザーの作成
CREATE USER study  IDENTIFIED BY oracle 
DEFAULT TABLESPACE USERS 
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON USERS;

-- 学習用ロールの作成
CREATE ROLE study_sql;
GRANT CREATE SESSION,CREATE TABLE,
      CREATE VIEW,CREATE SEQUENCE,
      CREATE SYNONYM
TO study_sql;

-- 学習用ロールをユーザーに付与
GRANT study_sql TO study;