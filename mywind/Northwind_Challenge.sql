SHOW Databases;

USE Northwind;

SHOW TABLES;

-- 1 Order shipments by shipping fee
SELECT ship_name,  ship_city, ship_state_province, shipping_fee
FROM orders
ORDER BY shipping_fee DESC;

-- 2 Order states by aggregate shipping fee of that state
SELECT ship_state_province, SUM(shipping_fee)
FROM orders
GROUP BY  ship_state_province
ORDER BY SUM(shipping_fee) DESC;