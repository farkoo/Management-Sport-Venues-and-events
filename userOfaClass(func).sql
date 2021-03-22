IF OBJECT_ID (N'userOfaClass', N'IF') IS NOT NULL
DROP FUNCTION userOfaClass;
GO
CREATE FUNCTION userOfaClass (@classid int)
RETURNS TABLE
AS
RETURN
(
	select users.user_firstname, users.user_lastname,
			users.user_phonenumber
	from class
	inner join class_user on class.class_id = class_user.class_id
	inner join users on users.user_id = class_user.user_id
	where class.class_id = @classid
);
GO

select * from userOfaClass(1);