SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released.') AS '# of Books Released Per Year' FROM books
GROUP BY released_year;

-- SELECT author_lname, COUNT(*) FROM books 
-- GROUP BY author_lname;

-- SELECT CONCAT(author_fname, ' ', author_lname), COUNT(*) AS 'Author Name' FROM books
-- GROUP BY author_lname, author_fname;

-- SELECT title, CONCAT(author_fname, ' ', author_lname) AS 'Author Name' FROM books;