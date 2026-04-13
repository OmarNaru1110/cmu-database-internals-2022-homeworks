select concat(premiered - (premiered % 10), 's') as DECADE, round(avg(rating), 2) AS AVG_RATING, max(rating) AS MAX_RATING, min(rating) AS MIN_RATING, count(*) AS NUM_RELEASES
from titles
join ratings on titles.title_id = ratings.title_id
where premiered is not null
group by premiered - (premiered % 10)
order by AVG_RATING desc, DECADE