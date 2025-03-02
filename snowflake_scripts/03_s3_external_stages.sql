-- creating a new file format for csv files
CREATE OR REPLACE file format MANAGE_DB.FILE_FORMATS.csv_fileformat
    TYPE = csv
    FIELD_DELIMITER = ","
    SKIP_HEADER = 1
    FIELD_OPTIONALLY_ENCLOSED_BY = '"'
    NULL_IF = ('NULL', 'null')
    EMPTY_FIELD_AS_NULL = TRUE;


-- Create stage objects with integration object & file format object

-- Album bucket
CREATE OR REPLACE STAGE MANAGE_DB.EXTERNAL_STAGES.album_bucket
    URL= 's3://spotify-etl-project-anish-gogineni/transformed_data/album_data/'
    STORAGE_INTEGRATION = spotify_s3_integration
    FILE_FORMAT = MANAGE_DB.FILE_FORMATS.csv_fileformat;

-- Artist bucket
CREATE OR REPLACE STAGE MANAGE_DB.EXTERNAL_STAGES.artist_bucket
    URL= 's3://spotify-etl-project-anish-gogineni/transformed_data/artist_data/'
    STORAGE_INTEGRATION = spotify_s3_integration
    FILE_FORMAT = MANAGE_DB.FILE_FORMATS.csv_fileformat;
    
-- Songs bucket
CREATE OR REPLACE STAGE MANAGE_DB.EXTERNAL_STAGES.songs_bucket
    URL= 's3://spotify-etl-project-anish-gogineni/transformed_data/songs_data/'
    STORAGE_INTEGRATION = spotify_s3_integration
    FILE_FORMAT = MANAGE_DB.FILE_FORMATS.csv_fileformat;
