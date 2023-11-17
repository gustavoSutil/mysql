-- Create database
CREATE DATABASE IF NOT EXISTS movie_rental;
USE movie_rental;

-- Create table for movies
CREATE TABLE movies (
    idMovie INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    releaseDate DATE,
    duration INT, -- Duration in minutes
    idDirector INT,
    idProducer INT,
    idClassification INT,
    FOREIGN KEY (idDirector) REFERENCES people(idPerson),
    FOREIGN KEY (idProducer) REFERENCES producers(idProducer),
    FOREIGN KEY (idClassification) REFERENCES classifications(idClassification)
);

-- Create table for people (includes directors and actors)
CREATE TABLE people (
    idPerson INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birthDate DATE,
    role ENUM('Director', 'Actor') NOT NULL
);

-- Create table for classification (e.g., PG, R, etc.)
CREATE TABLE classifications (
    idClassification INT AUTO_INCREMENT PRIMARY KEY,
    rating VARCHAR(10) NOT NULL
);

-- Create table for genres
CREATE TABLE genres (
    idGenre INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Create table for genre-movie relationship (many-to-one)
CREATE TABLE genre_movie (
    idMovie INT,
    idGenre INT,
    PRIMARY KEY (idMovie, idGenre),
    FOREIGN KEY (idMovie) REFERENCES movies(idMovie),
    FOREIGN KEY (idGenre) REFERENCES genres(idGenre)
);

-- Create table for movie producers
CREATE TABLE producers (
    idProducer INT AUTO_INCREMENT PRIMARY KEY,
    companyName VARCHAR(100) NOT NULL
);