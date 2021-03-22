create table sanse(
	sanse_id int not null primary key,
	salon_id int not null foreign key references salon(salon_id),
	sanse_day varchar(10) check(sanse_day in ('sunday', 'monday', 'tuesday','wednesday','thursday','friday','saturday')),
	sanse_semester varchar(10) check(sanse_semester in ('spring','summer','fall', 'winter')),
	sanse_year varchar(5),
	sanse_starttime time,
	sanse_endtime time,
	sanse_gender varchar(10) check (sanse_gender in ('female','male','complex')),
	sanse_capacity int,
	created_at datetime,
	updated_at datetime
	);

insert into sanse values(1,1,'saturday','fall','2020','08:00','10:00','female',50,getdate(),getdate());
insert into sanse values(2,1,'monday','fall','2020','08:00','10:00','female',50,getdate(),getdate());

insert into sanse values(3,1,'sunday','spring','2020','08:00','10:00','male',50,getdate(),getdate());
insert into sanse values(4,1,'tuesday','spring','2020','08:00','10:00','male',50,getdate(),getdate());

insert into sanse values(5,2,'sunday','winter','2020','09:00','11:00','male',50,getdate(),getdate());
insert into sanse values(6,2,'tuesday','winter','2020','09:00','11:00','male',50,getdate(),getdate());

insert into sanse values(7,2,'thursday','summer','2020','08:00','10:00','female',50,getdate(),getdate());
insert into sanse values(8,2,'friday','summer','2020','08:00','10:00','female',50,getdate(),getdate());

insert into sanse values(9,3,'sunday','spring','2020','13:00','15:00','female',30,getdate(),getdate());
insert into sanse values(10,3,'tuesday','spring','2020','13:00','15:00','female',30,getdate(),getdate());

insert into sanse values(11,4,'saturday','fall','2020','08:00','10:00','female',50,getdate(),getdate());
insert into sanse values(12,4,'monday','fall','2020','08:00','10:00','female',50,getdate(),getdate());

insert into sanse values(13,4,'sunday','spring','2020','08:00','10:00','male',50,getdate(),getdate());
insert into sanse values(14,4,'tuesday','spring','2020','08:00','10:00','male',50,getdate(),getdate());

insert into sanse values(15,5,'sunday','winter','2020','09:00','11:00','male',50,getdate(),getdate());
insert into sanse values(16,5,'tuesday','winter','2020','09:00','11:00','male',50,getdate(),getdate());

insert into sanse values(17,5,'thursday','summer','2020','08:00','10:00','female',50,getdate(),getdate());
insert into sanse values(18,5,'friday','summer','2020','08:00','10:00','female',50,getdate(),getdate());

insert into sanse values(19,6,'sunday','spring','2020','13:00','15:00','male',30,getdate(),getdate());
insert into sanse values(20,6,'tuesday','spring','2020','13:00','15:00','male',30,getdate(),getdate());

insert into sanse values(21,6,'sunday','fall','2020','17:00','19:00','female',30,getdate(),getdate());
insert into sanse values(22,6,'tuesday','fall','2020','17:00','19:00','female',30,getdate(),getdate());

insert into sanse values(23,7,'sunday','winter','2020','08:00','10:00','male',30,getdate(),getdate());
insert into sanse values(24,7,'tuesday','winter','2020','08:00','10:00','male',30,getdate(),getdate());

insert into sanse values(25,7,'sunday','spring','2020','13:00','15:00','female',30,getdate(),getdate());
insert into sanse values(26,7,'tuesday','spring','2020','13:00','15:00','female',30,getdate(),getdate());


select * from sanse