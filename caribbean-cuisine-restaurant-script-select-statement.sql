-- Rayner Mendez
-- https://github.com/RaynerMDZ
-- https://www.linkedin.com/in/raynermendez/

SELECT * FROM address;

SELECT * FROM credit_card;

SELECT * FROM customer;

SELECT * FROM discount;

SELECT * FROM orders;

SELECT * FROM location;

SELECT * FROM employee;

SELECT * FROM delivery;

SELECT * FROM inventory;

SELECT * FROM recipe;

SELECT * FROM order_item;


SELECT
    o.order_id,
    o.total_amount as total_price,
    c.first_name,
    c.last_name,
    r.description,
    d.creation_date
FROM
    orders o
    INNER JOIN customer c ON c.customer_id = o.customer_id
    INNER JOIN delivery d ON o.order_id = d.orders_id
    INNER JOIN order_item oi ON o.order_id = oi.orders_id
    INNER JOIN recipe r ON r.recipe_id = oi.recipe_id
WHERE
    c.customer_id = 1;
