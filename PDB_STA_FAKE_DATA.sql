-- 유저 더미 데이터
insert all 
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member01', 'password', '김영일', '010-1111-1111', 'member01@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member02', 'password', '김영이', '010-2222-2222', 'member02@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member03', 'password', '김영삼', '010-3333-3333', 'member03@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member04', 'password', '김영사', '010-4444-4444', 'member04@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member05', 'password', '김영오', '010-5555-5555', 'member05@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member06', 'password', '김영육', '010-6666-6666', 'member06@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member07', 'password', '김영칠', '010-7777-7777', 'member07@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member08', 'password', '김영팔', '010-8888-8888', 'member08@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member09', 'password', '김영구', '010-9999-9999', 'member09@naver.com')
into users(user_id, user_pwd, user_name, user_phone, user_email) 
values('member10', 'password', '김일영', '010-1010-1010', 'member10@naver.com')
select * from dual;

-- 관리자 더미 데이터
insert into admin (admin_id, admin_pwd)
values('admin', 'admin1234');

-- 유기동물
INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '개', '2살', '암컷', '중성화 O', '5kg', '갈색', '활발하고 친화적입니다.', 'admin', 0, SYSDATE, '멍멍이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES 
(animal_seq.nextval, '고양이', '3살', '수컷', '중성화 O', '3kg', '흰색', '신중하지만 귀여움이 물씬 나는 아이에요.', 'admin', 1, SYSDATE, '야옹이');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '개', '1살', '암컷', '중성화 X', '8kg', '검정', '에너지 넘치는 활발한 친구입니다.', 'admin', 2, SYSDATE, '코코');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '2살', '암컷', '중성화 O', '4kg', '회색', '조용하고 깨끗한 성격의 아이에요.', 'admin', 1, SYSDATE, '네로');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '개', '3살', '수컷', '중성화 O', '7kg', '갈색', '훈련된 얌전한 아이입니다.', 'admin', 0, SYSDATE, '루디');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '1살', '수컷', '중성화 O', '5kg', '검정', '사람을 좋아하고 다른 동물과도 잘 지내요.', 'admin', 2, SYSDATE, '미미');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '개', '4살', '암컷', '중성화 X', '6kg', '흰색', '아이들과 잘 어울리는 상냥한 강아지입니다.', 'admin', 0, SYSDATE, '벨라');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '2살', '수컷', '중성화 O', '4kg', '갈색', '매우 활발하고 호기심이 많은 아이에요.', 'admin', 1, SYSDATE, '톰');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '개', '2살', '수컷', '중성화 O', '5kg', '검정', '사람을 잘 따르는 귀여운 강아지입니다.', 'admin', 0, SYSDATE, '쿠키');

INSERT INTO animal (animal_id, animal_species, animal_age, animal_gender, animal_status, animal_kg, animal_color, animal_memo, admin_id, animal_temp, animal_regist, animal_name)
VALUES
(animal_seq.nextval, '고양이', '3살', '암컷', '중성화 X', '3kg', '흰색', '용감하고 경계심이 강한 아이에요.', 'admin', 2, SYSDATE, '소피');

-- 후원
INSERT INTO donate (donate_id, user_id, donate_price, donate_pm,
donate_sprice, donate_ahname, donate_ahphone)
VALUES(donate_seq.NEXTVAL, 'member01', 30000, '신한카드', 30000, '김영일', '010-1111-1111');

INSERT INTO donate (donate_id, user_id, donate_price, donate_pm,
donate_sprice, donate_ahname, donate_ahphone)
VALUES(donate_seq.NEXTVAL, 'member02', 50000, '국민카드', 50000, '김영이', '010-1415-7675');

INSERT INTO donate (donate_id, user_id, donate_price, donate_pm,
donate_sprice, donate_ahname, donate_ahphone)
VALUES(donate_seq.NEXTVAL, 'member05', 30000, '신한카드', 30000, '김영오', '010-5555-5555');

-- 봉사 공고
insert into volunteer
values(volunteer_seq.nextval, '[봉사 모집] 보령/화성 불법 번식장 구조견들의 돌봄 봉사를 모집합니다!

보령/화성 불법 번식장에서 구조된 동물들에게 따뜻한 도움의 손길을 더해주세요!

 *봉사 신청해주셔서 감사합니다! 봉사 선발은 기재해주신 연락처로 순차적으로 드릴 예정입니다.
 
<모집 개요>
모집 기간 : ~2024년 3월 25일 18:00
대상: 19세 이상 성인, 1회 이상( 2회 이상 봉사 가능하신 분 우대)
인원: 1일 4인
**일정을 충분히 고려하여 꼭 오실 수 있는 분만 신청해주세요**', sysdate, '보령/화성 번식장 구조견 돌봄 봉사', default, '2024.03.31 (수)',
'2023.03.25 (월) 03시 00분', 10, default, '경기 파주시 법원읍 술이홀로 1409 더봄센터(파주)', default, 'admin');


