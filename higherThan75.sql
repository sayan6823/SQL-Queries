select name
from Students
where marks>75
order by SUBSTR(name,length(name)-2),id;