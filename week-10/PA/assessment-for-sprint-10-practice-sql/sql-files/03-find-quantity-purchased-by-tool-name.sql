-- Your code here
SELECT tools.name, tools.price, purchase.quantity FROM purchase
JOIN tools ON (purchase.tools_name = tools.name)
WHERE name LIKE 'Pipe%'
ORDER BY tools.name ASC, purchase.quantity ASC;
