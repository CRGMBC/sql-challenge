select last_name as "Last name", count(emp_no) as "Number of employees" 
from employees
group by last_name
order by "Number of employees";
