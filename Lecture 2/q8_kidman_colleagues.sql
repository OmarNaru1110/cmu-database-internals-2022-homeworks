select distinct people.name
from people
join crew
using (person_id)
where crew.category in ('actor', 'actress') and crew.title_id in (
select title_id
from people
join crew
using (person_id)
where people.name = 'Nicole Kidman' and people.born = 1967 and crew.category in ('actor', 'actress')
)
order by people.name;