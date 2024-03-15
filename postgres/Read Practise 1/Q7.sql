--۷- هر سفارش مشتری را به تفکیک ادرس سفارش نمایش دهید.


SELECT first_name, last_name, orders.id "order_id", state, city, full_address
FROM customers
         JOIN orders ON customers.id = orders.id
         JOIN addresses ON customers.living_address = addresses.id;