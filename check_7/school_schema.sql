
DROP TABLE students CASCADE;
DROP TABLE classes CASCADE;
DROP TABLE class_students;


CREATE TABLE students (
	id INTEGER PRIMARY KEY,
	name TEXT
);

CREATE TABLE classes (
	id INTEGER PRIMARY KEY,
	name TEXT,
	capacity INTEGER
);

CREATE TABLE class_students (
	id INTEGER PRIMARY KEY,
	student_id INTEGER REFERENCES students(id),
	class_id INTEGER REFERENCES classes(id),
	grade_earned TEXT
);

INSERT INTO students VALUES
 (1, 'Brady'),
 (2, 'Abraham'),
 (3, 'Sarah'),
 (4, 'Adam'),
 (5, 'Thunder'),
 (6, 'Bolt'),
 (7, 'Kate'),
 (8, 'Nate');

INSERT INTO classes VALUES 
	(1, 'Art', 20),
	(2, 'Math', 40),
	(3, 'Physics', 15),
	(4, 'Calculus', 50),
	(5, 'English', 70),
 	(6, 'Spanish', 10),
 	(7, 'Literature', 20);


INSERT INTO class_students VALUES
	(1,1,1,'A'),
	(2,2,1,'A'),
	(3,3,1,'A'),
	(4,4,1,'B'),
	(5,5,1,'B'),
	(6,1,2,'C'),
	(7,1,4,'D'),
	(8,1,5, 'F')