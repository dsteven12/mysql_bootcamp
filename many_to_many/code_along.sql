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

SELECT genre, ROUND(AVG(rating), 1) as avg_rating
FROM series
INNER JOIN reviews
    ON series.id = reviews.series_id
GROUP BY genre
ORDER BY 2;