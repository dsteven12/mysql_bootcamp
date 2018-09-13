SELECT title AS 'Book Title', 
CONCAT(author_fname, ' ', author_lname) AS 'Author Name',
stock_quantity AS 'Quantity Left'
FROM books
WHERE stock_quantity LIKE '__';

-- SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
 
-- SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
 
-- SELECT title FROM books WHERE  title LIKE 'the';
 
-- SELECT title FROM books WHERE  title LIKE '%the';
 
-- SELECT title FROM books WHERE title LIKE '%the%';