-- find all customers first_name, last_name, address, and city
-- Similar to exercise 3 but with customer, address, city
SELECT
	customer.first_name,
    customer.last_name,
    address.address,
    city.city
FROM customer
	LEFT JOIN address
    ON address.address_id = customer.address_id
    LEFT JOIN city
    ON city.city_id = address.city_id