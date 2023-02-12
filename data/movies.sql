1. Give the name, release year, and worldwide gross of the lowest grossing movie.

select p1.film_title, p1.release_year, p2.worldwide_gross
From specs AS p1
Inner Join revenue AS p2
Using(movie_id)
Order BY p2.worldwide_gross ASC
Limit 1
 --Semi-Tough has the lowest grossing

2. What year has the highest average imdb rating?

select AVG(rating.imdb_rating) AS Avg_rating_imdb_rating, specs.release_year
From rating
inner join specs
ON rating.movie_id = specs.movie_id
Group By specs.release_year
Order By AVG_rating_imdb_rating DESC
Limit 1

--year 1991 has the highest Average imdb rating

3. What is the highest grossing G-rated movie? Which company distributed it?

Select revenue.worldwide_gross, specs.mpaa_rating, specs.film_title, specs.domestic_distributor_id, revenue, specs
From revenue
Inner Join specs
On revenue.movie_id = specs.movie_id

SELECT specs.film_title, revenue.worldwide_gross, distributors.company_name
FROM revenue
JOIN specs 
ON revenue.movie_id = specs.movie_id
JOIN distributors
ON specs.domestic_distributor_id = distributors.distributor_id
WHERE specs.mpaa_rating = 'G'
ORDER BY revenue.worldwide_gross DESC
limit 1
---Highest grossing G-rated movie is Toy Story 4 and company name is Walt Disney

SELECT worldwide_gross, mpaa_rating, film_title
FROM revenue AS r
inner Join specs AS s
ON r.movie_id = s.movie_id
Where mpaa_rating = 'G'
OR mpaa_rating is NULL
Order By worldwide_gross DESC
Limit 1
---Highest grossing G-rated movie is Toy Story 4 

4. Write a query that returns, for each distributor in the distributors table, the distributor name and the number of movies associated with that distributor in the movies 
table. Your result set should include all of the distributors, whether or not they have any movies in the movies table.

SELECT distributors.company_name, COUNT(specs.movie_id) as movie_count
FROM distributors
LEFT JOIN specs 
ON distributors.distributor_id = specs.domestic_distributor_id
GROUP BY distributors.company_name

5. Write a query that returns the five distributors with the highest average movie budget.

SELECT distributors.company_name, AVG(revenue.film_budget) AS avg_budget
FROM distributors
JOIN specs ON distributors.distributor_id = specs.domestic_distributor_id
JOIN revenue ON specs.movie_id = revenue.movie_id
GROUP BY distributors.company_name
ORDER BY avg_budget DESC
LIMIT 5
--Walt Disney, Sony Pictures, Lionsgate, DreamWorks, and Warner Bros. 

6. How many movies in the dataset are distributed by a company which is not headquartered in California? Which of these movies has the highest imdb rating?

SELECT s.film_title, r.imdb_rating, d.company_name, d.headquarters, d.distributor_id
From specs AS s
Full JOIN rating AS r
ON s.movie_id = r.movie_id
full join distributors AS d
ON d.distributor_id= s.domestic_distributor_id



select*
From distributors, rating

7. Which have a higher average rating, movies which are over two hours long or movies which are under two hours?
