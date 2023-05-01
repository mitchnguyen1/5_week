-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
    order_id SERIAl PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(255),
    product_price FLOAT,
    quantity INTEGER
)

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
INSERT INTO orders(person_id,product_name,product_price,quantity)
VALUES (111, 'Sunscreen', 10.99, 2),
        (111, 'Lotion', 3.99, 4),
        (222, 'Beach Ball', 30.99, 1),
        (333, 'Towels', 15.99, 2),
        (444, 'Sandles', 20.59, 1)

-- person_id should be different for different people.

-- Select all the records from the orders table.
SELECT * FROM orders

-- Calculate the total number of products ordered.
SELECT SUM(quantity)
FROM orders

-- Calculate the total order price.
SELECT SUM(product_price*quantity)
FROM orders


-- Calculate the total order price by a single person_id.
SELECT person_id,SUM(product_price*quantity)
FROM orders
GROUP BY person_id