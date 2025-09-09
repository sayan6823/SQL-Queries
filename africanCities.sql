select c.name
from CITY c join COUNTRY cr
on c.countrycode=cr.code
where cr.continent='Africa';