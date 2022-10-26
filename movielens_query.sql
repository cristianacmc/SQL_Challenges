USE movielens;

SELECT title, release_date
FROM movies 
WHERE release_date BETWEEN "1983" AND "1993"
ORDER BY release_date;