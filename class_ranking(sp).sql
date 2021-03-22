CREATE PROCEDURE class_ranking
AS
select dense_rank() over (partition by sport.sport_id order by class_fee) as RANKING, class.class_id, gym.gym_gymname, users.user_firstname as coach_fname, users.user_lastname as coach_lname, sport_name, class_fee
from class
inner join salon on salon.salon_id = class.salon_id
inner join gym on gym.gym_id = salon.gym_id
inner join coach on coach.coach_id = class.coach_id
inner join users on coach.coach_id = users.user_id
inner join sport on class.sport_id = sport.sport_id;
GO

exec class_ranking