-- Câu 2:
use qlns;
DELIMITER $$
create procedure pro_search_name (in firstname varchar(20))
begin 
	select concat(first_name,' ',last_name) as fullname, email,j.job_title,d.department_name,phone_number,hire_date,salary from employees as e
    join jobs as j on e.job_id = j.job_id
    join departments as d on e.department_id = d.department_id
    where first_name like firstname;
end;$$
drop procedure pro_search_name;
call pro_search_name ('Pat');