-- CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);
 
-- INSERT INTO people (name, birthdate, birthtime, birthdt) VALUES 
-- ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35'),
-- ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42'),
-- ('Pedro', '2018-02-25', '08:11:12', '2018-02-25 08:11:12');

-- SELECT * FROM people;

-- SELECT name, birthdate, DAY(birthdate) FROM people;
-- SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
-- SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;

SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;