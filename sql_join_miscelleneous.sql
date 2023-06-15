USE sql_store;
-- using clause
SELECT 
	o.order_id,
    c.first_name
FROM orders o
JOIN customers c 
	USING (customer_id);
    
-- natural join
SELECT 
	o.order_id,
    c.first_name
FROM orders o
NATURAL JOIN customers c;

-- cross join
SELECT 
	o.order_id,
    c.first_name
FROM orders o
CROSS JOIN customers c;