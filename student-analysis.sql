SELECT std_info.roll_number,std_info.name
FROM student_information std_info
INNER JOIN examination_marks exm_marks
ON std_info.roll_number = exm_marks.roll_number
GROUP BY exm_marks.roll_number
HAVING SUM(exm_marks.subject_one + exm_marks.subject_two + exm_marks.subject_three) < 100;
