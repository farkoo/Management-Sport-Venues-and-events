create trigger check_gender
on class_user
after insert
as
begin
	declare @gender1 varchar(10);
	declare @gender2 varchar(10);

	select @gender1 = class.class_gender, @gender2 = users.user_gender
	from class_user
	inner join inserted on inserted.class_user_id = class_user.class_user_id
	inner join class on class.class_id = class_user.class_id
	inner join users on users.user_id = class_user.user_id
	where class_user.class_id = inserted.class_id;

	declare @cuid int;
	select @cuid = class_user.class_user_id
	from class_user, inserted
	where class_user.class_user_id = inserted.class_user_id;

	if(@gender1 != @gender2 and @gender1 != 'complex')
	begin
		delete top(1)
		from class_user
		where class_user.class_user_id = @cuid;
		print 'invalid gender';
	end
end

--drop trigger check_gender

insert into class_user values (33,7,7,getdate(),getdate());
insert into class_user values (34,6,1,getdate(),getdate());

