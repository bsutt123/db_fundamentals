DROP TABLE flights CASCADE;
DROP TABLE transactions CASCADE;
DROP TABLE airplanes;

CREATE TABLE airplanes (
	id INTEGER PRIMARY KEY,
	model TEXT,
	capacity INTEGER,
	range INTEGER
);

CREATE TABLE flights (
	id INTEGERN PRIMARY KEY,
	flight_number TEXT,
	destination TEXT,
	origin TEXT,
	company TEXT,
	flight_time TEXT,
	airplane_id INTEGER REFERENCES airplanes(id)
);

CREATE TABLE transactions (
	id INTEGER PRIMARY KEY,
	seats_sold INTEGER,
	total_revenue INTEGER,
	total_cost INTEGER,
	date_sold DATE,
	flight_id INTEGER REFERENCES flights(id)
);



