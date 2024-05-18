--create table report
CREATE TABLE report (
	report_id	    number		NOT NULL,
	report_sort	    number		NOT NULL,
	report_date	    date	    DEFAULT sysdate NOT NULL,
	report_detail	varchar2(2000)		        NULL,
	report_status	number	    DEFAULT 1	    NOT NULL,
	fboard_id	    number		NULL,
	fcomment_id	    number		NULL,
	vfboard_id	    number		NULL,
	vfcomment_id	number		NULL,
	afcomment_id	number		NULL,
	afboard_id	    number		NULL,
	user_id	varchar2(20)		NOT NULL
);

--set primary key
ALTER TABLE report ADD CONSTRAINT PK_REPORT PRIMARY KEY (
	report_id
);

--set foreign key
--board_id : cascade
ALTER TABLE report ADD CONSTRAINT FK_freeBoard_TO_report_1 FOREIGN KEY (
	fboard_id
)
REFERENCES freeBoard (
	fboard_id
)on delete cascade;

ALTER TABLE report ADD CONSTRAINT FK_Fcomment_TO_report_1 FOREIGN KEY (
	fcomment_id
)
REFERENCES Fcomment (
	fcomment_id
)on delete cascade;

ALTER TABLE report ADD CONSTRAINT FK_volunteerFeedbackBoard_TO_report_1 FOREIGN KEY (
	vfboard_id
)
REFERENCES volunteerFeedbackBoard (
	vfboard_id
)on delete cascade;

ALTER TABLE report ADD CONSTRAINT FK_VFcomment_TO_report_1 FOREIGN KEY (
	vfcomment_id
)
REFERENCES VFcomment (
	vfcomment_id
)on delete cascade;

ALTER TABLE report ADD CONSTRAINT FK_AFcomment_TO_report_1 FOREIGN KEY (
	afcomment_id
)
REFERENCES AFcomment (
	afcomment_id
)on delete cascade;

ALTER TABLE report ADD CONSTRAINT FK_adoptionFeedbackBoard_TO_report_1 FOREIGN KEY (
	afboard_id
)
REFERENCES adoptionFeedbackBoard (
	afboard_id
)on delete cascade;

--user_id : cascade
ALTER TABLE report ADD CONSTRAINT FK_users_TO_report_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
)on delete cascade;

-------------------------------------------------------------------------------

--create teable sanction
CREATE TABLE sanction (
	sanction_id	number		    NOT NULL,
	sanction_status	number		NOT NULL,
	sanction_result	number		NOT NULL,
	sanction_date	date	    DEFAULT sysdate	NOT NULL,
	report_id	number		    null
);

--set primary key
ALTER TABLE sanction ADD CONSTRAINT PK_SANCTION PRIMARY KEY (
	sanction_id
);

--set foreign key
--report_id : set null
ALTER TABLE sanction ADD CONSTRAINT FK_report_TO_sanction_1 FOREIGN KEY (
	report_id
)
REFERENCES report (
	report_id
)on delete set null;