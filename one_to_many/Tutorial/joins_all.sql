-- SELECT * FROM orders WHERE customer_id =
--     (
--         SELECT id FROM customers 
--         WHERE last_name='George'
--     );

-- -- IMPLICiT INNER JOIN - joined them where they match.   
-- SELECT customers.id, CONCAT(first_name, ' ', last_name) AS 'Customer Name', order_date, amount FROM customers, orders 
-- WHERE customers.id = orders.customer_id;

-- -- EXPLICIT INNER JOIN
-- SELECT customers.id, CONCAT(first_name, ' ', last_name) AS 'Customer Name', order_date, amount 
-- FROM customers
-- JOIN orders 
--     ON customers.id = orders.customer_id;

-- -- INNER JOIN ORDER BY amount
-- SELECT CONCAT(first_name, ' ', last_name) AS 'Customer Name', order_date, amount
-- FROM customers
-- JOIN orders
--     ON customers.id = orders.customer_id
-- ORDER BY amount;

-- -- INNER JOIN GROUP BY ID and using SUM(amount) to determine total bought by a customer.
-- SELECT 
--     customers.id, 
--     CONCAT(first_name, ' ', last_name) AS 'Customer Name', 
--     order_date, 
--     SUM(amount) AS 'Total Spent' 
-- FROM customers
-- JOIN orders 
--     ON customers.id = orders.customer_id
-- GROUP BY customers.id
-- ORDER BY 'Total Spent' DESC;

-- LEFT OUTER JOIN
-- SELECT 
--     customers.id, 
--     CONCAT(first_name, ' ', last_name) AS Customer_Name, 
--     order_date AS Order_Date,
--     IFNULL(SUM(amount), 0) AS Total_Spent
-- FROM customers
-- LEFT JOIN orders 
--     ON customers.id = orders.customer_id
-- GROUP BY customers.id
-- ORDER BY Total_Spent DESC;
