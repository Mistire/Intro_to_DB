CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE IF NOT EXISTS Books (
  book_id INT,
  title VARCHAR(130),
  author_id INT,
  price FLOAT,
  publication_date DATE,
  PRIMARY KEY (book_id),
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXISTS Authors (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(215),
  PRIMARY KEY (author_id)
);

CREATE TABLE IF NOT EXISTS Customers (
  customer_id INT,
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT,
  PRIMARY KEY (customer_id),
);

CREATE TABLE IF NOT EXISTS Orders (
  order_id INT,
  customer_id INT,
  order_date DATE,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE IF NOT EXISTS Order_Details (
  orderdetailid INT,
  customer_id INT,
  book_id INT,
  quantity DOUBLE,
  PRIMARY KEY (orderdetailid)
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

