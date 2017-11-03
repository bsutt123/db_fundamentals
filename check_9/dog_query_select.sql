/* LIst all volunteers and whatever dog they are fostering if any */

SELECT v.name as volunteer, (SELECT dogs.name FROM dogs WHERE dogs.id = v.foster_id) as foster_dog_name
FROM volunteers AS v;

/* List all adopted pets with their adopters name */

SELECT 
(SELECT adopters.name FROM adopters WHERE adopters.id = adoptions.adopter_id) as adopter,
(SELECT dogs.name FROM dogs WHERE dogs.id = adoptions.dog_id) as dog
FROM adoptions;


/* create a list of all possible non-adopted dogs and adoptees */

SELECT adopters.name AS free_adopters, dogs.name AS free_dogs 
FROM adopters, dogs
WHERE adopters.id NOT IN (SELECT adopter_id FROM adoptions)
AND dogs.id NOT IN (SELECT dog_id FROM adoptions);

/* display all dogs that have not yet been selected (in the original problem where was no cats database yet so I just did dogs, but the display is very similar) */

SELECT * 
FROM dogs
WHERE id NOT IN (SELECT dog_id FROM adoptions);


/* create a list of all volunteers available to foster */

SELECT volunteers.name, volunteers.phone_number, free_dogs.name 
FROM volunteers, 
(SELECT dogs.name FROM dogs WHERE id NOT IN (SELECT dog_id FROM adoptions)) as free_dogs
WHERE volunteers.foster_id IS NULL 

/* Find out who adopted seashell from the adoptions table. DOUBLE NESTED SUBQUEREY FOR THE WIN */

SELECT adopters.name
FROM adopters
WHERE adopters.id IN 
(SELECT adopter_id FROM adoptions WHERE adoptions.cat_id IN
(SELECT id FROM cats WHERE cats.name = 'Seashell'));

