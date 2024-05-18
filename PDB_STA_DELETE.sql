select 'drop table"' || table_name || '"cascade constraints;' from user_tables;

drop table"USERS"cascade constraints;
drop table"ADMIN"cascade constraints;
drop table"VOLUNTEER"cascade constraints;
drop table"ADOPTION"cascade constraints;
drop table"FREEBOARD"cascade constraints;
drop table"FCOMMENT"cascade constraints;
drop table"COUNSELING"cascade constraints;
drop table"APPLICATION"cascade constraints;
drop table"DONATE"cascade constraints;
drop table"ANIMAL"cascade constraints;
drop table"FLIKE"cascade constraints;
drop table"NOTICEBOARD"cascade constraints;
drop table"IMAGE"cascade constraints;
drop table"VOLUNTEERFEEDBACKBOARD"cascade constraints;
drop table"ADOPTIONFEEDBACKBOARD"cascade constraints;
drop table"SURVEY"cascade constraints;
drop table"VFCOMMENT"cascade constraints;
drop table"AFCOMMENT"cascade constraints;
drop table"VFLIKE"cascade constraints;
drop table"AFLIKE"cascade constraints;
drop table"REPORT"cascade constraints;
drop table"SANCTION"cascade constraints;


select 'drop sequence"' || sequence_name || '";' from user_sequences;

drop sequence"ADOPTIONFEEDBACKBOARD_SEQ";
drop sequence"ADOPTION_SEQ";
drop sequence"AFCOMMENT_SEQ";
drop sequence"AFLIKE_SEQ";
drop sequence"ANIMAL_SEQ";
drop sequence"APPLICATION_SEQ";
drop sequence"COUNSELING_SEQ";
drop sequence"DONATE_SEQ";
drop sequence"FCOMMENT_SEQ";
drop sequence"FLIKE_SEQ";
drop sequence"FREEBOARD_SEQ";
drop sequence"IMAGE_SEQ";
drop sequence"NOTICEBOARD_SEQ";
drop sequence"REPORT_SEQ";
drop sequence"SANCTION_SEQ";
drop sequence"SURVEY_SEQ";
drop sequence"VFCOMMENT_SEQ";
drop sequence"VFLIKE_SEQ";
drop sequence"VOLUNTEERFEEDBACKBOARD_SEQ";
drop sequence"VOLUNTEER_SEQ";