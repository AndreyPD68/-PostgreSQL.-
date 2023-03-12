INSERT INTO genre (name) VALUES 
	('rap'),
	('metal'),
	('jazz'),
	('rock'),
	('pop');

INSERT INTO artist (name) values
	('Lil Peep'),
	('Blackbear'),
	('Till Lindemann'),
	('Freddie Mercury'),
	('Richard Galliano'),
	('Leon Sash'),
	('Michael Jackson'),
	('Elton John');

INSERT INTO	album (name, year_of_production) VALUES
 	('album_1', 1983),
	('album_2', 1990),
	('album_3', 1995),
 	('album_4', 2000),
	('album_5', 2004),
	('album_6', 2012),
 	('album_7', 2018),
	('album_8', 2022);
	   
INSERT INTO song (name, duration, album_id) VALUES
	('16 Lines', 440, 1), 
	('Runaway', 150, 1),
	('Mind Games', 165, 2), 
	('About You', 215, 2),
	('Frau & Mann', 200, 3), 
	('Platz Eins', 290, 3),
	('Time', 140, 4), 
	('Love Is The Hero', 250, 4),
	('Sensuel', 190, 5), 
	('Cloche', 400, 5),
	('I Remember Newport', 190, 6), 
	('Misty', 365, 6),
	('Big Boy', 160, 7), 
	('Window Shopping', 235, 7),
	('Merry Christmas', 250, 8),
	('Finish Line', 130, 8);
	
INSERT INTO collection (name, year_of_production) VALUES 
	('Collection_1', 1984), 
	('Collection_2', 1996), 
	('Collection_3', 2001), 
	('Collection_4', 2005), 
	('Collection_5', 2013), 
	('Collection_6', 2019), 
	('Collection_7', 2023),
	('Collection_8', 2019);
	
INSERT INTO artistgenre (genre_id , artist_id) VALUES
	(1, 1),
	(1, 2),
	(2, 3),
	(4, 4),
	(3, 5),
	(4, 6),
	(5, 7),
	(5, 8);
	
INSERT INTO artistalbum (artist_id, album_id) VALUES 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8);
	
INSERT INTO songcollection (collection_id, song_id) VALUES
	(1, 1),
	(1, 2),
	(2, 3),
	(3, 4),
	(3, 5),
	(4, 6),
	(5, 7),
	(5, 8),
	(6, 9),
	(6, 10),
	(7, 11),
	(7, 12),
	(7, 13),
	(8, 14),
	(8, 15),
	(8, 16);