insert into volunteer
values(volunteer_seq.nextval, 
'입양센터 아름품에서 입양을 기다리는 동물들을 돌봐줄 봉사자님을 모집합니다?



동물을 사랑하고 동물 돌봄에 대한 이해가 있으신 분이라면 만 20세 이상 누구나 신청 가능합니다.

단, 신청자가 많을 경우 심사가 진행될 수 있습니다.





 업무 : 강아지방과 고양이방 배변 청소, 세탁, 설거지 및 동물 돌봄.

 대상 : 최소 1개월 이상 봉사 가능하신 분, 청소에 자신 있으신 분, 체력 좋으신 분, 손이 빠르신 분, 멀티가 가능하신 분.



모집요일


3월 16일 일요일 09:30 ~ 18:30 3명





? 신청하기 누르신 후 팝업창 메모란에 오실 수 있는 요일을 작성해 주세요.





 장소 : 서울시 마포구 잔다리로 122, 2층 아름품 (지하철 6호선 망원역 1번 출구 도보 7분)',
sysdate, '아름품 동물돌봄 자원봉사 모집', default, '2024.03.16 (일)', '2024.03.13 (금) 18시 00분',
3, default, '서울 마포구 잔다리로 122 더불어숨센터 아름품', 1, 'admin');

insert into volunteer
values(volunteer_seq.nextval, '
보령 번식장 구조견들이 더불어숨센터에 대거 입소해 새로운 견생을 준비 중입니다! 가족을 기다리는 소중한 구조견들에게 따뜻한 도움의 손길로 함께해 주세요!



※ 봉사 선발은 기재해주신 연락처로 순차적으로 연락 드릴 예정입니다.



〈모집 개요〉
 모집 기간: ~2024년 2월 28일 18:00

모집 대상: 19세 이상 성인, 1회 이상(2회 이상 봉사 가능하신 분 우대)

 모집 인원: 1일 최대 4인



? 일정을 충분히 고려하여 꼭 오실 수 있는 분만 신청해주세요


 봉사 시간: 종일(09:00~18:00) 또는 오전(09:00~12:00)

 봉사 장소: 더불어숨센터(서울특별시 마포구 소재)

 봉사 내용: 보령 번식장 구조견 돌봄',
 sysdate, '보령 번식장 구조견 돌봄 봉사', default, '2024.02.29 (목)', '2024.02.28 (수) 18시 00분',
4, default, '더불어숨센터(서울특별시 마포구 소재)', 3, 'admin');

-- 유기동물 공고
INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '무료분양 이벤트가 시작되었습니다. 많은 참여 부탁드립니다.', TO_DATE('2024-03-05', 'YYYY-MM-DD'), '무료분양 이벤트 공지', 100, '진행중', '상', 'admin', 1);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '당신의 따뜻한 가정이 필요한 아이들이 기다리고 있습니다.', TO_DATE('2024-03-04', 'YYYY-MM-DD'), '어린이날 특별 무료분양', 75, '진행중', '중', 'admin', 2);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '고양이 친구들이 새로운 가족을 찾고 있어요.', TO_DATE('2024-03-03', 'YYYY-MM-DD'), '봄맞이 고양이 무료분양', 120, '종료', '하', 'admin', 3);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '겨울철 특별 무료분양 이벤트! 참여하세요.', TO_DATE('2024-03-02', 'YYYY-MM-DD'), '겨울 무료분양', 90, '진행중', '상', 'admin', 4);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '새로 무료분양받은 친구들을 소개합니다.', TO_DATE('2024-03-01', 'YYYY-MM-DD'), '신규 동물 소개', 110, '진행중', '중', 'admin', 5);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '특별한 무료분양 기회! 놓치지 마세요.', TO_DATE('2024-02-29', 'YYYY-MM-DD'), '특별 무료분양 프로모션', 80, '진행중', '하', 'admin', 6);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '무료분양 후기 이벤트가 진행 중입니다.', TO_DATE('2024-02-28', 'YYYY-MM-DD'), '무료분양 후기 작성 이벤트', 95, '진행중', '상', 'admin', 7);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '봄철 무료분양의 계절, 당신의 집에 따뜻한 친구를 불러보세요.', TO_DATE('2024-02-27', 'YYYY-MM-DD'), '봄 무료분양 이벤트', 110, '종료', '중', 'admin', 8);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '아이들을 위한 특별 무료분양 이벤트가 준비되어 있습니다.', TO_DATE('2024-02-26', 'YYYY-MM-DD'), '무료분양 이벤트', 85, '진행중', '하', 'admin', 9);

INSERT INTO adoption (adoption_id, adoption_content, adoption_date, adoption_title, adoption_cnt, adoption_status, adoption_level, admin_id, animal_id)
VALUES
(adoption_seq.nextval, '다함께 즐기는 여름! 무료분양 이벤트에 참여하세요.', TO_DATE('2024-02-25', 'YYYY-MM-DD'), '여름 무료분양 캠페인', 105, '진행중', '상', 'admin', 10);

