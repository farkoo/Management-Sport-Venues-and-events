create trigger check_class_sport
on class
after insert
as
begin
	declare @class_sport_id int;
	select @class_sport_id = class.sport_id
	from class, inserted
	where class.class_id = inserted.class_id

	declare @flag int;
	select @flag = count(*)
	from salon
	inner join inserted on inserted.salon_id = salon.salon_id
	inner join salon_sport on salon_sport.salon_id = salon.salon_id
	where inserted.sport_id = salon_sport.sport_id

	declare @cid int;
	select @cid = class.class_id
	from class, inserted
	where class.class_id = inserted.class_id;

	if(@flag = 0)
	begin
		delete top(1)
		from class
		where class.class_id = @cid;
		print 'invalid class sport';
		print @flag;
	end
end

drop trigger check_class_sport

select * from class

insert into salon_sport values (28,9,1,getdate(),getdate());
insert into salon_sport values (29,9,2,getdate(),getdate());
insert into salon_sport values (30,9,3,getdate(),getdate());

insert into class values(9,9,14,2,30,'male','football Class',200,getdate(),getdate(),getdate());
insert into class values(10,9,14,5,10,'male','tennis class',100,getdate(),getdate(),getdate())

select * from class_user

select * from class

