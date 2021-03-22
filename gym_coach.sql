create table gym_coach(
	gc_id int not null,
	g_id int not null,
	c_id int not null,
	created_at datetime,
	updated_at datetime,
	primary key (gc_id),
	foreign key (g_id) references gym(id),
	foreign key (c_id) references coach(id)
);

insert into gym_coach values (1,1,1,getdate(),getdate());
insert into gym_coach values (2,2,1,getdate(),getdate());
insert into gym_coach values (3,1,4,getdate(),getdate());
insert into gym_coach values (4,2,4,getdate(),getdate());
insert into gym_coach values (5,3,4,getdate(),getdate());
insert into gym_coach values (6,2,6,getdate(),getdate());
insert into gym_coach values (7,3,6,getdate(),getdate());
insert into gym_coach values (8,1,8,getdate(),getdate());
insert into gym_coach values (9,3,8,getdate(),getdate());
insert into gym_coach values (10,4,8,getdate(),getdate());
insert into gym_coach values (11,5,9,getdate(),getdate());
insert into gym_coach values (12,6,12,getdate(),getdate());
insert into gym_coach values (13,7,14,getdate(),getdate());

select * from gym_sport