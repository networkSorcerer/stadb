-- ���� ���� ������
insert all 
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member01', 'password', '�迵��', '010-1111-1111', 'member01@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member02', 'password', '�迵��', '010-2222-2222', 'member02@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member03', 'password', '�迵��', '010-3333-3333', 'member03@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member04', 'password', '�迵��', '010-4444-4444', 'member04@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member05', 'password', '�迵��', '010-5555-5555', 'member05@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member06', 'password', '�迵��', '010-6666-6666', 'member06@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member07', 'password', '�迵ĥ', '010-7777-7777', 'member07@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member08', 'password', '�迵��', '010-8888-8888', 'member08@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member09', 'password', '�迵��', '010-9999-9999', 'member09@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member10', 'password', '���Ͽ�', '010-1010-1010', 'member10@naver.com')
select * from dual;

-- ������ ���� ������
insert into admin (admin_id, admin_pwd)
values('admin', 'admin1234');

-- ���⵿��
INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '��', '2��', '����', '�߼�ȭ O', '5kg', '����', 'Ȱ���ϰ� ģȭ���Դϴ�.', 'admin', 0, SYSDATE, '�۸���');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES 
(animal_seq.nextval, '�����', '3��', '����', '�߼�ȭ O', '3kg', '���', '���������� �Ϳ����� ���� ���� ���̿���.', 'admin', 1, SYSDATE, '�߿���');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '��', '1��', '����', '�߼�ȭ X', '8kg', '����', '������ ��ġ�� Ȱ���� ģ���Դϴ�.', 'admin', 2, SYSDATE, '����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '2��', '����', '�߼�ȭ O', '4kg', 'ȸ��', '�����ϰ� ������ ������ ���̿���.', 'admin', 1, SYSDATE, '�׷�');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '��', '3��', '����', '�߼�ȭ O', '7kg', '����', '�Ʒõ� ������ �����Դϴ�.', 'admin', 0, SYSDATE, '���');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '1��', '����', '�߼�ȭ O', '5kg', '����', '����� �����ϰ� �ٸ� �������� �� ������.', 'admin', 2, SYSDATE, '�̹�');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '��', '4��', '����', '�߼�ȭ X', '6kg', '���', '���̵�� �� ��︮�� ����� �������Դϴ�.', 'admin', 0, SYSDATE, '����');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '2��', '����', '�߼�ȭ O', '4kg', '����', '�ſ� Ȱ���ϰ� ȣ����� ���� ���̿���.', 'admin', 1, SYSDATE, '��');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '��', '2��', '����', '�߼�ȭ O', '5kg', '����', '����� �� ������ �Ϳ��� �������Դϴ�.', 'admin', 0, SYSDATE, '��Ű');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '�����', '3��', '����', '�߼�ȭ X', '3kg', '���', '�밨�ϰ� ������ ���� ���̿���.', 'admin', 2, SYSDATE, '����');

-- �Ŀ�
INSERT INTO donate (donate_id, user_id, donate_price, donate_pm,
donate_sprice, donate_ahname, donate_ahphone)
VALUES(donate_seq.NEXTVAL, 'member01', 30000, '����ī��', 30000, '�迵��', '010-1111-1111');

INSERT INTO donate (donate_id, user_id, donate_price, donate_pm,
donate_sprice, donate_ahname, donate_ahphone)
VALUES(donate_seq.NEXTVAL, 'member02', 50000, '����ī��', 50000, '�迵��', '010-1415-7675');

INSERT INTO donate (donate_id, user_id, donate_price, donate_pm,
donate_sprice, donate_ahname, donate_ahphone)
VALUES(donate_seq.NEXTVAL, 'member05', 30000, '����ī��', 30000, '�迵��', '010-5555-5555');

-- ���� ����
insert into volunteer
values(volunteer_seq.nextval, '[���� ����] ����/ȭ�� �ҹ� ������ �����ߵ��� ���� ���縦 �����մϴ�!

����/ȭ�� �ҹ� �����忡�� ������ �����鿡�� ������ ������ �ձ��� �����ּ���!

 *���� ��û���ּż� �����մϴ�! ���� ������ �������ֽ� ����ó�� ���������� �帱 �����Դϴ�.
 
<���� ����>
���� �Ⱓ : ~2024�� 3�� 25�� 18:00
���: 19�� �̻� ����, 1ȸ �̻�( 2ȸ �̻� ���� �����Ͻ� �� ���)
�ο�: 1�� 4��
**������ ����� ����Ͽ� �� ���� �� �ִ� �и� ��û���ּ���**', sysdate, '����/ȭ�� ������ ������ ���� ����', default, '2024.03.31 (��)',
'2023.03.25 (��) 03�� 00��', 10, default, '��� ���ֽ� ������ ����Ȧ�� 1409 ��������(����)', default, 'admin');


