DELIMITER $$
CREATE TRIGGER EMPINSERT
AFTER INSERT ON employee_salary
FOR EACH ROW
BEGIN
INSERT INTO employee_demographics(employee_id,first_name,last_name)
VALUES(NEW.employee_id,NEW.first_name,NEW.last_name);
END $$
DELIMITER ;


INSERT INTO employee_salary
VALUES(13,'SIDDHARTH','ORAON','ENTERTAINMENT 720 CEO',1000000,NULL);

SELECT * FROM employee_salary;

SELECT * FROM employee_demographics;

-- EVENTS
DELIMITER $$
CREATE EVENT DEL_RETIREES
ON SCHEDULE EVERY 30 SECOND 
DO
BEGIN
DELETE FROM employee_demographics 
WHERE age >= 60;
END $$
DELIMITER ;