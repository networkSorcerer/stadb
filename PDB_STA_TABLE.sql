CREATE TABLE users (
	user_id	varchar2(20)		NOT NULL,
	user_pwd	varchar2(30)		NOT NULL,
	user_name	varchar2(50)		NOT NULL,
	user_phone	varchar2(20)		NOT NULL,
	user_email	varchar2(50)		NOT NULL,
	user_act	number	DEFAULT 1	NOT NULL,
	user_repcnt	number	DEFAULT 0	NOT NULL,
	user_date	date	DEFAULT sysdate	NOT NULL,
	user_volcnt	number	DEFAULT 0	NOT NULL,
	user_level	number	DEFAULT 1	NOT NULL,
	user_adoptchk	number	DEFAULT 0	NOT NULL
);



COMMENT ON COLUMN users.user_id IS '회원은 ID로 구분';

COMMENT ON COLUMN users.user_phone IS '중복 불가';

COMMENT ON COLUMN users.user_email IS '중복 불가';

COMMENT ON COLUMN users.user_act IS '상태코드분류 1: 활동, 2: 활동중지, 0: 탈퇴(비활동) .  기본값은 1';

COMMENT ON COLUMN users.user_repcnt IS '관리자가 회원에 신고제재할 때마다 누적되는 횟수이다.  기본값은 0.';

COMMENT ON COLUMN users.user_date IS '시스템 날짜로 입력됨.';

COMMENT ON COLUMN users.user_volcnt IS '봉사 할때마다 1씩 증가';

COMMENT ON COLUMN users.user_level IS '봉사횟수가 3회 마다 1씩 증가';

COMMENT ON COLUMN users.user_adoptchk IS '입양한 경우 1';

CREATE TABLE admin (
	admin_id	varchar2(20)		NOT NULL,
	admin_pwd	varchar2(30)		NOT NULL
);


COMMENT ON COLUMN admin.admin_id IS '관리자는 한 명으로 가정하였습니다.';

CREATE TABLE volunteer (
	volunteer_id	number		NOT NULL,
	volunteer_detail	varchar2(2000)		NOT NULL,
	volunteer_date	date	DEFAULT sysdate	NOT NULL,
	volunteer_title	varchar2(100)		NOT NULL,
	volunteer_cnt	number	DEFAULT 0	NOT NULL,
	volunteer_time	varchar2(30)		NOT NULL,
	volunteer_due	varchar2(30)		NOT NULL,
	volunteer_limit	number		NOT NULL,
	volunteer_cost	varchar2(20)	DEFAULT '없음'	NOT NULL,
	volunteer_location	varchar2(100)		NOT NULL,
	volunteer_progress	number	DEFAULT 0	NOT NULL,
	admin_id	varchar2(20)		NOT NULL
);


COMMENT ON COLUMN volunteer.volunteer_date IS '작성한 당일로 입력';

COMMENT ON COLUMN volunteer.volunteer_progress IS '신청 가능 일자와 모집 인원에 따라 0 : 모집 전, 1 : 모집 중, 2 : 모집완료,  3 : 모집 종료 로 나뉜다.';

COMMENT ON COLUMN volunteer.admin_id IS '관리자는 한 명으로 가정하였습니다.';

CREATE TABLE adoption (
	adoption_id	number		NOT NULL,
	adoption_content	varchar2(2000)		NOT NULL,
	adoption_date	date	DEFAULT sysdate	NOT NULL,
	adoption_title	varchar2(100)		NOT NULL,
	adoption_cnt	number	DEFAULT 0	NOT NULL,
	adoption_status	varchar2(20)	DEFAULT '공고중'	NOT NULL,
	adoption_level	varchar2(20)		NOT NULL,
	admin_id	varchar2(20)		NOT NULL,
	animal_id	number		NOT NULL
);

COMMENT ON COLUMN adoption.adoption_level IS '입양 공고의 동물마다 레벨 제한이 달라짐';

COMMENT ON COLUMN adoption.admin_id IS '관리자는 한 명으로 가정하였습니다.';

