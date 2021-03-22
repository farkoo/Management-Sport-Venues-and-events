create table users(
	user_id int NOT NULL,
	user_firstname varchar(50),
	user_lastname varchar(50),
	user_phonenumber varchar(20),
	user_email varchar(100),
	user_gender varchar(10) Check(user_gender in ('male', 'female')),
	user_city_id int,
	user_address text,
	created_at datetime,
	updated_at datetime,
	user_profilephoto varbinary(max),
	PRIMARY KEY(user_id),
	FOREIGN KEY(user_city_id) references city(city_id)
);

insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 1, 'farzaneh', 'koohestani', '11111111111','farkoo@gmail.com','female',2,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\farzaneh.jpg', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 2, 'sara', 'white', '22222222222','sarawhile@gmail.com','female',2,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\rabbit.jpg', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 3, 'john', 'black', '33333333333','johnblach@gmail.com','male',1,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'D:\Uni\4-fourth term\Computer architecture\basic computer\FARKOO simulator\win1\win1\Resources\close.png', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 4, 'ali', 'dadmand', '44444444444','alidadmand@gmail.com','male',3,'shiraz,47''street',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'D:\Uni\4-fourth term\Computer architecture\basic computer\FARKOO simulator\win1\win1\Resources\infinity.png', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 5, 'zara', 'silver', '55555555555','zarasilver@gmail.com','female',4,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'D:\Uni\4-fourth term\Computer architecture\basic computer\FARKOO simulator\win1\win1\Resources\close.png', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 6, 'jack', 'back', '66666666666','jackback@gmail.com','male',1,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'D:\Uni\4-fourth term\Computer architecture\basic computer\FARKOO simulator\win1\win1\Resources\close.png', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 7, 'niloufar', 'koohestani', '1212121212121','niloufarkoohetani@gmail.com','female',2,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\farzaneh.jpg', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 8, 'paria', 'sepehri', '12312312312','pariasepehri@gmail.com','female',3,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\rabbit.jpg', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 9, 'nima', 'fallah', '1122334455','nimafallah@gmail.com','female',4,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\rabbit.jpg', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 10, 'sahar', 'ramezani', '1233211231','saharramezani@gmail.com','female',7,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\rabbit.jpg', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 11, 'ali', 'shakeru', '1144778855','alishakeri@gmail.com','male',7,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\rabbit.jpg', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 12, 'sogand', 'afshar', '8521479635','sogandafsahr@gmail.com','female',7,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\rabbit.jpg', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 13, 'furogh', 'motamedi', '8528528528','furoghmotamedi@gmail.com','female',6,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\rabbit.jpg', SINGLE_BLOB) image;
insert into users (user_id, user_firstname, user_lastname, user_phonenumber, user_email, user_gender,user_city_id, user_address, updated_at, created_at, user_profilephoto)
select 14, 'sami', 'razavi', '7417417411','samirazavi@gmail.com','male',6,'none',getdate(),getdate(),
		BulkColumn FROM OPENROWSET(BULK N'C:\Users\FARZANEH\Desktop\present\rabbit.jpg', SINGLE_BLOB) image;
