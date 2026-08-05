-- WINDOW FUNCTIONS
SELECT DEM.first_name,DEM.last_name,AVG(salary) OVER(PARTITION BY gender) AS AVGSAL
FROM employee_demographics AS DEM
JOIN employee_salary AS SAL
ON DEM.employee_id=SAL.employee_id;


SELECT DEM.first_name,
DEM.last_name,salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY DEM.employee_id) AS ROLLING_TOTAL
FROM employee_demographics AS DEM
JOIN employee_salary AS SAL
ON DEM.employee_id=SAL.employee_id;

SELECT DEM.employee_id,DEM.first_name,
DEM.last_name,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS ROW_NUM,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS RANK_NUM,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS DENSE_RANK_NUM
FROM employee_demographics AS DEM
JOIN employee_salary AS SAL
ON DEM.employee_id=SAL.employee_id;
