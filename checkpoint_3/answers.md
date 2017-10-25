1)

To add information: INSERT INTO table_name (col names) VALUES (values as tuples matching col names);

To update information in an existing table and column: UPDATE table_name SET column_name = value WHERE conditional;

to delete information: DELETE FROM table_name WHERE conditional;

2)

I don't really understand what they are going for here. But the structure is usually something along the lines of ACTION specify table SECONDARY ACTION values stuff WHERE conditional to specify what row

3)

Some types:

Strings (or really var char): This is just a string of characters. Really world examples might be a sentence, paragraph, a whole book, a saying, or really anything because you can secretly store anything as a string (though you probably don't want to)

Integer: A whole number with no decimals, very useful for counting concrete things (like I have 10 people in a group, and I definetely can't have 10.1 people in a group that doens't make any sense)

Numeric: Gives some flexibility about decimals. Stuff like price or averages are probably best stored in numerics

Date: specifys a date. Usually best represented in the real world by a date.

So there are 40 types, so I could go on, but you get the point. The most important thing to remember is that you want to make sure that you use the best type for your data. While I am sure you could do everything with strings, you probably don't want to.

4)

So data types:

First and Last Name: string
RSVP: boolean
number of guests: Integer
number of each meal: Numeric
