USE toko;
CREATE TABLE Customers ( 
    customer_id INT AUTO_INCREMENT PRIMARY KEY, 
    customer_name char(50) 
    );
CREATE TABLE casiers ( 
    casiers_id INT AUTO_INCREMENT PRIMARY KEY, 
    casiers_name char(50) 
    );
CREATE TABLE Orders (
    order_id int NOT NULL,
    customer_id int NOT NULL,
    casiers_id int NOT NULL,
    price_total int NOT NULL,
    order_date datetime NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (casiers_id) REFERENCES casiers(casiers_id)
);
CREATE TABLE Products (
    products_id int NOT NULL,
    products_name char(50) NOT NULL,
    prince  int NOT NULL,
    PRIMARY KEY (products_id)
);
CREATE TABLE Categories (
    categories_id int NOT NULL,
    name char(50) NOT NULL,
    PRIMARY KEY (categories_id)
);
CREATE TABLE Products_cat (
    products_cat_id int NOT NULL,
    products_id int NOT NULL,
    categories_id  int NOT NULL,
    PRIMARY KEY (products_cat_id),
    FOREIGN KEY (products_id) REFERENCES Products(products_id),
    FOREIGN KEY (categories_id) REFERENCES Categories(categories_id)
);
CREATE TABLE Orders_item (
    order_item_id int NOT NULL,
    order_id int NOT NULL,
    products_id int NOT NULL,
    categories_id  int NOT NULL,
    quantity int NOT NULL,
    price int NOT NULL,
    PRIMARY KEY (order_item_id),
    FOREIGN KEY (products_id) REFERENCES Products(products_id),
    FOREIGN KEY (categories_id) REFERENCES Categories(categories_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);