-- SELECT * FROM orders WHERE customer_id =
--     (
--         SELECT id FROM customers 
--         WHERE last_name='George'
--     );

-- IMPLICiT INNER JOIN - joined them where they match.   
SELECT customers.id, CONCAT(first_name, ' ', last_name) AS 'Customer Name', order_date, amount FROM customers, orders 
WHERE customers.id = orders.customer_id;

-- EXPLICIT INNER JOIN
SELECT customers.id, CONCAT(first_name, ' ', last_name) AS 'Customer Name', order_date, amount 
FROM customers
JOIN orders 
    ON customers.id = orders.customer_id;