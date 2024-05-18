-- 11.counseling
CREATE TABLE counseling (
	counseling_id	number		NOT NULL,
	counseling_schedule	varchar2(20)		NOT NULL,
	user_id	varchar2(20)		NOT NULL,
	adoption_id	number		NOT NULL,
	counseling_date	varchar2(20)	DEFAULT sysdate	NOT NULL,
	counseling_judgment	varchar2(20)	DEFAULT '미확인'	NOT NULL,
	counseling_detail	varchar2(2000)		NULL,
	counseling_age	number		NOT NULL,
	counseling_address	varchar2(100)		NOT NULL,
	counseling_job	varchar2(40)		NOT NULL,
	counseling_adopt	number	DEFAULT 0	NOT NULL,
    animal_id number NOT null,
    user_name varchar2(20) NOT NULL,
    user_phone varchar2(20) NOT NULL

);
COMMENT ON COLUMN counseling.user_id IS '회원은 ID로 구분';

COMMENT ON COLUMN counseling.counseling_judgment IS '관리자만 수정가능';

COMMENT ON COLUMN counseling.counseling_detail IS '관리자만 조회 수정 삭제';

--Primary Key Setting
--counseling
ALTER TABLE counseling ADD CONSTRAINT PK_COUNSELING PRIMARY KEY (
	counseling_id
);



--Forein Key
--counseling - user_id
ALTER TABLE counseling ADD CONSTRAINT FK_users_TO_counseling_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);
--counseling - adoption_id
ALTER TABLE counseling
ADD CONSTRAINT FK_adoption_TO_counseling_1
FOREIGN KEY (adoption_id)
REFERENCES adoption(adoption_id)
ON DELETE CASCADE;
-------------------------------------------------------------------------------

-- 15.survey
CREATE TABLE survey (
	survey_id	number		NOT NULL,
	survey_a1	varchar2(100)		NOT NULL,
	survey_a2	varchar2(100)		NOT NULL,
	survey_a3	varchar2(100)		NOT NULL,
	survey_a4	varchar2(100)		NOT NULL,
	survey_a5	varchar2(100)		NOT NULL,
	survey_a6	varchar2(100)		NOT NULL,
	survey_a7	varchar2(100)		NOT NULL,
	survey_a8	varchar2(1000)		NOT NULL,
	counseling_id	number		NOT NULL
);

COMMENT ON COLUMN survey.survey_id IS '설문 고유 ID';

COMMENT ON COLUMN survey.counseling_id IS '예약 고유 ID';
--Primary Key Setting
ALTER TABLE survey ADD CONSTRAINT PK_SURVEY PRIMARY KEY (
	survey_id
);



--Forein Key
ALTER TABLE survey
ADD CONSTRAINT FK_COUNSELING_TO_SURVEY_1
FOREIGN KEY (counseling_id)
REFERENCES counseling(counseling_id)
ON DELETE CASCADE;

