SELECT * FROM employees FULL OUTER JOIN shifts ON employees.id = shifts.employee_id;

SELECT * FROM employees CROSS JOIN shifts;