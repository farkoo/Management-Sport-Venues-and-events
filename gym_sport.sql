create table gym_sport(
	gs_id int not null,
	g_id int not null,
	s_id int not null,
	created_at datetime,
	updated_at datetime,
	primary key (gs_id),
	foreign key (g_id) references gym(id),
	foreign key (s_id) references sport(id)
);

insert into gym_sport values (1,1,1,getdate(),getdate());
insert into gym_sport values (2,1,2,getdate(),getdate());
insert into gym_sport values (3,1,3,getdate(),getdate());
insert into gym_sport values (4,2,1,getdate(),getdate());
insert into gym_sport values (5,2,2,getdate(),getdate());
insert into gym_sport values (6,2,3,getdate(),getdate());
insert into gym_sport values (7,2,4,getdate(),getdate());
insert into gym_sport values (8,2,5,getdate(),getdate());
insert into gym_sport values (11,3,3,getdate(),getdate());
insert into gym_sport values (12,3,4,getdate(),getdate());
insert into gym_sport values (13,3,5,getdate(),getdate());
insert into gym_sport values (14,4,1,getdate(),getdate());
insert into gym_sport values (15,4,2,getdate(),getdate());
insert into gym_sport values (16,4,3,getdate(),getdate());
insert into gym_sport values (17,5,1,getdate(),getdate());
insert into gym_sport values (18,5,2,getdate(),getdate());
insert into gym_sport values (19,5,3,getdate(),getdate());
insert into gym_sport values (20,5,4,getdate(),getdate());
insert into gym_sport values (21,5,5,getdate(),getdate());
insert into gym_sport values (22,6,3,getdate(),getdate());
insert into gym_sport values (23,6,4,getdate(),getdate());
insert into gym_sport values (24,6,5,getdate(),getdate());
insert into gym_sport values (25,7,2,getdate(),getdate());
insert into gym_sport values (26,7,3,getdate(),getdate());
insert into gym_sport values (27,7,4,getdate(),getdate());

select * from gym_sport