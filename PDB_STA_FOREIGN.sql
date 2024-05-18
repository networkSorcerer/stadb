ALTER TABLE users ADD CONSTRAINT PK_USERS PRIMARY KEY (
	user_id
);

ALTER TABLE admin ADD CONSTRAINT PK_ADMIN PRIMARY KEY (
	admin_id
);

ALTER TABLE volunteer ADD CONSTRAINT PK_VOLUNTEER PRIMARY KEY (
	volunteer_id
);

ALTER TABLE adoption ADD CONSTRAINT PK_ADOPTION PRIMARY KEY (
	adoption_id
);

ALTER TABLE freeBoard ADD CONSTRAINT PK_FREEBOARD PRIMARY KEY (
	fboard_id
);

ALTER TABLE Fcomment ADD CONSTRAINT PK_FCOMMENT PRIMARY KEY (
	fcomment_id
);

ALTER TABLE counseling ADD CONSTRAINT PK_COUNSELING PRIMARY KEY (
	counseling_id
);

ALTER TABLE application ADD CONSTRAINT PK_APPLICATION PRIMARY KEY (
	application_id
);

ALTER TABLE donate ADD CONSTRAINT PK_DONATE PRIMARY KEY (
	donate_ID
);

ALTER TABLE animal ADD CONSTRAINT PK_ANIMAL PRIMARY KEY (
	animal_id
);

ALTER TABLE flike ADD CONSTRAINT PK_FLIKE PRIMARY KEY (
	flike_id
);

ALTER TABLE noticeBoard ADD CONSTRAINT PK_NOTICEBOARD PRIMARY KEY (
	nboard_id
);

ALTER TABLE image ADD CONSTRAINT PK_IMAGE PRIMARY KEY (
	image_id
);

ALTER TABLE volunteerFeedbackBoard ADD CONSTRAINT PK_VOLUNTEERFEEDBACKBOARD PRIMARY KEY (
	vfboard_id
);

ALTER TABLE adoptionFeedbackBoard ADD CONSTRAINT PK_ADOPTIONFEEDBACKBOARD PRIMARY KEY (
	afboard_id
);

ALTER TABLE survey ADD CONSTRAINT PK_SURVEY PRIMARY KEY (
	survey_id
);

ALTER TABLE VFcomment ADD CONSTRAINT PK_VFCOMMENT PRIMARY KEY (
	vfcomment_id
);

ALTER TABLE AFcomment ADD CONSTRAINT PK_AFCOMMENT PRIMARY KEY (
	afcomment_id
);

ALTER TABLE VFlike ADD CONSTRAINT PK_VFLIKE PRIMARY KEY (
	vflike_id
);

ALTER TABLE AFlike ADD CONSTRAINT PK_AFLIKE PRIMARY KEY (
	aflike_id
);

ALTER TABLE report ADD CONSTRAINT PK_REPORT PRIMARY KEY (
	report_id
);

ALTER TABLE sanction ADD CONSTRAINT PK_SANCTION PRIMARY KEY (
	sanction_id
);

ALTER TABLE volunteer ADD CONSTRAINT FK_admin_TO_volunteer_1 FOREIGN KEY (
	admin_id
)
REFERENCES admin (
	admin_id
);

ALTER TABLE adoption ADD CONSTRAINT FK_admin_TO_adoption_1 FOREIGN KEY (
	admin_id
)
REFERENCES admin (
	admin_id
);

ALTER TABLE adoption ADD CONSTRAINT FK_animal_TO_adoption_1 FOREIGN KEY (
	animal_id
)
REFERENCES animal (
	animal_id
);

ALTER TABLE freeBoard ADD CONSTRAINT FK_users_TO_freeBoard_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);

ALTER TABLE Fcomment ADD CONSTRAINT FK_freeBoard_TO_Fcomment_1 FOREIGN KEY (
	fboard_id
)
REFERENCES freeBoard (
	fboard_id
);

ALTER TABLE Fcomment ADD CONSTRAINT FK_users_TO_Fcomment_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);

ALTER TABLE counseling ADD CONSTRAINT FK_users_TO_counseling_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);

ALTER TABLE counseling ADD CONSTRAINT FK_adoption_TO_counseling_1 FOREIGN KEY (
	adoption_id
)
REFERENCES adoption (
	adoption_id
);

ALTER TABLE application ADD CONSTRAINT FK_users_TO_application_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);

ALTER TABLE application ADD CONSTRAINT FK_volunteer_TO_application_1 FOREIGN KEY (
	volunteer_id
)
REFERENCES volunteer (
	volunteer_id
);

ALTER TABLE donate ADD CONSTRAINT FK_users_TO_donate_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);

ALTER TABLE animal ADD CONSTRAINT FK_admin_TO_animal_1 FOREIGN KEY (
	admin_id
)
REFERENCES admin (
	admin_id
);

ALTER TABLE flike ADD CONSTRAINT FK_users_TO_flike_1 FOREIGN KEY (
	fliuser_id
)
REFERENCES users (
	user_id
);

ALTER TABLE flike ADD CONSTRAINT FK_freeBoard_TO_flike_1 FOREIGN KEY (
	fboard_id
)
REFERENCES freeBoard (
	fboard_id
);

