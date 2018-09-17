-- SELECT title, ROUND(AVG(rating), 1) AS avg_rating 
-- FROM series 
-- INNER JOIN reviews
--     ON series.id = reviews.series_id
-- GROUP BY series.id
-- ORDER BY avg_rating;

-- SELECT first_name, last_name, rating
-- FROM reviews
-- INNER JOIN reviewers
--     ON reviewers.id = reviews.reviewer_id;

-- SELECT title AS unreviewed_series
-- FROM series
-- LEFT JOIN reviews
--     ON series.id = reviews.series_id
-- WHERE rating IS NULL;

-- SELECT genre, ROUND(AVG(rating), 1) as avg_rating
-- FROM series
-- INNER JOIN reviews
--     ON series.id = reviews.series_id
-- GROUP BY genre
-- ORDER BY 2;

-- SELECT 
--     first_name,
--     last_name, 
--     COUNT(rating) AS COUNT,
--     IFNULL(MIN(rating), 0) AS MIN,
--     IFNULL(MAX(rating), 0) AS MAX,
--     IFNULL(ROUND(AVG(rating), 2), 0) AS AVG,
--     -- IF(COUNT(rating) >=1, 'ACTIVE', 'INACTIVE') AS STATUS
--     CASE 
--         WHEN rating IS NULL THEN 'INACTIVE'
--         WHEN COUNT(rating) >= 10 THEN 'POWER USER'
--         WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
--         ELSE 'INACTIVE'
--     END AS 'STATUS'
-- FROM reviewers
-- LEFT JOIN reviews
--     ON reviewers.id = reviews.reviewer_id
-- GROUP BY reviewers.id
-- ORDER BY COUNT DESC;

SELECT 
    title, 
    rating, 
    CONCAT(first_name, ' ', last_name) AS reviewer
FROM reviewers
INNER JOIN reviews
    ON reviewers.id = reviews.reviewer_id
INNER JOIN series
    ON series.id = reviews.series_id
ORDER BY title;