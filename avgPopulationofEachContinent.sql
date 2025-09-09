select cr.continent,floor(avg(c.population))
from CITY c join COUNTRY cr
on c.countrycode=cr.code
group by cr.continent;
