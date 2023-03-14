CREATE TABLE if not EXISTS Artist (
artist_id SERIAL PRIMARY KEY,
artist_name VARCHAR(40) not NULL
);

CREATE TABLE if not EXISTS Genre (
genre_id SERIAL PRIMARY KEY,
genre_name VARCHAR(40) not NULL
);

CREATE TABLE if not EXISTS ArtistGenre (
artist_id INTEGER NOT NULL REFERENCES Artist,
genre_id INTEGER NOT NULL REFERENCES Genre,
PRIMARY key (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Album (
album_id SERIAL PRIMARY KEY,
album_name VARCHAR(40) unique NOT NULL,
year_of_production INTEGER NOT NULL 
);


CREATE TABLE if not EXISTS ArtistAlbum (
artist_id INTEGER NOT NULL REFERENCES Artist,
album_id INTEGER NOT NULL REFERENCES Album,
PRIMARY key (artist_id, album_id)
);

CREATE TABLE if not EXISTS Song (
song_id SERIAL PRIMARY KEY,
album_id INTEGER NOT NULL REFERENCES Album,
song_name VARCHAR(60) NOT NULL,
duration TIME NOT NULL
);

CREATE TABLE if not EXISTS Collection (
collection_id SERIAL PRIMARY KEY,
collection_name VARCHAR(40) not null,
year_of_production INTEGER NOT null
);

CREATE TABLE if not EXISTS SongCollection (
collection_id INTEGER NOT NULL REFERENCES Collection,
song_id INTEGER NOT NULL REFERENCES song,
PRIMARY key (collection_id, song_id)
);