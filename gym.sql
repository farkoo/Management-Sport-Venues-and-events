create table gym(
	gym_id int NOT NULL,
	gym_ownerid varchar(12) NOT NULL,
	gym_gymname varchar(50) NOT NULL,
	gym_gymphone varchar(10),
	gym_gymaddress text,
	gym_city_id int,
	gym_district int,
	gym_starttime time,
	gym_endtime time,
	created_at datetime,
	updated_at datetime
	primary key(gym_id)
);

insert into gym values(1, 2, 'takhti', '3131111111', 'takhti street', 2,400,'06:00','23:00',getdate(), getdate())
insert into gym values(2, 5, 'bahonar', '3131111121', NULL, 1,320,'07:00','22:00',getdate(), getdate())
insert into gym values(3, 8, 'azar', '3131118711', 'azar street', 2,210,'06:00','00:00',getdate(), getdate())
insert into gym values(4, 4, 'setareh', '3131458111', NULL, 3,325,'08:00','21:00',getdate(), getdate())
insert into gym values(5, 9, 'mahour', '3139911121', NULL, 4,320,'07:00','22:00',getdate(), getdate())
insert into gym values(6, 11, 'tavana', '3131123711', 'saadi street', 7,582,'06:00','00:00',getdate(), getdate())
insert into gym values(7, 13, 'koshesh', '3139918711', '55 street', 6,750,'07:00','00:00',getdate(), getdate())

select * from gym

--drop table gym;