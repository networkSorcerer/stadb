-- ����� ���� ����
-- ����ڸ� �����ϱ� ���ؼ��� DBA�� ����ڸ� ������ �� �ִ�. �׷��� �ְ������(SYSDBA)�� SYS�� ����.
-- CREATE USER ����ڸ� identified by ��й�ȣ; (��й�ȣ�� ��ҹ��� �����մϴ�.)
CREATE USER stauser IDENTIFIED BY sta1234; 
-- ����

-- ��й�ȣ ����� 
ALTER USER stauser IDENTIFIED BY sta1234;

-- ����� ���� �ο�
-- ����Ŭ�� ����� ������ ��� ���ѵ� ������ ���� �ʱ⿡ ���� �ο��� ���־�� �Ѵ�.
-- grant ���� to ����ڸ�;
GRANT CREATE SESSION TO stauser;

-- grant �� to ����ڸ�;
GRANT CONNECT, RESOURCE TO stauser;

--RESOURCE : ����� �������� TABLE �� ���� �̿��� �� �ִ� ����
--CONNECT : ����ڰ� DB�� ������ �� �ִ� ����

ALTER USER stauser
DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;

-- CONNECT �ѿ� ���Ե� ���� - CREATE SESSION ������ ������ �ش� ������ ������ ���� ����
SELECT * FROM ROLE_SYS_PRIVS
WHERE ROLE = 'CONNECT';

-- RESOURCE �ѿ� ���Ե� ����
SELECT * FROM ROLE_SYS_PRIVS
WHERE ROLE = 'RESOURCE';
-- CREATE Ʈ����, ������, Ÿ��, ���ν���, ���̺� �� 8���� ���� �ο��Ǿ�����

-- ���� JAVAUSER ���� �ο��� �� Ȯ��
SELECT * FROM DBA_ROLE_PRIVS
WHERE GRANTEE = 'STAUSER';

-- ����ڿ��� ���� �ο�(VIEW)
GRANT CREATE VIEW TO stauser;
