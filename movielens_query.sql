USE movielens;
-- 1 - List the titles and release dates of movies released between 1983-1993 in reverse chronological order.
/*
SELECT title, release_date
FROM movies 
WHERE release_date BETWEEN "1983-01-01" AND "1993-12-31"
ORDER BY release_date;
*/

-- 2 - Without using LIMIT, list the titles of the movies with the lowest average rating.
/*SELECT m.title, r.rating 
FROM movies m
NATURAL JOIN ratings r
ORDER BY r.rating 
*/

-- 3 - List the unique records for Sci-Fi movies where male 40-year-old students have given 5-star ratings.
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

-- 4 - List the unique titles of each of the movies released on the most popular release day.
/*SELECT DISTINCT title 
FROM movies 
WHERE 
 */