IF OBJECT_ID (N'AggrGymGender', N'IF') IS NOT NULL
DROP FUNCTION AggrGymGender;
GO
CREATE FUNCTION AggrGymGender ()
RETURNS TABLE
AS
RETURN
(
	select gym.gym_city_id, class.class_gender, sum(class_fee) as sum
	from class_user
	inner join class on class.class_id = class_user.class_id
	inner join salon on salon.salon_id = class.salon_id
	inner join gym on salon.gym_id = gym.gym_id
	group by rollup(gym.gym_city_id, class.class_gender)
);
GO

select * from AggrGymGender();