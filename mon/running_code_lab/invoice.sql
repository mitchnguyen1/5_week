-- Count how many orders were made from the USA.
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA'

-- Find the largest order total amount.
SELECT * FROM invoice
ORDER BY total DESC
LIMIT 1

-- Find the smallest order total amount.
SELECT * FROM invoice
ORDER BY total ASC
LIMIT 1

-- Find all orders bigger than $5.
SELECT * FROM invoice
WHERE total > 5

-- Count how many orders were smaller than $5.
SELECT COUNT(*) FROM invoice
WHERE total < 5

-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA','TX','AZ')

-- Get the average total of the orders.
SELECT AVG(total) 
FROM invoice;

-- Get the total sum of the orders.
SELECT SUM(total) 
FROM invoice;

-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.
UPDATE invoice
SET total = 24
WHERE invoice_id = 5;


-- Delete the invoice with an invoice_id of 1.
--Must delete from both table that share invoice_id
--deleting from the invoice line table
DELETE FROM invoice_line 
WHERE invoice_id = 1;

--deleting from invoice table
DELETE FROM invoice 
WHERE invoice_id = 1;