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

SELECT title AS 'Book Title', CONCAT('The book title is ', CHAR_LENGTH(title), ' characters long.') AS '# of Characters in the Title' from books;