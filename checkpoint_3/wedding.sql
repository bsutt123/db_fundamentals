CREATE TABLE guests (
	id integer,
	name text,
	rsvp boolean,
	guests integer,
	meals numeric(2,1)
);


ALTER TABLE guests ADD COLUMN thank_you boolean SET DEFAULT false;

ALTER TABLE guests DROP COLUMN meals;

ALTER TABLE guests ADD COLUMN table_number integer SET DEFAULT 0;

DROP TABLE guests

