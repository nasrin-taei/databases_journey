--۴- اطلاعات سفارش مشتریان را نمایش دهید

SELECT first_name,last_name,order_id,order_count,product_name
FROM customers
         JOIN orders o on customers.id = o.customer_id
         join orders_products op on o.id = op.order_id
         JOIN products p on p.id = op.product_id
GROUP BY first_name,last_name,order_id,order_count,product_name;