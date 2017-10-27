1) I think it would be...

String <br>
Integer <br>
Date  <br>
Float <br>
Float <br>

2) Databases need to be used when informations needs to persist for an application and many users might need to access and modify the data at any given time. If there is only one person who needs to persist the data, then a text file might be more appropriate if it is easier to program in that way. But if you program using a text file then want to expand it to even 2 people accessing at the same time, then you are going to run into problems, so to me it is probably better to just design it to use a database in the first place.

3) SQL is declarative, meaning that I say what I want to do rather than how I want it done. SQL is more about get this from the database or find this, rather than do these particular steps in order.

4) tables hold all the information associated with some part of the database. a column will have a datatype and will hold all the rows values for a particular part of the table, like all the ages, or all the names, etc... A row will hold all the pertinent information for one database entry, like everything associated with the person named Sally. Finally values are the particular intersection of the tables row and column.

5) I don't understand how this is different than question 4...

6) String, Integer, Date

7) 

Select the date and amount columns from the payments table

Select the amounts from the payments table where the amount is greater than 500


Select all columns from the payment table where the payee is Mega Foods

8)

SELECT email, signup FROM users WHERE name = 'DeAndrea Data'

SELECT userid FROM users WHERE email = 'aleesia.algorithm@wuw.edu'

SELECT * FROM users WHERE userid = 4

