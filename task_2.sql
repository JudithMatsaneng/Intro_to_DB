-- Create the authors table
CREATE TABLE IF NOT EXISTS authors (
    author_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    biography TEXT,
    PRIMARY KEY (author_id)
);

-- Create the books table
CREATE TABLE IF NOT EXISTS books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    publication_date DATE,
    isbn VARCHAR(20),
    price DECIMAL(10, 2),
    stock_quantity INT,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Create the customers table
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(20),
    address TEXT,
    PRIMARY KEY (customer_id)
);

-- Create the orders table
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    total_cost DECIMAL(10, 2),
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create the order_details table
CREATE TABLE IF NOT EXISTS order_details (
    order_detail_id INT AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_detail_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
