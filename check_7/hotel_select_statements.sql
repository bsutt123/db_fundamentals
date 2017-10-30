
/* all guests that haven't had a booking yet*/

SELECT * FROM guests LEFT JOIN bookings ON guests.id = bookings.guest_id WHERE bookings.guest_id IS NULL;


/* provides the first name, last name and the 2 different ids of same check in dates with different rooms */

SELECT (guests.first_name, guests.last_name, a.id) FROM bookings AS a 
JOIN bookings AS b ON a.guest_id = b.guest_id 
JOIN guests
ON a.guest_id = guests.id
WHERE a.id != b.id
AND a.check_in_date = b.check_in_date
AND a.check_out_date = b.check_out_date;


/* same guests one room different check in days */

SELECT (guests.first_name, guests.last_name, a.*) FROM bookings AS a
JOIN bookings AS b ON a.guest_id = b.guest_id
JOIN guests
ON a.guest_id = guests.id
WHERE a.id != b.id
AND a.room_id = b.room_id
AND  a.check_in_date != b.check_in_date
AND a.check_out_date != b.check_out_date;

/* number of unique guests who have booked each room */

SELECT COUNT(DISTINCT(guest_id)) as unique_guests, room_id FROM bookings 
GROUP BY room_id;