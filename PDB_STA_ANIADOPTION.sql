-----------------------------------------------------------------------------------------
--Animal ���� ���� 
alter table animal
add(readcnt number default 0);

alter table animal
add(animal_passwd number default 0);

alter table animal
add(animal_file varchar2(500));

--������� ���� �ʵ�
alter table animal
add(animal_thumb varchar2(500));



-- 1. ���̺� ���� ���� (���ο� �÷� �߰�) --animal_temp�� select �� �����߽��ϴ�
ALTER TABLE animal
ADD (animal_temp_new VARCHAR2(100));

-- 2. ���ο� �÷��� ���� ������ ����
UPDATE animal
SET animal_temp_new = TO_CHAR(animal_temp);

-- 3. ���� �÷� ����
ALTER TABLE animal
DROP COLUMN animal_temp;

-- 4. ���ο� �÷� �̸� ����
ALTER TABLE animal
RENAME COLUMN animal_temp_new TO animal_temp;




-- �̹��� ���̺��� animal_id �ܷ� Ű ���� ���� ����
ALTER TABLE image
DROP CONSTRAINT FK_animal_TO_image_1;

-- �̹��� ���̺��� adoption_id �ܷ� Ű ���� ���� ����
ALTER TABLE image
DROP  CONSTRAINT FK_adoption_TO_image_1;

-- ��� ���̺��� adoption_id �ܷ� Ű ���� ���� ����
ALTER TABLE counseling
DROP CONSTRAINT FK_adoption_TO_counseling_1;

-- �Ծ� ���̺��� animal_id �ܷ� Ű ���� ���� ����
ALTER TABLE adoption
DROP CONSTRAINT FK_animal_TO_adoption_1;

ALTER TABLE survey
DROP CONSTRAINT FK_COUNSELING_TO_SURVEY_1;



--animal�� ����� image �����
ALTER TABLE image
ADD CONSTRAINT FK_animal_TO_image_1
FOREIGN KEY (animal_id)
REFERENCES adoption(animal_id)
ON DELETE CASCADE;

--adoption ����� image �����
ALTER TABLE image
ADD CONSTRAINT FK_adoption_TO_image_1
FOREIGN KEY (adoption_id)
REFERENCES adoption(adoption_id)
ON DELETE CASCADE;

--adoption ����� counseling �����
ALTER TABLE counseling
ADD CONSTRAINT FK_adoption_TO_counseling_1
FOREIGN KEY (adoption_id)
REFERENCES adoption(adoption_id)
ON DELETE CASCADE;

--animal ����� adoption ����� 
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



--Adoption �������

alter table adoption
add(adoption_passwd number default 0);

alter table adoption
add(adoption_file varchar2(500));

--������� ���� �ʵ�
alter table adoption
add(adoption_thumb varchar2(500));



ALTER TABLE animal DROP COLUMN animal_passwd;
ALTER TABLE adoption DROP COLUMN adoption_passwd;



--img ���� ���� �ذ� 
--UPDATE animal
--SET animal_file = NULL;




-- ���̺��� ���� Ȯ��
DESCRIBE animal;
DESCRIBE adoption;
DESCRIBE image;


-- ���̺��� ��� ������ ��ȸ

select * from animal;
select * from adoption;
select * from admin;
select * from image;






-- �� �߰�
INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '������', '2��', '����', '�߼�ȭ O', '5kg', '����', 'Ȱ���ϰ� ģȭ���Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '�۸���');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '������', '1��', '����', '�߼�ȭ O', '6kg', '���', '����ִ� ���Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '�����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '������', '2��', '����', '�߼�ȭ O', '6kg', '����', 'Ȱ���� ���Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '������', '1��', '����', '�߼�ȭ O', '3kg', '����', '���� ���Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '�Ḹ��');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '������', '2��', '����', '�߼�ȭ O', '4kg', '���', 'Ȱ���� ���Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '��ī��');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '������', '2��', '����', '�߼�ȭ O', '5kg', '���', '������ ���Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '������', '2��', '����', '�߼�ȭ O', '3kg', '���', '�峭�� ���� ���Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '������', '2��', '����', '�߼�ȭ O', '4kg', '���', 'Ȱ���� ���Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '������', '2��', '����', '�߼�ȭ O', '5kg', '���', '���� ���Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '�κ�');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '������', '2��', '����', '�߼�ȭ O', '6kg', '���', '���� ���Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '����');

-- ����� �߰�
INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '3��', '����', '�߼�ȭ O', '4kg', '������', '�Ƹ��ٿ� ������Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '2��', '����', '�߼�ȭ X', '5kg', '����', '�ֱ� ���� ������Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '�ɳ���');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '1��', '����', '�߼�ȭ X', '3kg', '���', '���� �� ������Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '��');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '2��', '����', '�߼�ȭ X', '5kg', '����', 'Ȱ���� ������Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '2��', '����', '�߼�ȭ X', '5kg', '����', '���ϵ���� ���Ӽ� ������Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '����Ĵ�');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '3��', '����', '�߼�ȭ O', '4kg', '������', '�Ƹ��ٿ� ������Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '�׸�');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '2��', '����', '�߼�ȭ X', '5kg', '����', '�ֱ� ���� ������Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '�뷮��');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '1��', '����', '�߼�ȭ X', '3kg', '���', '���� �� ������Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '2��', '����', '�߼�ȭ X', '5kg', '����', 'Ȱ���� ������Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, 'Ȳ����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '2��', '����', '�߼�ȭ X', '5kg', '����', '���ϵ���� ���Ӽ� ������Դϴ�.', 'admin', '1.�Ծ簡��', SYSDATE, '����');




INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����о� �̺�Ʈ�� ���۵Ǿ����ϴ�. ���� ���� ��Ź�帳�ϴ�.', TO_DATE('2024-03-05', 'YYYY-MM-DD'), '����о� �̺�Ʈ ����', 100, '������', '��', 'admin', 11);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����� ������ ������ �ʿ��� ���̵��� ��ٸ��� �ֽ��ϴ�.', TO_DATE('2024-03-04', 'YYYY-MM-DD'), '��̳� Ư�� ����о�', 75, '������', '��', 'admin', 12);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����� ģ������ ���ο� ������ ã�� �־��.', TO_DATE('2024-03-03', 'YYYY-MM-DD'), '������ ����� ����о�', 120, '����', '��', 'admin', 13);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '�ܿ�ö Ư�� ����о� �̺�Ʈ! �����ϼ���.', TO_DATE('2024-03-02', 'YYYY-MM-DD'), '�ܿ� ����о�', 90, '������', '��', 'admin', 14);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '���� ����о���� ģ������ �Ұ��մϴ�.', TO_DATE('2024-03-01', 'YYYY-MM-DD'), '�ű� ���� �Ұ�', 110, '������', '��', 'admin', 15);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, 'Ư���� ����о� ��ȸ! ��ġ�� ������.', TO_DATE('2024-02-29', 'YYYY-MM-DD'), 'Ư�� ����о� ���θ��', 80, '������', '��', 'admin', 16);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����о� �ı� �̺�Ʈ�� ���� ���Դϴ�.', TO_DATE('2024-02-28', 'YYYY-MM-DD'), '����о� �ı� �ۼ� �̺�Ʈ', 95, '������', '��', 'admin', 17);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '��ö ����о��� ����, ����� ���� ������ ģ���� �ҷ�������.', TO_DATE('2024-02-27', 'YYYY-MM-DD'), '�� ����о� �̺�Ʈ', 110, '����', '��', 'admin', 18);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '���̵��� ���� Ư�� ����о� �̺�Ʈ�� �غ�Ǿ� �ֽ��ϴ�.', TO_DATE('2024-02-26', 'YYYY-MM-DD'), '����о� �̺�Ʈ', 85, '������', '��', 'admin', 19);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '���Բ� ���� ����! ����о� �̺�Ʈ�� �����ϼ���.', TO_DATE('2024-02-25', 'YYYY-MM-DD'), '���� ����о� ķ����', 105, '������', '��', 'admin', 20);
INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����о� �̺�Ʈ�� ���۵Ǿ����ϴ�. ���� ���� ��Ź�帳�ϴ�.', TO_DATE('2024-03-05', 'YYYY-MM-DD'), '����о� �̺�Ʈ ����', 100, '������', '��', 'admin', 21);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����� ������ ������ �ʿ��� ���̵��� ��ٸ��� �ֽ��ϴ�.', TO_DATE('2024-03-04', 'YYYY-MM-DD'), '��̳� Ư�� ����о�', 75, '������', '��', 'admin', 22);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����� ģ������ ���ο� ������ ã�� �־��.', TO_DATE('2024-03-03', 'YYYY-MM-DD'), '������ ����� ����о�', 120, '����', '��', 'admin', 23);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '�ܿ�ö Ư�� ����о� �̺�Ʈ! �����ϼ���.', TO_DATE('2024-03-02', 'YYYY-MM-DD'), '�ܿ� ����о�', 90, '������', '��', 'admin', 24);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '���� ����о���� ģ������ �Ұ��մϴ�.', TO_DATE('2024-03-01', 'YYYY-MM-DD'), '�ű� ���� �Ұ�', 110, '������', '��', 'admin', 25);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, 'Ư���� ����о� ��ȸ! ��ġ�� ������.', TO_DATE('2024-02-29', 'YYYY-MM-DD'), 'Ư�� ����о� ���θ��', 80, '������', '��', 'admin', 26);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����о� �ı� �̺�Ʈ�� ���� ���Դϴ�.', TO_DATE('2024-02-28', 'YYYY-MM-DD'), '����о� �ı� �ۼ� �̺�Ʈ', 95, '������', '��', 'admin', 27);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '��ö ����о��� ����, ����� ���� ������ ģ���� �ҷ�������.', TO_DATE('2024-02-27', 'YYYY-MM-DD'), '�� ����о� �̺�Ʈ', 110, '����', '��', 'admin', 28);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '���̵��� ���� Ư�� ����о� �̺�Ʈ�� �غ�Ǿ� �ֽ��ϴ�.', TO_DATE('2024-02-26', 'YYYY-MM-DD'), '����о� �̺�Ʈ', 85, '������', '��', 'admin', 29);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '���Բ� ���� ����! ����о� �̺�Ʈ�� �����ϼ���.', TO_DATE('2024-02-25', 'YYYY-MM-DD'), '���� ����о� ķ����', 105, '������', '��', 'admin', 30);




CREATE TABLE volunteer (
	volunteer_id	number		NOT NULL,
	volunteer_detail	varchar2(2000)		NOT NULL,
	volunteer_date	date	DEFAULT sysdate	NOT NULL,
	volunteer_title	varchar2(100)		NOT NULL,
	volunteer_time	varchar2(30)		NOT NULL,
	volunteer_due	varchar2(30)		NOT NULL,
	volunteer_limit	number		NOT NULL,
	volunteer_cost	varchar2(20)	DEFAULT '����'	NOT NULL,
	volunteer_location	varchar2(100)		NOT NULL,
	admin_id	varchar2(20)		NOT NULL
);

-- ���ϸ��� ���� �ʵ�
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

-- ���� ����
create sequence volunteer_seq
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