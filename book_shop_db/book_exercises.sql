SELECT UPPER(CONCAT('my favorite author is ', 
CONCAT(author_fname, ' ', author_lname), '!')) AS 'Yell'
FROM books
ORDER BY author_lname;

-- SELECT title, author_lname 
-- FROM books
-- ORDER BY author_lname, title;

-- SELECT title, released_year, stock_quantity 
-- FROM books
-- ORDER BY stock_quantity ASC
-- LIMIT 3;

-- SELECT title, author_lname 
-- FROM books
-- WHERE author_lname LIKE '% %';

-- SELECT CONCAT(title, ' - ', released_year) AS 'Summary' 
-- FROM books 
-- ORDER BY released_year DESC 
-- LIMIT 3;

-- SELECT title, pages 
-- FROM books 
-- ORDER BY pages DESC Limit 1;

-- SELECT title 
-- FROM books 
-- WHERE title LIKE '%Stories%' OR '%stories%';