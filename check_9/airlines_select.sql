/* find all flights where there were over 100 paying customers */

SELECT * FROM airplanes WHERE id IN
(SELECT airplane_id FROM flights WHERE flight_id IN
(SELECT flight_id, COUNT(id) AS count
 FROM transactions GROUP BY flight_id HAVING count >= 100 ));

/* find destination origin pair with greater than 90% sold */

SELECT flights.id, flights.model FROM flights JOIN 
(SELECT flight_id, SUM(seats) AS seat_count FROM transactions GROUP BY flight_id) AS seat_counts
ON flights.id = seat_counts.flight_id 
WHERE seat_counts.seat_count >= flights.capacity * 0.9;

/* Find the reveneue of any flight into or out of Atlanta */

SELECT SUM(flight_revenues.total_revenue) FROM
(SELECT total_revenue FROM transactions 
WHERE destination = 'Atlanta'
OR origin = 'Atlanta') AS flight_revenues;