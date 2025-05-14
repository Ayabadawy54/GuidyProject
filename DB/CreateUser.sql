-- Create a login at the server level
CREATE LOGIN guidy_user WITH PASSWORD = 'Yoyo';

-- Create a user in the Guidy database
USE Guidy;
CREATE USER guidy_user FOR LOGIN guidy_user;

-- Grant permissions (adjust as needed)
ALTER ROLE db_owner ADD MEMBER guidy_user;
