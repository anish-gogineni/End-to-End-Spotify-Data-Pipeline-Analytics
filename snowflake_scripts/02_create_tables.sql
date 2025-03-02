-- creating a database
CREATE OR REPLACE DATABASE spotify_project;

-- creating the album table
CREATE OR REPLACE TABLE SPOTIFY_PROJECT.PUBLIC.tbl_Album(
    album_id STRING,
    name STRING,
    album_release_date DATE,	
    total_tracks INTEGER,
    url STRING
);

--  creating the artist table
CREATE OR REPLACE TABLE SPOTIFY_PROJECT.PUBLIC.tbl_Artist(
    artist_id STRING,
    artist_name	STRING,
    external_url STRING
);

-- creating the songs table
CREATE OR REPLACE TABLE SPOTIFY_PROJECT.PUBLIC.tbl_Songs(
    song_id	STRING,
    song_name STRING,
    duration_ms	BIGINT,
    url	STRING,
    popularity INTEGER,	
    song_added	DATE,
    album_id STRING,
    artist_id STRING
);

