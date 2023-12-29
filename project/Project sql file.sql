-- Table creation query for categories
Create table category (
	id serial primary key,
	name varchar(255) not null
);


-- Table creation query for products
Create table product(
	id serial primary key,
	name varchar(255) not null,
	price decimal(10,2) not null,
	category_id bigint,
	foreign key (category_id) references category(id)
);


-- Insertion query for categories 
INSERT INTO category (name) VALUES ('Electronics');
INSERT INTO category (name) VALUES ('Clothing');
INSERT INTO category (name) VALUES ('Books');
INSERT INTO category (name) VALUES ('Home Appliances');
INSERT INTO category (name) VALUES ('Toys');

-- Insertion queries for products 
INSERT INTO product (name, price, category_id) VALUES ('Smartphone', 800.00, 1);
INSERT INTO product (name, price, category_id) VALUES ('Jeans', 40.00, 2);
INSERT INTO product (name, price, category_id) VALUES ('Java Programming Book', 45.00, 3);
INSERT INTO product (name, price, category_id) VALUES ('Refrigerator', 1200.00, 4);
INSERT INTO product (name, price, category_id) VALUES ('Action Figure', 10.00, 5);

INSERT INTO product (name, price, category_id) VALUES ('Laptop', 1200.00, 1);
INSERT INTO product (name, price, category_id) VALUES ('Wireless Mouse', 25.00, 1);
INSERT INTO product (name, price, category_id) VALUES ('LED TV', 800.00, 1);
INSERT INTO product (name, price, category_id) VALUES ('Sweater', 35.00, 2);
INSERT INTO product (name, price, category_id) VALUES ('Running Shoes', 50.00, 2);
INSERT INTO product (name, price, category_id) VALUES ('Python Programming Book', 55.00, 3);
INSERT INTO product (name, price, category_id) VALUES ('Mystery Novel', 20.00, 3);
INSERT INTO product (name, price, category_id) VALUES ('Washing Machine', 600.00, 4);
INSERT INTO product (name, price, category_id) VALUES ('Coffee Maker', 40.00, 4);
INSERT INTO product (name, price, category_id) VALUES ('Board Game', 15.00, 5);
INSERT INTO product (name, price, category_id) VALUES ('Doll', 8.00, 5);


select * from category;
select * from product;














