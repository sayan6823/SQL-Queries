select sum(c.population)
from CITY c join COUNTRY cr
on c.countrycode =  cr.code
where cr.continent= 'Asia';