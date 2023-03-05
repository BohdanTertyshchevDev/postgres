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