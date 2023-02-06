-- Câu 1
DELIMITER $$
create procedure Danhsachthuongluong()
begin
    select 
        *, 
        case 
            when DATEDIFF(NOW(), hire_date) >= 9 THEN '12tr' 
            when DATEDIFF(NOW(), hire_date) >= 6 THEN '8tr' 
            else '5tr' 
        end as thuong_luong
    FROM employees;
end $$
DELIMITER ;
call Danhsachthuongluong();