DROP TABLE volunteers CASCADE;
DROP TABLE adoptions CASCADE;
DROP TABLE dogs;
DROP TABLE adopters;

CREATE TABLE dogs (
	id integer PRIMARY KEY,
	name text,
	gender text,
	age integer,
	weight integer,
	intake_date date,
	breed text,
	in_foster boolean,
	adopted boolean
);

INSERT INTO dogs VALUES
	(1, 'Thunder', 'F', 3, 35, '2015-04-10', 'pitbull french bulldog', false, true),
	(2, 'Bolt', 'M', 1, 75, '2017-01-01', 'labrador mix', false, true),
	(3, 'Buster', 'M', 4, 66, '2017-02-03', 'border collie', true, false),
	(4, 'Sophie', 'F', 6, 54, '2017-10-12', 'pointer', false, false);



CREATE TABLE adopters(
	id integer PRIMARY KEY,
	name text,
	address text,
	phone_number text
);

INSERT INTO adopters VALUES
	(1, 'Brady Sutton', '33 Drawbridge Court', '919-525-8369'),
	(2, 'Sarah Mackey', '100 Needle Park Drive', '323-425-2345'),
	(3, 'Kate Sutton', '19 Harmund Place', '123-323-1421'),
	(4, 'Adam Miller', '404 Wolf View Drive', '123-456-7890');




CREATE TABLE volunteers(
	id INTEGER PRIMARY KEY,
	name TEXT,
	address TEXT,
	phone_number TEXT,
	available_to_foster BOOLEAN,
	foster_id INTEGER REFERENCES dogs(id)
);

INSERT INTO volunteers (id, name, address, phone_number, available_to_foster, foster_id) VALUES 
	(1, 'Jackie', 'hi there','123-454-5434',true, NULL),
	(2, 'Bill', 'jack sparrow drive', '345-555-5555', false, 3),
	(3, 'John', 'Nighty night', '777-777-7777', false, NULL);


CREATE TABLE adoptions(
	id INTEGER PRIMARY KEY,
	dog_id INTEGER REFERENCES dogs(id),
	adopter_id INTEGER REFERENCES adopters(id)
);

INSERT INTO adoptions VALUES 
 (1, 1, 2),
 (2, 2, 1);