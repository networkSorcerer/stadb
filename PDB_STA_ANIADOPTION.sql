-----------------------------------------------------------------------------------------
--Animal 변경 사항 
alter table animal
add(readcnt number default 0);

alter table animal
add(animal_passwd number default 0);

alter table animal
add(animal_file varchar2(500));

--썸네일을 위한 필드
alter table animal
add(animal_thumb varchar2(500));



-- 1. 테이블 구조 변경 (새로운 컬럼 추가) --animal_temp를 select 로 변경했습니다
ALTER TABLE animal
ADD (animal_temp_new VARCHAR2(100));

-- 2. 새로운 컬럼에 기존 데이터 복사
UPDATE animal
SET animal_temp_new = TO_CHAR(animal_temp);

-- 3. 기존 컬럼 삭제
ALTER TABLE animal
DROP COLUMN animal_temp;

-- 4. 새로운 컬럼 이름 변경
ALTER TABLE animal
RENAME COLUMN animal_temp_new TO animal_temp;




-- 이미지 테이블의 animal_id 외래 키 제약 조건 삭제
ALTER TABLE image
DROP CONSTRAINT FK_animal_TO_image_1;

-- 이미지 테이블의 adoption_id 외래 키 제약 조건 삭제
ALTER TABLE image
DROP  CONSTRAINT FK_adoption_TO_image_1;

-- 상담 테이블의 adoption_id 외래 키 제약 조건 삭제
ALTER TABLE counseling
DROP CONSTRAINT FK_adoption_TO_counseling_1;

-- 입양 테이블의 animal_id 외래 키 제약 조건 삭제
ALTER TABLE adoption
DROP CONSTRAINT FK_animal_TO_adoption_1;

ALTER TABLE survey
DROP CONSTRAINT FK_COUNSELING_TO_SURVEY_1;



--animal을 지우면 image 지우기
ALTER TABLE image
ADD CONSTRAINT FK_animal_TO_image_1
FOREIGN KEY (animal_id)
REFERENCES adoption(animal_id)
ON DELETE CASCADE;

--adoption 지우면 image 지우기
ALTER TABLE image
ADD CONSTRAINT FK_adoption_TO_image_1
FOREIGN KEY (adoption_id)
REFERENCES adoption(adoption_id)
ON DELETE CASCADE;

--adoption 지우면 counseling 지우기
ALTER TABLE counseling
ADD CONSTRAINT FK_adoption_TO_counseling_1
FOREIGN KEY (adoption_id)
REFERENCES adoption(adoption_id)
ON DELETE CASCADE;

--animal 지우면 adoption 지우기 
ALTER TABLE adoption
ADD CONSTRAINT FK_animal_TO_adoption_1
FOREIGN KEY (animal_id)
REFERENCES animal(animal_id)
ON DELETE CASCADE;

ALTER TABLE survey
ADD CONSTRAINT FK_COUNSELING_TO_SURVEY_1
FOREIGN KEY (counseling_id)
REFERENCES counseling(counseling_id)
ON DELETE CASCADE;




--FK_animal_TO_adoption_1
--FK_adoption_TO_image_1
--FK_animal_TO_image_1
--FK_adoption_TO_counseling_1
----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------



--Adoption 변경사항

alter table adoption
add(adoption_passwd number default 0);

alter table adoption
add(adoption_file varchar2(500));

--썸네일을 위한 필드
alter table adoption
add(adoption_thumb varchar2(500));



ALTER TABLE animal DROP COLUMN animal_passwd;
ALTER TABLE adoption DROP COLUMN adoption_passwd;



--img 파일 문제 해결 
--UPDATE animal
--SET animal_file = NULL;




-- 테이블의 구조 확인
DESCRIBE animal;
DESCRIBE adoption;
DESCRIBE image;


-- 테이블의 모든 데이터 조회

select * from animal;
select * from adoption;
select * from admin;
select * from image;






