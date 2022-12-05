-- Your code here
INSERT INTO tools (name, price, department)
VALUES
    ('Snow shovel',16.50,'Home & Garden'),
    ('Work light', 29.99, 'Electrical'),
    ('Wheelbarrow', 89.99, 'Home & Garden'),
    ('Pipe Wrench', 18.99, 'Plumbing'),
    ('Pipe Cutter', 36.36, 'Plumbing'),
    ('Rake', 15.45, 'Home & Garden');

INSERT INTO customers (first_name, last_name, phone_number)
VALUES
    ('John', 'Smith', 1111111111),
    ('Jane', 'Doe', 2222222222);

INSERT INTO purchase (customer_name, tools_name, quantity)
VALUES
    ('John', 'Work light', 1),
    ('John', 'Pipe Cutter', 2),
    ('Jane','Snow shovel', 3),
    ('Jane','Work light', 1),
    ('Jane','Pipe Wrench', 1),
    ('Jane','Pipe Cutter', 1),
    ('John','Wheelbarrow', 3);
