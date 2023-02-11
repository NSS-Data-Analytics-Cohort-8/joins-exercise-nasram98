1. Give the name, release year, and worldwide gross of the lowest grossing movie.
select *
from specs, revenue

select p1.film_title, p1.release_year, p2.worldwide_gross
From specs AS p1
Inner Join revenue AS p2
Using(movie_id)
Order BY p2.worldwide_gross ASC
 --Semi-Tough has the lowest grossing

2. What year has the highest average imdb rating?
select*
From Rating, specs

SELECT p1.film_title, p1.release_year, AVG(p2.rating.imdb_rating) as avg_p2.imdb_rating
FROM specs AS p1
INNER JOIN rating AS p2
Using(movie_id)
GROUP BY specs.movie_id
ORDER BY avg_imdb_rating DESC

Select p1.release_year,  AVG(p2.imdb_rating) AS avg_rating 
From Specs AS p1
inner join rating AS p2
using(movie_id)
Group By

select release_year, AVG(imdb_rating) AS avg_imdb_rating 
From rating, specs
Group by release_year
Order By avg_imdb_rating DESC
Limit 1
--Year 1988 has the highe average imdb rating

3. What is the highest grossing G-rated movie? Which company distributed it?

4. Write a query that returns, for each distributor in the distributors table, the distributor name and the number of movies associated with that distributor in the movies 
table. Your result set should include all of the distributors, whether or not they have any movies in the movies table.

5. Write a query that returns the five distributors with the highest average movie budget.

6. How many movies in the dataset are distributed by a company which is not headquartered in California? Which of these movies has the highest imdb rating?

7. Which have a higher average rating, movies which are over two hours long or movies which are under two hours?