insert into volunteer
values(volunteer_seq.nextval, 
'�Ծ缾�� �Ƹ�ǰ���� �Ծ��� ��ٸ��� �������� ������ �����ڴ��� �����մϴ�?



������ ����ϰ� ���� ������ ���� ���ذ� ������ ���̶�� �� 20�� �̻� ������ ��û �����մϴ�.

��, ��û�ڰ� ���� ��� �ɻ簡 ����� �� �ֽ��ϴ�.





 ���� : ��������� ����̹� �躯 û��, ��Ź, ������ �� ���� ����.

 ��� : �ּ� 1���� �̻� ���� �����Ͻ� ��, û�ҿ� �ڽ� ������ ��, ü�� ������ ��, ���� ������ ��, ��Ƽ�� �����Ͻ� ��.



��������


3�� 16�� �Ͽ��� 09:30 ~ 18:30 3��





? ��û�ϱ� ������ �� �˾�â �޸���� ���� �� �ִ� ������ �ۼ��� �ּ���.





 ��� : ����� ������ �ܴٸ��� 122, 2�� �Ƹ�ǰ (����ö 6ȣ�� ������ 1�� �ⱸ ���� 7��)',
sysdate, '�Ƹ�ǰ �������� �ڿ����� ����', default, '2024.03.16 (��)', '2024.03.13 (��) 18�� 00��',
3, default, '���� ������ �ܴٸ��� 122 ���Ҿ������ �Ƹ�ǰ', 1, 'admin');

insert into volunteer
values(volunteer_seq.nextval, '
���� ������ �����ߵ��� ���Ҿ�����Ϳ� ��� �Լ��� ���ο� �߻��� �غ� ���Դϴ�! ������ ��ٸ��� ������ �����ߵ鿡�� ������ ������ �ձ�� �Բ��� �ּ���!



�� ���� ������ �������ֽ� ����ó�� ���������� ���� �帱 �����Դϴ�.



������ ���䡵
 ���� �Ⱓ: ~2024�� 2�� 28�� 18:00

���� ���: 19�� �̻� ����, 1ȸ �̻�(2ȸ �̻� ���� �����Ͻ� �� ���)

 ���� �ο�: 1�� �ִ� 4��



? ������ ����� ����Ͽ� �� ���� �� �ִ� �и� ��û���ּ���


 ���� �ð�: ����(09:00~18:00) �Ǵ� ����(09:00~12:00)

 ���� ���: ���Ҿ������(����Ư���� ������ ����)

 ���� ����: ���� ������ ������ ����',
 sysdate, '���� ������ ������ ���� ����', default, '2024.02.29 (��)', '2024.02.28 (��) 18�� 00��',
4, default, '���Ҿ������(����Ư���� ������ ����)', 3, 'admin');

-- ���⵿�� ����
INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����о� �̺�Ʈ�� ���۵Ǿ����ϴ�. ���� ���� ��Ź�帳�ϴ�.', TO_DATE('2024-03-05', 'YYYY-MM-DD'), '����о� �̺�Ʈ ����', 100, '������', '��', 'admin', 1);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����� ������ ������ �ʿ��� ���̵��� ��ٸ��� �ֽ��ϴ�.', TO_DATE('2024-03-04', 'YYYY-MM-DD'), '��̳� Ư�� ����о�', 75, '������', '��', 'admin', 2);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����� ģ������ ���ο� ������ ã�� �־��.', TO_DATE('2024-03-03', 'YYYY-MM-DD'), '������ ����� ����о�', 120, '����', '��', 'admin', 3);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '�ܿ�ö Ư�� ����о� �̺�Ʈ! �����ϼ���.', TO_DATE('2024-03-02', 'YYYY-MM-DD'), '�ܿ� ����о�', 90, '������', '��', 'admin', 4);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '���� ����о���� ģ������ �Ұ��մϴ�.', TO_DATE('2024-03-01', 'YYYY-MM-DD'), '�ű� ���� �Ұ�', 110, '������', '��', 'admin', 5);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, 'Ư���� ����о� ��ȸ! ��ġ�� ������.', TO_DATE('2024-02-29', 'YYYY-MM-DD'), 'Ư�� ����о� ���θ��', 80, '������', '��', 'admin', 6);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '����о� �ı� �̺�Ʈ�� ���� ���Դϴ�.', TO_DATE('2024-02-28', 'YYYY-MM-DD'), '����о� �ı� �ۼ� �̺�Ʈ', 95, '������', '��', 'admin', 7);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '��ö ����о��� ����, ����� ���� ������ ģ���� �ҷ�������.', TO_DATE('2024-02-27', 'YYYY-MM-DD'), '�� ����о� �̺�Ʈ', 110, '����', '��', 'admin', 8);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '���̵��� ���� Ư�� ����о� �̺�Ʈ�� �غ�Ǿ� �ֽ��ϴ�.', TO_DATE('2024-02-26', 'YYYY-MM-DD'), '����о� �̺�Ʈ', 85, '������', '��', 'admin', 9);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '���Բ� ���� ����! ����о� �̺�Ʈ�� �����ϼ���.', TO_DATE('2024-02-25', 'YYYY-MM-DD'), '���� ����о� ķ����', 105, '������', '��', 'admin', 10);

