-- таблица жанров
INSERT INTO genre(genre_name)
VALUES 
	('hip-hop'),
	('metal'),
	('dico'),
	('rock'),
	('pop');

-- таблица исполнителей
INSERT INTO artist(artist_name)
VALUES 
	('Eminem'),
	('Snoop dogg'),
	('Rammstein'),
	('Linkin Park'),
	('ABBA'),
	('Modern Talking'),
	('Queen'),
	('Scorpions'),	
	('Olivia Rodrigo'),
	('Taylor Swift');

-- таблица альбомов
INSERT INTO album(album_name, year_of_production)
VALUES 
	('Kamikaze', 2018),
	('Doggystyle', 1993),
	('Queen in Vision', 2008),
	('One More Light', 2020),
	('Ring Ring', 1973),
	('Romantic Warriors', 1987),
	('The Miracle', 1989),
	('Face the Heat', 1993),
	('Sour', 2021),
	('Midnights', 2022);
	
	

-- таблица трэков
INSERT INTO song(album_id, song_name, duration)
VALUES 
	(1, 'The Ringer', '0:05:37'),
	(1, 'Kamikaze', '0:03:36'),
	(2, 'House Party', '0:00:37'),	
	(2, 'Checkin', '0:02:21'),
	(3, 'Du riechst so gut', '0:04:49'),
	(4, 'Talking to Myself', '0:03:51'),
	(4, 'Sorry for Now', '0:03:23'),
	(5, 'Shes My Kind of Girl', '0:02:39'),
	(5, 'Ring Ring', '0:03:03'),
	(6, 'Like A Hero', '0:03:45'),
	(6, 'You And Me', '0:04:04'),
	(7, 'Rain Must Fall', '0:04:22'),
	(7, 'Scandal', '0:04:42'),
	(8, 'Alien Nation', '0:05:42'),
	(8, 'Woman', '0:05:55'),
	(8, 'I Want It All', '0:04:40'),	
	(9, 'Happier', '0:02:55'),
	(9, 'Hope Ur Ok', '0:03:29'),
	(10, 'Midnight Rain', '0:02:54'),
	(10, 'Labyrinth', '0:03:24');

--таблица коллекций
INSERT INTO collection(collection_name, year_of_production)
VALUES 
	('rock collection', 2005),
	('gold collection', 1998),
	('hip-hop collection', 1999),
	('collection 90', 2010),
	('collection 80', 2018),
	('collection 70', 2006);

--таблица коллекций и трэков
INSERT INTO songcollection(collection_id, song_id)
VALUES 
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(2, 13),
	(2, 7),
	(2, 3),
	(3, 1),
	(3, 2),
	(3, 3),
	(3, 4),
	(4, 3),
	(4, 4),
	(4, 15),
	(4, 16),
	(5, 6),
	(6, 10),
	(6, 11);

	

--таблица музыкантов и альбомов
INSERT INTO artistalbum(artist_id, album_id)
VALUES 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10);

--таблица музыкантов и жанров
INSERT INTO artistgenre (artist_id, genre_id)
VALUES 
	(1, 1),
	(1, 4),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 3),
	(6, 3),
	(7, 4),
	(8, 4),
	(9, 5),
	(10, 5);
