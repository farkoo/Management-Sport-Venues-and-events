create trigger check_capacity
on class_user
after insert
as
begin
	declare @count int;
	select @count=count(*)
	from class_user, inserted
	where class_user.class_id = inserted.class_id;
	
	declare @cap int;
	select @cap = class.class_capacity
	from class, inserted
	where class.class_id = inserted.class_id;

	declare @cuid int;
	select @cuid = class_user.class_user_id
	from class_user, inserted
	where class_user.class_user_id = inserted.class_user_id;

	if(@count > @cap)
	begin
		delete top(1)
		from class_user
		where class_user.class_user_id = @cuid;
	end
end


--drop trigger check_capacity



insert into class values(8,7,14,4,1,'male','football Class',200,getdate(),getdate(),getdate());
insert into class_sanse values (15,8,23,getdate(),getdate());
insert into class_sanse values (16,8,24,getdate(),getdate());


insert into class_user values (32,8,4,getdate(),getdate());
insert into class_user values (33,8,5,getdate(),getdate());

select * from class_user --last record does not insert