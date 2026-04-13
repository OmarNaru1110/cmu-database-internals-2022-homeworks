select people.name, count(*) as num_appearances
from crew
join people on crew.person_id = people.person_id
group by crew.person_id
order by count(*) desc
limit 20;