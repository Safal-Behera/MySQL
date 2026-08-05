SELECT * 
FROM employee_demographics
WHERE employee_id IN (
SELECT employee_id FROM employee_salary
WHERE dept_id =1)
;

SELECT first_name,salary,
(SELECT AVG(salary)
FROM employee_salary) 
FROM employee_salary;


SELECT AVG(MINAGE)
FROM
(SELECT gender,
AVG(age) AS AVGAGE,
MIN(age) AS MINAGE,
MAX(age) AS MAXAGE,
COUNT(age) AS COUNTAGE
FROM
employee_demographics
GROUP BY gender) AS AGGTABLE
;