--۶- تعداد سفارش هر مشتری را نمایش دهید.

SELECT first_name,last_name,count (orders.id)
FROM customers
         JOIN orders ON customers.id = orders.customer_id
GROUP BY first_name, last_name;