ALTER TABLE noticeBoard ADD CONSTRAINT FK_admin_TO_noticeBoard_1 FOREIGN KEY (
	admin_id
)
REFERENCES admin (
	admin_id
);

ALTER TABLE image ADD CONSTRAINT FK_adoption_TO_image_1 FOREIGN KEY (
	adoption_id
)
REFERENCES adoption (
	adoption_id
);

ALTER TABLE image ADD CONSTRAINT FK_animal_TO_image_1 FOREIGN KEY (
	animal_id
)
REFERENCES animal (
	animal_id
);

ALTER TABLE image ADD CONSTRAINT FK_noticeBoard_TO_image_1 FOREIGN KEY (
	nboard_id
)
REFERENCES noticeBoard (
	nboard_id
);

ALTER TABLE image ADD CONSTRAINT FK_volunteer_TO_image_1 FOREIGN KEY (
	volunteer_id
)
REFERENCES volunteer (
	volunteer_id
);

ALTER TABLE image ADD CONSTRAINT FK_freeBoard_TO_image_1 FOREIGN KEY (
	fboard_id
)
REFERENCES freeBoard (
	fboard_id
);

ALTER TABLE image ADD CONSTRAINT FK_volunteerFeedbackBoard_TO_image_1 FOREIGN KEY (
	vfboard_id
)
REFERENCES volunteerFeedbackBoard (
	vfboard_id
);

ALTER TABLE image ADD CONSTRAINT FK_adoptionFeedbackBoard_TO_image_1 FOREIGN KEY (
	afboard_id
)
REFERENCES adoptionFeedbackBoard (
	afboard_id
);

ALTER TABLE volunteerFeedbackBoard ADD CONSTRAINT FK_users_TO_volunteerFeedbackBoard_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);

ALTER TABLE adoptionFeedbackBoard ADD CONSTRAINT FK_users_TO_adoptionFeedbackBoard_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);

ALTER TABLE survey ADD CONSTRAINT FK_counseling_TO_survey_1 FOREIGN KEY (
	counseling_id
)
REFERENCES counseling (
	counseling_id
);

ALTER TABLE VFcomment ADD CONSTRAINT FK_volunteerFeedbackBoard_TO_VFcomment_1 FOREIGN KEY (
	vfboard_id
)
REFERENCES volunteerFeedbackBoard (
	vfboard_id
);

ALTER TABLE VFcomment ADD CONSTRAINT FK_users_TO_VFcomment_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);

ALTER TABLE AFcomment ADD CONSTRAINT FK_adoptionFeedbackBoard_TO_AFcomment_1 FOREIGN KEY (
	afboard_id
)
REFERENCES adoptionFeedbackBoard (
	afboard_id
);

ALTER TABLE AFcomment ADD CONSTRAINT FK_users_TO_AFcomment_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);

ALTER TABLE VFlike ADD CONSTRAINT FK_users_TO_VFlike_1 FOREIGN KEY (
	vfliuser_id
)
REFERENCES users (
	user_id
);

ALTER TABLE VFlike ADD CONSTRAINT FK_volunteerFeedbackBoard_TO_VFlike_1 FOREIGN KEY (
	vfboard_id
)
REFERENCES volunteerFeedbackBoard (
	vfboard_id
);

ALTER TABLE AFlike ADD CONSTRAINT FK_users_TO_AFlike_1 FOREIGN KEY (
	afliuser_id
)
REFERENCES users (
	user_id
);

ALTER TABLE AFlike ADD CONSTRAINT FK_adoptionFeedbackBoard_TO_AFlike_1 FOREIGN KEY (
	afboard_id
)
REFERENCES adoptionFeedbackBoard (
	afboard_id
);

ALTER TABLE report ADD CONSTRAINT FK_freeBoard_TO_report_1 FOREIGN KEY (
	fboard_id
)
REFERENCES freeBoard (
	fboard_id
);

ALTER TABLE report ADD CONSTRAINT FK_Fcomment_TO_report_1 FOREIGN KEY (
	fcomment_id
)
REFERENCES Fcomment (
	fcomment_id
);

ALTER TABLE report ADD CONSTRAINT FK_volunteerFeedbackBoard_TO_report_1 FOREIGN KEY (
	vfboard_id
)
REFERENCES volunteerFeedbackBoard (
	vfboard_id
);

ALTER TABLE report ADD CONSTRAINT FK_VFcomment_TO_report_1 FOREIGN KEY (
	vfcomment_id
)
REFERENCES VFcomment (
	vfcomment_id
);

ALTER TABLE report ADD CONSTRAINT FK_AFcomment_TO_report_1 FOREIGN KEY (
	afcomment_id
)
REFERENCES AFcomment (
	afcomment_id
);

ALTER TABLE report ADD CONSTRAINT FK_adoptionFeedbackBoard_TO_report_1 FOREIGN KEY (
	afboard_id
)
REFERENCES adoptionFeedbackBoard (
	afboard_id
);

ALTER TABLE report ADD CONSTRAINT FK_users_TO_report_1 FOREIGN KEY (
	user_id
)
REFERENCES users (
	user_id
);

ALTER TABLE sanction ADD CONSTRAINT FK_report_TO_sanction_1 FOREIGN KEY (
	report_id
)
REFERENCES report (
	report_id
);
