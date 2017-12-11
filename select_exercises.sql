USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE name = 'Sgt%';
SELECT genre FROM albums WHERE artist = 'Nevermind';
SELECT * FROM albums WHERE release_date = 1990;
SELECT * FROM albums WHERE sales < 20;
SELECT * FROM albums WHERE genre = 'Rock';