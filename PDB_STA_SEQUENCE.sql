-- ���⵿��
CREATE SEQUENCE animal_seq
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  NOCYCLE
  CACHE 20;

-- �Ŀ�
CREATE SEQUENCE donate_seq
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- ���� ����
create sequence volunteer_seq
start with 1
increment by 1
nocycle
nocache;

-- ���⵿�� ����
CREATE SEQUENCE adoption_seq
  START WITH 1
  INCREMENT BY 1
  NOMAXVALUE
  NOCYCLE
  CACHE 20;
  
-- �����Խ���
create sequence noticeBoard_seq
start with 1
increment by 1
nocycle
nocache;

-- �����Խ���
create sequence freeBoard_seq
start with 1
increment by 1
nocycle
nocache;

-- ���� �ı� �Խ���
create sequence volunteerFeedbackBoard_seq
start with 1
increment by 1
nocycle
nocache;

-- �Ծ� �� �̾߱� �Խ���
create sequence adoptionFeedbackBoard_seq
start with 1
increment by 1
nocycle
nocache;

-- ���� ��û
create sequence application_seq
start with 1
increment by 1
nocycle
nocache;

-- �Ծ� ��û
CREATE SEQUENCE counseling_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- �����Խ��� ��
create sequence Fcomment_seq
start with 1
increment by 1
nocycle
nocache;

-- �����Խ��� ���ƿ�
create sequence flike_seq
start with 1
increment by 1
nocycle
nocache;

-- ���� �ı� �Խ��� ���
create sequence VFcomment_seq
start with 1
increment by 1
nocycle
nocache;

-- ���� �ı� �Խ��� ���ƿ�
create sequence VFlike_seq
start with 1
increment by 1
nocycle
nocache;

-- �Ծ� �� �̾߱� �Խ��� ���
create sequence AFcomment_seq
start with 1
increment by 1
nocycle
nocache;

-- �Ծ� �� �̾߱� �Խ��� ���ƿ�
create sequence AFlike_seq
start with 1
increment by 1
nocycle
nocache;

-- �Ű�
create sequence report_seq
increment by 1
start with 1
nocache
nocycle;

-- �̹���
create sequence image_seq
increment by 1
start with 1
nocache
nocycle;

-- ����
CREATE SEQUENCE survey_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- ����
create sequence sanction_seq
increment by 1
start with 1
nocache
nocycle;