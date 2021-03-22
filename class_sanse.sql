create table class_sanse(
	class_sanse_id int not null,
	class_id int not null,
	sanse_id int not null,
	created_at datetime,
	updated_at datetime,
	primary key (class_sanse_id),
	foreign key (class_id) references class(class_id),
	foreign key (sanse_id) references sanse(sanse_id)
);

insert into class_sanse values (1,1,1,getdate(),getdate());
insert into class_sanse values (2,1,2,getdate(),getdate());
insert into class_sanse values (3,2,5,getdate(),getdate());
insert into class_sanse values (4,2,6,getdate(),getdate());
insert into class_sanse values (5,3,9,getdate(),getdate());
insert into class_sanse values (6,3,10,getdate(),getdate());
insert into class_sanse values (7,4,13,getdate(),getdate());
insert into class_sanse values (8,4,14,getdate(),getdate());
insert into class_sanse values (9,5,17,getdate(),getdate());
insert into class_sanse values (10,5,18,getdate(),getdate());
insert into class_sanse values (11,6,21,getdate(),getdate());
insert into class_sanse values (12,6,22,getdate(),getdate());
insert into class_sanse values (13,7,23,getdate(),getdate());
insert into class_sanse values (14,7,24,getdate(),getdate());


select * from class_sanse

