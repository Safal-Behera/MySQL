SELECT first_name,last_name,age,
CASE
	WHEN age<=30 THEN 'YOUNG'
	WHEN age BETWEEN 30 AND 50 THEN 'OLD'
	WHEN age>=50 THEN 'ON BRINK OF DETH'
END AS AGEBRAKET
FROM employee_demographics
;

-- <50000 5%
-- >50000 7%
-- FINANCE 10% BONUS
SELECT first_name,last_name,salary,
CASE
WHEN salary<50000 THEN salary +( salary*0.05)
WHEN salary>50000 THEN salary+(salary*0.07)
END AS RAISE,
CASE
WHEN dept_id=6 THEN salary+(salary*0.1)
END AS BONUS
FROM employee_salary
;


