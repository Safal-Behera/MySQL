SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;


SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1;

SELECT gender,AVG(age) AS AVG_AGE
FROM employee_demographics
GROUP BY gender
HAVING AVG_AGE>40;