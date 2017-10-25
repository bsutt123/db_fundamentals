CREATE TABLE spacecrafts (
	id integer,
	name text,
	year_launched integer,
	country text,
	mission_description text,
	orbiting_body text,
	operating boolean,
	distance_from_earth integer
);

INSERT INTO spacecrafts VALUES (
	1,
	'EchoStar-1',
	1995,
	'USA',
	"Direct Broadcasting",
	'Earth',
	true,
	26199
);

INSERT INTO spacecrafts VALUES (
	2,
	'Ciel-2',
	2008,
	'Canada',
	'Direct Broadcasting',
	'Earth',
	true,
	26250
);

INSERT INTO spacecrafts VALUES (
	3,
	'MEASAT-3',
	2006,
	'Malaysia',
	'Broadcast and Communications',
	'Earth'
	true,
	26199	
);


DELETE FROM spacecrafts WHERE id=1;

UPDATE spacecrafts SET operating = false WHERE id=3;

