USE codeup_test_db;

SELECT 'Highest selling albums by Pink Floyd' AS 'Search Query';
SELECT name FROM albums WHERE artist = 'Pink Floyd';


SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Search Query';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';


SELECT 'The genre for Nevermind' AS 'Search Query';
SELECT genre FROM albums WHERE name ='Nevermind';


SELECT 'Albums released in the 1990s' AS 'Search Query';
SELECT name FROM albums WHERE release_date between '1990' and '2000';


SELECT 'Albums with less than 20 million certified sales' AS 'Search Query';
SELECT name FROM albums WHERE sales > '20';


SELECT 'All the albums with a genre of "Rock".' AS 'Search Query';
SELECT name FROM albums WHERE genre = 'Rock';
