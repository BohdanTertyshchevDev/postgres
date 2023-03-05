DROP TABLE orders;

CREATE TABLE orders(
   id serial PRIMARY KEY,
   created_at timestamp NOT NULL DEFAULT current_timestamp,
   customer_id int REFERENCES users(id)
);

ALTER TABLE users
ADD COLUMN id serial PRIMARY KEY;

CREATE TABLE orders_to_produts (
   order_id int REFERENCES orders(id),
   produt_id int REFERENCES produts(id),
   quantity int,
   PRIMARY KEY(order_id, produt_id)
);

INSERT INTO orders (customer_id) VALUES(1);

INSERT INTO orders_to_produts (order_id, produt_id, quantity) VALUES
(1, 1, 2),
(1, 3, 1),
(1, 2, 1);