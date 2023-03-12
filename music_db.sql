CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS ArtistGenre (
	Genre_id INTEGER REFERENCES Genre(id),
	Artist_id INTEGER REFERENCES Artist(id),
	CONSTRAINT pk_ArtistGenre PRIMARY KEY (Genre_id, Artist_id)
);


CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) unique NOT NULL,
	year_of_production INTEGER NOT NULL 
);


CREATE TABLE IF NOT EXISTS ArtistAlbum (
	Album_id INTEGER REFERENCES Album(id),
	Artist_id INTEGER REFERENCES Artist(id),
	CONSTRAINT pk_ArtistAlbum PRIMARY KEY (Album_id, Artist_id)
);


CREATE TABLE IF NOT EXISTS Song (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration INTEGER,
	Album_id INTEGER REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) unique NOT NULL,
	year_of_production INTEGER NOT NULL 
);

CREATE TABLE IF NOT EXISTS SongCollection (
	Song_id INTEGER REFERENCES Song(id),
	Collection_id INTEGER REFERENCES Collection(id),
	CONSTRAINT pk_SongCollection PRIMARY KEY (Song_id, Collection_id)
);