-- ���� �Խ���
insert into noticeBoard (nboard_id, nboard_title, nboard_content, nboard_date, nboard_cnt, admin_id) values (noticeBoard_seq.nextval, 'Shop on Main Street, The (Obchod na korze)', 'M?ori', '2022-08-22', 4248, 'admin');
insert into noticeBoard (nboard_id, nboard_title, nboard_content, nboard_date, nboard_cnt, admin_id) values (noticeBoard_seq.nextval, 'League of Ordinary Gentlemen, A', 'Greek', '2022-03-25', 6969, 'admin');
insert into noticeBoard (nboard_id, nboard_title, nboard_content, nboard_date, nboard_cnt, admin_id) values (noticeBoard_seq.nextval, 'Salut cousin!', 'Persian', '2024-01-17', 8922, 'admin');
insert into noticeBoard (nboard_id, nboard_title, nboard_content, nboard_date, nboard_cnt, admin_id) values (noticeBoard_seq.nextval, 'The Open Road', 'German', '2023-07-21', 5582, 'admin');
insert into noticeBoard (nboard_id, nboard_title, nboard_content, nboard_date, nboard_cnt, admin_id) values (noticeBoard_seq.nextval, 'Exercice de l''?tat, L''', 'Romanian', '2023-12-07', 2730, 'admin');
insert into noticeBoard (nboard_id, nboard_title, nboard_content, nboard_date, nboard_cnt, admin_id) values (noticeBoard_seq.nextval, 'Hanzo the Razor: Sword of Justice (Goy?kiba)', 'Kazakh', '2024-02-05', 8976, 'admin');
insert into noticeBoard (nboard_id, nboard_title, nboard_content, nboard_date, nboard_cnt, admin_id) values (noticeBoard_seq.nextval, 'Poetry (Shi)', 'Tok Pisin', '2023-03-30', 933, 'admin');
insert into noticeBoard (nboard_id, nboard_title, nboard_content, nboard_date, nboard_cnt, admin_id) values (noticeBoard_seq.nextval, 'Shipwrecked (a.k.a. Haakon Haakonsen)', 'M?ori', '2023-07-06', 970, 'admin');
insert into noticeBoard (nboard_id, nboard_title, nboard_content, nboard_date, nboard_cnt, admin_id) values (noticeBoard_seq.nextval, 'Once Upon a Forest', 'Icelandic', '2022-12-13', 1871, 'admin');
insert into noticeBoard (nboard_id, nboard_title, nboard_content, nboard_date, nboard_cnt, admin_id) values (noticeBoard_seq.nextval, 'Haaveiden keh?', 'Norwegian', '2023-12-18', 5264, 'admin');

-- �����Խ���
insert into freeBoard (fboard_id, fboard_title, fboard_content, fboard_like, fboard_cnt, fboard_date, user_id) values (freeBoard_seq.nextval, 'Night the Lights Went Out in Georgia, The', 'Tamil', 1, 1, '2023-07-26', 'member01');
insert into freeBoard (fboard_id, fboard_title, fboard_content, fboard_like, fboard_cnt, fboard_date, user_id) values (freeBoard_seq.nextval, 'Burrowers, The', 'Azeri', 2, 2, '2023-05-26', 'member02');
insert into freeBoard (fboard_id, fboard_title, fboard_content, fboard_like, fboard_cnt, fboard_date, user_id) values (freeBoard_seq.nextval, 'Gossip', 'M?ori', 3, 3, '2023-08-11', 'member03');
insert into freeBoard (fboard_id, fboard_title, fboard_content, fboard_like, fboard_cnt, fboard_date, user_id) values (freeBoard_seq.nextval, 'Skin Deep', 'Georgian', 4, 4, '2023-02-03', 'member04');
insert into freeBoard (fboard_id, fboard_title, fboard_content, fboard_like, fboard_cnt, fboard_date, user_id) values (freeBoard_seq.nextval, 'God''s Gun', 'Mongolian', 5, 5, '2023-03-08', 'member05');
insert into freeBoard (fboard_id, fboard_title, fboard_content, fboard_like, fboard_cnt, fboard_date, user_id) values (freeBoard_seq.nextval, 'Time Limit', 'Belarusian', 6, 6, '2022-11-03', 'member06');
insert into freeBoard (fboard_id, fboard_title, fboard_content, fboard_like, fboard_cnt, fboard_date, user_id) values (freeBoard_seq.nextval, 'Africa: Texas Style', 'Hiri Motu', 7, 7, '2023-03-11', 'member07');
insert into freeBoard (fboard_id, fboard_title, fboard_content, fboard_like, fboard_cnt, fboard_date, user_id) values (freeBoard_seq.nextval, 'Sunset', 'Macedonian', 8, 8, '2023-04-12', 'member08');
insert into freeBoard (fboard_id, fboard_title, fboard_content, fboard_like, fboard_cnt, fboard_date, user_id) values (freeBoard_seq.nextval, 'Melvin and Howard', 'Aymara', 9, 9, '2023-08-29', 'member09');
insert into freeBoard (fboard_id, fboard_title, fboard_content, fboard_like, fboard_cnt, fboard_date, user_id) values (freeBoard_seq.nextval, 'Afternoon of a Torturer, The (Dupa-amiaza unui tortionar)', 'Bulgarian', 10, 10, '2023-08-28', 'member10');

