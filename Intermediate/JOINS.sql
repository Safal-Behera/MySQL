SELECT *
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
ON DEM.employee_id = SAL.employee_id;

SELECT DEM.employee_id,age,occupation
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
ON DEM.employee_id = SAL.employee_id;

SELECT *
FROM employee_demographics AS DEM
RIGHT JOIN employee_salary AS SAL
ON DEM.employee_id = SAL.employee_id;


SELECT EMP1.employee_id AS EMP1SANTA,
EMP1.first_name AS EMP1SANTA_FIRSTNAME,
EMP1.last_name AS EMP1SANTA_LASTNAME,
EMP2.employee_id AS EMP2SANTA,
EMP2.first_name AS EMP2SANTA_FIRSTNAME,
EMP2.last_name AS EMP2SANTA_LASTNAME
FROM employee_salary AS EMP1
JOIN employee_salary AS EMP2
ON EMP1.employee_id+1 = EMP2.employee_id;

-- JOINING MULTIPLE TABLES

SELECT *
FROM employee_demographics AS DEM
INNER JOIN employee_salary AS SAL
ON DEM.employee_id = SAL.employee_id
INNER JOIN parks_departments AS PD
ON SAL.dept_id=PD.department_id
;