CREATE TABLE freeBoard (
	fboard_id	number		NOT NULL,
	fboard_title	varchar2(80)		NOT NULL,
	fboard_content	varchar2(2000)		NOT NULL,
	fboard_like	number	DEFAULT 0	NOT NULL,
	fboard_cnt	number	DEFAULT 0	NOT NULL,
	fboard_date	date	DEFAULT sysdate	NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN freeBoard.fboard_id IS '자유게시판에 작성된 글의 고유번호';

COMMENT ON COLUMN freeBoard.fboard_like IS '버튼클릭시 +1, 한번 더 클릭시 -1';

COMMENT ON COLUMN freeBoard.fboard_cnt IS '날짜/조회수/좋아요수 순으로 정렬가능';

COMMENT ON COLUMN freeBoard.fboard_date IS '게시글이 작성된 날짜 및 시간 표시';

COMMENT ON COLUMN freeBoard.user_id IS '회원은 ID로 구분';

CREATE TABLE Fcomment (
	fcomment_id	number		NOT NULL,
	fcomment_content	varchar2(150)		NOT NULL,
	fcomment_date	date	DEFAULT sysdate	NOT NULL,
	fboard_id	number		NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN Fcomment.fcomment_id IS '자유글 댓글 고유ID';

COMMENT ON COLUMN Fcomment.fboard_id IS '자유게시판에 작성된 글의 고유번호';

COMMENT ON COLUMN Fcomment.user_id IS '회원은 ID로 구분';

CREATE TABLE counseling (
	counseling_id	number		NOT NULL,
	counseling_schedule	date		NOT NULL,
	user_id	varchar2(20)		NOT NULL,
	adoption_id	number		NOT NULL,
	counseling_date	date	DEFAULT sysdate	NOT NULL,
	counseling_judgment	varchar2(20)	DEFAULT '미확인'	NOT NULL,
	counseling_detail	varchar2(2000)		NULL,
	counseling_age	number		NOT NULL,
	counseling_address	varchar2(100)		NOT NULL,
	counseling_job	varchar2(40)		NOT NULL,
	counseling_adopt	number	DEFAULT 0	NOT NULL
);

COMMENT ON COLUMN counseling.user_id IS '회원은 ID로 구분';

COMMENT ON COLUMN counseling.counseling_judgment IS '관리자만 수정가능';

COMMENT ON COLUMN counseling.counseling_detail IS '관리자만 조회 수정 삭제';

COMMENT ON COLUMN counseling.counseling_adopt IS '0 : 입양 , 1 : 임시보호';

CREATE TABLE application (
	application_id	number		NOT NULL,
	application_date	date	DEFAULT sysdate	NOT NULL,
	application_comment	varchar2(150)		NULL,
	user_id	varchar2(20)		NOT NULL,
	volunteer_id	number		NOT NULL,
	application_result	number	DEFAULT 0	NOT NULL
);

COMMENT ON COLUMN application.application_date IS '당일 로 입력되게 한다';

COMMENT ON COLUMN application.user_id IS '회원은 ID로 구분';

COMMENT ON COLUMN application.application_result IS '이행시 1 이행 하지 않을시 0그대로';

CREATE TABLE donate (
	donate_ID	number		NOT NULL,
	donate_Price	number		NOT NULL,
	donate_Day	date	DEFAULT sysdate	NOT NULL,
	donate_PM	varchar2(30)		NOT NULL,
	donate_FDay	date	DEFAULT sysdate	NOT NULL,
	donate_sprice	number		NOT NULL,
	user_id	varchar2(20)		NOT NULL,
	donate_AHName	varchar2(21)		NOT NULL,
	donate_AHPhone	varchar2(30)		NOT NULL
);

COMMENT ON COLUMN donate.donate_PM IS '카드결제로만 가능하다';

COMMENT ON COLUMN donate.user_id IS '회원은 ID로 구분';

CREATE TABLE animal (
	animal_id	number		NOT NULL,
	animal_species	varchar2(50)		NOT NULL,
	animal_age	varchar2(50)		NOT NULL,
	animal_gender	varchar2(50)		NOT NULL,
	animal_status	varchar2(50)		NOT NULL,
	animal_kg	varchar2(50)		NOT NULL,
	animal_color	varchar2(50)		NOT NULL,
	animal_memo	varchar2(2000)		NOT NULL,
	admin_id	varchar2(20)		NOT NULL,
	animal_temp	number	DEFAULT 0	NOT NULL,
	animal_regist	date	DEFAULT sysdate	NOT NULL,
	animal_name	varchar2(50)		NOT NULL
);

COMMENT ON COLUMN animal.animal_species IS '강아지 또는 고양이';

COMMENT ON COLUMN animal.admin_id IS '관리자는 한 명으로 가정하였습니다.';

COMMENT ON COLUMN animal.animal_temp IS '0 : 불가능 1 : 호스피스 2 : 장기체류 3: 심장사상충';


CREATE TABLE flike (
	flike_id	number		NOT NULL,
	fliuser_id	varchar2(20)		NOT NULL,
	fboard_id	number		NOT NULL,
	flike_date	date	DEFAULT sysdate	NOT NULL
);

COMMENT ON COLUMN flike.fliuser_id IS '좋아요 누른 회원 ID';

CREATE TABLE noticeBoard (
	nboard_id	number		NOT NULL,
	nboard_title	varchar2(80)		NOT NULL,
	nboard_content	varchar2(2000)		NOT NULL,
	nboard_date	date	DEFAULT sysdate	NOT NULL,
	nboard_cnt	number	DEFAULT 0	NOT NULL,
	admin_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN noticeBoard.nboard_id IS '공지게시판에 작성된 글의 고유번호';

COMMENT ON COLUMN noticeBoard.nboard_date IS '게시글이 작성된 날짜 및 시간 표시';

COMMENT ON COLUMN noticeBoard.nboard_cnt IS '글 페이지 접속할때마다 조회수 1증가';

COMMENT ON COLUMN noticeBoard.admin_id IS '관리자는 한 명으로 가정하였습니다.';

CREATE TABLE image (
	image_id	number		NOT NULL,
	board_sort	number		NOT NULL,
	image_name	varchar2(20)		NOT NULL,
	adoption_id	number		NULL,
	animal_id	number		NULL,
	nboard_id	number		NULL,
	volunteer_id	number		NULL,
	fboard_id	number		NULL,
	vfboard_id	number		NULL,
	afboard_id	number		NULL
);

COMMENT ON COLUMN image.board_sort IS '1.유기동물, 2.입양공고, 3.봉사공고, 4.자유게시판, 5.공지게시판, 6.봉사후기, 7.입양후기';

COMMENT ON COLUMN image.nboard_id IS '공지게시판에 작성된 글의 고유번호';

COMMENT ON COLUMN image.fboard_id IS '자유게시판에 작성된 글의 고유번호';

CREATE TABLE volunteerFeedbackBoard (
	vfboard_id	number		NOT NULL,
	vfboard_title	varchar2(80)		NOT NULL,
	vfboard_content	varchar2(2000)		NOT NULL,
	vfboard_like	number	DEFAULT 0	NOT NULL,
	vfboard_cnt	number	DEFAULT 0	NOT NULL,
	vfboard_date	date	DEFAULT sysdate	NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN volunteerFeedbackBoard.user_id IS '회원은 ID로 구분';

CREATE TABLE adoptionFeedbackBoard (
	afboard_id	number		NOT NULL,
	afboard_title	varchar2(80)		NOT NULL,
	afboard_content	varchar2(2000)		NOT NULL,
	afboard_like	number	DEFAULT 0	NOT NULL,
	afboard_cnt	number	DEFAULT 0	NOT NULL,
	afboard_date	date	DEFAULT sysdate	NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN adoptionFeedbackBoard.user_id IS '회원은 ID로 구분';

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

CREATE TABLE VFcomment (
	vfcomment_id	number		NOT NULL,
	vfcomment_content	varchar2(150)		NOT NULL,
	vfcomment_date	date	DEFAULT sysdate	NOT NULL,
	vfboard_id	number		NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN VFcomment.vfcomment_id IS '봉사후기글 댓글 고유ID';

COMMENT ON COLUMN VFcomment.vfcomment_content IS '봉사후기 댓글 내용';

COMMENT ON COLUMN VFcomment.user_id IS '회원은 ID로 구분';

CREATE TABLE AFcomment (
	afcomment_id	number		NOT NULL,
	afcomment_content	varchar2(150)		NOT NULL,
	afcomment_date	date	DEFAULT sysdate	NOT NULL,
	afboard_id	number		NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN AFcomment.user_id IS '회원은 ID로 구분';

CREATE TABLE VFlike (
	vflike_id	number		NOT NULL,
	vfliuser_id	varchar2(20)		NOT NULL,
	vflike_date	date	DEFAULT sysdate	NOT NULL,
	vfboard_id	number		NOT NULL
);

COMMENT ON COLUMN VFlike.vfliuser_id IS '좋아요 누른 회원 ID';

CREATE TABLE AFlike (
	aflike_id	number		NOT NULL,
	afliuser_id	varchar2(20)		NOT NULL,
	aflike_date	date	DEFAULT sysdate	NOT NULL,
	afboard_id	number		NOT NULL
);

COMMENT ON COLUMN AFlike.afliuser_id IS '좋아요 누른 회원 ID';

CREATE TABLE report (
	report_id	number		NOT NULL,
	report_sort	number		NOT NULL,
	report_date	date	DEFAULT sysdate	NOT NULL,
	report_detail	varchar2(2000)		NULL,
	report_status	number	DEFAULT 1	NOT NULL,
	fboard_id	number		NULL,
	fcomment_id	number		NULL,
	vfboard_id	number		NULL,
	vfcomment_id	number		NULL,
	afcomment_id	number		NULL,
	afboard_id	number		NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN report.report_date IS '1. 욕설 / 2. 도배 / 3. 광고 / 4. 기타';

COMMENT ON COLUMN report.report_status IS '1. 신고됨 / 2. 처리됨';

COMMENT ON COLUMN report.fboard_id IS '자유게시판에 작성된 글의 고유번호';

COMMENT ON COLUMN report.fcomment_id IS '자유글 댓글 고유ID';

COMMENT ON COLUMN report.vfcomment_id IS '봉사후기글 댓글 고유ID';

COMMENT ON COLUMN report.user_id IS '신고한 회원 ID';

CREATE TABLE sanction (
	sanction_id	number		NOT NULL,
	sanction_status	number		NOT NULL,
	sanction_result	number		NOT NULL,
	sanction_date	date	DEFAULT sysdate	NOT NULL,
	report_id	number		NOT NULL
);

COMMENT ON COLUMN sanction.sanction_status IS '1. 신고제재 / 2. 신고무시';

COMMENT ON COLUMN sanction.sanction_result IS '1. 게시글삭제 / 2. 유저활동정지 / 3. 계정삭제';

