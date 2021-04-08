#1 : Use the RANK() and the table of your choice rank films by length
Use Sakila;
select title, length, rank() over (partition by f.length) as 'Rank'
from sakila.film f
where length <> ' ' or length is not null;
select round(AVG(length),2) as avglength, length from sakila.film
group by length;

#2 : Build on top of the previous query and rank films by length within the rating category
select rating, title, length, rank() over (partition by rating 
order by length desc) from film;


#3:How many films are there for each of the categories?
SELECT c.name, count(fc.film_id) as amount_films
FROM sakila.category as c 
JOIN sakila.film_category as fc 
ON c.category_id = fc.category_id
GROUP BY c.name;

#4 : Which actor has appeared in the most films?
SELECT actor_id, count(film_id) as count_film from film_actor
GROUP BY actor_id
  ORDER BY count_film desc
LIMIT 1; 

#5 Most active customer (the customer that has rented the most number of films)
select count(rental_id) as tot_rent, customer_id from payment
group by customer_id 
order by tot_rent desc
limit 1



