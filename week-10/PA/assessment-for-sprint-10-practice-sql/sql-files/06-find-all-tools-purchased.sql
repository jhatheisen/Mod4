-- Your code here
SELECT tools.name, purchase.quantity FROM purchase
JOIN tools ON (purchase.tools_name = tools.name)
ORDER BY tools.name ASC, purchase.quantity ASC;
