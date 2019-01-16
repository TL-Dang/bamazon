DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products(
    item_id INT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(45) NOT NULL,
    department_name VARCHAR(45) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT(10) NOT NULL,
    PRIMARY KEY(item_id)
);

INSERT INTO products(product_name, department_name, price, stock_quantity)
VALUES("PS4", "Games", 300, 200),
VALUES("Inspirion", "Computer", 600, 150),
VALUES("Dishwasher", "Applicance", 1500, 100),
VALUES("Fridge", "Applicance", 800, 200),
VALUES("XBOX", "Games", 300, 200),
VALUES("Reebok Shoes", "Apparel", 80, 250),
VALUES("Jacket", "Apparel", 90, 200),
VALUES("New Balance Running Shoes", "Apparel", 100, 200),
VALUES("Block of Cheese", "Grocery", 300, 200),
VALUES("Toaster Oven", "Games", 100, 300);