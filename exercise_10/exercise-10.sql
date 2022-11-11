-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
SELECT category.name
	FROM inventory
    LEFT JOIN film
    ON film.film_id = inventory.film_id
    LEFT JOIN film_category
    ON film_category.film_id = film.film_id
    LEFT JOIN category
    ON category.category_id = film_category.category_id
    LEFT JOIN rental
    ON rental.inventory_id = inventory.inventory_id
WHERE rental.rental_date IS NULL 