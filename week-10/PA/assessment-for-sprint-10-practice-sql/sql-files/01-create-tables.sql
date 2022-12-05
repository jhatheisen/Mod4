-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;
DROP TABLE IF EXISTS purchase;
DROP TABLE IF EXISTS tools;
DROP TABLE IF EXISTS customers;

-- Your code here
CREATE TABLE tools (
    name VARCHAR(40) PRIMARY KEY,
    price NUMERIC(7,2),
    department VARCHAR(40)
);

CREATE TABLE customers (
    first_name VARCHAR(40) PRIMARY KEY,
    last_name VARCHAR(40),
    phone_number NUMERIC(10,0)
);

CREATE TABLE purchase (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_name INTEGER NOT NULL,
    tools_name INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (customer_name) REFERENCES customers(first_name),
    FOREIGN KEY (tools_name) REFERENCES tools(name)
);
