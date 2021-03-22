create table salon(
	salon_id int NOT NULL,
	salon_responsible_id int NOT NULL,
	gym_id int NOT NULL,
	salon_area int,
	created_at datetime,
	updated_at datetime,
	primary key(salon_id),
	foreign key(salon_responsible_id) references users(user_id),
	foreign key(gym_id) references gym(gym_id)
);


insert into salon values(1,2,1,200, getdate(), getdate())
insert into salon values(2,5,2,100, getdate(), getdate())
insert into salon values(3,8,3,350, getdate(), getdate())
insert into salon values(4,4,4,200, getdate(), getdate())
insert into salon values(5,9,5,120, getdate(), getdate())
insert into salon values(6,11,6,400, getdate(), getdate())
insert into salon values(7,13,7,80, getdate(), getdate())
insert into salon values(8,2,1,150, getdate(), getdate())
insert into salon values(9,5,2,200, getdate(), getdate())


--drop table salon