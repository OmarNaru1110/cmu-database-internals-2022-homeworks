select original_title, premiered, concat(runtime_minutes, ' (mins)') as runtime
from titles
where genres like '%Sci-Fi%'
order by runtime_minutes desc
limit 10;