-- ���� �ı� �Խ���
insert into volunteerFeedbackBoard (vfboard_id, vfboard_title, vfboard_content, vfboard_like, vfboard_cnt, vfboard_date, user_id) values (volunteerFeedbackBoard_seq.nextval, 'Mo'' Money', 'French', 1, 1, '2023-03-12', 'member01');
insert into volunteerFeedbackBoard (vfboard_id, vfboard_title, vfboard_content, vfboard_like, vfboard_cnt, vfboard_date, user_id) values (volunteerFeedbackBoard_seq.nextval, 'Chef in Love, A (Shekvarebuli kulinaris ataserti retsepti)', 'Romanian', 2, 2, '2022-12-15', 'member02');
insert into volunteerFeedbackBoard (vfboard_id, vfboard_title, vfboard_content, vfboard_like, vfboard_cnt, vfboard_date, user_id) values (volunteerFeedbackBoard_seq.nextval, 'Clambake', 'Latvian', 3, 3, '2023-11-02', 'member03');
insert into volunteerFeedbackBoard (vfboard_id, vfboard_title, vfboard_content, vfboard_like, vfboard_cnt, vfboard_date, user_id) values (volunteerFeedbackBoard_seq.nextval, 'Zone Troopers', 'Dhivehi', 4, 4, '2024-01-21', 'member04');
insert into volunteerFeedbackBoard (vfboard_id, vfboard_title, vfboard_content, vfboard_like, vfboard_cnt, vfboard_date, user_id) values (volunteerFeedbackBoard_seq.nextval, 'Die Fighting', 'Malayalam', 5, 5, '2023-06-24', 'member05');
insert into volunteerFeedbackBoard (vfboard_id, vfboard_title, vfboard_content, vfboard_like, vfboard_cnt, vfboard_date, user_id) values (volunteerFeedbackBoard_seq.nextval, 'This Gun for Hire', 'Indonesian', 6, 6, '2023-09-23', 'member06');
insert into volunteerFeedbackBoard (vfboard_id, vfboard_title, vfboard_content, vfboard_like, vfboard_cnt, vfboard_date, user_id) values (volunteerFeedbackBoard_seq.nextval, 'Going Down in LA-LA Land', 'Oriya', 7, 7, '2023-11-10', 'member07');
insert into volunteerFeedbackBoard (vfboard_id, vfboard_title, vfboard_content, vfboard_like, vfboard_cnt, vfboard_date, user_id) values (volunteerFeedbackBoard_seq.nextval, 'No Regrets for Our Youth (Waga seishun ni kuinashi)', 'Tsonga', 8, 8, '2023-08-22', 'member08');
insert into volunteerFeedbackBoard (vfboard_id, vfboard_title, vfboard_content, vfboard_like, vfboard_cnt, vfboard_date, user_id) values (volunteerFeedbackBoard_seq.nextval, 'Goat, The', 'Khmer', 9, 9, '2023-06-22', 'member09');
insert into volunteerFeedbackBoard (vfboard_id, vfboard_title, vfboard_content, vfboard_like, vfboard_cnt, vfboard_date, user_id) values (volunteerFeedbackBoard_seq.nextval, 'Louis Cyr: The Strongest Man in the World', 'Oriya', 10, 10, '2022-12-31', 'member10');

