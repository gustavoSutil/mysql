-- Insert data into classifications table
INSERT INTO classifications (rating) VALUES ('PG'), ('R'), ('PG-13'), ('G');

-- Insert data into genres table
INSERT INTO genres (name) VALUES ('Action'), ('Drama'), ('Comedy'), ('Thriller');

-- Insert data into producers table
INSERT INTO producers (companyName) VALUES ('ABC Studios'), ('XYZ Productions');

-- Insert data into people table (directors and actors)
INSERT INTO people (name, birthDate, role) VALUES
    ('John Director', '1980-01-15', 'Director'),
    ('Jane Actor', '1990-05-20', 'Actor'),
    ('Bob Director', '1975-09-08', 'Director'),
    ('Alice Actor', '1985-03-12', 'Actor');

-- Insert data into movies table
INSERT INTO movies (title, releaseDate, duration, idDirector, idProducer, idClassification) VALUES
    ('Movie 1', '2023-01-01', 120, 1, 1, 1),
    ('Movie 2', '2023-02-15', 105, 2, 2, 2),
    ('Movie 3', '2023-03-20', 90, 1, 1, 3),
    ('Movie 4', '2023-04-10', 130, 3, 2, 4);

-- Insert data into genre_movie table (assign genres to movies)
INSERT INTO genre_movie (idMovie, idGenre) VALUES
    (1, 1), (1, 2), (2, 2), (3, 3), (4, 1), (4, 4);