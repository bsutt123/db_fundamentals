

DROP TABLE guests CASCADE;
DROP TABLE rooms CASCADE;
DROP TABLE bookings;


CREATE TABLE guests (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	phone_number TEXT,
	email TEXT,
	address TEXT
);

CREATE TABLE rooms (
	id INTEGER PRIMARY KEY,
	room_number INTEGER,
	price NUMERIC(5,2)
);


CREATE TABLE bookings (
	id INTEGER PRIMARY KEY,
	guest_id INTEGER REFERENCES guests(id),
	room_id INTEGER REFERENCES rooms(id),
	check_in_date DATE,
	check_out_date DATE
);

INSERT INTO guests VALUES

	(1, 'Brady', 'Sutton', '9999999999', 'brady@example.com', 'yo1'),
	(2, 'Sarah', 'Mackey', '8888888888', 'sarah@example.com', 'yo2'),
	(3, 'Kate', 'Sutton', '7777777777', 'kate@example.com', 'yo3'),
	(4, 'Nate', 'Sutton', '6666666666', 'nate@example.com', 'yo4'),
	(5, 'Adam', 'Miller', '5555555555', 'adam@example.com', 'yo5');

INSERT INTO rooms VALUES 
	(1, 101, 100.00),
	(2, 102, 100.00),
	(3, 103, 100.00),
	(4, 201, 150.00),
	(5, 202, 150.00),
	(6, 203, 150.00),
	(7, 204, 150.00),
	(8, 301, 300.00),
	(9, 302, 300.00),
	(10, 303, 300.00);

INSERT INTO bookings (id, guest_id, room_id, check_in_date, check_out_date) VALUES
	(1,1,1,'2017-11-11', '2017-11-13'),
	(2,2,2,'2017-11-12', '2017-11-18'),
	(3,1,9,'2017-11-11', '2017-11-13'),
	(4,2,2,'2017-03-04', '2017-03-05'),
	(5,4,2,'2017-01-01', '2017-01-06');



