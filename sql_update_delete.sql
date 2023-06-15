USE sql_invoicing;
-- updating single row
UPDATE invoices
SET payment_total=10, payment_date='2019-03-01'
WHERE invoice_id=1;

-- updating multiple rows
UPDATE invoices
SET 
payment_total=invoice_total*0.5, payment_date=due_date
WHERE client_id=3;

-- using subqueries in updates
UPDATE invoices
SET 
payment_total=invoice_total*0.5, payment_date=due_date
WHERE client_id=
			(SELECT client_id
            FROM clients
            WHERE name='Myworks'
            );

-- deleting rows
DELETE FROM invoices
WHERE client_id=
			(SELECT client_id
            FROM clients
            WHERE name='Myworks'
            );

