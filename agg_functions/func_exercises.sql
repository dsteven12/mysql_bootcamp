-- SELECT COUNT(*) AS '# of Books in DB' FROM books;

-- SELECT released_year, COUNT(*) 
-- FROM books
-- GROUP BY released_year;

-- *Test for above code*
-- SELECT COUNT(*) FROM books WHERE released_year='1945';

-- SELECT SUM(stock_quantity) FROM books;

-- SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author Name', ROUND(AVG(released_year), 0) AS 'Avg. Release Year'
-- FROM books
-- GROUP BY author_lname, author_fname;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author Name', title, pages
FROM books
ORDER BY 3 DESC
LIMIT 1;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author Name', title, pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

-- SELECT released_year AS 'Year', COUNT(title) AS '# Books', AVG(pages) AS 'Avg Pages'
-- FROM books
-- GROUP BY released_year;