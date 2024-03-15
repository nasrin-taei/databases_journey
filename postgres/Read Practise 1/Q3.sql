--۳- تعداد مشتریان به تفکیک شهر و استان را بدست اورید.

SELECT state, city, count(*)
FROM customers
         JOIN addresses ON customers.living_address = addresses.id
GROUP BY state, city;