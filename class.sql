create table class(
	class_id int not null primary key,
	salon_id int not null foreign key references salon(salon_id),
	coach_id int foreign key references coach(coach_id),
	sport_id int foreign key references sport(sport_id),
	class_capacity int,
	class_gender varchar(10) check (class_gender in ('female','male','complex')),
	class_title varchar(100),
	class_fee int,
	class_startdate date,
	created_at datetime,
	updated_at datetime
	);

insert into class values(1,1,1,2,30,'female','Basketball Class',200,getdate(),getdate(),getdate());
insert into class values(2,2,6,1,25,'male','Volleyball Class',350,getdate(),getdate(),getdate());
insert into class values(3,3,1,5,30,'female','Tennis Class',200,getdate(),getdate(),getdate());
insert into class values(4,4,4,3,20,'male','ping-pong Class',200,getdate(),getdate(),getdate());
insert into class values(5,5,9,2,25,'female','basketball Class',350,getdate(),getdate(),getdate());
insert into class values(6,6,12,3,15,'female','ping-pong Class',200,getdate(),getdate(),getdate());
insert into class values(7,7,14,4,30,'male','football Class',200,getdate(),getdate(),getdate());


select * from class

--drop table class

