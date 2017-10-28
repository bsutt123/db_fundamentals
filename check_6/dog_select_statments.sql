SELECT * FROM volunteers LEFT JOIN dogs ON volunteers.foster_id = dogs.id;

SELECT adopters.name AS adopter_name, dogs.name AS dog_name 
FROM adoptions 
JOIN adopters ON adoptions.adopter_id = adopters.id
JOIN dogs ON adoptions.dog_id = dogs.id;

SELECT * FROM adopters 
CROSS JOIN dogs 
WHERE adopters.dog_id IS NULL AND dogs.adopted = false;