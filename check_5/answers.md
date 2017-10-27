1) 

SUM: sum of an entire colummn, likely should only be used when we have numerics or integers of some kind, and an average of a string is nonsensical. If I wanted to know the total in my bank account I would sum the transactions (assuming that deposits are positive numbers and withdrawals are negative)

AVG: average of an entire column. Again, only usually is going to make sense with numerics, because you really don't need to average strings (most likely). If we are looking at the average length of all the papers written by a class for an assignment we might average the word length.

COUNT: counts the number of entries in a column. Is not restricted to numerics, because we might want to count the number of `true` boolean entries in order to know how many people are in for some office trip.

MAX: maximum number in a column. Usually going to make the most sense with a numeric, but maybe you could use it with a character to find the highest starting character of string so you can see the last person in a list. But yeah mostly numerics

MIN: MIN number in a column. Again, usually numerics are going to make the most sense but you could possible use this with strings to do somethign crafty. But probably not.

3) I would use an ORDER BY statement to make it ordered by a particular column.

4) perhaps I want to find everyone in a list who isn't the top 3, so I would use and OFFSET from the top of the list 

5) Otherwise, you won't know what you might be limiting too. LIke if you just Limit to 20, you want to know which 20 you are limiting.

6) HAVING is meant to be used in GROUP BY, whereas WHERE is meant to be used for single rows of data. HAVING is meant eliminate an entire group based on a conditional.

7) SELECT SUM(amount) AS total_amount, id FROM payment
WHERE total_amount >  200;

8)

SELECT * FROM cats ORDER BY intake_date;

SELECT * FROM adoptions ORDER BY date LIMIT 5;

SELECT * FROM cats WHERE age >= 2 GROUP BY gender HAVING gender = 'F';

SELECT donor FROM donations GROUP BY donor ORDER BY SUM(amount) LIMIT 5;

