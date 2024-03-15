--۱۲- تعداد کالا سفارش و مجموع ارزش هر سفارش مشتریانی که مجموع ارزش سفارش انها بیشتر از 100 می باشد محاسبه نمایید. ترتیب نمایش از با ارزشترین به کم ارزشترین باشد.

--------------------------------------------------------------------

SELECT first_name, last_name, order_id, sum(order_count) total_order_count, sum(total) total_order_amount
FROM (SELECT first_name,
             last_name,
             customer_id,
             order_id,
             orders_products.order_count,
             unit_price * orders_products.order_count "total"
      FROM products
               JOIN orders_products ON products.id = orders_products.product_id
               JOIN orders ON orders.id = orders_products.order_id
               JOIN customers ON customers.id = orders.customer_id) A
WHERE total > 100
GROUP BY first_name, last_name, order_id
ORDER BY first_name, last_name, total_order_amount desc;




