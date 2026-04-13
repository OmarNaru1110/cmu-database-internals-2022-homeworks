select t.primary_title, r.votes
from titles t 
join crew c
using (title_id)
join people p
using (person_id)
join ratings r 
using (title_id)
where p.name like '%Cruise%' and p.born = 1962
order by r.votes desc
limit 10;
