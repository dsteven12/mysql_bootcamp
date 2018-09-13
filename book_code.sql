SELECT 
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10)
FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author Name', 
CONCAT(SUBSTRING(title, 1, 20), '...') AS 'Shorter Title', 
released_year AS 'Year Released' 
FROM books 
WHERE released_year > 2001;