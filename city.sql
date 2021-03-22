create table city(
	city_id int NOT NULL,
	city_name varchar(50),
	created_at datetime,
	updated_at datetime,
	primary key(city_id)
);

insert into city values(1, 'tehran', getdate(), getdate())
insert into city values(2, 'isfahan', getdate(), getdate())
insert into city values(3, 'shiraz', getdate(), getdate())
insert into city values(4, 'kerman', getdate(), getdate())
insert into city values(5, 'karaj', getdate(), getdate())
insert into city values(6, 'yazd', getdate(), getdate())
insert into city values(7, 'ilam', getdate(), getdate())
insert into city values(8, 'sary', getdate(), getdate())
insert into city values(9, 'ghazvin', getdate(), getdate())
insert into city values(10, 'mashhad', getdate(), getdate())