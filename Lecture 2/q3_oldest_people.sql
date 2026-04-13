select name, coalesce(died - born, cast(strftime('%Y', 'now') as integer) - born) as age
from people
where born >= 1900 
order by age desc, name
limit 20;