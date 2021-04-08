USE sakila;
#1
SELECT * FROM film;
SELECT release_year FROM film;

#Q2:
SELECT * FROM film
WHERE title like 'armageddo%';

#Q3:
SELECT * FROM film
WHERE title like '%apollo';

#Q4:
SELECT * FROM film
ORDER BY length desc
limit 10;

#Q5:
SELECT COUNT(film_id) as tot_mov_extras from film 
WHERE special_features like '%Behind the Scenes';

#Q6:
 ALTER TABLE staff DROP picture;
 select * from staff;
 
 #Q7:
INSERT INTO staff (staff_id, first_name, last_name, address_id, store_id, username, password)
VALUES (3, 'Tammy', 'Sanders', 5, 2,'tammy', 'skjfifdiabsifasvifb' );

#Q8:
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select film_id from film
where title like 'Academy%';

select * from inventory
where film_id = 1;

select * from rental;
INSERT INTO rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES (1999, '2015-05-31 00:46:31', 3, 130, '2015-06-31 00:46:31,1', '2015-05-31 00:46:31');