-- �Ծ� �� �̾߱� �Խ���
insert into adoptionFeedbackBoard (afboard_id, afboard_title, afboard_content, afboard_like, afboard_cnt, afboard_date, user_id) values (adoptionFeedbackBoard_seq.nextval, 'Sleeping Beauty', 'Spanish', 1, 1, '2022-10-28', 'member01');
insert into adoptionFeedbackBoard (afboard_id, afboard_title, afboard_content, afboard_like, afboard_cnt, afboard_date, user_id) values (adoptionFeedbackBoard_seq.nextval, 'Aviator''s Wife, The (La femme de l''aviateur)', 'Lao', 2, 2, '2023-11-09', 'member02');
insert into adoptionFeedbackBoard (afboard_id, afboard_title, afboard_content, afboard_like, afboard_cnt, afboard_date, user_id) values (adoptionFeedbackBoard_seq.nextval, 'Will Penny', 'Amharic', 3, 3, '2023-11-27', 'member03');
insert into adoptionFeedbackBoard (afboard_id, afboard_title, afboard_content, afboard_like, afboard_cnt, afboard_date, user_id) values (adoptionFeedbackBoard_seq.nextval, 'BloodRayne: The Third Reich', 'Hindi', 4, 4, '2023-10-04', 'member04');
insert into adoptionFeedbackBoard (afboard_id, afboard_title, afboard_content, afboard_like, afboard_cnt, afboard_date, user_id) values (adoptionFeedbackBoard_seq.nextval, 'Yol (a.k.a. The Way)', 'Hebrew', 5, 5, '2023-11-10', 'member05');
insert into adoptionFeedbackBoard (afboard_id, afboard_title, afboard_content, afboard_like, afboard_cnt, afboard_date, user_id) values (adoptionFeedbackBoard_seq.nextval, 'Destination Tokyo', 'Italian', 6, 6, '2022-12-16', 'member06');
insert into adoptionFeedbackBoard (afboard_id, afboard_title, afboard_content, afboard_like, afboard_cnt, afboard_date, user_id) values (adoptionFeedbackBoard_seq.nextval, 'Judy Moody and the Not Bummer Summer', 'Spanish', 7, 7, '2023-07-15', 'member07');
insert into adoptionFeedbackBoard (afboard_id, afboard_title, afboard_content, afboard_like, afboard_cnt, afboard_date, user_id) values (adoptionFeedbackBoard_seq.nextval, 'Just Go with It', 'Bosnian', 8, 8, '2022-11-29', 'member08');
insert into adoptionFeedbackBoard (afboard_id, afboard_title, afboard_content, afboard_like, afboard_cnt, afboard_date, user_id) values (adoptionFeedbackBoard_seq.nextval, 'Bone Man, The (Der Knochenmann)', 'Malayalam', 9, 9, '2023-01-12', 'member09');
insert into adoptionFeedbackBoard (afboard_id, afboard_title, afboard_content, afboard_like, afboard_cnt, afboard_date, user_id) values (adoptionFeedbackBoard_seq.nextval, 'Killers', 'Icelandic', 10, 10, '2023-04-23', 'member10');

-- ���� ��û
insert into application
values(application_seq.nextval, sysdate, '', 'member01', 2, default);
insert into application
values(application_seq.nextval, sysdate, '', 'member02', 2, default);
insert into application
values(application_seq.nextval, sysdate, '', 'member03', 3, default);
insert into application
values(application_seq.nextval, sysdate, '', 'member04', 3, default);

-- �Ծ� ��û
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-15', 'YYYY-MM-DD'), 'member01', 1, '��Ȯ��', '��� ���� 1', 3, '����� ������', '������', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-17', 'YYYY-MM-DD'), 'member02', 2, '��Ȯ��', '��� ���� 2', 2, '����� ���ʱ�', '�����̳�', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-20', 'YYYY-MM-DD'), 'member03', 3, '��Ȯ��', '��� ���� 3', 4, '����� ���ı�', '������', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-22', 'YYYY-MM-DD'), 'member04', 4, '��Ȯ��', '��� ���� 4', 5, '����� ���ϱ�', '������Ʈ �Ŵ���', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-25', 'YYYY-MM-DD'), 'member05', 5, '��Ȯ��', '��� ���� 5', 3, '����� ���۱�', '������ �м���', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-28', 'YYYY-MM-DD'), 'member06', 6, '��Ȯ��', '��� ���� 6', 4, '����� ������', '�ý��� �����Ͼ�', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-03-02', 'YYYY-MM-DD'), 'member07', 7, '��Ȯ��', '��� ���� 7', 2, '����� ������', '�� �����̳�', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 'member08', 8, '��Ȯ��', '��� ���� 8', 5, '����� ���ı�', '������ ���̾�Ƽ��Ʈ', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-03-08', 'YYYY-MM-DD'), 'member09', 9, '��Ȯ��', '��� ���� 9', 3, '����� ������', 'Ǯ���� �����Ͼ�', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'member10', 10, '��Ȯ��', '��� ���� 10', 4, '����� �߶���', '����Ʈ���� �����Ͼ�', 0);

