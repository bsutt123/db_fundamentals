DROP TABLE professor;

CREATE TABLE professor (
	id integer,
	professor text,
	department_id integer
);

COPY professors (id, name, department_id) FROM '/home/brady/bloc/database_csv/hogwarts-professors.csv' DELIMITER ',' CSV;

DROP TABLE department;

CREATE TABLE department (
	id integer,
	department_name text
);

COPY departments (id, department_name) FROM '/home/brady/bloc/database_csv/hogwarts-departments.csv' DELIMITER ',' CSV;

DROP TABLE compensation;

CREATE TABLE compensation (
	id integer,
	professor_id integer,
	salary integer,
	vacation_days integer
);

COPY compensations (id, professor_id, salary, vacation_days) FROM '/home/brady/bloc/database_csv/hogwarts-compensations.csv' DELIMITER ',' CSV;