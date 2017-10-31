1)

Normalization is about making it easier to write data to the database and to avoid having a redundant sets of data. You will be able to sleep easy at night knowing that you won't be introducing bugs in to the data where teh zip code `06109` refers to connecticut in one row and texas in another. You can significantly improve write times, because each bit of data in a table is the unique occurence of that bit of data (so to speak). In this way, if you want to change what a number is referencing, you only need to change it in one location and then because your will be dependant on joins, it will by design be referenced differently everywhere without you having to modify that information (I don't know how to word it better than that).

I don't honestly know a real world situation where it would be super important to create a normalized data set. I can say that if you are doing a lot of writing and not of a lot of data querys, then a normalized data set can help make sure that you have the right data set for the problem.

2)

1NF: Don't each column can only refer to one data point (basically no lists or arrays)

2NF: 1NF + each new column has to be uniquely identified by all the other columns in the table. So you can't tack on another column to a table unless it uniquely belongs on that table because it is uniquely identified and dependent on the information stored in that table.

SO if you have a table A B and C, and A -> B and A -> C without and B -> C relation, then you need to split them into 2 differnet tables to satisfy second normal form

3NF: 2NF + no transitive keys. So if C is dependent on B, and B is dependent on A, then you need to break them into 2 table such that A -> B and then B -> C with A as the key for the first table and B as the key for the second.

BCNF: 3NF and the key for the table has to be the only "super" key for the table. This one doesn't really make as much sense to me if I'm being honest.

3) https://docs.google.com/spreadsheets/d/1elSBJNrIBvHXOScoPrXD0fFUr_8xPiQNiF21L8ZC9qw/edit?usp=sharing

4)

The real disadvantage is that now that each bit of information is on its own table, we are now stuck with doing joins to connect basically anything. This could get really tricky, especially if we need to do searches through multiple joins, which is going to significantly slow down our search potential for any particular bit of information.

5)

So it really would depend on how you wanted to search through the information most frequently. I would probably connect the professors to the subject directly, so that you didn't need a join to make those two connected. I would probably keep the students and grades separate, because I think that it would be more common to search those separately, but if I'm expecting a lot of searching to connect a student to a grade then I would consider putting them together on one table.

Really when you denormalize, whats important is that you consider what you are going to be searching for and optimize around that. I think its important to not go the whole way and put everything on one table, because that is just too much information probably. But make it so that when are often searching then the information is available together.

6)

I feel like we are supposed to discuss this is person, but if you want me to type something up just let me know.



