-- Rayner Mendez
-- https://github.com/RaynerMDZ
-- https://www.linkedin.com/in/raynermendez/

-- Data to insert.
-- Live SQL.

-- Address
-- Credit card
INSERT INTO address (address_id, address_line_1, address_line_2, city, state_code, zipcode, country, creation_date, modified_date)
VALUES (1, '123 ay st', null, 'brooklyn', 'ny', '11453', 'united states', '12/21/2021', null);

INSERT INTO address (address_id, address_line_1, address_line_2, city, state_code, zipcode, country, creation_date, modified_date)
VALUES (2, '123 jay st', null, 'bronx', 'ny', '11453', 'united states', '12/21/2021', null);

INSERT INTO address (address_id, address_line_1, address_line_2, city, state_code, zipcode, country, creation_date, modified_date)
VALUES (3, '123 jay st', null, 'queens', 'ny', '11453', 'united states', '12/21/2021', null);

-- Credit Card
INSERT INTO credit_card (credit_card_number, owner_name, merchant_name, exp_date, credit_card_limit, credit_card_balance, address_id)
VALUES ('4233452674679533', 'rayner mendez', 'VISA', '07/22/2024', 5000.00, 5000.00, 1);

-- Customer
INSERT INTO customer (customer_id, first_name, last_name, cellphone, email, creation_date, modified_date)
VALUES (1, 'rayner', 'mendez', '3473334567', null, '12/21/2021', null);

-- Discount
INSERT INTO discount (discount_code, percentage, creation_date, modified_date, active)
VALUES ('qwerty', 10.00, '12/21/2021', '12/21/2021', null, 'y');

-- Orders
INSERT INTO orders (order_id, order_price, tax, total_amount, creation_date, modified_date, customer_id, credit_card_number, discount_code)
VALUES (1, 50.00, 8.88, 58.88, '12/21/2021', null, 1, '4233452674679533', 'qwerty');

-- Location
INSERT INTO location (location_id, address_id)
VALUES (1, 3);

-- Employee
INSERT INTO employee (employee_id, first_name, last_name, date_of_birth, cellphone, email, position, active, salary, creation_date, modified_date, address_id, location_id)
VALUES (1, 'enmanuel', 'garcia', '04/06/1995', '1234567890', 'egarcia@cst3504.com', 'chef', 'y', 90000.00, '12/21/2021', null, 2, 1);

INSERT INTO employee (employee_id, first_name, last_name, date_of_birth, cellphone, email, position, active, salary, creation_date, modified_date, address_id, location_id)
VALUES (2, 'mike', 'ferrari', '04/06/1995', '0321456987', 'mferrari@cst3504.com', 'delivery', 'y', 90000.00, '12/21/2021', null, 3, 1);

-- Delivery
INSERT INTO delivery (delivery_id, creation_date, modified_date, address_id, orders_id, customer_id, employee_id)
VALUES (1, '12/12/2021', null, 2, 1, 1, 2);

-- Inventory
INSERT INTO inventory (item_id, name, quantity, category, exp_date, creation_date, modified_date) 
VALUES (1, 'cheese', 5, 'dairy', '01/01/2022', '12/21/2021', null);

-- Recipe
INSERT INTO recipe (recipe_id, recipe_name, calories, is_vegan, is_available, creation_date, modified_date, employee_id, description, category, price)
VALUES (1, 'mofongo', 1000.00, 'n', 'y', '12/21/2021', null, 1, 'A delicious caribbean recipe made with green plantains.', 'lunch', 10.00);

-- Order Item
INSERT INTO order_item (order_item_id, orders_id, inventory_item_id, recipe_id)
VALUES (1, 1, 1, 1);


