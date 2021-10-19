-- Question 1

SELECT COUNT(last_name)
FROM actor
WHERE last_name LIKE 'Wahlberg'
-- 2

--Question 2
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99
-- 5607

--Question 3
SELECT film_id,COUNT(film_id)
from inventory
GROUP BY film_id
order by COUNT(film_id) DESC;
-- multiple films at 8 

--Question 4
SELECT last_name
FROM customer
WHERE last_name LIKE 'William'
--None??

--Question 5
Select MAX(staff_id)
FROM rental
--ID 2 

--Question 6
SELECT COUNT(district)
FROM Address
--603

--Question 7
SELECT film_id, actor_id
FROM film_actor
GROUP BY film_id, actor_id
ORDER BY MAX(actor_id) DESC;
--multiple at 200

--Question 8
SELECT last_name, store_id = 1
FROM customer
GROUP BY last_name, store_id
HAVING last_name LIKE '%es'
--Not sure if this is right 

--Question 9
SELECT customer_id, COUNT(amount) 
FROM payment
GROUP BY customer_id, amount
HAVING customer_id BETWEEN 380 and 430
 amount > 250


--Question 10
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
--PG-13