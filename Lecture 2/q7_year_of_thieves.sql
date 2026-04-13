select count(title_id) as cnt 
from titles
where premiered = (select premiered
from titles
where primary_title = 'Army of Thieves'
limit 1
)