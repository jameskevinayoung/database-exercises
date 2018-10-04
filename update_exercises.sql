USE codeup_test_db;
Truncate albums;

SELECT 'All albums' AS 'SEARCH QUERY';
SELECT name FROM albums;
UPDATE albums set sales = (sales*10);
SELECT 'Albums are 10x popular' AS 'SEARCH QUERY';
SELECT artist, NAME, sales FROM albums;


SELECT 'All albums released prior to 1980' AS 'SEARCH QUERY';
SELECT name FROM albums Where release_date between 1950 AND 1979;
UPDATE albums set release_date = (release_date - 100);
SELECT 'All albums before 1980 set to 1800s' AS 'SEARCH QUERY';
SELECT name, artist, release_date FROM albums WHERE release_date BETWEEN 1800 AND 1899;


SELECT 'Albums by Michael Jackson' AS 'SEARCH QUERY';
SELECT name FROM albums Where artist = 'Michael Jackson';
UPDATE albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';
SELECT 'Albums by Peter Jackson' AS 'SEARCH QUERY';
SELECT name FROM albums Where artist = 'Peter Jackson';

