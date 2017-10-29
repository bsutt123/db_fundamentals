DROP TABLE books;
DROP TABLE patrons;
DROP TABLE transactions CASCADE;
DROP TABLE holds CASCADE;

CREATE TABLE books (
	id INTEGER PRIMARY KEY,
	isbn INTEGER,
	title TEXT,
	author TEXT
);

CREATE TABLE transactions (
	id INTEGER PRIMARY KEY,
	checked_in_date DATE,
	checked_out_date DATE,
	user_id INTEGER REFERENCES patrons(id),
	book_id INTEGER REFERENCES books(id)
);

CREATE TABLE holds (
	id INTEGER PRIMARY KEY,
	book_id INTEGER REFERENCES books(id),
	user_id INTEGER REFERENCES patrons(id),
	rank INTEGER,
	state_date DATE
);

CREATE TABLE patrons (
	id INTEGER PRIMARY KEY,
	name text,
	fines integer
);