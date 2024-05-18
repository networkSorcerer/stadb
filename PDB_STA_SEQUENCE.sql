-- 유기동물
CREATE SEQUENCE animal_seq
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  NOCYCLE
  CACHE 20;

-- 후원
CREATE SEQUENCE donate_seq
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- 봉사 공고
create sequence volunteer_seq
start with 1
increment by 1
nocycle
nocache;

-- 유기동물 공고
CREATE SEQUENCE adoption_seq
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  NOCYCLE
  CACHE 20;
  
-- 공지게시판
create sequence noticeBoard_seq
start with 1
increment by 1
nocycle
nocache;

-- 자유게시판
create sequence freeBoard_seq
start with 1
increment by 1
nocycle
nocache;

-- 봉사 후기 게시판
create sequence volunteerFeedbackBoard_seq
start with 1
increment by 1
nocycle
nocache;

-- 입양 후 이야기 게시판
create sequence adoptionFeedbackBoard_seq
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

-- 입양 신청
CREATE SEQUENCE counseling_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- 자유게시판 댓굴
create sequence Fcomment_seq
start with 1
increment by 1
nocycle
nocache;

-- 자유게시판 좋아요
create sequence flike_seq
start with 1
increment by 1
nocycle
nocache;

-- 봉사 후기 게시판 댓글
create sequence VFcomment_seq
start with 1
increment by 1
nocycle
nocache;

-- 봉사 후기 게시판 좋아요
create sequence VFlike_seq
start with 1
increment by 1
nocycle
nocache;

-- 입양 후 이야기 게시판 댓글
create sequence AFcomment_seq
start with 1
increment by 1
nocycle
nocache;

-- 입양 후 이야기 게시판 좋아요
create sequence AFlike_seq
start with 1
increment by 1
nocycle
nocache;

-- 신고
create sequence report_seq
increment by 1
start with 1
nocache
nocycle;

-- 이미지
create sequence image_seq
increment by 1
start with 1
nocache
nocycle;

-- 설문
CREATE SEQUENCE survey_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- 제재
create sequence sanction_seq
increment by 1
start with 1
nocache
nocycle;