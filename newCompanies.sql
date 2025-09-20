SELECT 
c.company_code,
c.founder,
count(distinct l.lead_manager_code),
count(distinct s.senior_manager_code),
count(distinct m.manager_code),
count(distinct e.employee_code)
FROM 
company c join lead_manager l on c.company_code= l.company_code
join senior_manager s on c.company_code = s.company_code
join manager m on c.company_code = m.company_code
join employee e on c.company_code = e.company_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
