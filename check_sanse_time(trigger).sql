create trigger check_sanse_time
on class_sanse
after insert
as
begin
	declare @gstarttime time;
	declare @gendtime time;
	select @gstarttime = gym.gym_starttime, @gendtime = gym.gym_endtime
	from inserted
	inner join class on class.class_id = inserted.class_id
	inner join salon on salon.salon_id = class.salon_id
	inner join gym on gym.gym_id = salon.gym_id

	declare @sstarttime time;
	declare @sendtime time;
	select @sstarttime = sanse.sanse_starttime, @sendtime = sanse.sanse_endtime
	from inserted
	inner join sanse on sanse.sanse_id = inserted.sanse_id
	where inserted.sanse_id = sanse.sanse_id

	declare @csid int;
	select @csid = class_sanse.class_sanse_id
	from class_sanse, inserted
	where class_sanse.class_sanse_id = inserted.class_sanse_id

	if(@sstarttime < @gstarttime or @sendtime > @gendtime)
	begin
		delete top(1)
		from class_sanse
		where class_sanse.class_sanse_id = @csid;
		print 'invalid sanse time';
	end
end

--drop trigger check_gender

insert into sanse values(27,7,'tuesday','spring','2020','1:00','2:00','female',30,getdate(),getdate());
insert into class_sanse values (17,6,27,getdate(),getdate());


select * from class
select * from class_sanse
