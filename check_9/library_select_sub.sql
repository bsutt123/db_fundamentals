/* Show all customers who are waiting in line for Harry Potter and the sorcerers stone */

SELECT user_id, s.name
FROM holds,
(SELECT id, name FROM patrons) AS s
WHERE holds.book_id = 1
AND holds.user_id = s.id
ORDER BY holds.rank;


/* Show all books and if they are checked out or not */

SELECT books.title, t.checked_out_date FROM books 
LEFT JOIN 
(SELECT book_id, checked_out_date, checked_in_date 
	FROM transactions 
	WHERE checked_in_date IS NULL 
	AND checked_out_date IS NOT NULL) AS t ON books.id = t.book_id;

/* Show all books that were checked out for more than a month */
SELECT books.title
FROM books
WHERE books.id IN 
(SELECT book_id
	FROM transactions 
	WHERE date_part('day', now()-transactions.checked_out_date) < 30);

/* all books that haven't been checked out in the past 5 years */

SELECT books.title 
FROM books
WHERE books.id IN 
(SELECT book_id
FROM transactions
WHERE date_part('year', now()) - date_part('year',checked_in_date) >= 5
AND checked_in_date IS NOT NULL);

/* list all patrons and the book they currently have checked out.*/

SELECT patrons.name, books.title AS checked_out_title FROM patrons LEFT JOIN
(SELECT id, user_id, book_id FROM transactions WHERE checked_in_date IS NULL) AS t ON patrons.id = t.user_id
LEFT JOIN books ON books.id = t.book_id;