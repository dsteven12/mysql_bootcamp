SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author Name', ROUND(AVG(pages), 0) AS 'Avg. Pages'
FROM books
GROUP BY author_lname, author_fname;

-- SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'Shortened Title', released_year AS 'Release Year', ROUND(AVG(stock_quantity),0) AS 'Avg. Inventory' 
-- FROM books GROUP BY released_year;