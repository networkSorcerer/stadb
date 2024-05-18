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



COMMENT ON COLUMN users.user_id IS 'ȸ���� ID�� ����';

COMMENT ON COLUMN users.user_phone IS '�ߺ� �Ұ�';

COMMENT ON COLUMN users.user_email IS '�ߺ� �Ұ�';

COMMENT ON COLUMN users.user_act IS '�����ڵ�з� 1: Ȱ��, 2: Ȱ������, 0: Ż��(��Ȱ��) .  �⺻���� 1';

COMMENT ON COLUMN users.user_repcnt IS '�����ڰ� ȸ���� �Ű������� ������ �����Ǵ� Ƚ���̴�.  �⺻���� 0.';

COMMENT ON COLUMN users.user_date IS '�ý��� ��¥�� �Էµ�.';

COMMENT ON COLUMN users.user_volcnt IS '���� �Ҷ����� 1�� ����';

COMMENT ON COLUMN users.user_level IS '����Ƚ���� 3ȸ ���� 1�� ����';

COMMENT ON COLUMN users.user_adoptchk IS '�Ծ��� ��� 1';

CREATE TABLE admin (
	admin_id	varchar2(20)		NOT NULL,
	admin_pwd	varchar2(30)		NOT NULL
);


COMMENT ON COLUMN admin.admin_id IS '�����ڴ� �� ������ �����Ͽ����ϴ�.';

CREATE TABLE volunteer (
	volunteer_id	number		NOT NULL,
	volunteer_detail	varchar2(2000)		NOT NULL,
	volunteer_date	date	DEFAULT sysdate	NOT NULL,
	volunteer_title	varchar2(100)		NOT NULL,
	volunteer_cnt	number	DEFAULT 0	NOT NULL,
	volunteer_time	varchar2(30)		NOT NULL,
	volunteer_due	varchar2(30)		NOT NULL,
	volunteer_limit	number		NOT NULL,
	volunteer_cost	varchar2(20)	DEFAULT '����'	NOT NULL,
	volunteer_location	varchar2(100)		NOT NULL,
	volunteer_progress	number	DEFAULT 0	NOT NULL,
	admin_id	varchar2(20)		NOT NULL
);


COMMENT ON COLUMN volunteer.volunteer_date IS '�ۼ��� ���Ϸ� �Է�';

COMMENT ON COLUMN volunteer.volunteer_progress IS '��û ���� ���ڿ� ���� �ο��� ���� 0 : ���� ��, 1 : ���� ��, 2 : �����Ϸ�,  3 : ���� ���� �� ������.';

COMMENT ON COLUMN volunteer.admin_id IS '�����ڴ� �� ������ �����Ͽ����ϴ�.';

CREATE TABLE adoption (
	adoption_id	number		NOT NULL,
	adoption_content	varchar2(2000)		NOT NULL,
	adoption_date	date	DEFAULT sysdate	NOT NULL,
	adoption_title	varchar2(100)		NOT NULL,
	adoption_cnt	number	DEFAULT 0	NOT NULL,
	adoption_status	varchar2(20)	DEFAULT '������'	NOT NULL,
	adoption_level	varchar2(20)		NOT NULL,
	admin_id	varchar2(20)		NOT NULL,
	animal_id	number		NOT NULL
);

COMMENT ON COLUMN adoption.adoption_level IS '�Ծ� ������ �������� ���� ������ �޶���';

COMMENT ON COLUMN adoption.admin_id IS '�����ڴ� �� ������ �����Ͽ����ϴ�.';

