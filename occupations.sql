select 
case when grade < 8 then NULL else name end as Name,
grade,
marks
from students s join grades g
on s.marks between g.min_mark and g.max_mark
order by grade desc , name asc;



-- One more Solution
-- select
--  min(Doctor) Doctor, 
--  min(Professor) Professor,
--  min(Singer) Singer,
--  min(Actor) Actor
-- from
-- (select row_number() over(partition by occupation order by name) as row_numbr,
--  case when occupation ='Doctor' then name end as doctor,
--  case when occupation = 'Professor' then name end as professor,
--  case when occupation ='Singer' then name end as singer,
--  case when occupation = 'Actor' then name end as actor
--  from occupations
-- ) temp_table
-- group by row_numbr
-- order by row_numbr;