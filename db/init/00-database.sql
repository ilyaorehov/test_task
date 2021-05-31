CREATE DATABASE redmine;
CREATE USER redmineuser WITH PASSWORD 'mysecretpassword';
GRANT ALL PRIVILEGES ON redmine to redmineuser;