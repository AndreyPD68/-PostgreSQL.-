SELECT name, year_of_production FROM album
WHERE year_of_production = 2018;

SELECT name, duration FROM song
WHERE duration = (SELECT max(duration) FROM song);

SELECT name, duration FROM song
WHERE duration >= 210;

SELECT name FROM collection
WHERE year_of_production BETWEEN 2018 AND 2020;

SELECT name FROM artist
WHERE name NOT LIKE '% %'

SELECT name FROM song
WHERE lower(name) LIKE '%my%' OR lower(name) LIKE '%мой%';