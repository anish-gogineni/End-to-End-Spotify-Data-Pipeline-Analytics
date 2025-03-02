-- integrating AWS s3 with snowflake
CREATE OR REPLACE STORAGE INTEGRATION spotify_s3_integration
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = s3
    ENABLED = TRUE
    STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::xxxx:role/spotify-snowflake-s3-connection'
    STORAGE_ALLOWED_LOCATIONS = ('s3://spotify-etl-project-anish-gogineni/')
    comment = 'Creating connection to s3 spotify project';

DESC INTEGRATION spotify_s3_integration;

