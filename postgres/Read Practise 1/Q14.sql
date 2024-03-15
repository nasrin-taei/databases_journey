--۱۴- تعداد باقی مانده هر کالا را محاسبه کنید.

SELECT product_name, count"total", order_count"sold", count - order_count "instack"
FROM orders
         JOIN orders_products ON orders.id = orders_products.order_id
         JOIN products ON products.id = orders_products.product_id;