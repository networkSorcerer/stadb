-- 사용자 계정 생성
-- 사용자를 생성하기 위해서는 DBA만 사용자를 생성할 수 있다. 그래서 최고권한자(SYSDBA)인 SYS로 접속.
-- CREATE USER 사용자명 identified by 비밀번호; (비밀번호는 대소문자 구분합니다.)
CREATE USER stauser IDENTIFIED BY sta1234; 
-- 시험

-- 비밀번호 변경시 
ALTER USER stauser IDENTIFIED BY sta1234;

-- 사용자 권한 부여
-- 오라클은 사용자 생성시 어떠한 권한도 가지고 있지 않기에 권한 부여를 해주어야 한다.
-- grant 권한 to 사용자명;
GRANT CREATE SESSION TO stauser;

-- grant 롤 to 사용자명;
GRANT CONNECT, RESOURCE TO stauser;

--RESOURCE : 사용자 계정으로 TABLE 을 생성 이용할 수 있는 권한
--CONNECT : 사용자가 DB에 접속할 수 있는 권한

ALTER USER stauser
DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;

-- CONNECT 롤에 포함된 권한 - CREATE SESSION 권한이 없으면 해당 유저로 접속이 되지 않음
SELECT * FROM ROLE_SYS_PRIVS
WHERE ROLE = 'CONNECT';

-- RESOURCE 롤에 포함된 권한
SELECT * FROM ROLE_SYS_PRIVS
WHERE ROLE = 'RESOURCE';
-- CREATE 트리거, 시퀀스, 타입, 프로시저, 테이블 등 8가지 권한 부여되어있음

-- 먼저 JAVAUSER 에게 부여된 롤 확인
SELECT * FROM DBA_ROLE_PRIVS
WHERE GRANTEE = 'STAUSER';

-- 사용자에게 권한 부여(VIEW)
GRANT CREATE VIEW TO stauser;
