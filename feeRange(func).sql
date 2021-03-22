IF OBJECT_ID (N'feeRange', N'IF') IS NOT NULL
DROP FUNCTION feeRange;
GO
CREATE FUNCTION feeRange (@amount int, @flag as varchar(5))
RETURNS @result TABLE (classid int, classtitle varchar(100), classfee int, starttime date)
AS
BEGIN
	if(@flag = 'lower')
		insert into @result select class.class_id, class.class_title, class.class_fee,
					class.class_startdate from class where class.class_fee <= @amount
	else if(@flag = 'upper')
		insert into @result select class.class_id, class.class_title, class.class_fee,
					class.class_startdate from class where class.class_fee >= @amount
	return;
END
GO

select * from feeRange(100,'upper')