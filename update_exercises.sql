USE codeup_test_db;

SELECT 'All albums' AS 'SEARCH QUERY';
SELECT name FROM albums;
UPDATE albums set sales = (sales*10);
SELECT 'Albums are 10x popular' AS 'SEARCH QUERY';
SELECT NAME FROM albums;


SELECT 'All albums released prior to 1980' AS 'SEARCH QUERY';
SELECT name FROM albums Where release_date < 1980;
UPDATE albums set release_date = (release_date - 100);
SELECT 'All albums before 1980 set to 1800s' AS 'SEARCH QUERY';
SELECT release_date FROM albums WHERE release_date < 1880;


SELECT 'Albums by Michael Jackson' AS 'SEARCH QUERY';
SELECT name FROM albums Where artist = 'Michael Jackson';
UPDATE albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';
SELECT 'Albums by Peter Jackson' AS 'SEARCH QUERY';
SELECT name FROM albums Where artist = 'Peter Jackson';

