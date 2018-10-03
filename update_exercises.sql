USE codeup_test_db;

SELECT 'All albums' AS 'SEARCH QUERY';
SELECT name FROM albums.;
SELECT 'All albums released prior to 1980' AS 'SEARCH QUERY';
SELECT name FROM albums Where release_date < 1980;
SELECT 'Albums by Michael Jackson' AS 'SEARCH QUERY';
SELECT name FROM albums Where artist = Michael Jackson;