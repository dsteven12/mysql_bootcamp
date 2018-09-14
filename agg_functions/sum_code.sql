SELECT CONCAT(author_fname, ' ', author_lname) AS 'Author Name', SUM(pages)
FROM books 
GROUP BY author_lname, author_fname;

-- SELECT SUM(released_year) FROM books;