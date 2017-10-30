/* Find all students who have taken a class */

SELECT classes.name, students.name FROM classes
JOIN class_students AS cs ON classes.id = cs.class_id
JOIN students ON students.id = cs.student_id
WHERE classes.name = 'Art';


/* find all the grades for a particular class (in this case art) */

SELECT cs.grade_earned, COUNT(cs.id) FROM classes AS c
JOIN class_students AS cs ON c.id = cs.class_id
WHERE c.id = 1
GROUP BY cs.grade_earned;


/* give the count of number of students in each class */

SELECT c.name, COUNT(cs.id) FROM classes AS c
JOIN class_students AS cs ON c.id = cs.class_id
GROUP BY c.name;

/* determine the class with the most students and return the count */

SELECT c.name, COUNT(cs.id) AS student_count FROM classes AS C
JOIN class_students AS cs ON c.id = cs.class_id
GROUP BY c.name
ORDER BY student_count DESC LIMIT 1;
