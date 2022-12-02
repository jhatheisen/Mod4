-- p1
SELECT num_sold FROM albums WHERE num_sold >= 100000;

-- p2
SELECT year FROM albums WHERE year BETWEEN 2018 AND 2020;

-- p3
SELECT band_id FROM albums WHERE band_id IN (1,3,4);

-- p4
SELECT title FROM albums Where title LIKE 'The%';

-- p5
SELECT num_sold FROM albums WHERE num_sold
ORDER BY num_sold DESC
LIMIT 2;

-- p6
-- check order
SELECT num_sold FROM albums WHERE num_sold
ORDER BY num_sold DESC;
-- get 3rd 4th
SELECT num_sold FROM albums WHERE num_sold
ORDER BY num_sold DESC
LIMIT 2 OFFSET 2;

-- aggregate functions
-- avgs num of albums sold
SELECT AVG(num_sold) FROM albums;

-- counts amount of albums
SELECT COUNT(*) FROM albums;

-- sums amount of records
SELECT SUM(num_sold) FROM albums;
