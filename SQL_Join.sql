# Inspect the database structure and find the best-fitting table to analyse for the next task.
# Using multiple JOIN() clauses display the store ID, city, and country of each store.
# Display the total payment amount for each store.
# What is the average film length per each category? Which category of films are the longest?
# Display the 2 most frequently rented movies in descending order.
# Display the top 5 categories with highest revenue (payment amount) in descending order.
# Is the Academy Dinosaur movie available for rent from Store 1? If yes, display the title, store_id and inventory_id of the available copies of that movie.



 Use Sakila;
#1 multiple JOIN() clauses display the store ID, city, and country of each store.

SELECT store_id, city, country 
FROM store
  INNER JOIN address
USING(address_id)
  INNER JOIN city
USING(city_id)
  INNER JOIN country
USING(country_id); 

#2: Display the total payment amount for each store.
SELECT amount, SUM(amount) FROM payment GROUP BY amount;

# 3: What is the average film length per each category? Which category of films are the longest?

select title, length, rank() over (partition by f.length) as 'Rank'
from sakila.film f
where length <> ' ' or length is not null;
select round(AVG(length),2) as avglength, length from sakila.film
group by category

SELECT c.name, count(fc.film_id) as amount_films
FROM sakila.category as c 
JOIN sakila.film_category as fc 
ON c.category_id = fc.category_id
GROUP BY c.name;

#4 : Display the 2 most frequently rented movies in descending order.

SELECT film_id, title, count(film_id) As times_rented
    FROM rental AS r
LEFT JOIN inventory AS i 
   USING(inventory_id)
LEFT JOIN film AS fl
   USING(film_id)
GROUP BY film_id
    ORDER BY times_rented DESC limit 2
    
#5:  Display the top 5 categories with highest revenue (payment amount) in descending order.

select category_id, sum(payment) as rev
    from payment as p
join rental as r
    using(rental_id)
join category as c
   using (category_id)
group by category_id
    order rev desc limit 5 (failed)


# 6 Is the Academy Dinosaur movie available for rent from Store 1? 
#If yes, display the title, store_id and inventory_id of the available copies of that movie.

select *
from inventory;
select film_id, title, count(film_id)
from inventory as i
where store_id = 1
inner join film as f
using (film_id)
group by film_id
having title = 'Academy Dinosaur';