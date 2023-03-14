--Название и год выхода альбомов, вышедших в 2018 году.
SELECT album_name, year_of_production FROM album
WHERE year_of_production = 2018; 

--Название и продолжительность самого длительного трека.
SELECT song_name, duration FROM song
WHERE duration = (SELECT max(duration) FROM song);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT song_name, duration FROM song
WHERE duration >= '0:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_name FROM collection
WHERE year_of_production BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT artist_name FROM artist
WHERE artist_name NOT LIKE '% %'

--Название треков, которые содержат слово «мой» или «my».
SELECT song_name FROM song
WHERE lower(song_name) LIKE '%my%' OR lower(song_name) LIKE '%мой%';

--Количество исполнителей в каждом жанре.
select genre_name, COUNT(artist_id) quantity FROM genre g 
JOIN artistgenre a ON g.genre_id = a.genre_id 
GROUP BY g.genre_name  
ORDER BY quantity DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(*) from song s 
WHERE album_id IN (SELECT album_id from album a WHERE year_of_production = 2019 OR year_of_production = 2020);

--Средняя продолжительность треков по каждому альбому.
SELECT a.album_name, DATE_TRUNC('second', AVG(duration)) average_duration FROM album a
JOIN song s ON s.album_id = a.album_id
GROUP BY a.album_name 
ORDER BY average_duration DESC;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT artist_name FROM artist a2
WHERE artist_id NOT IN (
	SELECT artist_id FROM artistalbum a3 
	JOIN album a ON a.album_id = a3.album_id AND a.year_of_production = 2020
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT collection_name FROM collection c 
JOIN songcollection sc ON c.collection_id = c.collection_id 
JOIN song s ON s.song_id = sc.song_id 
JOIN album a ON a.album_id = s.album_id 
JOIN artistalbum aa ON a.album_id = s.album_id 
JOIN artist a2 ON a2.artist_id = a2.artist_id 
WHERE a2.artist_name = 'Linkin Park'

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.album_name FROM album a 
JOIN artistalbum a2 ON a.album_id = a2.album_id 
JOIN artist a3 ON a2.artist_id = a3.artist_id 
JOIN artistgenre a4 ON a2.artist_id = a4.artist_id 
GROUP BY a.album_name 
HAVING COUNT(DISTINCT a4.genre_id)>1;

--Наименование треков, которые не входят в сборники
SELECT s.song_name FROM song s 
WHERE s.song_id  NOT IN (SELECT s2.song_id  FROM songcollection s2);

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек

SELECT artist_name FROM artist a
JOIN artistalbum aa ON a.artist_id = aa.artist_id 
JOIN album a2 ON aa.album_id = a2.album_id 
JOIN song s ON a2.album_id = s.album_id 
WHERE s.duration = (SELECT min(duration) FROM song s2);

--Названия альбомов, содержащих наименьшее количество треков.

SELECT a.album_name, COUNT(a.album_name) count FROM album a
JOIN song s ON a.album_id = s.album_id 
GROUP BY a.album_name
HAVING COUNT(s.song_name) = (
SELECT COUNT(s.song_name) count FROM album a 
JOIN song s ON a.album_id = s.album_id 
GROUP BY a.album_name 
ORDER BY count ASC
LIMIT 1
);
