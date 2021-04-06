#1 Review the tables in the database.
#use sakila;
#2 show tables;
#select * from actor;
#select * from address;
#select * from category;
#select * from city;
#select * from customer;
#select * from film;
#select * from country;
#select * from film_actor;
#select * from film_text;
#select * from inventory;
#select * from language;
#select * from payment;
#select * from rental;
#select * from staff;
#select * from store;

#3 Select one column from a table. Get film titles.
#select title from film;film_categoryactor

#4 Select one column from a table and alias it. 
#use sakila;
#select actor_id as ID, first_name as FN from actor;

# unique list of film languages under the alias language
#select * from language;
#select * language from film as distinct language;


# Reviewing how many records are returned
#5 select count(return_date) from rental;
#select count(last_update) from rental;
#select count(staff_id) from staff;
#select count(store_id) from store;
#select first_name
#from staff;

#6 Unique rent days
select * rental_days from rental;