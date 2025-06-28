CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT,
    author_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (author_id)
);

CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    publication_id DATE,
    isbn VARCHAR(20),
    price DECIMAL(10, 2),
    stock_quantity INT,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE,
    phone_number VARCHAR(20),
    address TEXT,
    PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    total_cost DECIMAL(10, 2),
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


CREATE TABLE IF NOT EXISTS Order_Details (
    order_detail_id INT AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_detail_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);



