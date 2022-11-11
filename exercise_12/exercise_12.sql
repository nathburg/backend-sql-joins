-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT SUM(payment.amount), city.city
FROM rental
    LEFT JOIN payment
    ON payment.rental_id = rental.rental_id
	LEFT JOIN customer
    ON customer.customer_id = rental.customer_id
    LEFT JOIN address
    ON address.address_id = customer.address_id
    LEFT JOIN city
    ON city.city_id = address.city_id
GROUP BY city.city_id
ORDER BY SUM(payment.amount) DESC
LIMIT 10