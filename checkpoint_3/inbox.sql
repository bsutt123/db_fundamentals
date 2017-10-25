CREATE TABLE emails (
	id integer,
	subject text,
	sender text,
	cc text,
	body text,
	read  boolean,
	chain_id integer,
	created_at timestamp
);

INSERT INTO emails VALUES (
	1,
	'Muffins',
	'mindy@bloc.io',
	'',
	'You got any more of them muffins?',
	false,
	1,
	TIMESTAMP '2017-09-21 19:00:00'
);

INSERT INTO emails VALUES (
	2,
	'Muffins required!',
	'bill@bloc.io',
	'',
	'Word on the street is that you know where the muffin man is. That true?',
	false,
	3,
	TIMESTAMP '2017-09-21 19:07:00'
);

INSERT INTO emails VALUES (
	3,
	'See me',
	'me@bloc.io',
	'me@bloc.io',
	'Please see me in my office. I have some muffins for you',
	false,
	2,
	TIMESTAMP '2017-09-21 19:09:00'
);


DELETE FROM emails WHERE id=1;


UPDATE emails SET cc = 'bill@bloc.io, mindy@bloc.io' WHERE id=3;




