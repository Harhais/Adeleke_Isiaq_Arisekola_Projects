SELECT first_name, last_name, email FROM customer;
SELECT DISTINCT (rating) FROM film;
SELECT COUNT (*) FROM customer
WHERE first_name = 'Jared';
SELECT email FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';
SELECT description FROM film
WHERE title = 'Outlaw Hanky';
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;
SELECT title, length FROM film
ORDER BY length ASC
LIMIT 5;
SELECT COUNT (*) FROM film
WHERE length <= 50;
SELECT COUNT (amount) FROM payment
WHERE amount > 5;
SELECT COUNT (first_name) FROM customer
WHERE first_name LIKE 'P%';
SELECT COUNT (DISTINCT (district)) FROM address;
SELECT DISTINCT (district) FROM address;
SELECT staff_id, COUNT (amount) FROM payment
GROUP BY staff_id
ORDER BY COUNT (amount) DESC
LIMIT 2;
SELECT rating, ROUND (AVG (replacement_cost),2) FROM film
GROUP BY rating;
SELECT customer_id, SUM (amount) FROM payment
GROUP BY customer_id
ORDER BY SUM (amount) DESC
LIMIT 5;
SELECT customer_id, COUNT (amount) FROM payment
GROUP BY customer_id
HAVING COUNT (amount) >= 40;
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = '2'
GROUP BY customer_id
HAVING SUM(amount) > 100;
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = '2'
GROUP BY customer_id
HAVING SUM(amount) >= 110;
SELECT COUNT (title) FROM film
WHERE title LIKE 'J%';
SELECT first_name, Last_name FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500
ORDER BY address_id DESC
LIMIT 1;
SELECT district, email FROM customer
INNER JOIN address
ON address.address_id = customer.address_id
WHERE district = 'California';
SELECT first_name, last_name, title FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg';
SELECT DISTINCT (TO_CHAR(payment_date, 'MONTH')) FROM payment;
SELECT COUNT (TO_CHAR(payment_date, 'DAY')) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;
SELECT film_id, title FROM film
WHERE film_id IN (SELECT film_id FROM rental
INNER JOIN inventory
ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id ASC;
SELECT A1.title, A2.title, A1.length FROM film AS A1
INNER JOIN film AS A2 ON
A1.film_id != A2.film_id
AND A1.length = A2.length;
SELECT * FROM cd.facilities;
SELECT name, membercost FROM cd.facilities;
SELECT * FROM cd.facilities
WHERE membercost > 0;
SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost < (monthlymaintenance/50)
ORDER BY membercost DESC
LIMIT 2;
SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%';
SELECT * FROM cd.facilities
WHERE facid IN (1, 5);
SELECT memid, surname, firstname FROM cd.members
WHERE joindate BETWEEN '2012-09-01' AND '2012-10-01';
SELECT DISTINCT surname FROM cd.members
ORDER BY surname ASC
LIMIT 10;
SELECT joindate FROM cd.members
ORDER BY joindate DESC
LIMIT 1;
SELECT COUNT (guestcost) FROM cd.facilities
WHERE guestcost >= 10;
SELECT facid, SUM(slots) FROM cd.bookings
WHERE starttime > '2012-09-01' AND starttime < '2012-10-01'
GROUP BY facid
ORDER BY SUM(slots) ASC;
SELECT facid, SUM(slots) FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid ASC;
SELECT starttime, name 
FROM cd.bookings
INNER JOIN cd.facilities ON cd.facilities.facid = cd.bookings.facid
WHERE name LIKE '%Tennis Court%' 
AND starttime BETWEEN '2012-09-21' AND '2012-09-22'
ORDER BY starttime ASC;
SELECT surname, firstname, starttime FROM cd.members
INNER JOIN cd.bookings
ON cd.members.memid = cd.bookings.memid
WHERE surname = 'Farrell' AND firstname = 'David'