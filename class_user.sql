create table class_user(
	class_user_id int not null,
	class_id int not null,
	user_id int not null,
	created_at datetime,
	updated_at datetime,
	primary key (class_user_id),
	foreign key (class_id) references class(class_id),
	foreign key (user_id) references users(user_id)
);

insert into class_user values (1,1,1,getdate(),getdate());
insert into class_user values (2,1,2,getdate(),getdate());
insert into class_user values (3,1,3,getdate(),getdate());
insert into class_user values (4,1,4,getdate(),getdate());
insert into class_user values (5,1,5,getdate(),getdate());
insert into class_user values (6,2,1,getdate(),getdate());
insert into class_user values (7,2,2,getdate(),getdate());
insert into class_user values (8,2,3,getdate(),getdate());
insert into class_user values (9,2,4,getdate(),getdate());
insert into class_user values (10,2,5,getdate(),getdate());
insert into class_user values (11,2,7,getdate(),getdate());
insert into class_user values (12,2,8,getdate(),getdate());
insert into class_user values (13,2,6,getdate(),getdate());
insert into class_user values (14,2,2,getdate(),getdate());
insert into class_user values (15,2,3,getdate(),getdate());
insert into class_user values (16,2,4,getdate(),getdate());
insert into class_user values (17,2,5,getdate(),getdate());
insert into class_user values (18,2,7,getdate(),getdate());
insert into class_user values (19,2,8,getdate(),getdate());
insert into class_user values (20,4,6,getdate(),getdate());
insert into class_user values (21,4,14,getdate(),getdate());
insert into class_user values (22,4,11,getdate(),getdate());
insert into class_user values (23,5,13,getdate(),getdate());
insert into class_user values (24,5,10,getdate(),getdate());
insert into class_user values (25,6,7,getdate(),getdate());
insert into class_user values (26,6,5,getdate(),getdate());
insert into class_user values (27,6,8,getdate(),getdate());
insert into class_user values (28,7,11,getdate(),getdate());
insert into class_user values (29,7,3,getdate(),getdate());
insert into class_user values (30,7,6,getdate(),getdate());
insert into class_user values (31,7,4,getdate(),getdate());

select * from class_user

