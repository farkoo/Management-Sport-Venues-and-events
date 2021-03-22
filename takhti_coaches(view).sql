create view takhti_coachs as
select concat(users.user_firstname, ' ', users.user_lastname) as name,
		users.user_phonenumber, 
		coach.coach_LEC, 
		coach.coach_nationalcode
from class
inner join salon on salon.salon_id = class.salon_id
inner join gym on gym.gym_id = salon.gym_id
inner join coach on coach.coach_id = class.coach_id
inner join users on users.user_id = coach.coach_id
where gym_gymname = 'takhti'

select * from takhti_coachs