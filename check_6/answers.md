1) Think that what they are asking is how I would correlate data that is held in two separate but related tables, and I would probalby do that with an INNER JOIN on those 2 tables.

2) 

CROSS JOIN: to me the cross join reveals every thing that _could_ be. It strips out the inner join, and displays all the information of how one table could be connected to the other table without any explicit connections. LIke maybe I have 6 shifts and 6 employees, I could cross join and see all the combinations of shifts possible (it should come out to 36)

INNER JOIN: the classic join scenario that you imagine. This is where we use a foreign key to connect every element in a table to a row in another table (assuming the value is not null). Assuming we start assigning shifts, the inner join table would be only a list of people who had been assigned to a shift, not including anyone not assigned to a shift or a shift without a person

LEFT OUTER JOIN: Includes the inner join, but also keeps every value from the first table that is being joined to that doesn't have a corresponding foreign key and makes the value null. Useful for if you are assigning people to a shift like before, but this time you want to see all the shifts you have assigned so far, plus all the people you haven't assinged to a shift yet

RIGHT OUT JOIN: Includes the inner join, but also will keep a column from the table you are joining from that is null. Using the worker shifts as an example, you could include all the shifts you have assigned, plus see all the shifts that have not been assigned to anyone yet using a right outer join

FULL OUTER JOIN: Includes the inner join, but will also include anything from the joined two table that isn't included in the inner join with a `null` entry and any row from the joined `from` table with a `null` entry. So again using the shifts, We would have our inner joined table, we would have all the values from the employees that don't have a shift will a `null` entry for the shift, and we would have all the shifts with a `null` entry for the employee. It is kind of the whole kit and kapoodle if you will


3)

primary key: the unique id that won't be repeated within the table for this rows identification inside its own table.

foreign key: points at the id of a row in another table. Usually a foreign key in one table will be the primary key in the table that you want to join on.

4) Aliasing is just making it so that SQL can recognize a shorter or more concise or appropriate. Perhaps you have a long table name or an aggregate function and it is better to use `SUM(amount) as total_amount` than to keep typing `SUM(amount)` or maybe you want to do `donations as d` to avoid typing `donations` on a Join

5) `SELECT p.name, c.salray, c.vacation_days FROM professor AS p JOIN compensation AS c ON p.id = c.professor_id;`

6)  A NATURAL JOIN is when you make a join that will join 2 tables based on a column name that is the same in both tables. Maybe we have a list of favorite treats with a name of a person in `name` and a favorite treat in `fav_treat`. Then we also have a list of birthdays in with `name` and `birthday` respectively. A NATURAL JOIN on these two tables would use the `name` column that exists in both tables a basis for joining a `fav_treat` to a `birthday`. While it seems like it could be nice, I think that the explicit nature of the primary key foreign key, which I think leaves a lot less room for human error.

7) So I just wanted to say, I didn't read this question before making up the answers for number 2! what a coincidence.


 