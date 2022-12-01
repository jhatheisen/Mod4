-- step 1

CREATE TABLE friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

-- step 2

INSERT INTO friends (id, first_name, last_name)
VALUES
  (1, 'Amy', 'Pond');

-- check
SELECT * FROM friends;

-- step 3

INSERT INTO friends (first_name, last_name)
VALUES
  ('Rose', 'Tyler'),
  ('Martha', 'Jones'),
  ('Donna', 'Noble'),
  ('River', 'Song');

-- step 4

-- broken
INSERT INTO friends (id, first_name, last_name)
VALUES
  (5, 'Jenny', 'Who');

-- fixed

INSERT INTO friends (id, first_name, last_name)
VALUES
  (6, 'Jenny', 'Who');
-- id already taken
