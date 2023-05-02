USE codeup_test_db;

SELECT name AS 'Names of all albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date AS 'Release date of the album Dark Side of the Moon' FROM albums WHERE name = 'Dark Side of the Moon';
SELECT name AS 'All albums with sales over 20,000,000' FROM albums WHERE sales > 20.0;
SELECT genre FROM albums WHERE artist = 'Metallica';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT * FROM albums WHERE sales < 20000000;
SELECT * FROM albums WHERE genre = 'Rock';