DROP TABLE dogs;

CREATE TABLE dogs (
	id integer,
	name text,
	gender text,
	age integer,
	weight integer,
	intake_date date,
	breed text,
	in_foster boolean
);

DROP TABLE adoptions;

CREATE TABLE adoptions(
	id INTEGER PRIMARY KEY,
	dog_id INTEGER REFERENCES dogs(id),
	adopter_id INTEGER REFERENCES adopters(id)
);

DROP TABLE adopters;

CREATE TABLE adopters(
	id integer PRIMARY KEY,
	first_name text,
	last_name text,
	address text,
	phone_number text
);

DROP TABLE volunteers;

CREATE TABLE volunteers(
	id INTEGER PRIMARY KEY,
	name TEXT,
	address TEXT,
	phone_number TEXT,
	available_to_foster BOOLEAN,
	foster_id INTEGER REFERENCES dogs(id)
);