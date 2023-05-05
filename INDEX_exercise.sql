USE employees;

#DESCRIBE each table and inspect the keys and see which columns have indexes and keys.

DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;
DESCRIBE dept_emp;
DESCRIBE departments;
DESCRIBE dept_manager;

USE codeup_test_db;
DESCRIBE albums;
SELECT * FROM albums;
#Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
CREATE UNIQUE INDEX SomeUnique
    ON albums (artist, name);
SHOW INDEXES FROM albums;
DESCRIBE albums;
SELECT * FROM albums;

INSERT INTO albums (artist, name, release_date, sales, genre) VALUES ('Pink Floyd', 'The Dark Side of the Moon', '1973-03-01', 24.80, 'Progressive rock');