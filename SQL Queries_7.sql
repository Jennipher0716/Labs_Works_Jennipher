# 1 actors without same last name.
Use Sakila;
select last_name as fullname
from actor 
group by last_name
having count(*) = 1;

# now both first and last names.
select a.first_name, a.last_name, count(a.last_name) as num_familyname FROM sakila.actor a
GROUP BY a.last_name
HAVING count(a.last_name) = 1;

#2 last names which appear more than once!
SELECT last_name,
 COUNT(last_name) AS NumOccurrences
FROM actor
GROUP BY last_name
HAVING ( COUNT(last_name) > 1 );


#3 how many rentals were processed by each employee?

#4
select release_year, sum(‘release_year’) from sakila.film
group by release_year
order by release_year;

#5: For each rating how many films were there.
select rating, sum('rating') from sakila.film
group by rating
order by rating;

#6: What is the average length of films for each rating? 
select round(AVG(length),2) as avglength, length from sakila.film
group by length;