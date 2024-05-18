CREATE TABLE volunteer (
	volunteer_id	number		NOT NULL,
	volunteer_detail	varchar2(2000)		NOT NULL,
	volunteer_date	date	DEFAULT sysdate	NOT NULL,
	volunteer_title	varchar2(100)		NOT NULL,
	volunteer_time	varchar2(30)		NOT NULL,
	volunteer_due	varchar2(30)		NOT NULL,
	volunteer_limit	number		NOT NULL,
	volunteer_cost	varchar2(20)	DEFAULT '없음'	NOT NULL,
	volunteer_location	varchar2(100)		NOT NULL,
	admin_id	varchar2(20)		NOT NULL
);

-- 파일명을 위한 필드
alter table volunteer
add(volunteer_file varchar2(500));

alter table volunteer
modify(volunteer_detail varchar2(4000));

CREATE TABLE application (
	application_id	number		NOT NULL,
	application_date	date	DEFAULT sysdate	NOT NULL,
	application_comment	varchar2(150)		NULL,
	user_id	varchar2(20)		NOT NULL,
	volunteer_id	number		NOT NULL,
	application_result	number	DEFAULT 0	NOT NULL
);

ALTER TABLE volunteer ADD CONSTRAINT PK_VOLUNTEER PRIMARY KEY (
	volunteer_id
);

ALTER TABLE application ADD CONSTRAINT PK_APPLICATION PRIMARY KEY (
	application_id
);

ALTER TABLE application ADD CONSTRAINT FK_volunteer_TO_application_1 FOREIGN KEY (volunteer_id)
REFERENCES volunteer (volunteer_id)
ON DELETE CASCADE;

-- 봉사 공고
create sequence volunteer_seq
start with 1
increment by 1
nocycle
nocache;

-- 봉사 신청
create sequence application_seq
start with 1
increment by 1
nocycle
nocache;