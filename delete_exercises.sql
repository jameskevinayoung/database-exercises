USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Search Query';
SELECT name from albums where release_date > 1991;

SELECT 'Albums with the genre disco' AS 'Search Query';
SELECT name from albums where genre = 'Disco';

SELECT 'Albums by Whitney Houston' AS 'Search Query';
SELECT name from albums where artist = 'Whitney Houston';


