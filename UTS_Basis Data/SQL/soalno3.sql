CREATE TABLE employee_salary (
    employee_ID INT,
    employee_name VARCHAR(50),
    salary INT,
    allowance INT
);

INSERT INTO employee_salary (employee_ID, employee_name, salary, allowance)
VALUES
(1, 'Alex', 25000, 1000),
(2, 'John', 55000, 1000),
(3, 'James', 52000, 1000),
(4, 'Sam', 30000, 1000);

SELECT * FROM kariawan.employee_salary;
SELECT employee_ID, employee_name, (salary + allowance) AS total_compensation
FROM kariawan.employee_salary;

SELECT AVG(salary) AS average_salary
FROM kariawan.employee_salary;

SELECT employee_ID, employee_name, salary, allowance, (salary + allowance) AS total_compensation
FROM kariawan.employee_salary
WHERE salary + allowance < 40000;


ALTER TABLE kariawan.employee_salary ADD Tax INT;
UPDATE kariawan.employee_salary
SET Tax = ROUND((salary + allowance) * 0.11);

SELECT employee_ID, employee_name, salary, allowance, Tax
FROM kariawan.employee_salary;

