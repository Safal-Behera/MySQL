WITH CTE_EXAMPLE AS
(
SELECT gender,AVG(salary) AS AVGSAL,MIN(salary) MINSAL,MAX(salary) MAXSAL,COUNT(salary) COUNTSAL
FROM employee_demographics DEM
JOIN employee_salary SAL
ON DEM.employee_id=SAL.employee_id
GROUP BY gender
)
SELECT AVG(AVGSAL)
FROM CTE_EXAMPLE
;




WITH CTE_EXAMPLE AS
(
SELECT employee_id,gender,birth_date
FROM employee_demographics 
WHERE birth_date>'1985-01-01'
),
CTE_EXAMPLE2 AS
(
SELECT employee_id,salary
FROM employee_salary
WHERE salary>50000
)
SELECT *
FROM CTE_EXAMPLE
JOIN CTE_EXAMPLE2 ON
CTE_EXAMPLE.employee_id=CTE_EXAMPLE2.employee_id
;