-- QUESTIONS
 
-- 1 Select the title of all movies.
 
 SELECT TITLE FROM Movies;
 
-- 2 Show all the distinct ratings in the database.

SELECT DISTINCT RATING FROM Movies;

-- 3  Show all unrated movies.

SELECT * FROM Movies WHERE RATING IS NULL ;

-- 4 Select all movie theaters that are not currently showing a movie.

 SELECT * FROM MovieTheaters WHERE MOVIE IS NULL;

-- 5 Select all data from all movie theaters and, additionally, the data from the movie that is being shown in the theater (if one is being shown).

SELECT * 
FROM MovieTheaters t1
LEFT JOIN  Movies t2
ON t1.movie = t2.code;

-- 6 Select all data from all movies and, if that movie is being shown in a theater, show the data from the theater.

SELECT * 
FROM MovieTheaters t1
RIGHT JOIN  Movies t2
ON t1.movie = t2.code;

-- 7 Show the titles of movies not currently being shown in any theaters.

SELECT t2.title 
FROM MovieTheaters t1
RIGHT JOIN  Movies t2
ON t1.movie = t2.code
WHERE t1.movie IS NULL;

-- 8 Add the unrated movie "One, Two, Three".

 INSERT INTO Movies(Code,Title,Rating) VALUES(9,'One, Two, Three',NULL);

-- 9 Set the rating of all unrated movies to "G".

UPDATE Movies SET RATING = "G" WHERE RATING IS NULL;

-- 10 Remove movie theaters projecting movies rated "NC-17".

DELETE FROM MovieTheaters
WHERE  Movie IN (SELECT CODE FROM Movies WHERE RATING = "NC-17");

 
 