-- �����Խ��� ��
insert into Fcomment (fcomment_id, fcomment_content, fcomment_date, fboard_id, user_id) values (Fcomment_seq.nextval, '8th Floor', '2023-05-04', 1, 'member01');
insert into Fcomment (fcomment_id, fcomment_content, fcomment_date, fboard_id, user_id) values (Fcomment_seq.nextval, 'PO Box 9799', '2023-02-02', 2, 'member02');
insert into Fcomment (fcomment_id, fcomment_content, fcomment_date, fboard_id, user_id) values (Fcomment_seq.nextval, 'Suite 55', '2023-02-27', 3, 'member03');
insert into Fcomment (fcomment_id, fcomment_content, fcomment_date, fboard_id, user_id) values (Fcomment_seq.nextval, 'Apt 1581', '2023-06-04', 4, 'member04');
insert into Fcomment (fcomment_id, fcomment_content, fcomment_date, fboard_id, user_id) values (Fcomment_seq.nextval, 'PO Box 18018', '2023-07-10', 5, 'member05');
insert into Fcomment (fcomment_id, fcomment_content, fcomment_date, fboard_id, user_id) values (Fcomment_seq.nextval, 'PO Box 96224', '2022-05-15', 6, 'member06');
insert into Fcomment (fcomment_id, fcomment_content, fcomment_date, fboard_id, user_id) values (Fcomment_seq.nextval, '17th Floor', '2023-01-02', 7, 'member07');
insert into Fcomment (fcomment_id, fcomment_content, fcomment_date, fboard_id, user_id) values (Fcomment_seq.nextval, 'Room 1437', '2022-07-25', 8, 'member08');
insert into Fcomment (fcomment_id, fcomment_content, fcomment_date, fboard_id, user_id) values (Fcomment_seq.nextval, 'Room 1499', '2023-10-19', 9, 'member09');
insert into Fcomment (fcomment_id, fcomment_content, fcomment_date, fboard_id, user_id) values (Fcomment_seq.nextval, 'Apt 1738', '2024-02-05', 10, 'member10');

-- �����Խ��� ���ƿ�
insert into flike (flike_id, fliuser_id, fboard_id, flike_date) values (Flike_seq.nextval, 'member01', 1, '2022-10-08');
insert into flike (flike_id, fliuser_id, fboard_id, flike_date) values (Flike_seq.nextval, 'member02', 2, '2023-07-02');
insert into flike (flike_id, fliuser_id, fboard_id, flike_date) values (Flike_seq.nextval, 'member03', 3, '2023-04-14');
insert into flike (flike_id, fliuser_id, fboard_id, flike_date) values (Flike_seq.nextval, 'member04', 4, '2023-10-04');
insert into flike (flike_id, fliuser_id, fboard_id, flike_date) values (Flike_seq.nextval, 'member05', 5, '2023-02-03');
insert into flike (flike_id, fliuser_id, fboard_id, flike_date) values (Flike_seq.nextval, 'member06', 6, '2022-12-09');
insert into flike (flike_id, fliuser_id, fboard_id, flike_date) values (Flike_seq.nextval, 'member07', 7, '2023-11-30');
insert into flike (flike_id, fliuser_id, fboard_id, flike_date) values (Flike_seq.nextval, 'member08', 8, '2023-02-26');
insert into flike (flike_id, fliuser_id, fboard_id, flike_date) values (Flike_seq.nextval, 'member09', 9, '2023-05-22');
insert into flike (flike_id, fliuser_id, fboard_id, flike_date) values (Flike_seq.nextval, 'member10', 10, '2022-10-04');

-- ���� �ı� �Խ��� ���
insert into VFcomment (vfcomment_id, vfcomment_content, vfcomment_date, vfboard_id, user_id) values (VFcomment_seq.nextval, 'Apt 719', '2022-05-27', 1, 'member01');
insert into VFcomment (vfcomment_id, vfcomment_content, vfcomment_date, vfboard_id, user_id) values (VFcomment_seq.nextval, 'Apt 418', '2024-02-02', 2, 'member02');
insert into VFcomment (vfcomment_id, vfcomment_content, vfcomment_date, vfboard_id, user_id) values (VFcomment_seq.nextval, 'Suite 35', '2023-03-21', 3, 'member03');
insert into VFcomment (vfcomment_id, vfcomment_content, vfcomment_date, vfboard_id, user_id) values (VFcomment_seq.nextval, 'Apt 1251', '2022-04-04', 4, 'member04');
insert into VFcomment (vfcomment_id, vfcomment_content, vfcomment_date, vfboard_id, user_id) values (VFcomment_seq.nextval, 'PO Box 97750', '2023-06-23', 5, 'member05');
insert into VFcomment (vfcomment_id, vfcomment_content, vfcomment_date, vfboard_id, user_id) values (VFcomment_seq.nextval, 'Apt 1171', '2022-03-08', 6, 'member06');
insert into VFcomment (vfcomment_id, vfcomment_content, vfcomment_date, vfboard_id, user_id) values (VFcomment_seq.nextval, '17th Floor', '2023-11-07', 7, 'member07');
insert into VFcomment (vfcomment_id, vfcomment_content, vfcomment_date, vfboard_id, user_id) values (VFcomment_seq.nextval, 'Room 167', '2022-06-10', 8, 'member08');
insert into VFcomment (vfcomment_id, vfcomment_content, vfcomment_date, vfboard_id, user_id) values (VFcomment_seq.nextval, 'Room 1216', '2023-12-24', 9, 'member09');
insert into VFcomment (vfcomment_id, vfcomment_content, vfcomment_date, vfboard_id, user_id) values (VFcomment_seq.nextval, 'Room 306', '2023-02-03', 10, 'member10');