-- 공지 게시판
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

-- 자유게시판
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

-- 봉사 후기 게시판
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

-- 입양 후 이야기 게시판
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

-- 봉사 신청
insert into application
values(application_seq.nextval, sysdate, '', 'member01', 2, default);
insert into application
values(application_seq.nextval, sysdate, '', 'member02', 2, default);
insert into application
values(application_seq.nextval, sysdate, '', 'member03', 3, default);
insert into application
values(application_seq.nextval, sysdate, '', 'member04', 3, default);

-- 입양 신청
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-15', 'YYYY-MM-DD'), 'member01', 1, '미확인', '상담 내용 1', 3, '서울시 강남구', '개발자', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-17', 'YYYY-MM-DD'), 'member02', 2, '미확인', '상담 내용 2', 2, '서울시 서초구', '디자이너', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-20', 'YYYY-MM-DD'), 'member03', 3, '미확인', '상담 내용 3', 4, '서울시 송파구', '마케터', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-22', 'YYYY-MM-DD'), 'member04', 4, '미확인', '상담 내용 4', 5, '서울시 강북구', '프로젝트 매니저', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-25', 'YYYY-MM-DD'), 'member05', 5, '미확인', '상담 내용 5', 3, '서울시 동작구', '데이터 분석가', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-02-28', 'YYYY-MM-DD'), 'member06', 6, '미확인', '상담 내용 6', 4, '서울시 강서구', '시스템 엔지니어', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-03-02', 'YYYY-MM-DD'), 'member07', 7, '미확인', '상담 내용 7', 2, '서울시 강남구', '웹 디자이너', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-03-05', 'YYYY-MM-DD'), 'member08', 8, '미확인', '상담 내용 8', 5, '서울시 송파구', '데이터 사이언티스트', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-03-08', 'YYYY-MM-DD'), 'member09', 9, '미확인', '상담 내용 9', 3, '서울시 강동구', '풀스택 엔지니어', 0);
INSERT INTO counseling (counseling_id, counseling_schedule, user_id, adoption_id, counseling_judgment, counseling_detail, counseling_age, counseling_address, counseling_job, counseling_adopt)
VALUES 
(counseling_seq.nextval, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'member10', 10, '미확인', '상담 내용 10', 4, '서울시 중랑구', '소프트웨어 엔지니어', 0);

-- 자유게시판 댓굴
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

-- 자유게시판 좋아요
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

-- 봉사 후기 게시판 댓글
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

-- 봉사 후기 게시판 좋아요
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

-- 입양 후 이야기 게시판 댓글
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

-- 입양 후 이야기 게시판 좋아요
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

-- 신고
insert into report(report_id, report_sort, report_date, report_detail, report_status, fboard_id, user_id)
values(47, 1, '2024-03-05', '욕설신고', 1, 1, 
    (select user_id 
        from freeboard
        where fboard_id = 1
    ));

insert into report(report_id, report_sort, report_date, report_detail, report_status, vfboard_id, user_id)
values(46, 2, '2024-03-05', '도배신고', 1, 1, 
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

-- 이미지
insert into image(image_id, board_sort, image_name, fboard_id)
values(1, 4, 'image_01', 1);

insert into image(image_id, board_sort, image_name, vfboard_id)
values(2, 6, 'image_02', 1);

insert into image(image_id, board_sort, image_name, afboard_id)
values(3, 7, 'image_03', 1);

-- 설문
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(1, '예', '아니오', '보통', '예', '아니오', '예', '아니오', '상담 내용이 유용했습니다.', 1);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(2, '아니오', '예', '보통', '아니오', '예', '아니오', '예', '상담 내용이 부족합니다.', 2);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(3, '예', '아니오', '보통', '예', '아니오', '예', '아니오', '더 많은 시간이 필요합니다.', 3);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(4, '아니오', '예', '보통', '아니오', '예', '아니오', '예', '상담이 지루했습니다.', 4);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(5, '예', '아니오', '보통', '예', '아니오', '예', '아니오', '추가 서비스가 필요합니다.', 5);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(6, '아니오', '예', '보통', '아니오', '예', '아니오', '예', '상담이 너무 길었습니다.', 6);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(7, '예', '아니오', '보통', '예', '아니오', '예', '아니오', '자세한 상담이 필요합니다.', 7);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(8, '아니오', '예', '보통', '아니오', '예', '아니오', '예', '상담 내용이 모호합니다.', 8);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(9, '예', '아니오', '보통', '예', '아니오', '예', '아니오', '만족합니다.', 9);
INSERT INTO survey (survey_id, survey_a1, survey_a2, survey_a3, survey_a4, survey_a5, survey_a6, survey_a7, survey_a8, counseling_id)
VALUES 
(10, '아니오', '예', '보통', '아니오', '예', '아니오', '예', '더 많은 상담이 필요합니다.', 10);

-- 제재
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
