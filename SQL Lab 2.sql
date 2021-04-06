# actors with the first name ‘Scarlett’.
#USE sakila;
#SELECT first_name, last_name
#FROM actor
#WHERE first_name = "Scarlett";

#How many films (movies) are available for rent
#SELECT count(film_id) from inventory;
#1 SELECT COUNT( inventory_id ) as numOffilmsavailable
#FROM rental
#WHERE return_date IS NULL;

#1.1 how many films have been rented?
#SELECT count(rental_id) from rental; 
#SELECT count(rental.rental_id, rental.rental_date)
#FROM rental
#INNER JOIN inventory
#ON inventory.last_update=rental.rental_id

#2 rental.rental_i=rental.rental
#SELECT COUNT(DISTINCT rental_id) FROM rental;

#3 What are the shortest and longest movie duration? 
# Name the values max_duration and min_duration.

#4 Movie duration
# SELECT AVG(length) AS average FROM film;
#or
#SELECT AVG(length) AS average, SUM(length)/COUNT(length) AS 'sum/count' FROM film;

#5
# SELECT COUNT(`last_name`)
#FROM actor;

#6 Since how many days has the company been operating (check DATEDIFF() function)?
#SELECT DATEDIFF(year, '2021/04/02', '2021/04/02') AS DateDiff;

#7 Show rental info with additional columns month and weekday. Get 20 results.
ALTER TABLE rental
ADD month varchar(20);

#ALTER TABLE rental
#ADD weekday varchar(20);

# Insert Values
