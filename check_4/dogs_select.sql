SELECT (name, gender, age) FROM dogs WHERE breed LIKE '%labrador%';

SELECT (id) FROM dogs WHERE age < 1;

SELECT (name, age) FROM dogs WHERE gender = 'F' AND weight > 35;

SELECT * FROM dogs WHERE breed NOT LIKE '%shepherd%';

SELECT (id, age, weight, breed) FROM dogs WHERE weight > 60 OR breed = 'great dane';