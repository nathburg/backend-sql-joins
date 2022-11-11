-- the average film length by category
-- include the category name and avg length
SELECT AVG(film.length), category.name
FROM film
	LEFT JOIN film_category
    ON film_category.film_id = film.film_id
    LEFT JOIN category
    ON category.category_id = film_category.category_id
GROUP BY category.name