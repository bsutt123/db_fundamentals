DROP TABLE books CASCADE;
DROP TABLE patrons CASCADE;
DROP TABLE transactions;
DROP TABLE holds;

CREATE TABLE books (
	id INTEGER PRIMARY KEY,
	isbn TEXT,
	title TEXT,
	author TEXT
);


INSERT INTO books VALUES
(1, '89023049823', 'Harry Potter and the Sorcerer''s Stone','JK Rowling'),
(2, '09239482039', 'Harry Potter and the Chamber of Secrets', 'JK Rowling'),
(3, '09239482012', 'Harry Potter and the Prisoner of Azkaban', 'JK Rowling'),
(4, '09239482123', 'Harry Potter and the Goblet of Fire', 'JK Rowling'),
(5, '09239483455', 'Harry Potter and the Order of the Pheonix', 'JK Rowling'),
(6, '09239486666', 'Harry Potter and the Half Blood Prince', 'JK Rowling'),
(7, '09239477345', 'Harry Potter and the Deathly Hallows', 'JK Rowling');



CREATE TABLE patrons (
	id INTEGER PRIMARY KEY,
	name text,
	fines integer
);

INSERT INTO patrons VALUES
(1, 'Brady', 0),
(2, 'Sarah', 0),
(3, 'Adam', 4),
(4, 'Kate', 10);

CREATE TABLE transactions (
	id INTEGER PRIMARY KEY,
	checked_out_date DATE,
	checked_in_date DATE,
	user_id INTEGER REFERENCES patrons(id),
	book_id INTEGER REFERENCES books(id)
);

INSERT INTO transactions VALUES
(1, '2017-11-1', NULL, 1 ,1),
(2, '2017-10-20', '2017-10-22',2,2);

CREATE TABLE holds (
	id INTEGER PRIMARY KEY,
	book_id INTEGER REFERENCES books(id),
	user_id INTEGER REFERENCES patrons(id),
	rank INTEGER,
	state_date DATE
);

INSERT INTO holds VALUES
(1, 1, 1, 1, '2017-11-1'),
(2, 1, 2, 2, '2017-11-1'),
(3, 1, 4, 3, '2017-11-1'),
(4, 1, 3, 4, '2017-11-1');