-- 개 추가
INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '강아지', '2살', '암컷', '중성화 O', '5kg', '갈색', '활발하고 친화적입니다.', 'admin', '1.입양가능', SYSDATE, '멍멍이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '강아지', '1살', '수컷', '중성화 O', '6kg', '흰색', '재미있는 개입니다.', 'admin', '1.입양가능', SYSDATE, '댕댕이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '강아지', '2살', '수컷', '중성화 O', '6kg', '검정', '활발한 개입니다.', 'admin', '1.입양가능', SYSDATE, '왈이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '강아지', '1살', '암컷', '중성화 O', '3kg', '갈색', '순한 개입니다.', 'admin', '1.입양가능', SYSDATE, '잠만보');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '강아지', '2살', '수컷', '중성화 O', '4kg', '흰색', '활발한 개입니다.', 'admin', '1.입양가능', SYSDATE, '피카츄');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '강아지', '2살', '수컷', '중성화 O', '5kg', '흰색', '얌전한 개입니다.', 'admin', '1.입양가능', SYSDATE, '진돌');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '강아지', '2살', '수컷', '중성화 O', '3kg', '흰색', '장난이 많은 개입니다.', 'admin', '1.입양가능', SYSDATE, '북이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '강아지', '2살', '암컷', '중성화 O', '4kg', '흰색', '활발한 개입니다.', 'admin', '1.입양가능', SYSDATE, '브이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '강아지', '2살', '수컷', '중성화 O', '5kg', '흰색', '순한 개입니다.', 'admin', '1.입양가능', SYSDATE, '두비');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '강아지', '2살', '암컷', '중성화 O', '6kg', '흰색', '순한 개입니다.', 'admin', '1.입양가능', SYSDATE, '순이');

-- 고양이 추가
INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '3살', '암컷', '중성화 O', '4kg', '검은색', '아름다운 고양이입니다.', 'admin', '1.입양가능', SYSDATE, '양이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '2살', '암컷', '중성화 X', '5kg', '갈색', '애교 많은 고양이입니다.', 'admin', '1.입양가능', SYSDATE, '냥냥이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '1살', '암컷', '중성화 X', '3kg', '흰색', '잠이 은 고양이입니다.', 'admin', '1.입양가능', SYSDATE, '뮤');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '2살', '수컷', '중성화 X', '5kg', '갈색', '활발한 고양이입니다.', 'admin', '1.입양가능', SYSDATE, '뮤츠');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '2살', '수컷', '중성화 X', '5kg', '갈색', '축하드려요 수속성 고양이입니다.', 'admin', '1.입양가능', SYSDATE, '고라파덕');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '3살', '암컷', '중성화 O', '4kg', '검은색', '아름다운 고양이입니다.', 'admin', '1.입양가능', SYSDATE, '네리');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '2살', '암컷', '중성화 X', '5kg', '갈색', '애교 많은 고양이입니다.', 'admin', '1.입양가능', SYSDATE, '노량이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '1살', '암컷', '중성화 X', '3kg', '흰색', '잠이 은 고양이입니다.', 'admin', '1.입양가능', SYSDATE, '귤이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '2살', '수컷', '중성화 X', '5kg', '갈색', '활발한 고양이입니다.', 'admin', '1.입양가능', SYSDATE, '황건적');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '2살', '수컷', '중성화 X', '5kg', '갈색', '축하드려요 수속성 고양이입니다.', 'admin', '1.입양가능', SYSDATE, '나무');




INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '무료분양 이벤트가 시작되었습니다. 많은 참여 부탁드립니다.', TO_DATE('2024-03-05', 'YYYY-MM-DD'), '무료분양 이벤트 공지', 100, '진행중', '상', 'admin', 11);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '당신의 따뜻한 가정이 필요한 아이들이 기다리고 있습니다.', TO_DATE('2024-03-04', 'YYYY-MM-DD'), '어린이날 특별 무료분양', 75, '진행중', '중', 'admin', 12);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '고양이 친구들이 새로운 가족을 찾고 있어요.', TO_DATE('2024-03-03', 'YYYY-MM-DD'), '봄맞이 고양이 무료분양', 120, '종료', '하', 'admin', 13);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '겨울철 특별 무료분양 이벤트! 참여하세요.', TO_DATE('2024-03-02', 'YYYY-MM-DD'), '겨울 무료분양', 90, '진행중', '상', 'admin', 14);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '새로 무료분양받은 친구들을 소개합니다.', TO_DATE('2024-03-01', 'YYYY-MM-DD'), '신규 동물 소개', 110, '진행중', '중', 'admin', 15);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '특별한 무료분양 기회! 놓치지 마세요.', TO_DATE('2024-02-29', 'YYYY-MM-DD'), '특별 무료분양 프로모션', 80, '진행중', '하', 'admin', 16);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '무료분양 후기 이벤트가 진행 중입니다.', TO_DATE('2024-02-28', 'YYYY-MM-DD'), '무료분양 후기 작성 이벤트', 95, '진행중', '상', 'admin', 17);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '봄철 무료분양의 계절, 당신의 집에 따뜻한 친구를 불러보세요.', TO_DATE('2024-02-27', 'YYYY-MM-DD'), '봄 무료분양 이벤트', 110, '종료', '중', 'admin', 18);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '아이들을 위한 특별 무료분양 이벤트가 준비되어 있습니다.', TO_DATE('2024-02-26', 'YYYY-MM-DD'), '무료분양 이벤트', 85, '진행중', '하', 'admin', 19);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '다함께 즐기는 여름! 무료분양 이벤트에 참여하세요.', TO_DATE('2024-02-25', 'YYYY-MM-DD'), '여름 무료분양 캠페인', 105, '진행중', '상', 'admin', 20);
INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '무료분양 이벤트가 시작되었습니다. 많은 참여 부탁드립니다.', TO_DATE('2024-03-05', 'YYYY-MM-DD'), '무료분양 이벤트 공지', 100, '진행중', '상', 'admin', 21);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '당신의 따뜻한 가정이 필요한 아이들이 기다리고 있습니다.', TO_DATE('2024-03-04', 'YYYY-MM-DD'), '어린이날 특별 무료분양', 75, '진행중', '중', 'admin', 22);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '고양이 친구들이 새로운 가족을 찾고 있어요.', TO_DATE('2024-03-03', 'YYYY-MM-DD'), '봄맞이 고양이 무료분양', 120, '종료', '하', 'admin', 23);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '겨울철 특별 무료분양 이벤트! 참여하세요.', TO_DATE('2024-03-02', 'YYYY-MM-DD'), '겨울 무료분양', 90, '진행중', '상', 'admin', 24);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '새로 무료분양받은 친구들을 소개합니다.', TO_DATE('2024-03-01', 'YYYY-MM-DD'), '신규 동물 소개', 110, '진행중', '중', 'admin', 25);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '특별한 무료분양 기회! 놓치지 마세요.', TO_DATE('2024-02-29', 'YYYY-MM-DD'), '특별 무료분양 프로모션', 80, '진행중', '하', 'admin', 26);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '무료분양 후기 이벤트가 진행 중입니다.', TO_DATE('2024-02-28', 'YYYY-MM-DD'), '무료분양 후기 작성 이벤트', 95, '진행중', '상', 'admin', 27);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '봄철 무료분양의 계절, 당신의 집에 따뜻한 친구를 불러보세요.', TO_DATE('2024-02-27', 'YYYY-MM-DD'), '봄 무료분양 이벤트', 110, '종료', '중', 'admin', 28);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '아이들을 위한 특별 무료분양 이벤트가 준비되어 있습니다.', TO_DATE('2024-02-26', 'YYYY-MM-DD'), '무료분양 이벤트', 85, '진행중', '하', 'admin', 29);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '다함께 즐기는 여름! 무료분양 이벤트에 참여하세요.', TO_DATE('2024-02-25', 'YYYY-MM-DD'), '여름 무료분양 캠페인', 105, '진행중', '상', 'admin', 30);




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