SELECT roll_number,name
FROM student_information std_info
INNER JOIN faculty_information fac_info
ON std_info.advisor = fac_info.employee_ID
WHERE (fac_info.gender = 'M' and fac_info.salary>15000) or (fac_info.gender = 'F' and fac_info.salary>20000);
