SELECT LENGTH('HELLO');


SELECT first_name,LENGTH(first_name) 
FROM employee_demographics
ORDER BY 2 ;

SELECT first_name,LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(birth_date,6,2) AS BIRTH_MONTH
FROM employee_demographics
;


SELECT first_name,last_name,
CONCAT(first_name,' ',last_name) AS FULLNAME
FROM employee_demographics
;