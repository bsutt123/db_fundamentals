DROP TABLE employees CASCADE;
DROP TABLE shifts CASCADE;

CREATE TABLE employees(
	id INTEGER PRIMARY KEY,
	name text
);


INSERT INTO employees VALUES
	(1, 'Brady'),
	(2, 'Erica'),
	(3, 'Mariesa'),
	(4, 'Mercedes');


CREATE TABLE shifts(
	id INTEGER PRIMARY KEY,
	employee_id INTEGER REFERENCES employees(id),
	start text,
	finish text
);


INSERT INTO shifts (id, start, finish) VALUES
	(1, '8:00', '15:30'),
	(2, '10:00', '14:00'),
	(3, '7:00',  '17:00'),
	(4,'15:00', '23:00');



