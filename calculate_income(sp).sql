alter procedure calculate_income(@gym_id int, @sdate datetime, @edate datetime)
as
begin
	select sum(class.class_fee)
	from class_user
	inner join class on class.class_id = class_user.class_id
	inner join salon on salon.salon_id = class.salon_id
	inner join gym on gym.gym_id = salon.salon_id
	where @gym_id = gym.gym_id and class_user.created_at >= @sdate and class_user.created_at <= @edate
end

exec calculate_income 4,'2021-01-15 15:26:53.013','2021-01-17 15:26:53.013';

