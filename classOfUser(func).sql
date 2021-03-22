IF OBJECT_ID (N'classOfaUser', N'IF') IS NOT NULL
DROP FUNCTION classOfaUser;
GO
CREATE FUNCTION classOfaUser (@userid int)
RETURNS TABLE
AS
RETURN
(
	select class.class_title, sport.sport_name, 
		class.class_fee, class.class_startdate
	from class
	inner join class_user on class.class_id = class_user.class_id
	inner join users on users.user_id = class_user.user_id
	inner join sport on class.sport_id = sport.sport_id
	where users.user_id = @userid
);
GO

select * from classOfaUser(3);