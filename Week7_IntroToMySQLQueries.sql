USE employees;
SELECT * FROM employees WHERE birth_date = '1965-01-01';
SELECT * FROM employees WHERE gender = 'F' AND hire_date > '1990-12-31';
SELECT first_name, last_name FROM employees WHERE last_name LIKE ('F%');
INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date)
	VALUES (100, '1992-04-16', 'George', 'Warsaw', 'M', '2012-08-10'),
    (101, '1995-09-21', 'Maria', 'Bonito', 'F', '2014-11-02'),
	(102, '1989-06-18', 'Candice', 'Yair', 'F', '2012-08-10');
UPDATE employees SET first_name = 'Bob' WHERE emp_no = 10023;
SET SQL_SAFE_UPDATES = 0;
UPDATE employees SET hire_date = '2002-01-01' WHERE first_name LIKE ('P%') OR last_name LIKE ('P%');
SET SQL_SAFE_UPDATES = 1;
DELETE FROM employees WHERE emp_no < 10000;
DELETE FROM employees WHERE emp_no in (10048, 10099, 10234, 20089);