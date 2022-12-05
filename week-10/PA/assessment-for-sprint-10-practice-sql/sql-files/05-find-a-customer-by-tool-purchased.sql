-- Your code here
SELECT customers.first_name, customers.last_name, customers.phone_number FROM purchase
JOIN customers ON (purchase.customer_name = customers.first_name)
JOIN tools ON (purchase.tools_name = tools.name)
WHERE tools.name = 'Pipe Cutter'
ORDER BY purchase.id DESC
LIMIT 1;
