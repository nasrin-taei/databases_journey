--۵- مجموع تعداد کالا هاو ارزش کلی را به ازای هر سفارش مشتری محاسبه کنید.



SELECT first_name, last_name, order_id, sum(total) "total", sum(order_count) "count"
FROM (SELECT first_name,
             last_name,
             order_id,
             order_count,
             product_id,
             unit_price,
             unit_price * order_count "total"
      FROM customers
               JOIN orders ON
              customers.id = orders.customer_id
               JOIN orders_products ON orders.id = orders_products.order_id
               JOIN products ON products.id = orders_products.product_id) A
GROUP BY first_name, last_name, order_id;