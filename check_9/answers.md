1) A Subquery is where you basically query your target table using another select statment on a different table. 

2) Most commonly its in the WHERE clause, but you can also use it in the SELECT and the FROM part of the query.

3) When you want to apply logic from one table to a different table. Like I want the professors based on this compensation, I want the students based on this grade, etc... You can do the same thing with a JOIN, but sometimes if you don't want to display information from both tables but instead want to query one table based on the other, its a better way to go about it.

4) It is used to match a subquery on some predefined row, so if you are looking very specifically for this row, you can make it without that row being a part of any table in particular.

5) I think what they are getting as is that if your row constructor is true, except that one of the values is null as opposed to true, then the row constructor will return NULL instead of true or false.

6)

EXISTS: true if at least one of the rows is returned 

NOT EXISTS: true if none of the rows are returned

IN: true if at least one matching row

NOT IN: true if none of the rows match the given conditional

ALL: true if every row given evaluates to true

SOME or ANY: true if at least one row matches the given conditional

12:

So overall, Subqueries and Joins are 2 side of the same coin. Put simply, joins seem to do a better job when they are being used to display information from 2 tables that are linked in some way, while subqueries are better or faster at displaying information from one table that is based on a comparison of another table.

Truly though the best thing you can do is to use both where they are appropriate. Maybe you want to do a JOIN to display information from both tables, but you JOIN on a subqueried table so that you are only JOINING the necessary values rather than the entire table which then gets whittled down with comparison logic. While each is useful in its own right, you have to understand how to use them together to get the true value out of both.

