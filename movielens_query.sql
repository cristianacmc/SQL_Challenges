USE movielens;
-- 1 - List the titles and release dates of movies released between 1983-1993 in reverse chronological order.
/*
SELECT title, release_date
FROM movies 
WHERE release_date BETWEEN "1983-01-01" AND "1993-12-31"
ORDER BY release_date;
*/

-- 2 - Without using LIMIT, list the titles of the movies with the lowest average rating.
CREATE VIEW avgratings AS (
SELECT r.movie_id AS movie_id, m.title AS movie_title, AVG(r.rating) AS avg_rating
FROM ratings r
INNER JOIN movies m
ON m.id = r.movie_id
GROUP BY r.movie_id
);

SELECT movie_id, movie_title, avg_rating 
FROM  avgratings
WHERE avg_rating = (SELECT MIN(avg_rating) FROM avgratings);

-- 3 - List the unique records for Sci-Fi movies where male 40-year-old students have given 5-star ratings.
/*
SELECT DISTINCT *
from movies m
INNER JOIN genres_movies gm
	ON m.id = gm.movie_id
INNER JOIN genres g
	ON gm.genre_id = g.id
INNER JOIN ratings r
	ON m.id = r.movie_id
INNER JOIN users u
	ON r.user_id = u.id
WHERE g.name = "Sci-Fi"
AND r.rating = 5
AND u.gender = "M"
AND u.age = 40;
*/
-- 4 - List the unique titles of each of the movies released on the most popular release day.
-- CREATE VIEW distinct_movies
-- AS 
/*	SELECT title, release_date, COUNT(title) AS most_popular
	FROM movies 
	GROUP BY release_date
	ORDER BY most_popular DESC

--SELECT DISTINCT title 
-- FROM distinct_movies;
*/
-- Find the total number of movies in each genre; list the results in ascending numeric order.

