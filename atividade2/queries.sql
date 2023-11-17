-- list movies with generes:
SELECT m.title, g.name AS genre
FROM movies m
JOIN genre_movie gm ON m.idMovie = gm.idMovie
JOIN genres g ON gm.idGenre = g.idGenre;

-- movies directed by a person:
SELECT m.title, p.name AS director
FROM movies m
JOIN people p ON m.idDirector = p.idPerson
WHERE p.role = 'Director';


-- actors in a specific movie
SELECT m.title, p.name AS actor
FROM movies m
JOIN people_movie pm ON m.idMovie = pm.idMovie
JOIN people p ON pm.idPerson = p.idPerson
WHERE p.role = 'Actor';


-- movies released after 2023-01-01
SELECT title, releaseDate
FROM movies
WHERE releaseDate > '2023-01-01';

-- average duration of movies in each genre:
SELECT g.name AS genre, AVG(m.duration) AS avg_duration
FROM movies m
JOIN genre_movie gm ON m.idMovie = gm.idMovie
JOIN genres g ON gm.idGenre = g.idGenre
GROUP BY g.name;


-- producer and number movies have produced:

SELECT pr.companyName, COUNT(m.idMovie) AS num_movies_produced
FROM producers pr
LEFT JOIN movies m ON pr.idProducer = m.idProducer
GROUP BY pr.companyName;


-- more common ratinged:
SELECT c.rating, COUNT(m.idMovie) AS num_movies
FROM movies m
JOIN classifications c ON m.idClassification = c.idClassification
GROUP BY c.rating
ORDER BY num_movies DESC
LIMIT 1;