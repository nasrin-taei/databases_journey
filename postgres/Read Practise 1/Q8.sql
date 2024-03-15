--۸- تعداد سفارشات هر مشتری را به تفکیک دسته بندی محصول (product_category) نمایش دهید.


SELECT first_name, last_name, count(order_id), product_category
FROM customers
         JOIN products
         JOIN orders_products ON products.id = orders_products.product_id
         JOIN orders ON orders.id = orders_products.order_id ON customers.id = orders.customer_id
GROUP BY first_name, last_name, product_category;