1)
select top 10 country, count(*) as total_titles
from [netflix mov]
group by country
order by total_titles desc
---------------------------
2)
select type, count(*) as total_count
from [netflix mov]
group by type
-----------------------------
3)
select top 5 listed_in, count(*) as total_titles
from [netflix mov]
group by listed_in
order by total_titles desc
--------------
4
select duration, count(*) as total_movies
from [netflix mov]
where type = 'Movie' and (duration = '90 min' or duration = '180 min')
group by duration
--------------------
5
select top 10 [YEAR], count(*) as total_added
from [netflix mov]
where [year] is not null
group by [year]
order by [year] desc
-----------------------
6)
select [Suitable_age_group], count(*) as total_count
from [netflix mov]
group by [Suitable_age_group]
---------------------------
7)
select title, type, release_year, country, director, cast
from [netflix mov]
where cast like '%anupam kher%'
-------------------
8)
select title, type, release_year
from [netflix mov]
where title like '%Story%'
-------
9)
select top 15 director, count(*) as total_movies
from [netflix mov]
where director != 'unknown'
group by director
order by total_movies desc