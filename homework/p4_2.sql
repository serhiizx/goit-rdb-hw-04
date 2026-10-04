USE goit_rdb;

-- Варіант А: усі INNER замінено на LEFT
SELECT COUNT(*) AS row_count
FROM order_details od
LEFT JOIN orders o       ON od.order_id = o.id
LEFT JOIN customers c    ON o.customer_id = c.id
LEFT JOIN employees e    ON o.employee_id = e.employee_id
LEFT JOIN shippers sh    ON o.shipper_id = sh.id
LEFT JOIN products p     ON od.product_id = p.id
LEFT JOIN categories cat ON p.category_id = cat.id
LEFT JOIN suppliers su   ON p.supplier_id = su.id;

-- Варіант Б: RIGHT JOIN до customers, решта LEFT
SELECT COUNT(*) AS row_count
FROM order_details od
INNER JOIN orders o      ON od.order_id = o.id
RIGHT JOIN customers c   ON o.customer_id = c.id
LEFT JOIN employees e    ON o.employee_id = e.employee_id
LEFT JOIN shippers sh    ON o.shipper_id = sh.id
LEFT JOIN products p     ON od.product_id = p.id
LEFT JOIN categories cat ON p.category_id = cat.id
LEFT JOIN suppliers su   ON p.supplier_id = su.id;

-- Варіант В: RIGHT JOIN до employees, решта LEFT
SELECT COUNT(*) AS row_count
FROM order_details od
INNER JOIN orders o      ON od.order_id = o.id
INNER JOIN customers c   ON o.customer_id = c.id
RIGHT JOIN employees e   ON o.employee_id = e.employee_id
LEFT JOIN shippers sh    ON o.shipper_id = sh.id
LEFT JOIN products p     ON od.product_id = p.id
LEFT JOIN categories cat ON p.category_id = cat.id
LEFT JOIN suppliers su   ON p.supplier_id = su.id;

-- Варіант Г: RIGHT JOIN до customers, але далі знову INNER
SELECT COUNT(*) AS row_count
FROM order_details od
INNER JOIN orders o       ON od.order_id = o.id
RIGHT JOIN customers c    ON o.customer_id = c.id
INNER JOIN employees e    ON o.employee_id = e.employee_id
INNER JOIN shippers sh    ON o.shipper_id = sh.id
INNER JOIN products p     ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN suppliers su   ON p.supplier_id = su.id;