CREATE TABLE freeBoard (
	fboard_id	number		NOT NULL,
	fboard_title	varchar2(80)		NOT NULL,
	fboard_content	varchar2(2000)		NOT NULL,
	fboard_like	number	DEFAULT 0	NOT NULL,
	fboard_cnt	number	DEFAULT 0	NOT NULL,
	fboard_date	date	DEFAULT sysdate	NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN freeBoard.fboard_id IS '�����Խ��ǿ� �ۼ��� ���� ������ȣ';

COMMENT ON COLUMN freeBoard.fboard_like IS '��ưŬ���� +1, �ѹ� �� Ŭ���� -1';

COMMENT ON COLUMN freeBoard.fboard_cnt IS '��¥/��ȸ��/���ƿ�� ������ ���İ���';

COMMENT ON COLUMN freeBoard.fboard_date IS '�Խñ��� �ۼ��� ��¥ �� �ð� ǥ��';

COMMENT ON COLUMN freeBoard.user_id IS 'ȸ���� ID�� ����';

CREATE TABLE Fcomment (
	fcomment_id	number		NOT NULL,
	fcomment_content	varchar2(150)		NOT NULL,
	fcomment_date	date	DEFAULT sysdate	NOT NULL,
	fboard_id	number		NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN Fcomment.fcomment_id IS '������ ��� ����ID';

COMMENT ON COLUMN Fcomment.fboard_id IS '�����Խ��ǿ� �ۼ��� ���� ������ȣ';

COMMENT ON COLUMN Fcomment.user_id IS 'ȸ���� ID�� ����';

CREATE TABLE counseling (
	counseling_id	number		NOT NULL,
	counseling_schedule	date		NOT NULL,
	user_id	varchar2(20)		NOT NULL,
	adoption_id	number		NOT NULL,
	counseling_date	date	DEFAULT sysdate	NOT NULL,
	counseling_judgment	varchar2(20)	DEFAULT '��Ȯ��'	NOT NULL,
	counseling_detail	varchar2(2000)		NULL,
	counseling_age	number		NOT NULL,
	counseling_address	varchar2(100)		NOT NULL,
	counseling_job	varchar2(40)		NOT NULL,
	counseling_adopt	number	DEFAULT 0	NOT NULL
);

COMMENT ON COLUMN counseling.user_id IS 'ȸ���� ID�� ����';

COMMENT ON COLUMN counseling.counseling_judgment IS '�����ڸ� ��������';

COMMENT ON COLUMN counseling.counseling_detail IS '�����ڸ� ��ȸ ���� ����';

COMMENT ON COLUMN counseling.counseling_adopt IS '0 : �Ծ� , 1 : �ӽú�ȣ';

CREATE TABLE application (
	application_id	number		NOT NULL,
	application_date	date	DEFAULT sysdate	NOT NULL,
	application_comment	varchar2(150)		NULL,
	user_id	varchar2(20)		NOT NULL,
	volunteer_id	number		NOT NULL,
	application_result	number	DEFAULT 0	NOT NULL
);

COMMENT ON COLUMN application.application_date IS '���� �� �Էµǰ� �Ѵ�';

COMMENT ON COLUMN application.user_id IS 'ȸ���� ID�� ����';

COMMENT ON COLUMN application.application_result IS '����� 1 ���� ���� ������ 0�״��';

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

COMMENT ON COLUMN donate.donate_PM IS 'ī������θ� �����ϴ�';

COMMENT ON COLUMN donate.user_id IS 'ȸ���� ID�� ����';

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

COMMENT ON COLUMN animal.animal_species IS '������ �Ǵ� �����';

COMMENT ON COLUMN animal.admin_id IS '�����ڴ� �� ������ �����Ͽ����ϴ�.';

COMMENT ON COLUMN animal.animal_temp IS '0 : �Ұ��� 1 : ȣ���ǽ� 2 : ���ü�� 3: ��������';


CREATE TABLE flike (
	flike_id	number		NOT NULL,
	fliuser_id	varchar2(20)		NOT NULL,
	fboard_id	number		NOT NULL,
	flike_date	date	DEFAULT sysdate	NOT NULL
);

COMMENT ON COLUMN flike.fliuser_id IS '���ƿ� ���� ȸ�� ID';

CREATE TABLE noticeBoard (
	nboard_id	number		NOT NULL,
	nboard_title	varchar2(80)		NOT NULL,
	nboard_content	varchar2(2000)		NOT NULL,
	nboard_date	date	DEFAULT sysdate	NOT NULL,
	nboard_cnt	number	DEFAULT 0	NOT NULL,
	admin_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN noticeBoard.nboard_id IS '�����Խ��ǿ� �ۼ��� ���� ������ȣ';

COMMENT ON COLUMN noticeBoard.nboard_date IS '�Խñ��� �ۼ��� ��¥ �� �ð� ǥ��';

COMMENT ON COLUMN noticeBoard.nboard_cnt IS '�� ������ �����Ҷ����� ��ȸ�� 1����';

COMMENT ON COLUMN noticeBoard.admin_id IS '�����ڴ� �� ������ �����Ͽ����ϴ�.';

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

COMMENT ON COLUMN image.board_sort IS '1.���⵿��, 2.�Ծ����, 3.�������, 4.�����Խ���, 5.�����Խ���, 6.�����ı�, 7.�Ծ��ı�';

COMMENT ON COLUMN image.nboard_id IS '�����Խ��ǿ� �ۼ��� ���� ������ȣ';

COMMENT ON COLUMN image.fboard_id IS '�����Խ��ǿ� �ۼ��� ���� ������ȣ';

CREATE TABLE volunteerFeedbackBoard (
	vfboard_id	number		NOT NULL,
	vfboard_title	varchar2(80)		NOT NULL,
	vfboard_content	varchar2(2000)		NOT NULL,
	vfboard_like	number	DEFAULT 0	NOT NULL,
	vfboard_cnt	number	DEFAULT 0	NOT NULL,
	vfboard_date	date	DEFAULT sysdate	NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN volunteerFeedbackBoard.user_id IS 'ȸ���� ID�� ����';

CREATE TABLE adoptionFeedbackBoard (
	afboard_id	number		NOT NULL,
	afboard_title	varchar2(80)		NOT NULL,
	afboard_content	varchar2(2000)		NOT NULL,
	afboard_like	number	DEFAULT 0	NOT NULL,
	afboard_cnt	number	DEFAULT 0	NOT NULL,
	afboard_date	date	DEFAULT sysdate	NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN adoptionFeedbackBoard.user_id IS 'ȸ���� ID�� ����';

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

COMMENT ON COLUMN survey.survey_id IS '���� ���� ID';

COMMENT ON COLUMN survey.counseling_id IS '���� ���� ID';

CREATE TABLE VFcomment (
	vfcomment_id	number		NOT NULL,
	vfcomment_content	varchar2(150)		NOT NULL,
	vfcomment_date	date	DEFAULT sysdate	NOT NULL,
	vfboard_id	number		NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN VFcomment.vfcomment_id IS '�����ı�� ��� ����ID';

COMMENT ON COLUMN VFcomment.vfcomment_content IS '�����ı� ��� ����';

COMMENT ON COLUMN VFcomment.user_id IS 'ȸ���� ID�� ����';

CREATE TABLE AFcomment (
	afcomment_id	number		NOT NULL,
	afcomment_content	varchar2(150)		NOT NULL,
	afcomment_date	date	DEFAULT sysdate	NOT NULL,
	afboard_id	number		NOT NULL,
	user_id	varchar2(20)		NOT NULL
);

COMMENT ON COLUMN AFcomment.user_id IS 'ȸ���� ID�� ����';

CREATE TABLE VFlike (
	vflike_id	number		NOT NULL,
	vfliuser_id	varchar2(20)		NOT NULL,
	vflike_date	date	DEFAULT sysdate	NOT NULL,
	vfboard_id	number		NOT NULL
);

COMMENT ON COLUMN VFlike.vfliuser_id IS '���ƿ� ���� ȸ�� ID';

CREATE TABLE AFlike (
	aflike_id	number		NOT NULL,
	afliuser_id	varchar2(20)		NOT NULL,
	aflike_date	date	DEFAULT sysdate	NOT NULL,
	afboard_id	number		NOT NULL
);

COMMENT ON COLUMN AFlike.afliuser_id IS '���ƿ� ���� ȸ�� ID';

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

COMMENT ON COLUMN report.report_date IS '1. �弳 / 2. ���� / 3. ���� / 4. ��Ÿ';

COMMENT ON COLUMN report.report_status IS '1. �Ű�� / 2. ó����';

COMMENT ON COLUMN report.fboard_id IS '�����Խ��ǿ� �ۼ��� ���� ������ȣ';

COMMENT ON COLUMN report.fcomment_id IS '������ ��� ����ID';

COMMENT ON COLUMN report.vfcomment_id IS '�����ı�� ��� ����ID';

COMMENT ON COLUMN report.user_id IS '�Ű��� ȸ�� ID';

CREATE TABLE sanction (
	sanction_id	number		NOT NULL,
	sanction_status	number		NOT NULL,
	sanction_result	number		NOT NULL,
	sanction_date	date	DEFAULT sysdate	NOT NULL,
	report_id	number		NOT NULL
);

COMMENT ON COLUMN sanction.sanction_status IS '1. �Ű����� / 2. �Ű���';

COMMENT ON COLUMN sanction.sanction_result IS '1. �Խñۻ��� / 2. ����Ȱ������ / 3. ��������';

