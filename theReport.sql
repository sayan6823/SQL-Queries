select 
case when grade < 8 then NULL else name end as Name,
grade,
marks
from students s join grades g
on s.marks between g.min_mark and g.max_mark
order by grade desc , name asc;


-- one more logic
-- SELECT 
--     CASE WHEN g.Grade < 8 THEN NULL ELSE s.Name END AS Name,
--     g.Grade,
--     s.Marks
-- FROM 
--     Students s
-- JOIN 
--     Grades g
--     ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
-- ORDER BY 
--     g.Grade DESC,
--     CASE WHEN g.Grade >= 8 THEN s.Name END ASC,
--     CASE WHEN g.Grade < 8 THEN s.Marks END ASC;