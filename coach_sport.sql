create table coach_sport(
	coach_sport_id int not null,
	coach_id int not null foreign key references coach(coach_id),
	sport_id int not null foreign key references sport(sport_id),
	created_at datetime,
	updated_at datetime,
	primary key(coach_sport_id),
	);

insert into coach_sport values(1,1,2,getdate(),getdate())
insert into coach_sport values(2,8,5,getdate(),getdate())
insert into coach_sport values(3,8,3,getdate(),getdate())
insert into coach_sport values(4,8,1,getdate(),getdate())
insert into coach_sport values(5,6,1,getdate(),getdate())
insert into coach_sport values(6,6,2,getdate(),getdate())
insert into coach_sport values(8,6,3,getdate(),getdate())
insert into coach_sport values(9,6,4,getdate(),getdate())
insert into coach_sport values(10,6,5,getdate(),getdate())
insert into coach_sport values(11,4,5,getdate(),getdate())
insert into coach_sport values(12,4,2,getdate(),getdate())
insert into coach_sport values(13,4,3,getdate(),getdate())
insert into coach_sport values(14,4,4,getdate(),getdate())
insert into coach_sport values(15,1,5,getdate(),getdate())
insert into coach_sport values(16,9,1,getdate(),getdate())
insert into coach_sport values(17,9,2,getdate(),getdate())
insert into coach_sport values(18,12,3,getdate(),getdate())
insert into coach_sport values(19,12,4,getdate(),getdate())
insert into coach_sport values(20,14,2,getdate(),getdate())
insert into coach_sport values(21,14,3,getdate(),getdate())
insert into coach_sport values(22,14,4,getdate(),getdate())

select * from coach_sport;