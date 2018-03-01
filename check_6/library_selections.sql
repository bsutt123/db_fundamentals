/* Question 10 */

SELECT * FROM holds
JOIN patrons
ON holds.user_id = patrons.id
GROUP BY holds.book_id;

SELECT * FROM books 
LEFT JOIN transactions
ON books.id = transations.book_id
WHERE NOW() >= transactions.checkout_out_date
AND transactions.checked_in_date IS NULL;


SELECT SUM(checked_in_date - checkout_out_date) as total_time_out
FROM transactions
GROUP BY transactions.isbn
ORDER BY total_time_out DESC
WHERE checkout_out_date IS NOT NULL;

SELECT * FROM books
JOIN transactions
ON books.id = transactions.book_id
WHERE (NOW() - transactions.checked_in_date) > 5
AND transactions.checked_in_date IS NOT NULL;

SELECT * FROM patrons
JOIN transactions
ON patrons.id = transactions.user_id
JOIN books
ON transactions.book_id = books.id;