-- ���� �ı� �Խ��� ���ƿ�
insert into VFlike (vflike_id, vfliuser_id, vflike_date, vfboard_id) values (VFlike_seq.nextval, 'member01', '2022-09-30', 1);
insert into VFlike (vflike_id, vfliuser_id, vflike_date, vfboard_id) values (VFlike_seq.nextval, 'member02', '2023-07-09', 2);
insert into VFlike (vflike_id, vfliuser_id, vflike_date, vfboard_id) values (VFlike_seq.nextval, 'member03', '2023-04-08', 3);
insert into VFlike (vflike_id, vfliuser_id, vflike_date, vfboard_id) values (VFlike_seq.nextval, 'member04', '2023-11-27', 4);
insert into VFlike (vflike_id, vfliuser_id, vflike_date, vfboard_id) values (VFlike_seq.nextval, 'member05', '2023-03-16', 5);
insert into VFlike (vflike_id, vfliuser_id, vflike_date, vfboard_id) values (VFlike_seq.nextval, 'member06', '2023-05-01', 6);
insert into VFlike (vflike_id, vfliuser_id, vflike_date, vfboard_id) values (VFlike_seq.nextval, 'member07', '2022-06-02', 7);
insert into VFlike (vflike_id, vfliuser_id, vflike_date, vfboard_id) values (VFlike_seq.nextval, 'member08', '2022-10-24', 8);
insert into VFlike (vflike_id, vfliuser_id, vflike_date, vfboard_id) values (VFlike_seq.nextval, 'member09', '2023-05-10', 9);
insert into VFlike (vflike_id, vfliuser_id, vflike_date, vfboard_id) values (VFlike_seq.nextval, 'member10', '2023-12-31', 10);

-- �Ծ� �� �̾߱� �Խ��� ���
insert into AFcomment (afcomment_id, afcomment_content, afcomment_date, afboard_id, user_id) values (AFcomment_seq.nextval, 'Apt 1628', '2023-11-22', 1, 'member01');
insert into AFcomment (afcomment_id, afcomment_content, afcomment_date, afboard_id, user_id) values (AFcomment_seq.nextval, 'Room 1329', '2023-10-23', 2, 'member02');
insert into AFcomment (afcomment_id, afcomment_content, afcomment_date, afboard_id, user_id) values (AFcomment_seq.nextval, '13th Floor', '2022-10-28', 3, 'member03');
insert into AFcomment (afcomment_id, afcomment_content, afcomment_date, afboard_id, user_id) values (AFcomment_seq.nextval, 'PO Box 2037', '2024-01-27', 4, 'member04');
insert into AFcomment (afcomment_id, afcomment_content, afcomment_date, afboard_id, user_id) values (AFcomment_seq.nextval, 'Room 1779', '2023-03-20', 5, 'member05');
insert into AFcomment (afcomment_id, afcomment_content, afcomment_date, afboard_id, user_id) values (AFcomment_seq.nextval, 'PO Box 18663', '2022-02-21', 6, 'member06');
insert into AFcomment (afcomment_id, afcomment_content, afcomment_date, afboard_id, user_id) values (AFcomment_seq.nextval, 'Suite 82', '2023-12-02', 7, 'member07');
insert into AFcomment (afcomment_id, afcomment_content, afcomment_date, afboard_id, user_id) values (AFcomment_seq.nextval, '8th Floor', '2023-01-16', 8, 'member08');
insert into AFcomment (afcomment_id, afcomment_content, afcomment_date, afboard_id, user_id) values (AFcomment_seq.nextval, 'PO Box 80950', '2023-09-27', 9, 'member09');
insert into AFcomment (afcomment_id, afcomment_content, afcomment_date, afboard_id, user_id) values (AFcomment_seq.nextval, 'PO Box 29822', '2022-05-31', 10, 'member10');

