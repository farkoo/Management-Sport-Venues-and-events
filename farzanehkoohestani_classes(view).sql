create view farzanehkoohestani_classes
as
select class.class_id,class.class_title,sport.sport_name, 
	concat(users.user_firstname,' ',users.user_lastname) as coach_name,
	class.class_fee,class.class_gender,class.class_capacity, class.class_startdate
from class
inner join salon on salon.salon_id = class.salon_id
inner join gym on salon.gym_id = gym.gym_id
inner join coach on class.coach_id = coach.coach_id
inner join users on coach.coach_id = users.user_id
inner join sport on sport.sport_id = class.sport_id
where concat(users.user_firstname,' ',users.user_lastname) = 'farzaneh koohestani'

select * from farzanehkoohestani_classes