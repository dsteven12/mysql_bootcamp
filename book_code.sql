-- SELECT DISTINCT released_year, title, CONCAT(author_fname, ' ', author_lname) AS 'Full Name' 
-- FROM books 
-- ORDER BY released_year
-- LIMIT 12;

-- INSERT INTO books
-- (title, author_fname, author_lname, released_year, stock_quantity, pages)
-- VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
-- ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
-- ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- SELECT 
--     SUBSTRING(REPLACE(title, 'e', '3'), 1, 10)
-- FROM books;

-- SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author Name', 
-- CONCAT(SUBSTRING(title, 1, 20), '...') AS 'Shorter Title', 
-- released_year AS 'Year Released' 
-- FROM books 
-- WHERE released_year > 2001;

-- SELECT REVERSE(CONCAT(author_fname, ' ', author_lname)) AS 'Reversed Full Name',
-- CONCAT(author_fname, ' ', author_lname) AS 'Full Name'
-- FROM books;

-- SELECT title AS 'Book Title', CONCAT('The book title is ', CHAR_LENGTH(title), ' characters long.') AS '# of Characters in the Title' from books;

