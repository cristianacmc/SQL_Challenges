USE movielens;
-- List the titles and release dates of movies released between 1983-1993 in reverse chronological order.
/*
SELECT title, release_date
FROM movies 
WHERE release_date BETWEEN "1983-01-01" AND "1993-12-31"
ORDER BY release_date;
*/

-- Without using LIMIT, list the titles of the movies with the lowest average rating.
SELECT m.title, r.rating 
FROM movies m
NATURAL JOIN ratings r
ORDER BY r.rating 
