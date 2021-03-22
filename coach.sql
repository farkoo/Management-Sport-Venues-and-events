create table coach(
	coach_id int NOT NULL,
	coach_fathername varchar(50),
	coach_nationalcode varchar(10),
	coach_LEC varchar(20) Check(coach_LEC in ('Diploma', 'Bachelor', 'Master', 'Phd', 'Postdoctoral')),
	created_at datetime,
	updated_at datetime,
	coach_coachcardpic varbinary(max),
	PRIMARY KEY(coach_id),
	foreign key (coach_id) references users(user_id)
);

insert into coach (coach_id, coach_fathername, coach_nationalcode, coach_LEC,created_at,updated_at, coach_coachcardpic)
select 1, 'alireza', '1271111111', 'Diploma', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\farzaneh.jpg', SINGLE_BLOB) image;
insert into coach (coach_id, coach_fathername, coach_nationalcode, coach_LEC,created_at,updated_at, coach_coachcardpic)
select 8, 'mohammad', '1271111122', 'Bachelor', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\farzaneh.jpg', SINGLE_BLOB) image;
insert into coach (coach_id, coach_fathername, coach_nationalcode, coach_LEC,created_at,updated_at, coach_coachcardpic)
select 6, 'piter', '1271111152', 'Phd', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\farzaneh.jpg', SINGLE_BLOB) image;
insert into coach (coach_id, coach_fathername, coach_nationalcode, coach_LEC,created_at,updated_at, coach_coachcardpic)
select 4, 'saeid', '1271111252', 'Master', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\farzaneh.jpg', SINGLE_BLOB) image;
insert into coach (coach_id, coach_fathername, coach_nationalcode, coach_LEC,created_at,updated_at, coach_coachcardpic)
select 9, 'navid', '1271118811', 'Diploma', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\farzaneh.jpg', SINGLE_BLOB) image;
insert into coach (coach_id, coach_fathername, coach_nationalcode, coach_LEC,created_at,updated_at, coach_coachcardpic)
select 12, 'hasan', '1271981122', 'Bachelor', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\farzaneh.jpg', SINGLE_BLOB) image;
insert into coach (coach_id, coach_fathername, coach_nationalcode, coach_LEC,created_at,updated_at, coach_coachcardpic)
select 14, 'parviz', '1273511152', 'Phd', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\farzaneh.jpg', SINGLE_BLOB) image;


