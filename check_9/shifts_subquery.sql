/* show every shift and employee */

SELECT * FROM employees;
SELECT * FROM shifts;



/* select every employee for every shift */
SELECT e.*, s.employee_id, s.start, s.finish FROM employees AS e, shifts AS s;