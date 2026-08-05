SELECT * FROM parks_and_recreation.employee_demographics;

SELECT * FROM employee_salary
WHERE
first_name='Leslie';

SELECT * FROM employee_salary
WHERE
salary>50000;

SELECT * FROM employee_demographics
WHERE
birth_date>'1985-01-01'
AND
gender='Male';  


SELECT * FROM employee_demographics
WHERE first_name LIKE 'Jer%';

SELECT * FROM employee_demographics
WHERE first_name LIKE 'a%';

SELECT * FROM employee_demographics
WHERE first_name LIKE 'A__';