-- �Ծ� �� �̾߱� �Խ��� ���ƿ�
insert into AFlike (aflike_id, afliuser_id, aflike_date, afboard_id) values (AFlike_seq.nextval, 'member01', '2022-11-19', 1);
insert into AFlike (aflike_id, afliuser_id, aflike_date, afboard_id) values (AFlike_seq.nextval, 'member02', '2023-09-17', 2);
insert into AFlike (aflike_id, afliuser_id, aflike_date, afboard_id) values (AFlike_seq.nextval, 'member03', '2023-02-21', 3);
insert into AFlike (aflike_id, afliuser_id, aflike_date, afboard_id) values (AFlike_seq.nextval, 'member04', '2022-11-23', 4);
insert into AFlike (aflike_id, afliuser_id, aflike_date, afboard_id) values (AFlike_seq.nextval, 'member05', '2023-06-12', 5);
insert into AFlike (aflike_id, afliuser_id, aflike_date, afboard_id) values (AFlike_seq.nextval, 'member06', '2023-05-31', 6);
insert into AFlike (aflike_id, afliuser_id, aflike_date, afboard_id) values (AFlike_seq.nextval, 'member07', '2023-05-25', 7);
insert into AFlike (aflike_id, afliuser_id, aflike_date, afboard_id) values (AFlike_seq.nextval, 'member08', '2023-08-25', 8);
insert into AFlike (aflike_id, afliuser_id, aflike_date, afboard_id) values (AFlike_seq.nextval, 'member09', '2023-12-22', 9);
insert into AFlike (aflike_id, afliuser_id, aflike_date, afboard_id) values (AFlike_seq.nextval, 'member10', '2022-05-31', 10);

-- �Ű�
insert into report(report_id, report_sort, report_date, report_detail, report_status, fboard_id, user_id)
values(47, 1, '2024-03-05', '�弳�Ű�', 1, 1, 
    (select user_id 
        from freeboard
        where fboard_id = 1
    ));

insert into report(report_id, report_sort, report_date, report_detail, report_status, vfboard_id, user_id)
values(46, 2, '2024-03-05', '����Ű�', 1, 1, 
    (select user_id 
        from volunteerFeedbackBoard
        where vfboard_id = 1
    ));

insert into report(report_id, report_sort, report_date, report_detail, report_status, afboard_id, user_id)
values(45, 3, '2024-03-05', '', 2, 1, 
    (select user_id 
        from adoptionFeedbackBoard
        where afboard_id = 1
    ));

-- �̹���
insert into image(image_id, board_sort, image_name, fboard_id)
values(1, 4, 'image_01', 1);

insert into image(image_id, board_sort, image_name, vfboard_id)
values(2, 6, 'image_02', 1);

insert into image(image_id, board_sort, image_name, afboard_id)
values(3, 7, 'image_03', 1);

-- ����
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(1, '��', '�ƴϿ�', '����', '��', '�ƴϿ�', '��', '�ƴϿ�', '��� ������ �����߽��ϴ�.', 1);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(2, '�ƴϿ�', '��', '����', '�ƴϿ�', '��', '�ƴϿ�', '��', '��� ������ �����մϴ�.', 2);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(3, '��', '�ƴϿ�', '����', '��', '�ƴϿ�', '��', '�ƴϿ�', '�� ���� �ð��� �ʿ��մϴ�.', 3);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(4, '�ƴϿ�', '��', '����', '�ƴϿ�', '��', '�ƴϿ�', '��', '����� �����߽��ϴ�.', 4);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(5, '��', '�ƴϿ�', '����', '��', '�ƴϿ�', '��', '�ƴϿ�', '�߰� ���񽺰� �ʿ��մϴ�.', 5);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(6, '�ƴϿ�', '��', '����', '�ƴϿ�', '��', '�ƴϿ�', '��', '����� �ʹ� ������ϴ�.', 6);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(7, '��', '�ƴϿ�', '����', '��', '�ƴϿ�', '��', '�ƴϿ�', '�ڼ��� ����� �ʿ��մϴ�.', 7);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(8, '�ƴϿ�', '��', '����', '�ƴϿ�', '��', '�ƴϿ�', '��', '��� ������ ��ȣ�մϴ�.', 8);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(9, '��', '�ƴϿ�', '����', '��', '�ƴϿ�', '��', '�ƴϿ�', '�����մϴ�.', 9);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(10, '�ƴϿ�', '��', '����', '�ƴϿ�', '��', '�ƴϿ�', '��', '�� ���� ����� �ʿ��մϴ�.', 10);

-- ����
insert into sanction
values(6, 1,
    (select user_repcnt
        from users
        where user_id = (select user_id
                            from freeboard
                            where fboard_id = 1)
    ), sysdate, 47);

insert into sanction
values(5, 1,
    (select user_repcnt
        from users
        where user_id = (select user_id
                            from volunteerFeedbackBoard
                            where vfboard_id = 1)
    ), sysdate, 46);

insert into sanction
values(4, 1,
    (select user_repcnt
        from users
        where user_id = (select user_id
                            from adoptionFeedbackBoard
                            where afboard_id = 1)
    ), sysdate, 45);
