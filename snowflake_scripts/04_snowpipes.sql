-- creating schema for snowpipes to keep things organized
CREATE OR REPLACE SCHEMA MANAGE_DB.pipes;

-- creating a pipe to populate the album table
CREATE OR REPLACE PIPE MANAGE_DB.PIPES.album_pipe
    AUTO_INGEST = TRUE
AS
COPY INTO SPOTIFY_PROJECT.PUBLIC.tbl_Album
FROM @MANAGE_DB.EXTERNAL_STAGES.album_bucket;

-- finding the pipe details (notification channel)
DESC PIPE MANAGE_DB.PIPES.album_pipe;

------------------------------------------------------------

-- creating a pipe to populate artist data
CREATE OR REPLACE PIPE MANAGE_DB.PIPES.artist_pipe
 AUTO_INGEST = TRUE
AS
COPY INTO SPOTIFY_PROJECT.PUBLIC.tbl_Artist
FROM @MANAGE_DB.EXTERNAL_STAGES.ARTIST_bucket;

-- finding the pipe details (notification channel)
DESC PIPE MANAGE_DB.PIPES.artist_pipe;

------------------------------------------------------------

-- creating a pipe to populate artist data
CREATE OR REPLACE PIPE MANAGE_DB.PIPES.songs_pipe
    AUTO_INGEST = TRUE
AS
COPY INTO SPOTIFY_PROJECT.PUBLIC.tbl_Songs
FROM @MANAGE_DB.EXTERNAL_STAGES.songs_bucket;

-- finding the pipe details (notification channel)
DESC PIPE MANAGE_DB.PIPES.songs_pipe;