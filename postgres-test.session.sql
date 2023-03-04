 CREATE TABLE produts(
    id serial PRIMARY KEY,
    brand varchar(200) NOT NULL CHECK(brand != ''),
    model varchar(300) NOT NULL CHECK(model != ''),
    description text,
    category varchar(200) NOT NULL CHECK(category != ''),
    price numeric(10, 2) NOT NULL CHECK(price > 0),
    discounted_price numeric(10, 2) CHECK(discounted_price <= price)
 );

 INSERT INTO produts(brand, model, category, price) VALUES
 ('Sumsung', 'S10', 'smartphone', 200),
 ('Iphone', '5', 'smartphone', 2000),
 ('Asus', 'F4514', 'PC', 1500);

 INSERT INTO produts(brand, model, category, price) VALUES
 ('Sumsung', 'S10', 'smartphone', 200),
 ('Iphone', '5', 'smartphone', 2000);



ALTER TABLE produts
ADD CONSTRAINT "unique_brand_model_pair" UNIQUE(brand, model);


ALTER TABLE produts
ADD CONSTRAINT "products_quantity_check" CHECK(quantity >= 0);

ALTER TABLE produts
DROPE CONSTRAINT "products_quantity_check";


ALTER TABLE produts
ADD COLUMN quantity int;