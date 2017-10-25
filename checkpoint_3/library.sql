CREATE TABLE books (
	id integer,
	isbn integer,
	title text,
	author text,
	genre text,
	publishing_date date,
	number_of_copies integer,
	available_copies	integer
)

INSERT INTO books VALUES
(1, 0765350386, 'Mistborn: The Final Empire', 'Brandon Sanderson', 'Science Fiction', '07-31-2007', 2, 2);

INSERT INTO books VALUES 
(2, 0765356139, 'Mistborn: The Well of Ascension', 'Brandon Sanderson', 'Science Fiction', '06-03-2008', 2, 2);

INSERT INTO books VALUES
(3, 0765356147, 'Mistborn: The Hero of Ages', 'Brandon Sanderson', 'Science Fiction', '04-28-2009', 2, 2);

UPDATE books SET available_copies=1 WHERE id=1;

DELETE FROM books WHERE id=3;