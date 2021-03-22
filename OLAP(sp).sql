CREATE PROCEDURE OLAP
AS
select CASE GROUPING(city.city_name) WHEN 0 THEN city.city_name WHEN 1 THEN'All Cities' END AS City, CASE GROUPING(gym.gym_gymname) WHEN 0 THEN gym.gym_gymname WHEN 1 THEN'All Gyms' END AS Gym, count(*) as class_count
from class
inner join salon on salon.salon_id = class.salon_id
inner join gym on gym.gym_id = salon.gym_id
inner join city on city.city_id = gym.gym_city_id
group by rollup(city.city_name, gym.gym_gymname);
GO

exec OLAP