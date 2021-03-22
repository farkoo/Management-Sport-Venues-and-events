create table sport(
	sport_id int NOT NULL,
	sport_name varchar(50) NOT NULL,
	created_at datetime,
	updated_at datetime,
	sport_icon varbinary(max),
	primary key(sport_id)
);

insert into sport (sport_id, sport_name, created_at, updated_at, sport_icon)
select 1, 'volleyball', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Downloads\volleyball.png', SINGLE_BLOB) image;
insert into sport (sport_id, sport_name, created_at, updated_at, sport_icon)
select 2, 'basketball', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Downloads\basketball.png', SINGLE_BLOB) image;
insert into sport (sport_id, sport_name, created_at, updated_at, sport_icon)
select 3, 'ping-pong', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Downloads\ping-pong.png', SINGLE_BLOB) image;
insert into sport (sport_id, sport_name, created_at, updated_at, sport_icon)
select 4, 'football', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Downloads\football.png', SINGLE_BLOB) image;
insert into sport (sport_id, sport_name, created_at, updated_at, sport_icon)
select 5, 'tennis', getdate(), getdate(),
	BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Downloads\tennis.png', SINGLE_BLOB) image;

select * from sport

drop table sport