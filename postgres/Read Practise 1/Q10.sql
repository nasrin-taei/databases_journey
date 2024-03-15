--۱۰ - گرانترین کالا هر دسته بندی محصول را نمایش دهید.

SELECT product_name, S.product_category, price
FROM products
         JOIN (SELECT product_category, max(unit_price) "price"
               FROM products
               GROUP BY product_category) S ON products.unit_price = S.price;

