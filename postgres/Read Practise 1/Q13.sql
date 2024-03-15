-- میانگین تعداد سفارش و میانگین مجموع سفارش مشتریان متاهل را محسابه کنید.


SELECT first_name,
       last_name,
       count(order_id)    "orderavg",
       avg(order_count) "totalproductscount",
       avg(total)       "totalavg"
FROM (SELECT first_name, last_name, order_id, order_count, order_count * products.unit_price "total"
      FROM orders_products
               JOIN orders ON orders.id = orders_products.order_id
               JOIN products ON products.id = orders_products.product_id
               JOIN customers ON customers.id = orders.customer_id
      WHERE married = true) A
GROUP BY first_name, last_name;