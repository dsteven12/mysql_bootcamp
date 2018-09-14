-- **Learning Subqueries
SELECT title, pages FROM books 
WHERE pages = (SELECT MIN(pages) FROM books);
-- ** WHERE pages = 634 **

SELECT * FROM books 
WHERE pages = (SELECT MAX(pages) FROM books);


-- SELECT MAX(pages) AS 'Longest Book' FROM books;
-- SELECT MAX(released_year) AS 'Most Recent Released Year' FROM books;

-- SELECT MIN(pages) AS 'Shortest Book' FROM books;
-- SELECT MIN(released_year) AS 'First Released Year' FROM books;