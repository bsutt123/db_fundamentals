/* Question 8 */

SELECT * FROM volunteers LEFT JOIN dogs ON volunteers.foster_id = dogs.id;

SELECT adopters.name AS adopter_name, dogs.name AS dog_name 
FROM adoptions 
JOIN adopters ON adoptions.adopter_id = adopters.id
JOIN dogs ON adoptions.dog_id = dogs.id;

SELECT * FROM adopters 
LEFT JOIN adoptions
ON adopters.id = adoptions.adopter_id
CROSS JOIN dogs
WHERE adoptions.adopter_id IS NULL
AND dogs.adopted = false;

SELECT * FROM dogs 
LEFT JOIN adoptions
ON dogs.id = adoptions.dog_id
WHERE adoptions.dog_id IS NULL;

SELECT * FROM volunteers
FULL OUTER JOIN dogs
ON volunteers.foster_id = dogs.id
WHERE volunteers.id IS NOT NULL
OR dogs.in_foster = false
AND dogs.adopted = false;

/* Question 9 */

SELECT adopter.name, cats.name FROM adopter
JOIN adoptions
ON adoptions.adopter = adopter.id
JOIN adoptions
ON adoptions.cat = cats.id
WHERE cat = "Seashell";

/* Question 10 */

