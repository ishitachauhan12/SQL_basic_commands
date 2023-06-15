-- inner join to join 2 tables
 SELECT *
 FROM orders o
 JOIN customers c
	ON o.customer_id=c.customer_id;

 SELECT o.order_id, c.first_name, c.last_name
 FROM orders o
 JOIN customers c
	ON o.customer_id=c.customer_id;
    
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id;
    
-- joining across databases

SELECT *
FROM order_items oi
JOIN sql_inventory.products p
	ON oi.product_id = p.product_id;

-- self join

SELECT 
	e.employee_id,
    e.first_name,
    m.first_name
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;

-- joining multiple tables

SELECT 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id;
