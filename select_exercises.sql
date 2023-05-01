USE codeup_test_db;

SELECT * FROM albums WHERE name = 'Pink Floyd';
SELECT release_date FROM albums WHERE id = 5;
SELECT genre FROM albums WHERE artist = 'Metallica';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT * FROM albums WHERE sales < 20000000;
SELECT * FROM albums WHERE genre = 'Rock';




# //The name of all albums by Pink Floyd.
# The year Sgt. Pepper's Lonely Hearts Club Band was released
# The genre for Nevermind
# Which albums were released in the 1990s
# Which albums had less than 20 million certified sales
# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
